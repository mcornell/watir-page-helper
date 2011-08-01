Feature: span
  As a web developer
  I want to locate span elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithSPAN < BasePageClass
      include WatirPageHelper
      span :element
    end
    """

  Scenario: span element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithSPAN.new true
    page.element_span.exists?.should be_true
    """

  Scenario: span text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithSPAN.new true
    page.element.should == 'span content'
    """
