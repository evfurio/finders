ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

########### ut-generator unit test input per finder - to be placed in src files accordingly.
#unit_test: search_results_label, span.className(create_ats_regex_string("ats-wis-searchresultslbl"))
#unit_test: product_list, div.className(create_ats_regex_string("productsearchitems")).tr;WebInStoreProductList

describe WebInStoreSearchFinder do

    before(:all) do
      class WebInStoreSearchFinderTest
        include WebInStoreSearchFinder
      end

      @browser = WebInStoreSearchFinderTest.allocate
    end

    after(:all) do
      Object.send(:remove_const, :WebInStoreSearchFinderTest) if Object.const_defined?(:WebInStoreSearchFinderTest)
    end

    it "should have a search results label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_results_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchresultslbl").ordered.and_return("ats-wis-searchresultslbl")
        mocked_span.should_receive(:className).with("ats-wis-searchresultslbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_results_label).ordered.and_return(mocked_tooltag)

        @browser.search_results_label.should == mocked_tooltag
    end

    it "should have a product list" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_tr = double("tr")
        mocked_webinstoreproductlist = double("WebInStoreProductList")

        $tracer.should_receive(:trace).with(:search_product_list).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("productsearchitems").ordered.and_return("productsearchitems")
        mocked_div.should_receive(:className).with("productsearchitems").ordered.and_return(mocked_className)
        mocked_className.should_receive(:tr).ordered.and_return(mocked_tr)
        ToolTag.should_receive(:new).with(mocked_tr, :search_product_list).ordered.and_return(mocked_tooltag)
        WebInStoreProductList.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_webinstoreproductlist)

        @browser.search_product_list.should == mocked_webinstoreproductlist
    end

end
