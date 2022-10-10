# Rails 2 Factor Authentication

##  What is Two-Factor Authentication (2FA)?
2FA is an extra layer of security used to make sure that people trying to gain access to an online account are who they say they are. First, a user will enter their username and a password. Then, instead of immediately gaining access, they will be required to provide another piece of information.

## What we have implemented in this project?
	- User Signup
	- User Login via password
	- Enable/Disable 2FA Authentication from dashboard
	- 2FA Login and access dashboard

## Required dependencies: 
  * Ruby is installed (v 3.1.2)  
  * Rails is installed (v 7.0.4)  
  * MySQL is installed
  * Git is installed

## Major steps are followed to create/setup:
  * Setup a new Rails app
  * Database configuration setup (using MySQL)
  * Initialize a local repository using git
  * .gitignore file created to add configuration.yml
  * configuration.yml file created to initialize environment variables  
  * Create a new remote repository using GitHub  
  * Change README.md and documentation added
  * Code Commited and Pushed to GitHub repository

### Create configuration.yml to setup required environment variables
	* Go to the config directory
	* Create a new file with name configuration.yml

#### Required variables to define in configuration.yml
Here are the variables we need to define in this file:
```
DB_DEVELOPMENT: development_db_name

DB_DEVELOPMENT_USERNAME: development_db_username

DB_DEVELOPMENT_PASSWORD: development_db_password

DB_PRODUCTION: production_db_name_xxx

DB_PRODUCTION_USERNAME: production_db_username_xxx

DB_PRODUCTION_PASSWORD: production_db_password_xxx

DB_TEST: test_db_name

MYSQL_SOCKET: /tmp/mysql.sock
```

### Rails 7 active record encryption configuration 
Here are the steps to implement Active Record Encryption in Rails 7.

Step 1. Generate active record encryption keys.

``````
rails db:encryption:init
# Above will return:

# active_record_encryption:
#   primary_key: rdxoZXGHCyhB3LIFwLAcSjZKDC4kPpu9
#   deterministic_key: mFS1pVwO3pQpBhI7nPUPK08y7JpmRzAo
#   key_derivation_salt: 6Lv9Hsk5WN7h0zPSyMKNdkk1yfoIlcnR
``````

Step 2. Add the generated key set to your Rails application's credentials file.

Here is the [link to add encrypted secrets in rails](https://edgeguides.rubyonrails.org/security.html#custom-credentials)


- Rails stores secrets in `config/credentials.yml.enc`, which is encrypted and hence cannot be edited directly. 

- Rails uses `config/master.key` or alternatively looks for the environment variable `ENV["RAILS_MASTER_KEY"]` to encrypt the credentials file. 

- Because the credentials file is encrypted, it can be stored in version control, as long as the master key is kept safe.

- By default, the credentials file contains the application's secret_key_base. It can also be used to store other secrets such as access keys for external APIs.

- To edit the credentials file, run `EDITOR="nano --wait" bin/rails credentials:edit`

- This command will create the credentials file if it does not exist. Additionally, this command will create config/master.key if no master key is defined.

Secrets kept in the credentials file are accessible via Rails.application.credentials. For example, with the following decrypted config/credentials.yml.enc:

````
secret_key_base: 3b7cd72...
some_api_key: SOMEKEY
system:
  access_key_id: 1234AB
````

- `Rails.application.credentials.some_api_key` returns *"SOMEKEY"*. `Rails.application.credentials.system.access_key_id` returns "1234AB"

### Issues - Rails 7 link_to is not sending delete requests also confirm not working.
#### Solution: 
Run below for Rails 7

    $ rails importmap:install 
    $ rails turbo:install stimulus:install
  
Make sure you are using `turbo_method` like:

    <%= link_to "Sign Out", destroy_user_session_path, data: { turbo_method: :delete }, class: "nav-link" %>

