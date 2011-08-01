Feature: h4
  As a web developer
  I want to locate h4 elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithH4 < BasePageClass
      include WatirPageHelper
      h4 :element
    end
    """

  Scenario: h4 element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithH4.new true
    page.element_h4.exists?.should be_true
    """

  Scenario: h4 text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithH4.new true
    page.element.should == 'h4 content'
    """
