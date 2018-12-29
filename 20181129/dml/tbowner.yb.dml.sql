update tbowner.bs_yb_sales_info t set t.revision='1' where t.revision is null;
delete tbowner.bs_yb_product_rule t where t.rule_type is null;
update tbowner.bs_yb_sales_info a set a.status='28001001' where a.status='27021001'; 
