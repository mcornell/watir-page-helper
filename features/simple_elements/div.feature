Feature: div
  As a web developer
  I want to locate div elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithDIV < BasePageClass
      include WatirPageHelper
      div :element, :id => 'div_identifier'
    end
    """

  Scenario: div element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithDIV.new true
    page.element_div.exists?.should be_true
    """

  Scenario: div text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithDIV.new true
    page.element.should == 'div expected content'
    """
