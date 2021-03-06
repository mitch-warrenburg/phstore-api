CREATE TABLE PHOTO_HASH
(
    ID         NUMBER               NOT NULL,
    PHOTO_ID   NUMBER               NOT NULL,
    P_HASH     BLOB,
    A_HASH     BLOB,
    D_HASH64   BLOB,
    D_HASH16   BLOB,
    CREATED_DT DATE DEFAULT SYSDATE NOT NULL,
    UPDATED_DT DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT PH1 PRIMARY KEY (ID)
        USING INDEX TABLESPACE I01
) TABLESPACE D01;

CREATE SEQUENCE PHOTO_HASH_IDSEQ START WITH 1 NOCYCLE CACHE 50 NOORDER;

GRANT DELETE ON PHOTO_HASH TO PH_DELETE;
GRANT INSERT ON PHOTO_HASH TO PH_INSERT;
GRANT SELECT ON PHOTO_HASH TO PH_SELECT;
GRANT UPDATE ON PHOTO_HASH TO PH_UPDATE;
GRANT SELECT ON PHOTO_HASH_IDSEQ TO PH_SELECT;



CREATE TABLE PHOTO
(
    ID         NUMBER(18)           NOT NULL,
    PHOTO_DATA BLOB,
    MD5   VARCHAR2(32),
    CREATED_DT DATE DEFAULT SYSDATE NOT NULL,
    UPDATED_DT DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT P1 PRIMARY KEY (ID) USING INDEX TABLESPACE I01
) TABLESPACE D01;

CREATE SEQUENCE PHOTO_IDSEQ START WITH 1 NOCYCLE CACHE 50 NOORDER;

GRANT DELETE ON PHOTO TO PH_DELETE;
GRANT INSERT ON PHOTO TO PH_INSERT;
GRANT SELECT ON PHOTO TO PH_SELECT;
GRANT UPDATE ON PHOTO TO PH_UPDATE;
GRANT SELECT ON PHOTO_IDSEQ TO PH_SELECT;