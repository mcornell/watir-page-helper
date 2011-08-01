Feature: H1
  As a web developer
  I want to locate H1 elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithH1 < BasePageClass
      include WatirPageHelper
      h1 :element
    end
    """
  Scenario: h1 element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithH1.new true
    page.element_h1.exists?.should be_true
    """

  Scenario: h1 text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithH1.new true
    page.element.should == 'h1 content'
    """