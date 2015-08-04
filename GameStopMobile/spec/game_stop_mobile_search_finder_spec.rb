ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobileSearchFinder do
    before(:all) do
        class GameStopMobileSearchFinderTest
            include GameStopMobileSearchFinder
        end

        @browser = GameStopMobileSearchFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileSearchFinderTest) if Object.const_defined?(:GameStopMobileSearchFinderTest)
    end

    it "should have a search field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")
        mocked_gamestopmobilesearch = double("GameStopMobileSearch")

        $tracer.should_receive(:trace).with(:search_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("mobile_search").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :search_field, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileSearch.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobilesearch)

        @browser.search_field.should == mocked_gamestopmobilesearch
    end


    it "should have a product list" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_tr = double("tr")
        mocked_gamestopmobileproductlist = double("GameStopMobileProductList")

        $tracer.should_receive(:trace).with(:product_list).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("resultsPlaceholder").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
        ToolTag.should_receive(:new).with(mocked_tr, :product_list, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileproductlist)

        @browser.product_list.should == mocked_gamestopmobileproductlist
    end

    it "should have a best_seller_link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:best_seller_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("menu_BestSellers").ordered.and_return("menu_BestSellers")
      mocked_a.should_receive(:id).with("menu_BestSellers").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :best_seller_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.best_seller_link.should == mocked_tooltag

    end

    it "should have a coming_soon_link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:coming_soon_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("menu_ComingSoon").ordered.and_return("menu_ComingSoon")
      mocked_a.should_receive(:id).with("menu_ComingSoon").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :coming_soon_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.coming_soon_link.should == mocked_tooltag

    end

    it "should have a now_shipping_link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:now_shipping_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("menu_NowShipping").ordered.and_return("menu_NowShipping")
      mocked_a.should_receive(:id).with("menu_NowShipping").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :now_shipping_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.now_shipping_link.should == mocked_tooltag

    end

    it "should have a load_more_button" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:load_more_button).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("alternate_button").ordered.and_return("alternate_button")
      mocked_a.should_receive(:className).with("alternate_button").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :load_more_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.load_more_button.should == mocked_tooltag

    end

end

