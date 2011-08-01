$: << File.join(Dir.pwd, 'lib')

require 'watir-page-helper'
require 'watir-webdriver'

module Browser
  BROWSER = Watir::Browser.new
end

World Browser

class BasePageClass
  include WatirPageHelper

  direct_url "file://#{File.expand_path(File.dirname(__FILE__))}/test.html"

  def initialize visit = false
    @browser = Browser::BROWSER
    goto if visit

    expected_element if respond_to? :expected_element
    has_expected_title? if respond_to? :has_expected_title?
  end

  def method_missing sym, *args, &block
    @browser.send sym, *args, &block
  end
end

at_exit do
  Browser::BROWSER.close
end