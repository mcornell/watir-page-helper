Feature: h3 element location
  As a web developer
  I want to locate h3 elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithH3 < BasePageClass
      include WatirPageHelper
      h3 :element
    end
    """

  Scenario: h3 element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithH3.new true
    page.element_h3.exists?.should be_true
    """

  Scenario: h3 text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithH3.new true
    page.element.should == 'h3 content'
    """
