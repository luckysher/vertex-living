CREATE TABLE "dealers" (
	"id" integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY (sequence name "dealers_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1),
	"user_id" integer,
	"profile_pic" varchar(255) NOT NULL,
	"address" varchar(255) NOT NULL,
	"approved" boolean DEFAULT false NOT NULL,
	"createdAt" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
ALTER TABLE "dealers" ADD CONSTRAINT "dealers_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;