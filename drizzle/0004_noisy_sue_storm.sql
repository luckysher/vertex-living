CREATE TABLE "propertytype" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "propertytype_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"name" varchar(128) NOT NULL,
	"createdAt" timestamp DEFAULT now() NOT NULL
);
