CREATE TABLE "listing" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "listing_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"listing_type" varchar(64) NOT NULL,
	"createdAt" timestamp DEFAULT now() NOT NULL
);
