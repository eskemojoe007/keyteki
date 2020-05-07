-- Table: public."ChallongeSettings"

-- DROP TABLE public."ChallongeSettings";

CREATE TABLE public."ChallongeSettings"
(
    "Id" integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    "ApiKey" text COLLATE pg_catalog."default",
    "SubDomain" text COLLATE pg_catalog."default",
    "UserId" integer NOT NULL,
    "LastUpdated" timestamp without time zone NOT NULL,
    CONSTRAINT "PK_ChallongeSettings" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_ChallongeSettings_Users_DeletedById" FOREIGN KEY ("DeletedById")
        REFERENCES public."Users" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE RESTRICT,
    CONSTRAINT "FK_ChallongeSettings_Users_UserId" FOREIGN KEY ("UserId")
        REFERENCES public."Users" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE public."ChallongeSettings"
    OWNER to keyteki;
-- Index: IX_News_PosterId

-- DROP INDEX public."IX_News_PosterId";
