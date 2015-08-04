ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"




describe GameStopMobileCartFinder do
    before(:all) do
        class GameStopMobileCartFinderTest
            include GameStopMobileCartFinder
        end

        @browser = GameStopMobileCartFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileCartFinderTest) if Object.const_defined?(:GameStopMobileCartFinderTest)
    end

    it "should have a cart list" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_table = double("table")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_tr = double("tr")
        mocked_gamestopmobilecartlist = double("GameStopMobileCartList")

        $tracer.should_receive(:trace).with(:cart_list).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:table).ordered.and_return(mocked_table)
        mocked_table.should_receive(:id).with("order_summary").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
        ToolTag.should_receive(:new).with(mocked_tr, :cart_list, @browser).ordered.and_return(mocked_tooltag)
        GameStopMobileCartList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobilecartlist)

        @browser.cart_list.should == mocked_gamestopmobilecartlist
    end


    it "should have a view cart button" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:view_cart_button).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-nav_cart_link").ordered.and_return("ats-nav_cart_link")
      mocked_a.should_receive(:className).with("ats-nav_cart_link").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :view_cart_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.view_cart_button.should == mocked_tooltag

    end


    it "should have a shopping cart label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:shopping_cart_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("cartPlaceholder").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :shopping_cart_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.shopping_cart_label.should == mocked_tooltag
    end


    it "should have a shopping cart edit link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:shopping_cart_edit_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("edit_cart").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :shopping_cart_edit_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.shopping_cart_edit_link.should == mocked_tooltag
    end


    it "should have a shopping cart edit done link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:shopping_cart_edit_done_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("edit_cart_done").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :shopping_cart_edit_done_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.shopping_cart_edit_done_link.should == mocked_tooltag
    end


    it "should have a empty cart label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:empty_cart_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("empty_cart").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :empty_cart_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.empty_cart_label.should == mocked_tooltag
    end

end

