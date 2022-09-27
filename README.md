# Rails base setup

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
<code>
DB_DEVELOPMENT: development_db_name

DB_DEVELOPMENT_USERNAME: development_db_username

DB_DEVELOPMENT_PASSWORD: development_db_password

DB_PRODUCTION: production_db_name_xxx

DB_PRODUCTION_USERNAME: production_db_username_xxx

DB_PRODUCTION_PASSWORD: production_db_password_xxx

DB_TEST: test_db_name

MYSQL_SOCKET: /tmp/mysql.sock
</code>