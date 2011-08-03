Feature: p
  As a web developer
  I want to locate p elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithP < BasePageClass
      include WatirPageHelper
      p :element, :id => 'p_identifier'
    end
    """

  Scenario: p element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithP.new true
    page.element_p.exists?.should be_true
    """

  Scenario: p text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithP.new true
    page.element.should == 'p expected content'
    """
