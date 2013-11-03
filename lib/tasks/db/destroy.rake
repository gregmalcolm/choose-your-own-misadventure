namespace('db') do
  task('after_drop') do
    if adapter == "postgresql"
      begin
        system("psql -c \"drop role #{role_name};\" template1 2>&1")
      rescue Exception => e
        puts "Role already destroyed: #{e}"
      end
    end
    true
  end
end
