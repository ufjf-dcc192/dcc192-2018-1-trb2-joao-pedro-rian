CREATE TABLE EVENTO(
    CODIGO INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    TITULO VARCHAR (100) NOT NULL,
    MINIMO DECIMAL (5,2) NOT NULL,
    DATAEVENTO VARCHAR(10),
    DATASORTEIO VARCHAR(10),
    CONSTRAINT PK_CODIGO_EVENTO PRIMARY KEY (CODIGO)
);

CREATE TABLE PARTICIPANTE(
    CODIGO INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    NOME VARCHAR (100) NOT NULL,
    EMAIL VARCHAR (100) NOT NULL,
    SENHA VARCHAR (100) NOT NULL,
    FK_AMIGO INTEGER,
    CONSTRAINT PK_CODIGO_PARTICIPANTE PRIMARY KEY (CODIGO),
    CONSTRAINT FK_AMIGO FOREIGN KEY (FK_AMIGO) REFERENCES PARTICIPANTE(CODIGO)
);