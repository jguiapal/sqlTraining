create type enum_notification_applications_platform as enum ('APNS_SANDBOX', 'APNS', 'FCM', 'WEB');

alter type enum_notification_applications_platform owner to postgres;

