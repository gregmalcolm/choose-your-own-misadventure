BOOKS = <<-JSON
[
  {name: "War and peas"},
  {name: "Where llamas dare" }
]
JSON

Given /^I'm on the books page$/ do
  visit '/'
end

When /^there are books$/ do
  page.evaluate_script("window.router.booksView.collection.add(#{BOOKS})")
end

Then /^I should see books$/ do
  page.should have_content "War and peas"
  page.should have_content "Where llamas dare"
end

