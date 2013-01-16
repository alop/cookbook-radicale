default["radicale"]["daemon"] = "False"
default["radicale"]["pid"] = nil
default["radicale"]["ssl"] = "False"
default["radicale"]["acl"] = "None"
default["radicale"]["public_users"] = "public"
default["radicale"]["private_users"] = "private"
default["radicale"]["htpasswd_file"] = "/etc/radicale/users"
default["radicale"]["htpasswd_encryption"] = "crypt"
default["radicale"]["ldap_url"] = "ldap://localhost:389"
default["radicale"]["ldap_base"] = "ou=users,dc=example,dc=com"
default["radicale"]["ldap_attribute"] = "uid"
default["radicale"]["ldap_binddn"] = nil
default["radicale"]["ldap_password"] = nil
default["radicale"]["folder"] = "~/.config/radicale/calendars"
default["radicale"]["logging"]["config"] = "/etc/radicale/logging"
default["radicale"]["logging"]["debug"] = "False"
default["radicale"]["logging"]["full_env"] = "False"
