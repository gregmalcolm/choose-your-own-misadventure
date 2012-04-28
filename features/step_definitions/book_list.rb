def po
  @page_object ||= Page::BookList.new
end

Given /^there are books$/ do
  create(:book, :name=>"War and peas")
  create(:book, :name=>"Where llamas dare")
end

Given /^I am on the books page$/ do
  visit po.books_page
end

When /^I go to the books page$/ do
  visit po.books_page
end

When /^I click on the book name input box$/ do
  find(po.create_book_input_id).click
end

Then /^I should see books$/ do
  page.should have_content "War and peas"
  page.should have_content "Where llamas dare"
end

Then /^I should see a create book button$/ do
  find_button(po.create_book_button_id).visible?.should be_true
end

Then /^I should not see a create book button$/ do
  find_button(po.create_book_button_id).visible?.should be_false
end
