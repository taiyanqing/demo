INSERT INTO ITBASEOWNER.BJ_SETTING (JOB, APP_SERVER_ID, NAME, CLASS, CRON, PARAMETERS, MEMO) 
SELECT 'RS.BatchArchiveRenewLogJob', APP_SERVER_ID, '�鵵������־', 'com.insaic.renew.batch.BatchArchiveRenewLogJob', '0 0 0 * * ? ', 'day=30', 'ÿ��ִ��һ��; �鵵 30��֮ǰ������; '
FROM ITBASEOWNER.BJ_SETTING
WHERE JOB='RS.BatchECIFRenewListJob';

insert into itbaseowner.bj_setting
  (JOB, APP_SERVER_ID, NAME, CLASS, CRON, PARAMETERS, MEMO)
  select 'TBS.BatchYbReturnApplyJob',
         APP_SERVER_ID,
         '������-�ӱ��������ݳ���',
         'com.insaic.business.sale.batch.BatchYbReturnApplyJob',
         '0 0 1 * * ?',
         '',
         '������-�ӱ��������ݳ���'
    from itbaseowner.bj_setting s
   where s.job = 'TBS.BatchUpdateYBSalesStatusJob'; 