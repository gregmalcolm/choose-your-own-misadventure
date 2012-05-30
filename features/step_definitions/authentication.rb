def current_user
  @current_user
end

Given /^I am authenticated$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  @current_user = User.create!(:email => email, :password => password, 
                               :password_confirmation => password)
  visit '/users/sign_in'
  fill_in "user_email", :with=>email
  fill_in "user_password", :with=>password
  click_button "Sign in"

  current_user
end
