alter table tbowner.bs_service_package_detail add deductible number(16,2);
alter table tbowner.bs_service_package_detail add limit_insured number(16,2);
alter table tbowner.bs_service_package_detail add first_beneficiary varchar2(200);
alter table tbowner.bs_service_package_detail add first_bene_rate number(16,2);
comment on column tbowner.bs_service_package_detail.deductible is '免赔额';
comment on column tbowner.bs_service_package_detail.limit_insured is '赔偿限额';
comment on column tbowner.bs_service_package_detail.first_beneficiary is '第一受益人';
comment on column tbowner.bs_service_package_detail.first_bene_rate is '第一受益人收益比例';

alter table tbowner.bs_vehicle add (new_flag varchar2(2), fuel_type varchar2(32), suggested_price number(16,2));
comment on column TBOWNER.BS_VEHICLE.new_flag is '是否新车(Y/N)';
comment on column TBOWNER.BS_VEHICLE.fuel_type is '燃油种类';
comment on column TBOWNER.BS_VEHICLE.suggested_price is '指导价(MSRP)';
alter table tbowner.bs_vehicle add down_payment number(16,2);
alter table tbowner.bs_vehicle add loan_principal number(16,2);
alter table tbowner.bs_vehicle add total_price number(16,2);
alter table tbowner.bs_vehicle add max_repurchase_price number(16,2);
comment on column tbowner.bs_vehicle.down_payment is '购车首付款';
comment on column tbowner.bs_vehicle.loan_principal is '贷款本金';
comment on column tbowner.bs_vehicle.total_price is '购车总价';
comment on column tbowner.bs_vehicle.max_repurchase_price is '协议最高回购价格';


alter table tbowner.bs_yb_sales_info add payment_time date;
alter table tbowner.bs_yb_sales_info add dealer_code VARCHAR2(32);
alter table tbowner.bs_yb_sales_info add organization VARCHAR2(32);
alter table tbowner.bs_yb_sales_info add manufacturer VARCHAR2(32);
alter table tbowner.bs_yb_sales_info add brand VARCHAR2(32);
alter table tbowner.bs_yb_sales_info add revision NUMBER(6);

comment on column tbowner.bs_yb_sales_info.payment_time is '支付时间';
comment on column tbowner.bs_yb_sales_info.dealer_code is '经销商代码';
comment on column tbowner.bs_yb_sales_info.organization is '组织机构';
comment on column tbowner.bs_yb_sales_info.manufacturer is '主机厂';
comment on column tbowner.bs_yb_sales_info.brand is '品牌';
comment on column tbowner.bs_yb_sales_info.revision is '版本号';

alter table tbowner.bs_yb_sales_info add return_no varchar2(12);
comment on column tbowner.bs_yb_sales_info.return_no is '退回单号';
alter table tbowner.bs_yb_sales_info add audit_time date;
comment on column tbowner.bs_yb_sales_info.audit_time is '审批时间';

alter table tbowner.bs_yb_product_rule add rule_type varchar2(20);
comment on column tbowner.bs_yb_product_rule.rule_type is '规则类型';

CREATE TABLE BS_YB_PRODUCT_RETURN
(
 ID NUMBER(18),
 EXWARRANT_CODE VARCHAR2(10),
 EW_RETURN_TYPE VARCHAR2(8),
 EW_RETURN_DESC VARCHAR2(1200),
 ALL_RTN_DAYS NUMBER(8),
 PAY_MIN_DAYS NUMBER(8),
 UNRTN_DAYS NUMBER(8),
 PAY_RATE NUMBER(8,2),
 CREATE_TIME DATE,
 CREATE_USER VARCHAR2(64),
 UPDATE_TIME DATE,
 UPDATE_USER VARCHAR2(64)
);

COMMENT ON TABLE BS_YB_PRODUCT_RETURN IS '延保退回定义表';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.ID IS '主键';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.EXWARRANT_CODE IS '产品代码';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.EW_RETURN_TYPE IS '延保退回类型';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.EW_RETURN_DESC IS '退回规则描述';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.ALL_RTN_DAYS IS '全款退回限制天数';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.PAY_MIN_DAYS IS '扣款最小天数';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.UNRTN_DAYS IS '不允许退回天数';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.PAY_RATE IS '扣款比例';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.CREATE_USER IS '创建用户';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.UPDATE_TIME IS '更新时间';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.UPDATE_USER IS '更新用户';


CREATE UNIQUE INDEX IDX_YB_PRODUCT_RETURN_ID ON BS_YB_PRODUCT_RETURN(ID) TABLESPACE TBS_INDEX_TB;
ALTER TABLE BS_YB_PRODUCT_RETURN ADD CONSTRAINT PK_YB_PRODUCT_RETURN PRIMARY KEY (ID) USING INDEX IDX_YB_PRODUCT_RETURN_ID;

CREATE INDEX IDX_YB_PRODUCT_RETURN_CODE ON BS_YB_PRODUCT_RETURN(EXWARRANT_CODE) TABLESPACE TBS_INDEX_TB;

CREATE OR REPLACE SYNONYM TBDEV.BS_YB_PRODUCT_RETURN FOR BS_YB_PRODUCT_RETURN;
CREATE OR REPLACE SYNONYM TBAPP.BS_YB_PRODUCT_RETURN FOR BS_YB_PRODUCT_RETURN;

GRANT SELECT,INSERT,UPDATE,DELETE ON BS_YB_PRODUCT_RETURN TO TBDEV;
GRANT SELECT,INSERT,UPDATE,DELETE ON BS_YB_PRODUCT_RETURN TO TBAPP;
  
CREATE SEQUENCE SEQ_YB_PRODUCT_RETURN_ID
START WITH 1
MAXVALUE 999999999999999999999999999
MINVALUE 1
NOCYCLE
CACHE 10
NOORDER;

CREATE OR REPLACE SYNONYM TBDEV.SEQ_YB_PRODUCT_RETURN_ID FOR SEQ_YB_PRODUCT_RETURN_ID;
CREATE OR REPLACE SYNONYM TBAPP.SEQ_YB_PRODUCT_RETURN_ID FOR SEQ_YB_PRODUCT_RETURN_ID;
GRANT SELECT ON SEQ_YB_PRODUCT_RETURN_ID TO TBDEV;
GRANT SELECT ON SEQ_YB_PRODUCT_RETURN_ID TO TBAPP;


