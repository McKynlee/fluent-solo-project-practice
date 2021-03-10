-- DB name: fluent_db

DROP TABLE IF EXISTS "pronouns";
DROP TABLE IF EXISTS "languages";
DROP TABLE IF EXISTS "users";
DROP TABLE IF EXISTS "challenge_responses";
DROP TABLE IF EXISTS "instructor_feedback";

CREATE TABLE "pronouns"
(
    "id" SERIAL PRIMARY KEY,
    "pronoun" VARCHAR (255) NOT NULL
);

CREATE TABLE "languages"
(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR (255) NOT NULL
);


CREATE TABLE "users" (
    "id" SERIAL PRIMARY KEY,
    "first_name" VARCHAR (255) NOT NULL,
    "last_name" VARCHAR (255) NOT NULL,
    "email" VARCHAR (999) NOT NULL,
    "pronouns_id" INT REFERENCES "pronouns", 
    "password" VARCHAR (255) NOT NULL,
    "skill_level" INT,
    "language_id" INT REFERENCES "languages",
    "reminder" BOOLEAN DEFAULT false,
    "auth_level" INT DEFAULT 1
);

CREATE TABLE "challenge_responses"(
    "id" SERIAL PRIMARY KEY,
    "picture_url" VARCHAR (12555) NOT NULL,
    "picture_description" VARCHAR (12555) NOT NULL,
    "word" VARCHAR (80) NOT NULL,
    "word_sentence" VARCHAR (12555) NOT NULL,
    "user_id" INT REFERENCES "users"
);

CREATE TABLE "instructor_feedback"
(
    "id" SERIAL PRIMARY KEY,
    "picture_description_feedback" VARCHAR (12555),
    "word_sentence_feedback" VARCHAR (12555),
    "suggestion" VARCHAR (12555),
    "challenge_id" INT REFERENCES "challenge_responses"
);
