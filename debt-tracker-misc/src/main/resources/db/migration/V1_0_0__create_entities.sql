CREATE SEQUENCE HIBERNATE_SEQUENCE AS BIGINT INCREMENT BY 1 START WITH 1 OWNED BY NONE;

CREATE TABLE CHAT
(
    USER_ID     BIGINT,
    CHAT_STATE  INT NOT NULL,
    CONSTRAINT CHAT_PKEY PRIMARY KEY (USER_ID)
);

CREATE TABLE ENTRY
(
    ID      BIGINT,
    USER_ID BIGINT NOT NULL,
    TYPE    VARCHAR(1) NULL,
    AMOUNT  NUMERIC NOT NULL CHECK (AMOUNT > 0),
    ACCOUNT VARCHAR(32) NOT NULL,
    DATE    TIMESTAMP NOT NULL,
    CONSTRAINT ENTRY_PKEY PRIMARY KEY (ID),
    CONSTRAINT ENTRY_ACCOUNT_ID_FKEY FOREIGN KEY (USER_ID) REFERENCES CHAT(USER_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX ENTRY_USER_ID_IDX ON ENTRY(USER_ID);
