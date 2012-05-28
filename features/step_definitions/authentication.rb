Given /^I am authenticated$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with=>email
  fill_in "user_password", :with=>password
  click_button "Sign in"
end
