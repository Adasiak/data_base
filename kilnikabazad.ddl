-- Generated by Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   at:        2023-05-06 16:35:04 CEST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE hospital (
    hospital_id   NUMBER NOT NULL,
    hospital_name VARCHAR2(150) NOT NULL,
    adres         VARCHAR2(150),
    phone_number  VARCHAR2(15),
    email         VARCHAR2(150)
);

ALTER TABLE hospital ADD CONSTRAINT hospital_pk PRIMARY KEY ( hospital_id );

CREATE TABLE patient (
    patient_id     NUMBER NOT NULL,
    name           VARCHAR2(150) NOT NULL,
    sure_name      VARCHAR2(150) NOT NULL,
    email          VARCHAR2(150),
    residence_hall NUMBER,
    ward_ward_id   NUMBER NOT NULL
);

ALTER TABLE patient ADD CONSTRAINT patient_pk PRIMARY KEY ( patient_id );

CREATE TABLE personel (
    personel_id  NUMBER NOT NULL,
    position     VARCHAR2(150) NOT NULL,
    name         VARCHAR2(150) NOT NULL,
    sure_name    VARCHAR2(150) NOT NULL,
    phone_number VARCHAR2(15),
    email        VARCHAR2(150),
    adres        VARCHAR2(150),
    ward_ward_id NUMBER NOT NULL
);

ALTER TABLE personel ADD CONSTRAINT personel_pk PRIMARY KEY ( personel_id );

CREATE TABLE surgery (
    surgery_id           NUMBER NOT NULL,
    surgery_room         NUMBER NOT NULL,
    "date"               DATE NOT NULL,
    name_of_surgery      VARCHAR2(150) NOT NULL,
    personel_personel_id NUMBER NOT NULL,
    patient_patient_id   NUMBER NOT NULL
);

ALTER TABLE surgery ADD CONSTRAINT surgery_pk PRIMARY KEY ( surgery_id );

CREATE TABLE ward (
    ward_id              NUMBER NOT NULL,
    ward_name            VARCHAR2(150) NOT NULL,
    building             VARCHAR2(150),
    floor                NUMBER,
    phone_number         VARCHAR2(15),
    number_of_free_beds  NUMBER,
    maximum_capacity     NUMBER,
    hospital_hospital_id NUMBER NOT NULL
);

ALTER TABLE ward ADD CONSTRAINT ward_pk PRIMARY KEY ( ward_id );

ALTER TABLE patient
    ADD CONSTRAINT patient_ward_fk FOREIGN KEY ( ward_ward_id )
        REFERENCES ward ( ward_id );

ALTER TABLE personel
    ADD CONSTRAINT personel_ward_fk FOREIGN KEY ( ward_ward_id )
        REFERENCES ward ( ward_id );

ALTER TABLE surgery
    ADD CONSTRAINT surgery_patient_fk FOREIGN KEY ( patient_patient_id )
        REFERENCES patient ( patient_id );

ALTER TABLE surgery
    ADD CONSTRAINT surgery_personel_fk FOREIGN KEY ( personel_personel_id )
        REFERENCES personel ( personel_id );

ALTER TABLE ward
    ADD CONSTRAINT ward_hospital_fk FOREIGN KEY ( hospital_hospital_id )
        REFERENCES hospital ( hospital_id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                             10
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
