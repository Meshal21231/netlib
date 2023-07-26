BEGIN;

CREATE TABLE "timeouts" (
  "peer" VARCHAR(20) NOT NULL PRIMARY KEY,
  "secret" VARCHAR(24) NOT NULL,
  "game" uuid NOT NULL,
  "lobbies" VARCHAR(20)[] NOT NULL,
  "last_seen" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "created_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX "timeouts_last_seen" ON "timeouts" ("last_seen");

COMMIT;