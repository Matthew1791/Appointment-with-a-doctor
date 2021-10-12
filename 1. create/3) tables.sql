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

create table doctors(
    id_doctor number primary key,
    name varchar2(100),
    id_hospital number references hospitals(id_hospital)
);

create table registration_coupons(
    id_registration_coupon number primary key,
    name boolean
);


--doctor degre