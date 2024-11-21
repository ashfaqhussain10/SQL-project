select X.U as unique_products_2021 , Y.I as unique_products_2020 ,ROUND((U-I)*100/U,2) as percentage_chg
 from
(SELECT count(distinct
 product_code) as U FROM gdb023.fact_sales_monthly where fiscal_year =2021) X,
( SELECT count(distinct
 product_code) as I FROM gdb023.fact_sales_monthly where fiscal_year =2020) Y;