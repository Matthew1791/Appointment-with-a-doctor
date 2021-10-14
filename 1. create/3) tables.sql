create table regions(
    id_region number primary key,
    name varchar2(100)
);

create table towns(
    id_town number primary key,
    name varchar2(100),
    id_region number references regions(id_region)
);

create table medical_organizations(
    id_med_organizations number primary key,
    name varchar2(100),
    id_town number references towns(id_town)
);

create table hospitals(
    id_hospital number primary key,
    name varchar2(100),
    id_med_organization number references medical_organizations(id_med_organizations)

);
create table specialities(
    id_speciality number primary key,
    name varchar2(100),
    id_hospital number references hospitals(id_hospital)
);

create table years(
    id_year number primary key,
    name varchar2(100),
    id_speciality number references specialities(id_speciality)
);
create table gender(
    id_gender number primary key,
    name varchar2(100),
    id_speciality number references specialities(id_speciality)
);

create table technical_works(
    id_technicalworks number primary key,
    name timestamp,
    id_hospital number references hospitals(id_hospital)
);

create table hospital_tipe(
    id_hospital_works number primary key,
    name varchar2(100),
    id_hospital number references hospitals
);

create table doctors(
    id_doctor number primary key,
    name varchar2(100),
    id_hospital number references hospitals(id_hospital)
);

create table reception_area(
    id_reception_area number primary key,
    name varchar2(100),
    id_doctor number references doctors(id_doctor)
);

create table doctor_degree(
    id_doctor_degree number primary key,
    name varchar2(100),
    id_doctor number references doctors (id_doctor)
);

create table registration_coupons(
    id_registration_coupon number primary key,
    status boolean,
    id_doctor number references doctors(id_doctor)

);

create table accounts(
    id_account number primary key,
    name varchar2(100)
);

create table patients(
    id_patient number primary key,
    first_name varchar2(100),
    last_name varchar2(100),
    middle_name varchar2(100),
    date_of_birth date,
    document varchar2(100),
    gender number references gender(id_gender),
    telephone_number int(100),
    id_reception_area number references reception_area(id_reception_area),
    id_account number references accounts(id_account)
);

create table registers(
    id_register number primary key,
    name date
);


--doctor degre