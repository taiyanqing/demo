--select * from tbowner.bs_yb_sales_info
alter table tbowner.bs_yb_sales_info add return_status number(8);
comment on column tbowner.bs_yb_sales_info.return_status is 'ÍË»Ø×´Ì¬';

alter table tbowner.bs_yb_sales_info modify  CUSTOMER_NAME varchar2(50);
