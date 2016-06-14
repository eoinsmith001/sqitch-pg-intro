-- Deploy flipr:users to pg
-- requires: appschema

BEGIN;

-- XXX Add DDLs here.
CREATE TABLE flipr.users (
  nickname  TEXT        PRIMARY KEY,
  password  TEXT        NOT NULL,
  timestamp TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

COMMIT;
