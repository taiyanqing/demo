update codeowner.code_entry e set e.property2 = replace(e.property2,'isCreateEpolicy=1','isCreateEpolicy=Y') where e.category = 'INSURER_DISTRICT_CONFIG' and e.code = 'picc_11000000';
update codeowner.code_entry e set e.property2 = e.property2||'|isCreateEpolicy=Y' where e.category = 'INSURER_DISTRICT_CONFIG' and e.code = 'picc_44030000';
insert into codeowner.code_entry (ENTRY_ID, CATEGORY, CODE,value, NAME, PROPERTY1, PROPERTY2, UPDATE_TIME, SORT, MEMO) values (codeowner.seq_code_id.nextval, 'LOAN_ORGANIZATION', 'sgm_dsac','Chevrolet','上汽通用汽车金融', null, '附加贷', sysdate,1, null);
