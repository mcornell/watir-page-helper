module WatirPageHelper
  module ClassMethods

    def h1 name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_h1").text
      end
      create_element_getter "#{name}_h1", identifier, __method__, block
    end

    def h2 name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_h2").text
      end
      create_element_getter "#{name}_h2", identifier, __method__, block
    end

    def h3 name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_h3").text
      end
      create_element_getter "#{name}_h3", identifier, __method__, block
    end

    def h4 name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_h4").text
      end
      create_element_getter "#{name}_h4", identifier, __method__, block
    end

    def h5 name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_h5").text
      end
      create_element_getter "#{name}_h5", identifier, __method__, block
    end

    def h6 name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_h6").text
      end
      create_element_getter "#{name}_h6", identifier, __method__, block
    end
  end
end
