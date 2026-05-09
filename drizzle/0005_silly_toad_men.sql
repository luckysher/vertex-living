CREATE TABLE "subpropertytype" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "subpropertytype_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"property_id" integer,
	"name" varchar(128) NOT NULL,
	"createdAt" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
ALTER TABLE "subpropertytype" ADD CONSTRAINT "subpropertytype_property_id_propertytype_id_fk" FOREIGN KEY ("property_id") REFERENCES "public"."propertytype"("id") ON DELETE no action ON UPDATE no action;