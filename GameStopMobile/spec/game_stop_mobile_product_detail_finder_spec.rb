ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobileProductDetailFinder do
    before(:all) do
        class GameStopMobileProductDetailFinderTest
            include GameStopMobileProductDetailFinder
        end

        @browser = GameStopMobileProductDetailFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileProductDetailFinderTest) if Object.const_defined?(:GameStopMobileProductDetailFinderTest)
    end

    it "should have a product title label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_with = double("with")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_h2 = double("h2")

        $tracer.should_receive(:trace).with(:product_title_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:with).ordered.and_return(mocked_with)
        mocked_with.should_receive(:className).with("product_description").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h2).ordered.and_return(mocked_h2)
        ToolTag.should_receive(:new).with(mocked_h2, :product_title_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.product_title_label.should == mocked_tooltag
    end


    it "should have a product price list" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_with = double("with")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_tr = double("tr")
        mocked_gamestopmobileproductdetailpricelist = double("GameStopMobileProductDetailPriceList")

        $tracer.should_receive(:trace).with(:product_price_list).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:with).ordered.and_return(mocked_with)
        mocked_with.should_receive(:className).with("product_buy").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
        ToolTag.should_receive(:new).with(mocked_tr, :product_price_list, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileProductDetailPriceList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileproductdetailpricelist)

        @browser.product_price_list.should == mocked_gamestopmobileproductdetailpricelist
    end

    it "should have a back_to_top_link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:back_to_top_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("top").ordered.and_return("top")
      mocked_a.should_receive(:className).with("top").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :back_to_top_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.back_to_top_link.should == mocked_tooltag

    end

    it "should have a browse_all_link" do
      mocked_tooltag = double("ToolTag")
      mocked_section = double("section")
      mocked_id = double("id")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:browse_all_link).ordered

      @browser.should_receive(:section).ordered.and_return(mocked_section)
      @browser.should_receive(:create_ats_regex_string).with("browse_all").ordered.and_return("browse_all")
      mocked_section.should_receive(:id).with("browse_all").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :browse_all_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.browse_all_link.should == mocked_tooltag

    end

    it "should have an sort_option_selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_id = double("id")
      mocked_gamestopmobileselector = double("GameStopMobileSelector")

      $tracer.should_receive(:trace).with(:sort_option_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      mocked_select.should_receive(:id).with("sort_options").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :sort_option_selector, @browser).ordered.and_return(mocked_tooltag)
      GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

      @browser.sort_option_selector.should == mocked_gamestopmobileselector
    end


end

