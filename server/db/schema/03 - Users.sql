-- Table: public."Users"

-- DROP TABLE public."Users";

CREATE TABLE public."Users"
(
    "Id" integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    "Password" text COLLATE pg_catalog."default",
    "Registered" timestamp without time zone NOT NULL,
    "Username" text COLLATE pg_catalog."default",
    "Email" text COLLATE pg_catalog."default",
    "Settings_Background" text COLLATE pg_catalog."default" DEFAULT 'Brobnar'::text,
    "Settings_CardSize" text COLLATE pg_catalog."default" DEFAULT 'normal'::text,
    "Settings_DisableGravatar" boolean DEFAULT true,
    "Settings_OrderAbilities" boolean DEFAULT false,
    "Settings_ConfirmOneClick" boolean DEFAULT true,
    "Verified" boolean NOT NULL,
    "Disabled" boolean NOT NULL DEFAULT false,
    "PatreonToken" text COLLATE pg_catalog."default",
    "ResetToken" text COLLATE pg_catalog."default",
    "TokenExpires" timestamp without time zone,
    "ActivationToken" text COLLATE pg_catalog."default",
    "ActivationTokenExpiry" timestamp without time zone,
    "RegisterIp" text COLLATE pg_catalog."default",
    CONSTRAINT "PK_Users" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE public."Users"
    OWNER to keyteki;
-- Index: IX_Users_Email

-- DROP INDEX public."IX_Users_Email";

CREATE UNIQUE INDEX "IX_Users_Email"
    ON public."Users" USING btree
    ("Email" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: IX_Users_Username

-- DROP INDEX public."IX_Users_Username";

CREATE UNIQUE INDEX "IX_Users_Username"
    ON public."Users" USING btree
    ("Username" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;