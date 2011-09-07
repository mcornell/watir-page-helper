require "rspec"

describe "Page Helper Parents" do
  before(:all) { @browser = Watir::Browser.new :firefox  }
  after(:all) { @browser.close }

  it "should support finding items using a parent element rather than from @browser" do
    page = ParentHelper.new @browser, true
    page.outside_paragraph.should == "Outside"
    page.nested_paragraph.should == "This is a paragraph."
    page.nested_paragraph_2.should == "This is a paragraph."
  end
end