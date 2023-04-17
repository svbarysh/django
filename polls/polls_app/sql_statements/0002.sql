BEGIN;
--
-- Add field facilitator to question
--
ALTER TABLE "polls_app_question" ADD COLUMN "facilitator" varchar(200) NULL;
COMMIT;