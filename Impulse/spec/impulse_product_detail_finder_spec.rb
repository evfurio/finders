ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseProductDetailFinder do

    before(:all) do
        class ImpulseProductDetailFinderTest
            include ImpulseProductDetailFinder
        end

        @browser = ImpulseProductDetailFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseProductDetailFinderTest) if Object.const_defined?(:ImpulseProductDetailFinderTest)
    end

    it "should have a add to cart button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:add_to_cart_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-add-to-cart-button").ordered.and_return("ats-add-to-cart-button")
        mocked_a.should_receive(:className).with("ats-add-to-cart-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :add_to_cart_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.add_to_cart_button.should == mocked_tooltag
    end

    it "should have a new releases panel" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:new_releases_panel).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:id).with("newreleases").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :new_releases_panel, @browser).ordered.and_return(mocked_tooltag)

        @browser.new_releases_panel.should == mocked_tooltag
    end

    it "should have a news article date label" do
        mocked_tooltag = double("ToolTag")
        mocked_article = double("article")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_h2 = double("h2")

        $tracer.should_receive(:trace).with(:news_article_date_label).ordered

        @browser.should_receive(:article).ordered.and_return(mocked_article)
        mocked_article.should_receive(:className).with("basic").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h2).ordered.and_return(mocked_h2)
        ToolTag.should_receive(:new).with(mocked_h2, :news_article_date_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.news_article_date_label.should == mocked_tooltag
    end

    it "should have a product header label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_header_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-product-title").ordered.and_return("ats-product-title")
        mocked_h1.should_receive(:className).with("ats-product-title").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_header_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.product_header_label.should == mocked_tooltag
    end

    it "should have a product publisher label" do
        mocked_tooltag = double("ToolTag")
        mocked_h2 = double("h2")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_publisher_label).ordered

        @browser.should_receive(:h2).ordered.and_return(mocked_h2)
        mocked_h2.should_receive(:className).with("ats-product-publisher").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_publisher_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.product_publisher_label.should == mocked_tooltag
    end

    it "should have a eula panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulseeulapanel = double("ImpulseEulaPanel")

        $tracer.should_receive(:trace).with(:eula_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-eula-panel").ordered.and_return("ats-eula-panel")
        mocked_div.should_receive(:className).with("ats-eula-panel").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :eula_panel, @browser).ordered.and_return(mocked_tooltag)
        ImpulseEulaPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseeulapanel)

        @browser.eula_panel.should == mocked_impulseeulapanel
    end

end
