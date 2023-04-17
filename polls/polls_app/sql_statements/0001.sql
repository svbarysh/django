BEGIN;
--
-- Create model Question
--
CREATE TABLE "polls_app_question" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "question_text" varchar(200) NOT NULL, "pub_date" datetime NOT NULL);
--
-- Create model Choice
--
CREATE TABLE "polls_app_choice" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "choice_text" varchar(200) NOT NULL, "votes" integer NOT NULL, "question_id" bigint NOT NULL REFERENCES "polls_app_question" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE INDEX "polls_app_choice_question_id_38df74ee" ON "polls_app_choice" ("question_id");
COMMIT;