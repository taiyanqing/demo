alter table tbowner.bs_vehicle add (new_flag varchar2(2), fuel_type varchar2(32), suggested_price number(16,2));
comment on column TBOWNER.BS_VEHICLE.new_flag is '�Ƿ��³�(Y/N)';
comment on column TBOWNER.BS_VEHICLE.fuel_type is 'ȼ������';
comment on column TBOWNER.BS_VEHICLE.suggested_price is 'ָ����(MSRP)';