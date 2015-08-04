ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopRespMobile/src/mgs_responsive_requires"

describe GameStopRespMobileHeaderFinder do

	before(:all) do
		class GameStopRespMobileHeaderFinderTest
			include GameStopRespMobileHeaderFinder
		end
		@browser = GameStopRespMobileHeaderFinderTest.allocate
	end

	after(:all) do
		Object.send(:remove_const, :GameStopRespMobileHeaderFinderTest) if Object.const_defined?(:GameStopRespMobileHeaderFinderTest)
	end

	it "should have mgs_header_logo" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")
    mocked_img = double("img")

    $tracer.should_receive(:trace).with(:mgs_header_logo).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-headerLogo").ordered.and_return("ats-headerLogo")
    mocked_a.should_receive(:className).with("ats-headerLogo").ordered.and_return(mocked_className)
    mocked_className.should_receive(:img).ordered.and_return(mocked_img)
    ToolTag.should_receive(:new).with(mocked_img, :mgs_header_logo).ordered.and_return(mocked_tooltag)

    @browser.mgs_header_logo.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobile_hamburger" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobile_hamburger).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileHamburger").ordered.and_return("ats-mobileHamburger")
    mocked_div.should_receive(:className).with("ats-mobileHamburger").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobile_hamburger).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobile_hamburger.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_list" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")
    mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_list).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletNavList").ordered.and_return("ats-tabletNavList")
    mocked_ul.should_receive(:className).with("ats-tabletNavList").ordered.and_return(mocked_className)
    mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_hdr_tabnav_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_list.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_guest_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_guest_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletNav-guest").ordered.and_return("ats-tabletNav-guest")
    mocked_a.should_receive(:className).with("ats-tabletNav-guest").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabnav_guest_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_guest_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_giftcards_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_giftcards_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletNav-giftCards").ordered.and_return("ats-tabletNav-giftCards")
    mocked_a.should_receive(:className).with("ats-tabletNav-giftCards").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabnav_giftcards_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_giftcards_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_cart_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_cart_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletNav-cart").ordered.and_return("ats-tabletNav-cart")
    mocked_a.should_receive(:className).with("ats-tabletNav-cart").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabnav_cart_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_cart_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_stores_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_stores_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletNav-stores").ordered.and_return("ats-tabletNav-stores")
    mocked_a.should_receive(:className).with("ats-tabletNav-stores").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabnav_stores_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_stores_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_cart_img" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")
    mocked_div = double("div")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_cart_img).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletNav-cart").ordered.and_return("ats-tabletNav-cart")
    mocked_a.should_receive(:className).with("ats-tabletNav-cart").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/header-cart/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabnav_cart_img).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_cart_img.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_stores_img" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")
    mocked_div = double("div")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_stores_img).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletNav-stores").ordered.and_return("ats-tabletNav-stores")
    mocked_a.should_receive(:className).with("ats-tabletNav-stores").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/header-stores/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabnav_stores_img).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_stores_img.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_search_section" do
    mocked_tooltag = double("ToolTag")
    mocked_li = double("li")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_search_section).ordered

    @browser.should_receive(:li).ordered.and_return(mocked_li)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletNavSearch").ordered.and_return("ats-tabletNavSearch")
    mocked_li.should_receive(:className).with("ats-tabletNavSearch").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabnav_search_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_search_section.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabnav_search_input" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabnav_search_input).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :mgs_hdr_tabnav_search_input).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabnav_search_input.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobnav_list" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")
    mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_list).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileNavList").ordered.and_return("ats-mobileNavList")
    mocked_ul.should_receive(:className).with("ats-mobileNavList").ordered.and_return(mocked_className)
    mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_hdr_mobnav_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobnav_list.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobnav_trade_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_trade_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileNav-trade").ordered.and_return("ats-mobileNav-trade")
    mocked_a.should_receive(:className).with("ats-mobileNav-trade").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobnav_trade_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobnav_trade_lnk.should == mocked_tooltag
  end

      it "should have mgs_hdr_mobnav_trade_img" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_div = double("div")

        $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_trade_img).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-mobileNav-trade").ordered.and_return("ats-mobileNav-trade")
        mocked_a.should_receive(:className).with("ats-mobileNav-trade").ordered.and_return(mocked_className)
        mocked_className.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobnav_trade_img).ordered.and_return(mocked_tooltag)

        @browser.mgs_hdr_mobnav_trade_img.should == mocked_tooltag
      end

  it "should have mgs_hdr_mobnav_cart_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_cart_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileNav-cart").ordered.and_return("ats-mobileNav-cart")
    mocked_a.should_receive(:className).with("ats-mobileNav-cart").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobnav_cart_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobnav_cart_lnk.should == mocked_tooltag
  end

      it "should have mgs_hdr_mobnav_cart_img" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_div = double("div")

        $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_cart_img).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-mobileNav-cart").ordered.and_return("ats-mobileNav-cart")
        mocked_a.should_receive(:className).with("ats-mobileNav-cart").ordered.and_return(mocked_className)
        mocked_className.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobnav_cart_img).ordered.and_return(mocked_tooltag)

        @browser.mgs_hdr_mobnav_cart_img.should == mocked_tooltag
      end

  it "should have mgs_hdr_mobnav_stores_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_stores_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileNav-stores").ordered.and_return("ats-mobileNav-stores")
    mocked_a.should_receive(:className).with("ats-mobileNav-stores").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobnav_stores_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobnav_stores_lnk.should == mocked_tooltag
  end

      it "should have mgs_hdr_mobnav_stores_img" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")
        mocked_div = double("div")

        $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_stores_img).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-mobileNav-stores").ordered.and_return("ats-mobileNav-stores")
        mocked_a.should_receive(:className).with("ats-mobileNav-stores").ordered.and_return(mocked_className)
        mocked_className.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobnav_stores_img).ordered.and_return(mocked_tooltag)

        @browser.mgs_hdr_mobnav_stores_img.should == mocked_tooltag
      end

  it "should have mgs_hdr_mobnav_search_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_li = double("li")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_search_lnk).ordered

    @browser.should_receive(:li).ordered.and_return(mocked_li)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileNavSearch").ordered.and_return("ats-mobileNavSearch")
    mocked_li.should_receive(:className).with("ats-mobileNavSearch").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobnav_search_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobnav_search_lnk.should == mocked_tooltag
  end

      it "should have mgs_hdr_mobnav_search_img" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")
        mocked_div = double("div")

        $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_search_img).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-mobileNavSearch").ordered.and_return("ats-mobileNavSearch")
        mocked_li.should_receive(:className).with("ats-mobileNavSearch").ordered.and_return(mocked_className)
        mocked_className.should_receive(:div).ordered.and_return(mocked_div)
        ToolTag.should_receive(:new).with(mocked_div, :mgs_hdr_mobnav_search_img).ordered.and_return(mocked_tooltag)

        @browser.mgs_hdr_mobnav_search_img.should == mocked_tooltag
      end

  it "should have mgs_hdr_mobnav_search_section" do
    mocked_tooltag = double("ToolTag")
    mocked_section = double("section")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_search_section).ordered

    @browser.should_receive(:section).ordered.and_return(mocked_section)
    mocked_section.should_receive(:id).with("/frameSearch/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :mgs_hdr_mobnav_search_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobnav_search_section.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobnav_search_input" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobnav_search_input).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/search-input/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :mgs_hdr_mobnav_search_input).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobnav_search_input.should == mocked_tooltag
  end


  # MOBILE Menu
  it "should have mgs_hdr_mobmnu_section" do
    mocked_tooltag = double("ToolTag")
    mocked_section = double("section")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_section).ordered

    @browser.should_receive(:section).ordered.and_return(mocked_section)
    mocked_section.should_receive(:id).with("/mobile-menu/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :mgs_hdr_mobmnu_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_section.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_list" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")
    mocked_li = double("li")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_list).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenuList").ordered.and_return("ats-mobileMenuList")
    mocked_ul.should_receive(:className).with("ats-mobileMenuList").ordered.and_return(mocked_className)
    mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    ToolTag.should_receive(:new).with(mocked_li, :mgs_hdr_mobmnu_list).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_list.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_signin_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_signin_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenu-signIn").ordered.and_return("ats-mobileMenu-signIn")
    mocked_a.should_receive(:className).with("ats-mobileMenu-signIn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobmnu_signin_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_signin_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_shop_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_shop_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenu-shop").ordered.and_return("ats-mobileMenu-shop")
    mocked_a.should_receive(:className).with("ats-mobileMenu-shop").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobmnu_shop_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_shop_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_deals_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_deals_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenu-deals").ordered.and_return("ats-mobileMenu-deals")
    mocked_a.should_receive(:className).with("ats-mobileMenu-deals").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobmnu_deals_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_deals_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_trade_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_trade_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenu-trade").ordered.and_return("ats-mobileMenu-trade")
    mocked_a.should_receive(:className).with("ats-mobileMenu-trade").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobmnu_trade_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_trade_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_pur_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_pur_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenu-pur").ordered.and_return("ats-mobileMenu-pur")
    mocked_a.should_receive(:className).with("ats-mobileMenu-pur").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobmnu_pur_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_pur_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_orders_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_orders_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenu-orders").ordered.and_return("ats-mobileMenu-orders")
    mocked_a.should_receive(:className).with("ats-mobileMenu-orders").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobmnu_orders_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_orders_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_gc_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_gc_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenu-giftCards").ordered.and_return("ats-mobileMenu-giftCards")
    mocked_a.should_receive(:className).with("ats-mobileMenu-giftCards").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobmnu_gc_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_gc_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_mobmnu_purcc_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_mobmnu_purcc_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-mobileMenu-purcc").ordered.and_return("ats-mobileMenu-purcc")
    mocked_a.should_receive(:className).with("ats-mobileMenu-purcc").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_mobmnu_purcc_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_mobmnu_purcc_lnk.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabmnu_section" do
    mocked_tooltag = double("ToolTag")
    mocked_section = double("section")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabmnu_section).ordered

    @browser.should_receive(:section).ordered.and_return(mocked_section)
    mocked_section.should_receive(:id).with("/tabletMenu/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :mgs_hdr_tabmnu_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabmnu_section.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabmnu_list" do
    mocked_tooltag = double("ToolTag")
    mocked_li = double("li")
    mocked_className = double("className")
    mocked_tablet_menu = double("MGSFrameTabletMenu")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabmnu_list).ordered

    @browser.should_receive(:li).ordered.and_return(mocked_li)
    @browser.should_receive(:create_ats_regex_string).with("/ats-tabletMenuList/").ordered.and_return("/ats-tabletMenuList/")
    mocked_li.should_receive(:className).with("/ats-tabletMenuList/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabmnu_list).ordered.and_return(mocked_tooltag)
    MGSFrameTabletMenu.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_tablet_menu)

    @browser.mgs_hdr_tabmnu_list.should == mocked_tablet_menu
  end

  it "should have mgs_hdr_tabmnu_signin_lbl" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabmnu_signin_lbl).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-tab-signInLbl").ordered.and_return("ats-tab-signInLbl")
    mocked_span.should_receive(:className).with("ats-tab-signInLbl").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabmnu_signin_lbl).ordered.and_return(mocked_tooltag)
    #MGSFrameTabletMenu.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_tablet_menu)

    @browser.mgs_hdr_tabmnu_signin_lbl.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabmnu_myaccount_lbl" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabmnu_myaccount_lbl).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-tab-MyAcctLbl").ordered.and_return("ats-tab-MyAcctLbl")
    mocked_span.should_receive(:className).with("ats-tab-MyAcctLbl").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabmnu_myaccount_lbl).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabmnu_myaccount_lbl.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabmnu_signin_section" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabmnu_signin_section).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    @browser.should_receive(:create_ats_regex_string).with("ats-tab-signInSection").ordered.and_return("ats-tab-signInSection")
    mocked_ul.should_receive(:className).with("ats-tab-signInSection").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabmnu_signin_section).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabmnu_signin_section.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabmnu_signin_btn" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabmnu_signin_btn).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tab-signInBtn").ordered.and_return("ats-tab-signInBtn")
    mocked_a.should_receive(:className).with("ats-tab-signInBtn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabmnu_signin_btn).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabmnu_signin_btn.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabmnu_createacct_btn" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabmnu_createacct_btn).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tab-createAcctBtn").ordered.and_return("ats-tab-createAcctBtn")
    mocked_a.should_receive(:className).with("ats-tab-createAcctBtn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_hdr_tabmnu_createacct_btn).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabmnu_createacct_btn.should == mocked_tooltag
  end

  it "should have mgs_hdr_tabmnu_signin_menu" do
    mocked_tooltag = double("ToolTag")
    mocked_li = double("li")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:mgs_hdr_tabmnu_signin_menu).ordered

    @browser.should_receive(:li).ordered.and_return(mocked_li)
    @browser.should_receive(:create_ats_regex_string).with("/tablet-signIn/").ordered.and_return("/tablet-signIn/")
    mocked_li.should_receive(:id).with("/tablet-signIn/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :mgs_hdr_tabmnu_signin_menu).ordered.and_return(mocked_tooltag)

    @browser.mgs_hdr_tabmnu_signin_menu.should == mocked_tooltag
  end

  it "should have mgs_shop_xboxone_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_xboxone_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-xboxOne").ordered.and_return("ats-tabletSubMenu-xboxOne")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-xboxOne").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_xboxone_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_xboxone_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_ps4_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_ps4_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-ps4").ordered.and_return("ats-tabletSubMenu-ps4")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-ps4").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_ps4_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_ps4_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_xbox360_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_xbox360_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-xbox360").ordered.and_return("ats-tabletSubMenu-xbox360")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-xbox360").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_xbox360_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_xbox360_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_ps3_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_ps3_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-ps3").ordered.and_return("ats-tabletSubMenu-ps3")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-ps3").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_ps3_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_ps3_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_wii_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_wii_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-wii").ordered.and_return("ats-tabletSubMenu-wii")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-wii").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_wii_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_wii_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_3ds_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_3ds_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-3ds").ordered.and_return("ats-tabletSubMenu-3ds")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-3ds").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_3ds_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_3ds_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_psvita_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_psvita_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-psVita").ordered.and_return("ats-tabletSubMenu-psVita")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-psVita").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_psvita_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_psvita_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_more_collectibles_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_more_collectibles_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-collectibles").ordered.and_return("ats-tabletSubMenuItem-collectibles")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-collectibles").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_more_collectibles_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_more_collectibles_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_more_accessories_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_more_accessories_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-accessories").ordered.and_return("ats-tabletSubMenuItem-accessories")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-accessories").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_more_accessories_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_more_accessories_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_more_headsets_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_more_headsets_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-headsets").ordered.and_return("ats-tabletSubMenuItem-headsets")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-headsets").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_more_headsets_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_more_headsets_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_more_phones_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_more_phones_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-phones").ordered.and_return("ats-tabletSubMenuItem-phones")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-phones").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_more_phones_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_more_phones_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_more_tablets_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_more_tablets_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-tablets").ordered.and_return("ats-tabletSubMenuItem-tablets")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-tablets").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_more_tablets_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_more_tablets_lnk.should == mocked_tooltag
  end

  it "should have mgs_shop_more_mediaplayers_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_shop_more_mediaplayers_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-mediaPlayers").ordered.and_return("ats-tabletSubMenuItem-mediaPlayers")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-mediaPlayers").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_shop_more_mediaplayers_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_shop_more_mediaplayers_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_hotdeals_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_hotdeals_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-hotDeals").ordered.and_return("ats-tabletSubMenu-hotDeals")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-hotDeals").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_hotdeals_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_hotdeals_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_preowned_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_preowned_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-preOwned").ordered.and_return("ats-tabletSubMenu-preOwned")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-preOwned").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_preowned_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_preowned_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_bestsellers_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_bestsellers_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-bestSellers").ordered.and_return("ats-tabletSubMenu-bestSellers")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-bestSellers").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_bestsellers_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_bestsellers_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_weeklyad_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_weeklyad_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenu-weeklyAd").ordered.and_return("ats-tabletSubMenu-weeklyAd")
    mocked_a.should_receive(:className).with("ats-tabletSubMenu-weeklyAd").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_weeklyad_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_weeklyad_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_topcategories_games_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_topcategories_games_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-games").ordered.and_return("ats-tabletSubMenuItem-games")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-games").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_topcategories_games_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_topcategories_games_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_topcategories_electronics_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_topcategories_electronics_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-electronics").ordered.and_return("ats-tabletSubMenuItem-electronics")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-electronics").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_topcategories_electronics_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_topcategories_electronics_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_topcategories_consoles_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_topcategories_consoles_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-consoles").ordered.and_return("ats-tabletSubMenuItem-consoles")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-consoles").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_topcategories_consoles_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_topcategories_consoles_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_topcategories_accessories_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_topcategories_accessories_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-accessories").ordered.and_return("ats-tabletSubMenuItem-accessories")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-accessories").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_topcategories_accessories_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_topcategories_accessories_lnk.should == mocked_tooltag
  end

  it "should have mgs_deals_topcategories_collectibles_lnk" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:mgs_deals_topcategories_collectibles_lnk).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-tabletSubMenuItem-collectibles").ordered.and_return("ats-tabletSubMenuItem-collectibles")
    mocked_a.should_receive(:className).with("ats-tabletSubMenuItem-collectibles").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :mgs_deals_topcategories_collectibles_lnk).ordered.and_return(mocked_tooltag)

    @browser.mgs_deals_topcategories_collectibles_lnk.should == mocked_tooltag
  end


end

