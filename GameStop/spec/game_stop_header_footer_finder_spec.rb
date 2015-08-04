ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopHeaderFooterFinder, "finders" do

    before(:all) do
        class GameStopHeaderFooterFinderTest
            include GameStopHeaderFooterFinder
        end

        @browser = GameStopHeaderFooterFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopHeaderFooterFinderTest) if Object.const_defined?(:GameStopHeaderFooterFinderTest)
    end

    #badger badger badger badger, MUSHROOM MUSHROOM!
    it "should have a cart badger" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:cart_badge).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      mocked_span.should_receive(:id).with("cartbadge").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :cart_badge).ordered.and_return(mocked_tooltag)

      @browser.cart_badge.should == mocked_tooltag
    end

    it "should have a find a store link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:find_a_store_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-findstore").ordered.and_return("ats-findstore")
        mocked_a.should_receive(:className).with("ats-findstore").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :find_a_store_link).ordered.and_return(mocked_tooltag)

        @browser.find_a_store_link.should == mocked_tooltag
    end


    it "should have a events link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:events_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/lnkStoreEvents$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :events_link).ordered.and_return(mocked_tooltag)

        @browser.events_link.should == mocked_tooltag
    end


    it "should have a weekly ad link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:weekly_ad_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-weeklyad").ordered.and_return("ats-weeklyad")
        mocked_a.should_receive(:className).with("ats-weeklyad").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :weekly_ad_link).ordered.and_return(mocked_tooltag)

        @browser.weekly_ad_link.should == mocked_tooltag
    end


    it "should have a gift cards link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gift_cards_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-giftcard").ordered.and_return("ats-giftcard")
        mocked_a.should_receive(:className).with("ats-giftcard").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gift_cards_link).ordered.and_return(mocked_tooltag)

        @browser.gift_cards_link.should == mocked_tooltag
    end


    it "should have a welcome label" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:welcome_label).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("welcome").ordered.and_return("welcome")
        mocked_li.should_receive(:className).with("welcome").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :welcome_label).ordered.and_return(mocked_tooltag)

        @browser.welcome_label.should == mocked_tooltag
    end


    it "should have a my account link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:my_account_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-myaccount").ordered.and_return("ats-myaccount")
        mocked_a.should_receive(:className).with("ats-myaccount").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :my_account_link).ordered.and_return(mocked_tooltag)

        @browser.my_account_link.should == mocked_tooltag
    end


    it "should have a register link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:register_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-register").ordered.and_return("ats-register")
        mocked_a.should_receive(:className).with("ats-register").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :register_link).ordered.and_return(mocked_tooltag)

        @browser.register_link.should == mocked_tooltag
    end


    it "should have a order history link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_history_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-orderhist").ordered.and_return("ats-orderhist")
        mocked_a.should_receive(:className).with("ats-orderhist").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_history_link).ordered.and_return(mocked_tooltag)

        @browser.order_history_link.should == mocked_tooltag
    end


    it "should have a pc downloads link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:pc_downloads_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:className).with("omtr-link11").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :pc_downloads_link).ordered.and_return(mocked_tooltag)

        @browser.pc_downloads_link.should == mocked_tooltag
    end


    it "should have a wish list link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:wish_list_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-wishlist").ordered.and_return("ats-wishlist")
        mocked_a.should_receive(:className).with("ats-wishlist").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :wish_list_link).ordered.and_return(mocked_tooltag)

        @browser.wish_list_link.should == mocked_tooltag
    end


    it "should have a gamestop logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-logo").ordered.and_return("ats-logo")
        mocked_a.should_receive(:className).with("ats-logo").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_logo_link).ordered.and_return(mocked_tooltag)

        @browser.gamestop_logo_link.should == mocked_tooltag
    end


    it "should have a kongregate logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:kongregate_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("konglogo").ordered.and_return("konglogo")
        mocked_a.should_receive(:className).with("konglogo").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :kongregate_logo_link).ordered.and_return(mocked_tooltag)

        @browser.kongregate_logo_link.should == mocked_tooltag
    end


    it "should have a gameinformer logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gameinformer_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("gilogo").ordered.and_return("gilogo")
        mocked_a.should_receive(:className).with("gilogo").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gameinformer_logo_link).ordered.and_return(mocked_tooltag)

        @browser.gameinformer_logo_link.should == mocked_tooltag
    end


    it "should have a powerup rewards join today link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:powerup_rewards_join_today_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("purContent").ordered.and_return("purContent")
        mocked_a.should_receive(:className).with("purContent").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :powerup_rewards_join_today_link).ordered.and_return(mocked_tooltag)

        @browser.powerup_rewards_join_today_link.should == mocked_tooltag
    end


    it "should have a xbox 360 menu" do
        $tracer.should_receive(:trace).with(:xbox_360_menu).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-xbox360menu").ordered.and_return("ats-xbox360menu")
        mocked_className = double("className")
        mocked_a.should_receive(:className).with("ats-xbox360menu").ordered.and_return(mocked_className)

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_id = double("id")
        mocked_div.should_receive(:id).with("mm_xbox360").ordered.and_return(mocked_id)

        mocked_tooltag_link = double("ToolTag link")
        ToolTag.should_receive(:new).with(mocked_className, :xbox_360_menu).ordered.and_return(mocked_tooltag_link)

        mocked_tooltag_menu = double("ToolTag menu")
        ToolTag.should_receive(:new).with(mocked_id, :xbox_360_menu).ordered.and_return(mocked_tooltag_menu)

        mocked_gamestopproductlinkitem = double("GameStopProductLinkItem")
        GameStopProductLinkItem.should_receive(:new).with(mocked_tooltag_link, mocked_tooltag_menu).ordered.and_return(mocked_gamestopproductlinkitem)

        @browser.xbox_360_menu.should == mocked_gamestopproductlinkitem
    end


    it "should have a ps3 menu" do
        $tracer.should_receive(:trace).with(:ps3_menu).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-ps3menu").ordered.and_return("ats-ps3menu")
        mocked_className = double("className")
        mocked_a.should_receive(:className).with("ats-ps3menu").ordered.and_return(mocked_className)

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_id = double("id")
        mocked_div.should_receive(:id).with("mm_ps3").ordered.and_return(mocked_id)

        mocked_tooltag_link = double("ToolTag link")
        ToolTag.should_receive(:new).with(mocked_className, :ps3_menu).ordered.and_return(mocked_tooltag_link)

        mocked_tooltag_menu = double("ToolTag menu")
        ToolTag.should_receive(:new).with(mocked_id, :ps3_menu).ordered.and_return(mocked_tooltag_menu)

        mocked_gamestopproductlinkitem = double("GameStopProductLinkItem")
        GameStopProductLinkItem.should_receive(:new).with(mocked_tooltag_link, mocked_tooltag_menu).ordered.and_return(mocked_gamestopproductlinkitem)

        @browser.ps3_menu.should == mocked_gamestopproductlinkitem
    end

    it "should have a pc menu" do
        $tracer.should_receive(:trace).with(:pc_menu).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-pcmenu").ordered.and_return("ats-pcmenu")
        mocked_className = double("className")
        mocked_a.should_receive(:className).with("ats-pcmenu").ordered.and_return(mocked_className)

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_id = double("id")
        mocked_div.should_receive(:id).with("mm_pc").ordered.and_return(mocked_id)

        mocked_tooltag_link = double("ToolTag link")
        ToolTag.should_receive(:new).with(mocked_className, :pc_menu).ordered.and_return(mocked_tooltag_link)

        mocked_tooltag_menu = double("ToolTag menu")
        ToolTag.should_receive(:new).with(mocked_id, :pc_menu).ordered.and_return(mocked_tooltag_menu)

        mocked_gamestopproductlinkitem = double("GameStopProductLinkItem")
        GameStopProductLinkItem.should_receive(:new).with(mocked_tooltag_link, mocked_tooltag_menu).ordered.and_return(mocked_gamestopproductlinkitem)

        @browser.pc_menu.should == mocked_gamestopproductlinkitem
    end


    it "should have a wii menu" do
        $tracer.should_receive(:trace).with(:wii_menu).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-wiimenu").ordered.and_return("ats-wiimenu")
        mocked_className = double("className")
        mocked_a.should_receive(:className).with("ats-wiimenu").ordered.and_return(mocked_className)

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_id = double("id")
        mocked_div.should_receive(:id).with("mm_wii").ordered.and_return(mocked_id)

        mocked_tooltag_link = double("ToolTag link")
        ToolTag.should_receive(:new).with(mocked_className, :wii_menu).ordered.and_return(mocked_tooltag_link)

        mocked_tooltag_menu = double("ToolTag menu")
        ToolTag.should_receive(:new).with(mocked_id, :wii_menu).ordered.and_return(mocked_tooltag_menu)

        mocked_gamestopproductlinkitem = double("GameStopProductLinkItem")
        GameStopProductLinkItem.should_receive(:new).with(mocked_tooltag_link, mocked_tooltag_menu).ordered.and_return(mocked_gamestopproductlinkitem)

        @browser.wii_menu.should == mocked_gamestopproductlinkitem
    end


    it "should have a  3ds menu" do
        $tracer.should_receive(:trace).with(:_3ds_menu).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-3dsmenu").ordered.and_return("ats-3dsmenu")
        mocked_className = double("className")
        mocked_a.should_receive(:className).with("ats-3dsmenu").ordered.and_return(mocked_className)

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_id = double("id")
        mocked_div.should_receive(:id).with("mm_3ds").ordered.and_return(mocked_id)

        mocked_tooltag_link = double("ToolTag link")
        ToolTag.should_receive(:new).with(mocked_className, :_3ds_menu).ordered.and_return(mocked_tooltag_link)

        mocked_tooltag_menu = double("ToolTag menu")
        ToolTag.should_receive(:new).with(mocked_id, :_3ds_menu).ordered.and_return(mocked_tooltag_menu)

        mocked_gamestopproductlinkitem = double("GameStopProductLinkItem")
        GameStopProductLinkItem.should_receive(:new).with(mocked_tooltag_link, mocked_tooltag_menu).ordered.and_return(mocked_gamestopproductlinkitem)

        @browser._3ds_menu.should == mocked_gamestopproductlinkitem
    end


    it "should have a psp menu" do
        $tracer.should_receive(:trace).with(:psp_menu).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-pspmenu").ordered.and_return("ats-pspmenu")
        mocked_className = double("className")
        mocked_a.should_receive(:className).with("ats-pspmenu").ordered.and_return(mocked_className)

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_id = double("id")
        mocked_div.should_receive(:id).with("mm_psp").ordered.and_return(mocked_id)

        mocked_tooltag_link = double("ToolTag link")
        ToolTag.should_receive(:new).with(mocked_className, :psp_menu).ordered.and_return(mocked_tooltag_link)

        mocked_tooltag_menu = double("ToolTag menu")
        ToolTag.should_receive(:new).with(mocked_id, :psp_menu).ordered.and_return(mocked_tooltag_menu)

        mocked_gamestopproductlinkitem = double("GameStopProductLinkItem")
        GameStopProductLinkItem.should_receive(:new).with(mocked_tooltag_link, mocked_tooltag_menu).ordered.and_return(mocked_gamestopproductlinkitem)

        @browser.psp_menu.should == mocked_gamestopproductlinkitem
    end

    it "should have a other systems menu" do
        $tracer.should_receive(:trace).with(:other_systems_menu).ordered

        mocked_a = double("a")
        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_id = double("id")
        mocked_a.should_receive(:id).with("all_link").ordered.and_return(mocked_id)

        mocked_div = double("div")
        @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("mm_other").ordered.and_return("mm_other")
        mocked_className = double("className")
        mocked_div.should_receive(:className).with("mm_other").ordered.and_return(mocked_className)

        mocked_tooltag_link = double("ToolTag link")
        ToolTag.should_receive(:new).with(mocked_id, :other_systems_menu).ordered.and_return(mocked_tooltag_link)

        mocked_tooltag_menu = double("ToolTag menu")
        ToolTag.should_receive(:new).with(mocked_className, :other_systems_menu).ordered.and_return(mocked_tooltag_menu)

        mocked_gamestopproductlinkitem = double("GameStopProductLinkItem")
        GameStopProductLinkItem.should_receive(:new).with(mocked_tooltag_link, mocked_tooltag_menu).ordered.and_return(mocked_gamestopproductlinkitem)

        @browser.other_systems_menu.should == mocked_gamestopproductlinkitem
    end


    it "should have a my cart button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:my_cart_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-cartbtn").ordered.and_return("ats-cartbtn")
        mocked_a.should_receive(:className).with("ats-cartbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :my_cart_button).ordered.and_return(mocked_tooltag)

        @browser.my_cart_button.should == mocked_tooltag
    end


    it "should have a search field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-searchfield").ordered.and_return("ats-searchfield")
        mocked_input.should_receive(:className).with("ats-searchfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_field).ordered.and_return(mocked_tooltag)

        @browser.search_field.should == mocked_tooltag
    end


    it "should have a search button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-searchbtn").ordered.and_return("ats-searchbtn")
        mocked_input.should_receive(:className).with("ats-searchbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_button).ordered.and_return(mocked_tooltag)

        @browser.search_button.should == mocked_tooltag
    end


    it "should have a log in link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:log_in_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-login").ordered.and_return("ats-login")
        mocked_a.should_receive(:className).with("ats-login").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :log_in_link).ordered.and_return(mocked_tooltag)

        @browser.log_in_link.should == mocked_tooltag
    end


    it "should have a log out link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:log_out_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-logout").ordered.and_return("ats-logout")
        mocked_a.should_receive(:className).with("ats-logout").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :log_out_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.log_out_link.should == mocked_tooltag
    end


    it "should have a log in log out link" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_a = double("a")
        mocked_ = double("")

        $tracer.should_receive(:trace).with(:log_in_log_out_link).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("ats-loginlink").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :log_in_log_out_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.log_in_log_out_link.should == mocked_tooltag
    end


    it "should have a account name" do
        #mocked_tooltag = double("ToolTag")
        #mocked_span = double("span")
        #mocked_id = double("id")
        #mocked_ = double("")
        #
        #$tracer.should_receive(:trace).with(:account_name).ordered
        #
        #@browser.should_receive(:span).ordered.and_return(mocked_span)
        #mocked_span.should_receive(:id).with("/lblFirstName$/").ordered.and_return(mocked_id)
        #ToolTag.should_receive(:new).with(mocked_id, :account_name, @browser).ordered.and_return(mocked_tooltag)
        #
        #@browser.account_name.should == mocked_tooltag

        $tracer.should_receive(:trace).with(:account_name).ordered

        mocked_span = double("span")
        @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
        mocked_ats = double("ats")
        @browser.should_receive(:create_ats_regex_string).with("accountname").ordered.and_return(mocked_ats)
        mocked_className = double("className")
        mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

        mocked_ToolTag = double("ToolTag")
        ToolTag.should_receive(:new).with(mocked_className, :account_name, @browser).ordered.and_return(mocked_ToolTag)

        @browser.account_name.should == mocked_ToolTag
    end


    it "should have a swap language link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:swap_language_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("/lnkLanguageSwap$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :swap_language_link).ordered.and_return(mocked_tooltag)

        @browser.swap_language_link.should == mocked_tooltag
    end


    it "should have a xbox 360 header menu" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_parent = double("parent")
        mocked_div = double("div")
        mocked_find = double("find")
        mocked_h3 = double("h3")
        mocked_gamestopmegamenuheadermenu = double("GameStopMegaMenuHeaderMenu")

        $tracer.should_receive(:trace).with(:xbox_360_header_menu).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-xbox360menu").ordered.and_return("ats-xbox360menu")
        mocked_a.should_receive(:className).with("ats-xbox360menu").ordered.and_return(mocked_className)
        mocked_className.should_receive(:parent).with("li").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
        ToolTag.should_receive(:new).with(mocked_h3, :xbox_360_header_menu).ordered.and_return(mocked_tooltag)
        GameStopMegaMenuHeaderMenu.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopmegamenuheadermenu)

        @browser.xbox_360_header_menu.should == mocked_gamestopmegamenuheadermenu
    end


    it "should have a ps3 header menu" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_parent = double("parent")
        mocked_div = double("div")
        mocked_find = double("find")
        mocked_h3 = double("h3")
        mocked_gamestopmegamenuheadermenu = double("GameStopMegaMenuHeaderMenu")

        $tracer.should_receive(:trace).with(:ps3_header_menu).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-ps3menu").ordered.and_return("ats-ps3menu")
        mocked_a.should_receive(:className).with("ats-ps3menu").ordered.and_return(mocked_className)
        mocked_className.should_receive(:parent).with("li").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
        ToolTag.should_receive(:new).with(mocked_h3, :ps3_header_menu).ordered.and_return(mocked_tooltag)
        GameStopMegaMenuHeaderMenu.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopmegamenuheadermenu)

        @browser.ps3_header_menu.should == mocked_gamestopmegamenuheadermenu
    end


    it "should have a pc header menu" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_parent = double("parent")
        mocked_div = double("div")
        mocked_find = double("find")
        mocked_h3 = double("h3")
        mocked_gamestopmegamenuheadermenu = double("GameStopMegaMenuHeaderMenu")

        $tracer.should_receive(:trace).with(:pc_header_menu).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-pcmenu").ordered.and_return("ats-pcmenu")
        mocked_a.should_receive(:className).with("ats-pcmenu").ordered.and_return(mocked_className)
        mocked_className.should_receive(:parent).with("li").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
        ToolTag.should_receive(:new).with(mocked_h3, :pc_header_menu).ordered.and_return(mocked_tooltag)
        GameStopMegaMenuHeaderMenu.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopmegamenuheadermenu)

        @browser.pc_header_menu.should == mocked_gamestopmegamenuheadermenu
    end


    it "should have a wii header menu" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_parent = double("parent")
        mocked_div = double("div")
        mocked_find = double("find")
        mocked_h3 = double("h3")
        mocked_gamestopmegamenuheadermenu = double("GameStopMegaMenuHeaderMenu")

        $tracer.should_receive(:trace).with(:wii_header_menu).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-wiimenu").ordered.and_return("ats-wiimenu")
        mocked_a.should_receive(:className).with("ats-wiimenu").ordered.and_return(mocked_className)
        mocked_className.should_receive(:parent).with("li").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
        ToolTag.should_receive(:new).with(mocked_h3, :wii_header_menu).ordered.and_return(mocked_tooltag)
        GameStopMegaMenuHeaderMenu.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopmegamenuheadermenu)

        @browser.wii_header_menu.should == mocked_gamestopmegamenuheadermenu
    end


    it "should have a  3ds header menu" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_parent = double("parent")
        mocked_div = double("div")
        mocked_find = double("find")
        mocked_h3 = double("h3")
        mocked_gamestopmegamenuheadermenu = double("GameStopMegaMenuHeaderMenu")

        $tracer.should_receive(:trace).with(:_3ds_header_menu).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-3dsmenu").ordered.and_return("ats-3dsmenu")
        mocked_a.should_receive(:className).with("ats-3dsmenu").ordered.and_return(mocked_className)
        mocked_className.should_receive(:parent).with("li").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
        ToolTag.should_receive(:new).with(mocked_h3, :_3ds_header_menu).ordered.and_return(mocked_tooltag)
        GameStopMegaMenuHeaderMenu.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopmegamenuheadermenu)

        @browser._3ds_header_menu.should == mocked_gamestopmegamenuheadermenu
    end


    it "should have a psp header menu" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_parent = double("parent")
        mocked_div = double("div")
        mocked_find = double("find")
        mocked_h3 = double("h3")
        mocked_gamestopmegamenuheadermenu = double("GameStopMegaMenuHeaderMenu")

        $tracer.should_receive(:trace).with(:psp_header_menu).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-pspmenu").ordered.and_return("ats-pspmenu")
        mocked_a.should_receive(:className).with("ats-pspmenu").ordered.and_return(mocked_className)
        mocked_className.should_receive(:parent).with("li").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
        ToolTag.should_receive(:new).with(mocked_h3, :psp_header_menu).ordered.and_return(mocked_tooltag)
        GameStopMegaMenuHeaderMenu.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopmegamenuheadermenu)

        @browser.psp_header_menu.should == mocked_gamestopmegamenuheadermenu
    end


    it "should have a psvita header menu" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_parent = double("parent")
        mocked_div = double("div")
        mocked_find = double("find")
        mocked_h3 = double("h3")
        mocked_gamestopmegamenuheadermenu = double("GameStopMegaMenuHeaderMenu")

        $tracer.should_receive(:trace).with(:psvita_header_menu).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:className).with("/ats-psvitamenu/").ordered.and_return(mocked_className)
        mocked_className.should_receive(:parent).with("li").ordered.and_return(mocked_parent)
        mocked_parent.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
        ToolTag.should_receive(:new).with(mocked_h3, :psvita_header_menu).ordered.and_return(mocked_tooltag)
        GameStopMegaMenuHeaderMenu.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopmegamenuheadermenu)

        @browser.psvita_header_menu.should == mocked_gamestopmegamenuheadermenu
    end


    it "should have a sign up for deals link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_href = double("href")

        $tracer.should_receive(:trace).with(:sign_up_for_deals_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:href).with("/NewsletterSignUp$/").ordered.and_return(mocked_href)
        ToolTag.should_receive(:new).with(mocked_href, :sign_up_for_deals_link).ordered.and_return(mocked_tooltag)

        @browser.sign_up_for_deals_link.should == mocked_tooltag
    end

		
		it "should have a cart badge" do
	      mocked_tooltag = double("ToolTag")
	      mocked_span = double("span")
	      mocked_id = double("id")

	      $tracer.should_receive(:trace).with(:cart_badge).ordered
	
	      @browser.should_receive(:span).ordered.and_return(mocked_span)
	      mocked_span.should_receive(:id).with("cartbadge").ordered.and_return(mocked_id)
	      ToolTag.should_receive(:new).with(mocked_id, :cart_badge).ordered.and_return(mocked_tooltag)
	
	      @browser.cart_badge.should == mocked_tooltag
	    end

			
		it "should have a guest instore orders link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:guest_instore_orders_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-orderhist-guest").ordered.and_return("ats-orderhist-guest")
        mocked_a.should_receive(:className).with("ats-orderhist-guest").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :guest_instore_orders_link).ordered.and_return(mocked_tooltag)

        @browser.guest_instore_orders_link.should == mocked_tooltag
    end

    it "should have a store_search_panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:store_search_panel).ordered
        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-storesearch-panel").ordered.and_return("ats-storesearch-panel")
        mocked_div.should_receive(:className).with("ats-storesearch-panel").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :store_search_panel, @browser).ordered.and_return(mocked_tooltag)

        @browser.store_search_panel.should == mocked_tooltag
    end

    it "should have a terms_and_condition" do
        mocked_tooltag = double("ToolTag")
        mocked_ol = double("ol")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_a = double("a")

        $tracer.should_receive(:trace).with(:terms_and_condition).ordered
        @browser.should_receive(:ol).ordered.and_return(mocked_ol)
        @browser.should_receive(:create_ats_regex_string).with("ats-cartridge-contentslotads").ordered.and_return("ats-cartridge-contentslotads")
        mocked_ol.should_receive(:className).with("ats-cartridge-contentslotads").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :terms_and_condition, @browser).ordered.and_return(mocked_tooltag)

        @browser.terms_and_condition.should == mocked_tooltag
    end

    it "should have a store_title_brand" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:store_title_brand).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storetitle").ordered.and_return("ats-storetitle")
      mocked_div.should_receive(:className).with("ats-storetitle").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :store_title_brand, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_title_brand.should == mocked_tooltag
    end

    it "should have a footer_full_site_link" do
      mocked_tooltag = double("ToolTag")
      mocked_footer = double("footer")
      mocked_className = double("className")
      mocked_ul = double("ul")
      mocked_li = double("li")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:footer_full_site_link).ordered
      @browser.should_receive(:footer).ordered.and_return(mocked_footer)
      @browser.should_receive(:create_ats_regex_string).with("trackable").ordered.and_return("trackable")
      mocked_footer.should_receive(:className).with("trackable").ordered.and_return(mocked_className)
      mocked_className.should_receive(:ul).ordered.and_return(mocked_ul)
      mocked_ul.should_receive(:li).ordered.and_return(mocked_li)
      mocked_li.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :footer_full_site_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.footer_full_site_link.should == mocked_tooltag
    end

    it "should have a store_map" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id = double("id")


      $tracer.should_receive(:trace).with(:store_map).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("mapDiv").ordered.and_return(mocked_id)

      ToolTag.should_receive(:new).with(mocked_id, :store_map, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_map.should == mocked_tooltag
    end

    it "should have a store_detail" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_detail).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storedetails").ordered.and_return("ats-storedetails")
      mocked_div.should_receive(:className).with("ats-storedetails").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_detail, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_detail.should == mocked_tooltag
    end

    it "should have a store_address" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_address).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storeaddress").ordered.and_return("ats-storeaddress")
      mocked_div.should_receive(:className).with("ats-storeaddress").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_address, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_address.should == mocked_tooltag
    end

    it "should have a store_phone" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_phone).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storephone").ordered.and_return("ats-storephone")
      mocked_div.should_receive(:className).with("ats-storephone").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_phone, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_phone.should == mocked_tooltag
    end
end
