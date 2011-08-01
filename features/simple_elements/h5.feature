Feature: h5
  As a web developer
  I want to locate h5 elements
  So that I can write tests that make assertions about their content

  Background:
    When I define a page class as:
    """
    class PageWithH5 < BasePageClass
      include WatirPageHelper
      h5 :element, :id => 'h5_identifier'
    end
    """

  Scenario: h5 element is located
    Then I should be able to locate the element with the following code:
    """
    page = PageWithH5.new true
    page.element_h5.exists?.should be_true
    """

  Scenario: h5 text is extracted
    Then I should be able to execute the following assertion:
    """
    page = PageWithH5.new true
    page.element.should == 'h5 expected content'
    """
