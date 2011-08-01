When /^I define a page class as:$/ do |string|
  eval string
end

Then /^I should be able to locate the element with the following code:$/ do |string|
  eval string
end

Then /^I should be able to execute the following assertion:$/ do |string|
  eval string
end