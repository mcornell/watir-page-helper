Feature: h6
  As a web developer
  I want to locate h6 elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithH6 < BasePageClass
      include WatirPageHelper
      h6 :element
    end
    """

  Scenario: h6 element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithH6.new true
    page.element_h6.exists?.should be_true
    """

  Scenario: h6 text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithH6.new true
    page.element.should == 'h6 content'
    """
