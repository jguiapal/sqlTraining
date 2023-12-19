create type enum_experiment_strategies_strategy as enum ('percent_organizations', 'percent_users', 'email_domain', 'organization', 'user');

alter type enum_experiment_strategies_strategy owner to postgres;

