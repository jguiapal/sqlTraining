create type enum_user_invite_suggestions_status as enum ('PENDING', 'APPROVED', 'DENIED');

alter type enum_user_invite_suggestions_status owner to postgres;

