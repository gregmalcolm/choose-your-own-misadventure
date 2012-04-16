Given /^there are books$/ do
  create(:book, :name=>"War and peas")
  create(:book, :name=>"Where llamas dare")
end

When /^I go to the books page$/ do
  visit '/'
end

Then /^I should see books$/ do
  page.should have_content "War and peas"
  page.should have_content "Where llamas dare"
end

