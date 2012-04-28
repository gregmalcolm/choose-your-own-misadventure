 namespace :db do
   desc 'Create initial roles and databases for Choose Your Own Misadventure'
   task :generate do
     puts "Creating Choose Your Own Misadventure roles and databases"
     system("psql -c \"create role postgres with createdb login;\" template1")
     system("psql -c \"create database misadventure_development owner postgres;\" template1")
     system("psql -c \"create database misadventure_test owner postgres;\" template1")
     system("psql -c \"create database misadventure_production owner postgres;\" template1")
   end

   desc 'Create initial roles and databases for Choose Your Own Misadventure'
   task :destroy do
     puts "Dropping Choose Your Own Misadventure roles and databases"
     system("psql -c \"drop database misadventure_production;\" template1")
     system("psql -c \"drop database misadventure_test;\" template1")
     system("psql -c \"drop database misadventure_development;\" template1")
     system("psql -c \"drop role postgres;\" template1")
   end
 end
