alter table tbowner.bs_service_package_detail add deductible number(16,2);
alter table tbowner.bs_service_package_detail add limit_insured number(16,2);
alter table tbowner.bs_service_package_detail add first_beneficiary varchar2(200);
alter table tbowner.bs_service_package_detail add first_bene_rate number(16,2);
comment on column tbowner.bs_service_package_detail.deductible is '�����';
comment on column tbowner.bs_service_package_detail.limit_insured is '�⳥�޶�';
comment on column tbowner.bs_service_package_detail.first_beneficiary is '��һ������';
comment on column tbowner.bs_service_package_detail.first_bene_rate is '��һ�������������';

alter table tbowner.bs_vehicle add (new_flag varchar2(2), fuel_type varchar2(32), suggested_price number(16,2));
comment on column TBOWNER.BS_VEHICLE.new_flag is '�Ƿ��³�(Y/N)';
comment on column TBOWNER.BS_VEHICLE.fuel_type is 'ȼ������';
comment on column TBOWNER.BS_VEHICLE.suggested_price is 'ָ����(MSRP)';
alter table tbowner.bs_vehicle add down_payment number(16,2);
alter table tbowner.bs_vehicle add loan_principal number(16,2);
alter table tbowner.bs_vehicle add total_price number(16,2);
alter table tbowner.bs_vehicle add max_repurchase_price number(16,2);
comment on column tbowner.bs_vehicle.down_payment is '�����׸���';
comment on column tbowner.bs_vehicle.loan_principal is '�����';
comment on column tbowner.bs_vehicle.total_price is '�����ܼ�';
comment on column tbowner.bs_vehicle.max_repurchase_price is 'Э����߻ع��۸�';


alter table tbowner.bs_yb_sales_info add payment_time date;
alter table tbowner.bs_yb_sales_info add dealer_code VARCHAR2(32);
alter table tbowner.bs_yb_sales_info add organization VARCHAR2(32);
alter table tbowner.bs_yb_sales_info add manufacturer VARCHAR2(32);
alter table tbowner.bs_yb_sales_info add brand VARCHAR2(32);
alter table tbowner.bs_yb_sales_info add revision NUMBER(6);

comment on column tbowner.bs_yb_sales_info.payment_time is '֧��ʱ��';
comment on column tbowner.bs_yb_sales_info.dealer_code is '�����̴���';
comment on column tbowner.bs_yb_sales_info.organization is '��֯����';
comment on column tbowner.bs_yb_sales_info.manufacturer is '������';
comment on column tbowner.bs_yb_sales_info.brand is 'Ʒ��';
comment on column tbowner.bs_yb_sales_info.revision is '�汾��';

alter table tbowner.bs_yb_sales_info add return_no varchar2(12);
comment on column tbowner.bs_yb_sales_info.return_no is '�˻ص���';
alter table tbowner.bs_yb_sales_info add audit_time date;
comment on column tbowner.bs_yb_sales_info.audit_time is '����ʱ��';

alter table tbowner.bs_yb_product_rule add rule_type varchar2(20);
comment on column tbowner.bs_yb_product_rule.rule_type is '��������';

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

COMMENT ON TABLE BS_YB_PRODUCT_RETURN IS '�ӱ��˻ض����';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.ID IS '����';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.EXWARRANT_CODE IS '��Ʒ����';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.EW_RETURN_TYPE IS '�ӱ��˻�����';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.EW_RETURN_DESC IS '�˻ع�������';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.ALL_RTN_DAYS IS 'ȫ���˻���������';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.PAY_MIN_DAYS IS '�ۿ���С����';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.UNRTN_DAYS IS '�������˻�����';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.PAY_RATE IS '�ۿ����';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.CREATE_TIME IS '����ʱ��';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.CREATE_USER IS '�����û�';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.UPDATE_TIME IS '����ʱ��';
COMMENT ON COLUMN BS_YB_PRODUCT_RETURN.UPDATE_USER IS '�����û�';


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


