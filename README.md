cookbook-radicale
=================

Cookbook for deploying radicale

http://radicale.org

Requirements
============

Platforms
---------

* Ubuntu

Cookbooks
---------

The following cookbooks are dependcies:

* users

Attributes
==========
* `radicale["daemon"]` - Set daemon mode
* `radicale["pid"]` - location of pid file for daemon mode
* `radicale["ssl"]` - Enable HTTPS
* `radicale["acl"]` - Access method - 'None','htpasswd','LDAP'
* `radicale["public_users"]` - Usernames used for public calendars, comma sep
* `radicale["private_users"]` - Usernames for private calendars, comma sep
* `radicale["htpasswd_file"]` - htpasswd file
* `radicale["htpasswd_encryption"]` - plain, sha1, crypt
* `radicale["ldap_url"]` - ldap server url, with protocol and port
* `radicale["ldap_base"]` - ldap base path
* `radicale["ldap_attribute"]` - ldap login attribute
* `radicale["ldap_binddb"]` - ldap dn for bind, blank for anonymous bind
* `radicale["ldap_password"]` - password for binddn
* `radicale["folder"]` - Folder for storing local calnedars, created if new
* `radicale["logging"]["config"]` - logging configuration file
* `radicale["logging"]["debug"]` - debug logging
* `radicale["logging"]["full_env"]` - store all env variables

Templates
=========
* `config.erb` - default configuration file
* `users.erb` - htpasswd file for users

Files
=====
* `radicale.conf` - Upstart job file for ubuntu - missing from dpkg

License and Author
==================

Author:: Abel Lopez (<alopgeek@gmail.com>)
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
