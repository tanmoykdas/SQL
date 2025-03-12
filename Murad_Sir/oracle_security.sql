show user;

create profile lim LIMIT
failed_login_attempts 3
password_lock_time 2
password_life_time 2
password_reuse_max 3
password_grace_time 2
password_reuse_time 2;

create user a identified by a profile lim;
grant create session to a;

connect a/a;