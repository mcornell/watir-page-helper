Two helper methods are generated for simple elements (such as headings, spans):

* a *elementname* method to access the text contained by the element
* a *elementname*_*elementtype* method to access the actual watir element

For example, with the following page class definition:

    class MyPage < BasePage
      h1 :main_heading, :id => 'main_heading'
    end

A `main_heading` method will be generated to access the h1 element with id main_heading and a
`main_heading_h1` method will be generated to access the watir element.