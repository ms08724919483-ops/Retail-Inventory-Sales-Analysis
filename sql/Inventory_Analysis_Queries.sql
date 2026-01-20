-- --------Basic Validation Check-------------

Select
	count(txn_id) as Total_rows,
    sum(on_hand_stock < 0) as negative_stock,
    sum(unit_price < unit_cost) as bad_pricing,
    sum(sku is null or sku = '') as missing_sku
From inventory_sales_clean;


-- ------------Total Revenue------------------

Select
	sum(revenue) as Total_Revenue
From inventory_sales_clean;


-- --------Revenue By Category----------------

Select 
	Category,
    sum(revenue) as Category_Revenue
From inventory_sales_clean
Group by category
Order by Category_Revenue Desc;


-- ---------Revenue by Store------------------

Select
	Store,
    sum(revenue) as Store_Revenue
From inventory_sales_clean
Group by store
Order by Store_Revenue Desc;


-- ----------Stock Turnover--------------------

Select
	Category,
    Round(sum(units_sold)/NULLIF(avg(on_hand_stock),0),2) as Stock_Turnover
From inventory_sales_clean
Group by category
Order by Stock_Turnover Desc;


-- ---------- Pareto Analysis-------------------

With sku_revenue as (
	Select
		sku,
		sum(revenue) as sku_revenue
	From inventory_sales_clean
    group by sku
),
ranked as (
	Select
		sku,
        sku_revenue,
        sum(sku_revenue) over () as total_revenue,
        sum(sku_revenue) Over (Order by sku_revenue desc) as running_revenue
	From sku_revenue
)

Select 
	sku,
    sku_revenue,
    Round((sku_revenue / total_revenue) * 100,2) as revenue_pct,
    Round((running_revenue / total_revenue) * 100,2) as running_pct
From ranked
Order by sku_revenue DESC;

-- -----Stock-Out Risk ------------------------

Select 
	store,
    sku,
    category,
    brand,
    Round(avg(days_of_cover),2) as avg_days_of_cover,
    sum(low_stock_flag) as low_stock_hits,
    sum(revenue) as revenue_at_risk
From inventory_sales_clean
Group by store, sku, category, brand
Having avg_days_of_cover < 7
Order by avg_days_of_cover Desc;

-- ------------Daily Automated Report-----------------

Select
	txn_date,
    store,
    sum(revenue) as daily_revenue,
    sum(units_sold) as daily_units
From inventory_sales_clean
group by txn_date, store
Order by daily_revenue, store;