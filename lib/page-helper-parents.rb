# A helper mixin to allow you to access elements using parent elements easier
## This module assumes you're already including WatirPageHelper
module PageHelperParents
  def self.included(cls)
    cls.extend ClassMethods
  end

  # A collection of class methods that generate helper methods that are mixed into a calling class.
  module ClassMethods

    private

    #overriding method from WatirPageHelper to add :parent. When parent is declared, you must declare
    #The method you will be calling in quotes
    #Example:
    # div :my_parent, :id => "someParent"
    # p :my_first_child, :index => 0, :parent => "my_parent_div"
    # p :my_second_child, :index => 1, :parent => "my_parent_div"
    def create_element_getter name, identifier, type, block
      parent_name = identify_parent(identifier)
      define_method name do
        parent = self.send(parent_name.to_sym) unless parent_name.nil?
        parent ||= @browser
        if block
          block.arity == 1 ? block.call(self) : block.call
        else
          (identifier.nil? || identifier.length == 0) ? parent.send(type) : parent.send(type, identifier)
        end
      end
    end

    def identify_parent(identifier)
      if identifier.nil?
        return nil
      else
        return identifier.delete(:parent)
      end
    end
  end

end
