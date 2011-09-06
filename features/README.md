# Watir Page Helper

This is a ruby gem that assists in creating page model
abstractions for maintainable browser automation.

It provides helper methods to allow expressive and easy access to elements.

# Example

Simply define a page such as:

    require 'watir-webdriver'
    require 'watir-page-helper'

    class MyPage
      include WatirPageHelper

      direct_url 'http://www.google.com'
      expected_element :text_field, :name => 'q'
      expected_title 'Google'
      text_field :search_box, :name => 'q'
      button :search, :name => 'btnG'

      def initialize browser, visit = false
        @browser = browser
        goto if visit

        expected_element if respond_to? :expected_element
        has_expected_title? if respond_to? :has_expected_title?
      end
    end

This page can now be used in rspec specs, cucumber features or in isolation

    browser = Watir::Browser.new :chrome
    page = MyPage.new browser, true
    page.search_box = 'Watirmelon' #This method is created by
    WatirPageHelper
    page.search #This method is created by WatirPageHelper also
    browser.close

## Issues

This documentation is [open source](https://github.com/alisterscott/watir-page-helper/tree/master/features), and a work in progress.  If you find it incomplete or confusing, please
[submit an issue](http://github.com/alisterscott/watir-page-helper/issues), or, better yet,
[a pull request](http://github.com/alisterscott/watir-page-helper).

