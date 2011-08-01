Feature: h2 element location
  As a web developer
  I want to locate h2 elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithH2 < BasePageClass
      include WatirPageHelper
      h2 :element
    end
    """

  Scenario: h2 element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithH2.new true
    page.element_h2.exists?.should be_true
    """

  Scenario: h2 text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithH2.new true
    page.element.should == 'h2 content'
    """
