namespace('db') do
  task('before_create') do
    if adapter == "postgresql"
      role = db_config["username"]
      system("psql -c 'create role \"#{role}\" with createdb login;' template1")
    end
    true
  end
end
