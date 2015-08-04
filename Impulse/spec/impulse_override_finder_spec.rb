ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseOverrideFinder do

    before(:all) do
        class ImpulseOverrideFinderTest
            include ImpulseOverrideFinder
        end

        @browser = ImpulseOverrideFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseOverrideFinderTest) if Object.const_defined?(:ImpulseOverrideFinderTest)
    end

    it "should have a cart pur save button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_pur_save_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-pur-number-save-button").ordered.and_return("ats-pur-number-save-button")
        mocked_input.should_receive(:className).with("ats-pur-number-save-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_pur_save_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.cart_pur_save_button.should == mocked_tooltag
    end

    it "should have a search field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")
        mocked_at = double("at")

        $tracer.should_receive(:trace).with(:search_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-search-field").ordered.and_return("ats-search-field")
        mocked_input.should_receive(:className).with("ats-search-field").ordered.and_return(mocked_className)
        mocked_className.should_receive(:at).with(0).ordered.and_return(mocked_at)
        ToolTag.should_receive(:new).with(mocked_at, :search_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.search_field.should == mocked_tooltag
    end

    it "should have a product list" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_tbody = double("tbody")
        mocked_find = double("find")
        mocked_tr = double("tr")
        mocked_impulsesearchproductlist = double("ImpulseSearchProductList")

        $tracer.should_receive(:trace).with(:product_list).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        @browser.should_receive(:create_ats_regex_string).with("ats-product-list").ordered.and_return("ats-product-list")
        mocked_table.should_receive(:className).with("ats-product-list").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:tbody).ordered.and_return(mocked_tbody)
        mocked_tbody.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
        ToolTag.should_receive(:new).with(mocked_tr, :product_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSearchProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulsesearchproductlist)

        @browser.product_list.should == mocked_impulsesearchproductlist
    end

end
