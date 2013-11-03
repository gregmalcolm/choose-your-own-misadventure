namespace 'db' do
  def adapter
    db_config["adapter"]
  end

  def role_name
    db_config["username"]
  end

  def db_config
    Rails.configuration.database_configuration[Rails.env]
  end
end
