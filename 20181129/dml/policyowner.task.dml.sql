delete from policyowner.bj_task t
 where t.task_type = 'LOAN_POLICY_PUSH'
   and exists (select 1
          from policyowner.ps_premium_loan pl
         where t.business_id = pl.loan_no
           and pl.status = 'PASSED');