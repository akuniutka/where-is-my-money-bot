CREATE SEQUENCE HIBERNATE_SEQUENCE AS BIGINT INCREMENT BY 1 START WITH 1 OWNED BY NONE;

CREATE TABLE CHAT
(
    USER_ID             BIGINT,
    CHAT_STATE          INT NOT NULL,
    CONSTRAINT CHAT_PKEY PRIMARY KEY (USER_ID)
);

CREATE TABLE ENTRY
(
    ID      BIGINT,
    USER_ID BIGINT NOT NULL,
    TYPE    VARCHAR(1) NULL,
    AMOUNT  NUMERIC (15, 2) NOT NULL,
    ACCOUNT VARCHAR(32) NOT NULL,
    DATE    TIMESTAMP NOT NULL,
    CONSTRAINT ENTRY_PKEY PRIMARY KEY (ID),
    CONSTRAINT ENTRY_CHAT_USER_ID_FKEY FOREIGN KEY (USER_ID) REFERENCES CHAT(USER_ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT ENTRY_AMOUNT_CHECK CHECK (AMOUNT > 0)
);

CREATE INDEX ENTRY_USER_ID_IDX ON ENTRY(USER_ID);
