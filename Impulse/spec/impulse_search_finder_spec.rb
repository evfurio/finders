ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseSearchFinder do

    before(:all) do
        class ImpulseSearchFinderTest
            include ImpulseSearchFinder
        end

        @browser = ImpulseSearchFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseSearchFinderTest) if Object.const_defined?(:ImpulseSearchFinderTest)
    end

    it "should have a search button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-search-button").ordered.and_return("ats-search-button")
        mocked_input.should_receive(:className).with("ats-search-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.search_button.should == mocked_tooltag
    end

    it "should have a best sellers tab" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:best_sellers_tab).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-bestsellers-tab").ordered.and_return("ats-bestsellers-tab")
        mocked_a.should_receive(:className).with("ats-bestsellers-tab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :best_sellers_tab, @browser).ordered.and_return(mocked_tooltag)

        @browser.best_sellers_tab.should == mocked_tooltag
    end

    it "should have a best sellers list" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulsetabbedproductlist = double("ImpulseTabbedProductList")

        $tracer.should_receive(:trace).with(:best_sellers_list).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-bestsellers").ordered.and_return("ats-bestsellers")
        mocked_li.should_receive(:className).with("ats-bestsellers").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("imgBorder").ordered.and_return("imgBorder")
        mocked_div.should_receive(:className).with("imgBorder").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :best_sellers_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseTabbedProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulsetabbedproductlist)

        @browser.best_sellers_list.should == mocked_impulsetabbedproductlist
    end

    it "should have a available now tab" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:available_now_tab).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-availablenow-tab").ordered.and_return("ats-availablenow-tab")
        mocked_a.should_receive(:className).with("ats-availablenow-tab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :available_now_tab, @browser).ordered.and_return(mocked_tooltag)

        @browser.available_now_tab.should == mocked_tooltag
    end

    it "should have a available now list" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulsetabbedproductlist = double("ImpulseTabbedProductList")

        $tracer.should_receive(:trace).with(:available_now_list).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-availablenow").ordered.and_return("ats-availablenow")
        mocked_li.should_receive(:className).with("ats-availablenow").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("imgBorder").ordered.and_return("imgBorder")
        mocked_div.should_receive(:className).with("imgBorder").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :available_now_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseTabbedProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulsetabbedproductlist)

        @browser.available_now_list.should == mocked_impulsetabbedproductlist
    end

    it "should have a coming soon tab" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:coming_soon_tab).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-comingsoon-tab").ordered.and_return("ats-comingsoon-tab")
        mocked_a.should_receive(:className).with("ats-comingsoon-tab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :coming_soon_tab, @browser).ordered.and_return(mocked_tooltag)

        @browser.coming_soon_tab.should == mocked_tooltag
    end

    it "should have a coming soon list" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulsetabbedproductlist = double("ImpulseTabbedProductList")

        $tracer.should_receive(:trace).with(:coming_soon_list).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-comingsoon").ordered.and_return("ats-comingsoon")
        mocked_li.should_receive(:className).with("ats-comingsoon").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("imgBorder").ordered.and_return("imgBorder")
        mocked_div.should_receive(:className).with("imgBorder").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :coming_soon_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseTabbedProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulsetabbedproductlist)

        @browser.coming_soon_list.should == mocked_impulsetabbedproductlist
    end

    it "should have a on sale tab" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:on_sale_tab).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-onsale-tab").ordered.and_return("ats-onsale-tab")
        mocked_a.should_receive(:className).with("ats-onsale-tab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :on_sale_tab, @browser).ordered.and_return(mocked_tooltag)

        @browser.on_sale_tab.should == mocked_tooltag
    end

    it "should have a on sale list" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulsetabbedproductlist = double("ImpulseTabbedProductList")

        $tracer.should_receive(:trace).with(:on_sale_list).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-onsale").ordered.and_return("ats-onsale")
        mocked_li.should_receive(:className).with("ats-onsale").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("imgBorder").ordered.and_return("imgBorder")
        mocked_div.should_receive(:className).with("imgBorder").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :on_sale_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseTabbedProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulsetabbedproductlist)

        @browser.on_sale_list.should == mocked_impulsetabbedproductlist
    end
end

