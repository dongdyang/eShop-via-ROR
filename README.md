# Shop-by-ROR
it is about an shop online project and  i am doing it . which is also an final project of ruby course and database course in Buaa 

The following is how to run this two project.

1.project-postgre
	make sure you have install pg,
	create database named "appname_development "in your pg
	then in command line under the root directory:
		bundle install
		rake db:migrate
		rake db:seed
		rails server
	finally , visit --->   "localhost:3000"

2.project-sqlite3
this are quite the same with the formmer one.
but u dont need to any config
in commnd line:
	bundle install
	rake db:migrate
	rake db:seed
	rails server

3.Attention for project-sqlite3
if "rake db:migrate "failed , do delete the file "db/schema" and the database of sqlite3 in "db" directory .
