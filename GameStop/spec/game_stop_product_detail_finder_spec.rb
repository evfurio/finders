ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopProductDetailFinder, "finders" do

    before(:all) do
        class GameStopProductDetailFinderTest
            include GameStopProductDetailFinder
        end

        @browser = GameStopProductDetailFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopProductDetailFinderTest) if Object.const_defined?(:GameStopProductDetailFinderTest)
    end


    it "should have a product title label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_title_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("cartridgeProductHeader").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h1).ordered.and_return(mocked_h1)
        mocked_h1.should_receive(:className).with("grid_17").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_title_label).ordered.and_return(mocked_tooltag)

        @browser.product_title_label.should == mocked_tooltag
    end

    it "should return product title" do
        $tracer.should_receive(:trace).with(:product_title).ordered

        mocked_title_label = double("product_title_label")
        @browser.should_receive(:product_title_label).with(no_args).ordered.and_return(mocked_title_label)
        mocked_cite = double("cite")
        mocked_title_label.should_receive(:child).with("cite").ordered.and_return(mocked_cite)

        mocked_innerText = double("innerText")
        mocked_cite.should_receive(:innerText).with(no_args).and_return(mocked_innerText)

        mocked_inner_text = double("inner_text")
        mocked_title_label.should_receive(:inner_text).ordered.and_return(mocked_inner_text)
        mocked_inner_text.should_receive(:gsub).with(mocked_innerText, "").and_return(" a product title ")

        @browser.product_title.should == "a product title"
    end


    it "should have a buy preowned panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_h2 = double("h2")
        mocked_parent = double("parent")
        mocked_gamestopdetailsbuypanel = double("GameStopDetailsBuyPanel")

        $tracer.should_receive(:trace).with(:buy_preowned_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("buybox").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h2).with("PRE-OWNED$").ordered.and_return(mocked_h2)
        mocked_h2.should_receive(:parent).with("div").ordered.and_return(mocked_parent)
        ToolTag.should_receive(:new).with(mocked_parent, :buy_preowned_panel).ordered.and_return(mocked_tooltag)
        GameStopDetailsBuyPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopdetailsbuypanel)

        @browser.buy_preowned_panel.should == mocked_gamestopdetailsbuypanel
    end


    it "should have a buy new panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_h2 = double("h2")
        mocked_parent = double("parent")
        mocked_gamestopdetailsbuypanel = double("GameStopDetailsBuyPanel")

        $tracer.should_receive(:trace).with(:buy_new_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("buybox").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h2).with("/NEW$/").ordered.and_return(mocked_h2)
        mocked_h2.should_receive(:parent).with("div").ordered.and_return(mocked_parent)
        ToolTag.should_receive(:new).with(mocked_parent, :buy_new_panel).ordered.and_return(mocked_tooltag)
        GameStopDetailsBuyPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopdetailsbuypanel)

        @browser.buy_new_panel.should == mocked_gamestopdetailsbuypanel
    end


    it "should have a buy first panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_gamestopdetailsbuypanel = double("GameStopDetailsBuyPanel")

        $tracer.should_receive(:trace).with(:buy_first_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("buybox").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("buy1").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :buy_first_panel).ordered.and_return(mocked_tooltag)
        GameStopDetailsBuyPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopdetailsbuypanel)

        @browser.buy_first_panel.should == mocked_gamestopdetailsbuypanel
    end


    it "should have a buy second panel" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_gamestopdetailsbuypanel = double("GameStopDetailsBuyPanel")

      $tracer.should_receive(:trace).with(:buy_second_panel).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:className).with("buybox").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:className).with("buy2").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :buy_second_panel).ordered.and_return(mocked_tooltag)
      GameStopDetailsBuyPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopdetailsbuypanel)

      @browser.buy_second_panel.should == mocked_gamestopdetailsbuypanel
    end


    it "should have a we also recommend label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_with = double("with")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_h2 = double("h2")

        $tracer.should_receive(:trace).with(:we_also_recommend_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:with).ordered.and_return(mocked_with)
        mocked_with.should_receive(:className).with("carouselbox").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h2).ordered.and_return(mocked_h2)
        ToolTag.should_receive(:new).with(mocked_h2, :we_also_recommend_label).ordered.and_return(mocked_tooltag)

        @browser.we_also_recommend_label.should == mocked_tooltag
    end


    it "should have a product recommendation list endeca" do
        mocked_tooltag = double("ToolTag")
        mocked_find = double("find")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_gamestopproductdetailrecommendationlist = double("GameStopProductDetailRecommendationList")

        $tracer.should_receive(:trace).with(:product_recommendation_list_endeca).ordered

        @browser.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("items").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_recommendation_list_endeca).ordered.and_return(mocked_tooltag)
        GameStopProductDetailRecommendationList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductdetailrecommendationlist)

        @browser.product_recommendation_list_endeca.should == mocked_gamestopproductdetailrecommendationlist
    end


    it "should have a product recommendation list certona" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_li = double("li")
        mocked_gamestopproductdetailrecommendationlist = double("GameStopProductDetailRecommendationList")

        $tracer.should_receive(:trace).with(:product_recommendation_list_certona).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("widget_style").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:li).ordered.and_return(mocked_li)
        ToolTag.should_receive(:new).with(mocked_li, :product_recommendation_list_certona).ordered.and_return(mocked_tooltag)
        GameStopProductDetailRecommendationList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductdetailrecommendationlist)

        @browser.product_recommendation_list_certona.should == mocked_gamestopproductdetailrecommendationlist
    end


    it "should have a product recommendation list previous arrow" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_with = double("with")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_recommendation_list_previous_arrow).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:with).ordered.and_return(mocked_with)
        mocked_with.should_receive(:className).with("prev").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_recommendation_list_previous_arrow).ordered.and_return(mocked_tooltag)

        @browser.product_recommendation_list_previous_arrow.should == mocked_tooltag
    end


    it "should have a product recommendation list next arrow" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_with = double("with")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:product_recommendation_list_next_arrow).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:with).ordered.and_return(mocked_with)
        mocked_with.should_receive(:className).with("next").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :product_recommendation_list_next_arrow).ordered.and_return(mocked_tooltag)

        @browser.product_recommendation_list_next_arrow.should == mocked_tooltag
    end

		it "should have upsell_checkout_button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:upsell_checkout_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("checkoutButton").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :upsell_checkout_button).ordered.and_return(mocked_tooltag)

        @browser.upsell_checkout_button.should == mocked_tooltag
    end
		
		it "should have upsell_close_button" do
        mocked_tooltag = double("ToolTag")
        mocked_img = double("img")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:upsell_close_button).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_img)
        mocked_img.should_receive(:id).with("btnClose").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :upsell_close_button).ordered.and_return(mocked_tooltag)

        @browser.upsell_close_button.should == mocked_tooltag
    end
		
		it "should have upsell_modal_panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:upsell_modal_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("modalPanel").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :upsell_modal_panel).ordered.and_return(mocked_tooltag)

        @browser.upsell_modal_panel.should == mocked_tooltag
    end

end
