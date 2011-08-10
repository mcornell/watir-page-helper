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

    def div name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_div").text
      end
      create_element_getter "#{name}_div", identifier, __method__, block
    end

    def span name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_span").text
      end
      create_element_getter "#{name}_span", identifier, __method__, block
    end

    def p name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_p").text
      end
      create_element_getter "#{name}_p", identifier, __method__, block
    end

    def dl name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_dl").text
      end
      create_element_getter "#{name}_dl", identifier, __method__, block
    end

    def dd name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_dd").text
      end
      create_element_getter "#{name}_dd", identifier, __method__, block
    end

    def dt name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_dt").text
      end
      create_element_getter "#{name}_dt", identifier, __method__, block
    end

    def form name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_form").text
      end
      create_element_getter "#{name}_form", identifier, __method__, block
    end

    def li name, identifier=nil, &block
      define_method(name) do
        self.send("#{name}_li").text
      end
      create_element_getter "#{name}_li", identifier, __method__, block
    end
  end
end
