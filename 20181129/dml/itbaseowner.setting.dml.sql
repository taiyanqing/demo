INSERT INTO ITBASEOWNER.BJ_SETTING (JOB, APP_SERVER_ID, NAME, CLASS, CRON, PARAMETERS, MEMO) 
SELECT 'RS.BatchArchiveRenewLogJob', APP_SERVER_ID, '归档续保日志', 'com.insaic.renew.batch.BatchArchiveRenewLogJob', '0 0 0 * * ? ', 'day=30', '每天执行一次; 归档 30天之前的数据; '
FROM ITBASEOWNER.BJ_SETTING
WHERE JOB='RS.BatchECIFRenewListJob';

insert into itbaseowner.bj_setting
  (JOB, APP_SERVER_ID, NAME, CLASS, CRON, PARAMETERS, MEMO)
  select 'TBS.BatchYbReturnApplyJob',
         APP_SERVER_ID,
         '批处理-延保销售数据撤回',
         'com.insaic.business.sale.batch.BatchYbReturnApplyJob',
         '0 0 1 * * ?',
         '',
         '批处理-延保销售数据撤回'
    from itbaseowner.bj_setting s
   where s.job = 'TBS.BatchUpdateYBSalesStatusJob'; 