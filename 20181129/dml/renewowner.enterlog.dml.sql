Declare
     Cursor myCur is SELECT * FROM RENEWOWNER.RS_VEHICLE_ENTER_LOG WHERE CREATE_TIME<(SYSDATE-40);
     varE RENEWOWNER.RS_VEHICLE_ENTER_LOG%rowType;
     cnt INT;
  Begin
     cnt:= 0;
     if myCur%isopen = false then
        open myCur;
     end if;
     loop
        fetch myCur into varE;
        exit when myCur%notfound;
        
        INSERT INTO RENEWOWNER.RS_VEHICLE_ENTER_LOG_ARC 
        (ID, DEALER_CODE, IP_ADDRESS, PLATE_NO, ENTER_DATE, CONTENT1, CONTENT2, CONTENT3, CONTENT4, CREATE_TIME, CREATE_USER, UPDATE_TIME, UPDATE_USER)
        VALUES
        (varE.ID, varE.DEALER_CODE, varE.IP_ADDRESS, varE.PLATE_NO, varE.ENTER_DATE, varE.CONTENT1, varE.CONTENT2, varE.CONTENT3, varE.CONTENT4, varE.CREATE_TIME, varE.CREATE_USER, varE.UPDATE_TIME, varE.UPDATE_USER);

        DELETE FROM RENEWOWNER.RS_VEHICLE_ENTER_LOG WHERE ID=varE.ID;

        cnt:=cnt+1;
        if(cnt>=1000) then
            commit;
            cnt:=0;
        end if;
     end loop;
     if myCur%isopen then
        Close myCur;
     end if;
     commit;
  End;