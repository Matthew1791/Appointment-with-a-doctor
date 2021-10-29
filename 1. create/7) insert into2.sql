

declare
    v_rating number;
begin
    select  di.rating
    into v_rating
    from SHISHLONOV_MA.ATTRIBUTES_FOR_A_DOCTOR di
    where id_doctor=5;
dbms_output.put_line(v_rating);
end;

declare v_area_name varchar2(100);
    begin
    select t.NAME
    into v_area_name
    from SHISHLONOV_MA.AREA t
    where ID_AREA=1;
    DBMS_OUTPUT.PUT_LINE(v_area_name);
end;



declare v_registr number;
        v_name date;
        v_status varchar2(100);
begin
    v_registr :=23;
    v_name :='01/09/2021';
    select p.ID_REGISTER
        into v_status
from SHISHLONOV_MA.REGISTERS p
    where p.ID_REGISTER=v_registr and p.NAME=v_name;
    DBMS_OUTPUT.put_line(v_status);
end;

declare
    v_more_men_than_women boolean;
    v_id_speciality number;
    v_more_men number;
    v_women number;
begin
    v_more_men_than_women :=true;
    case
        when v_more_men_than_women=true
        then v_id_speciality :=4;


end;
