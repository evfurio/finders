ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobileStoreLocatorFinder do
    before(:all) do
        class GameStopMobileStoreLocatorFinderTest
            include GameStopMobileStoreLocatorFinder
        end

        @browser = GameStopMobileStoreLocatorFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileStoreLocatorFinderTest) if Object.const_defined?(:GameStopMobileStoreLocatorFinderTest)
    end

    it "should have a store_locator_link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_locator_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-nav_store_locator_link").ordered.and_return("ats-nav_store_locator_link")
      mocked_a.should_receive(:className).with("ats-nav_store_locator_link").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_locator_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_locator_link.should == mocked_tooltag

    end

    it "should have a store_list_button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:store_list_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("store_list").ordered.and_return("store_list")
      mocked_button.should_receive(:id).with("store_list").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :store_list_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_list_button.should == mocked_tooltag

    end

    it "should have a go_back_button" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:go_back_button).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("go_back").ordered.and_return("go_back")
      mocked_div.should_receive(:className).with("go_back").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :go_back_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.go_back_button.should == mocked_tooltag

    end

    it "should have a store_search_input" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:store_search_input).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("manual_store_search").ordered.and_return("manual_store_search")
      mocked_input.should_receive(:id).with("manual_store_search").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :store_search_input, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_search_input.should == mocked_tooltag

    end

    it "should have an store_locator_list" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id = double("id")
      mocked_ol = double("ol")
      mocked_li = double("li")
      mocked_gamestopmobilestorelist = double("GameStopMobileStoreList")

      $tracer.should_receive(:trace).with(:store_locator_list).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("list_container").ordered.and_return(mocked_id)
      mocked_id.should_receive(:ol).ordered.and_return(mocked_ol)
      mocked_ol.should_receive(:li).ordered.and_return(mocked_li)
      ToolTag.should_receive(:new).with(mocked_li, :store_locator_list, @browser).ordered.and_return(mocked_tooltag)
      GameStopMobileStoreList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobilestorelist)

      @browser.store_locator_list.should == mocked_gamestopmobilestorelist
    end

    it "should have a store_locator_map" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:store_locator_map).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("map_canvas").ordered.and_return("map_canvas")
      mocked_div.should_receive(:id).with("map_canvas").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :store_locator_map, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_locator_map.should == mocked_tooltag

    end

    it "should have a store_locator_no_result_message" do
      mocked_tooltag = double("ToolTag")
      mocked_li = double("li")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_p = double("p")

      $tracer.should_receive(:trace).with(:store_locator_no_result_message).ordered

      @browser.should_receive(:li).ordered.and_return(mocked_li)
      @browser.should_receive(:create_ats_regex_string).with("no_result").ordered.and_return("no_result")
      mocked_li.should_receive(:className).with("no_result").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:p).ordered.and_return(mocked_p)
      ToolTag.should_receive(:new).with(mocked_p, :store_locator_no_result_message, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_locator_no_result_message.should == mocked_tooltag

    end

    it "should have a store_locator_search_input" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_locator_search_input).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-storesearch-input").ordered.and_return("ats-storesearch-input")
      mocked_input.should_receive(:className).with("ats-storesearch-input").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_locator_search_input, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_locator_search_input.should == mocked_tooltag

    end

    it "should have a store_detail_search_input" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_detail_search_input).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-storesearch").ordered.and_return("ats-storesearch")
      mocked_input.should_receive(:className).with("ats-storesearch").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_detail_search_input, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_detail_search_input.should == mocked_tooltag

    end

    it "should have a store_locator_search_err_msg" do
      mocked_tooltag = double("ToolTag")
      mocked_ul = double("ul")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_locator_search_err_msg).ordered

      @browser.should_receive(:ul).ordered.and_return(mocked_ul)
      @browser.should_receive(:create_ats_regex_string).with("ats-storelist").ordered.and_return("ats-storelist")
      mocked_ul.should_receive(:className).with("ats-storelist").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_locator_search_err_msg, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_locator_search_err_msg.should == mocked_tooltag

    end

    it "should have a store_events_header" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_h2 = double("h2")

      $tracer.should_receive(:trace).with(:store_events_header).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storeeventslist").ordered.and_return("ats-storeeventslist")
      mocked_div.should_receive(:className).with("ats-storeeventslist").ordered.and_return(mocked_className)
      mocked_className.should_receive(:h2).ordered.and_return(mocked_h2)
      ToolTag.should_receive(:new).with(mocked_h2, :store_events_header, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_events_header.should == mocked_tooltag

    end

    it "should have a store_event link" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:store_event).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storeevent").ordered.and_return("ats-storeevent")
      mocked_div.should_receive(:className).with("ats-storeevent").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :store_event, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_event.should == mocked_tooltag

    end

    it "should have a store_special_offers_header" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_special_offers_header).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-storespecialoffers").ordered.and_return("ats-storespecialoffers")
      mocked_h2.should_receive(:className).with("ats-storespecialoffers").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_special_offers_header, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_special_offers_header.should == mocked_tooltag

    end

    it "should have an store_special_offer list" do
      mocked_tooltag = double("ToolTag")
      mocked_li = double("li")
      mocked_className = double("className")
      mocked_gamestopstoreofferlist = double("GameStopStoreOfferList")

      $tracer.should_receive(:trace).with(:store_special_offer).ordered

      @browser.should_receive(:li).ordered.and_return(mocked_li)
      @browser.should_receive(:create_ats_regex_string).with("ats-cartridge-offerAd").ordered.and_return("ats-cartridge-offerAd")
      mocked_li.should_receive(:className).with("ats-cartridge-offerAd").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_special_offer).ordered.and_return(mocked_tooltag)
      GameStopStoreOfferList.should_receive(:new).with(mocked_tooltag,@browser).ordered.and_return(mocked_gamestopstoreofferlist)

      @browser.store_special_offer.should == mocked_gamestopstoreofferlist
    end


    it "should have a meta_tag_keyword" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")
      $tracer.should_receive(:trace).with(:meta_tag_keyword).ordered
      @browser.should_receive(:jquery).with("meta[name='keyword']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :meta_tag_keyword).ordered.and_return(mocked_tooltag)
      @browser.meta_tag_keyword.should == mocked_tooltag
    end

    it "should have a meta_tag_description" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")
      $tracer.should_receive(:trace).with(:meta_tag_description).ordered
      @browser.should_receive(:jquery).with("meta[name='description']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :meta_tag_description).ordered.and_return(mocked_tooltag)
      @browser.meta_tag_description.should == mocked_tooltag
    end

    it "should have a store_name_header" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_h1 = double("h1")

      $tracer.should_receive(:trace).with(:store_name_header).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storeheader").ordered.and_return("ats-storeheader")
      mocked_div.should_receive(:className).with("ats-storeheader").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:h1).ordered.and_return(mocked_h1)
      ToolTag.should_receive(:new).with(mocked_h1, :store_name_header, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_name_header.should == mocked_tooltag

    end

    it "should have a store_search_header" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_h1 = double("h1")

      $tracer.should_receive(:trace).with(:store_search_header).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storesearch-header").ordered.and_return("ats-storesearch-header")
      mocked_div.should_receive(:className).with("ats-storesearch-header").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:h1).ordered.and_return(mocked_h1)
      ToolTag.should_receive(:new).with(mocked_h1, :store_search_header, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_search_header.should == mocked_tooltag

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

    it "should have a store_address_detail" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_span = double("span")

      $tracer.should_receive(:trace).with(:store_address_detail).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storeaddress").ordered.and_return("ats-storeaddress")
      mocked_div.should_receive(:className).with("ats-storeaddress").ordered.and_return(mocked_className)
      mocked_className.should_receive(:span).ordered.and_return(mocked_span)
      ToolTag.should_receive(:new).with(mocked_span, :store_address_detail, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_address_detail.should == mocked_tooltag

    end

    it "should have a store_phone" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_span = double("span")

      $tracer.should_receive(:trace).with(:store_phone).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storephone").ordered.and_return("ats-storephone")
      mocked_div.should_receive(:className).with("ats-storephone").ordered.and_return(mocked_className)
      mocked_className.should_receive(:span).ordered.and_return(mocked_span)
      ToolTag.should_receive(:new).with(mocked_span, :store_phone, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_phone.should == mocked_tooltag

    end

    it "should have a store_hours" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_tr = double("tr")

      $tracer.should_receive(:trace).with(:store_hours).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storehours").ordered.and_return("ats-storehours")
      mocked_div.should_receive(:className).with("ats-storehours").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
      ToolTag.should_receive(:new).with(mocked_tr, :store_hours, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_hours.should == mocked_tooltag

    end

    it "should have a title_page" do
      mocked_tooltag = double("ToolTag")
      mocked_title = double("title")

      $tracer.should_receive(:trace).with(:title_page).ordered

      @browser.should_receive(:title).ordered.and_return(mocked_title)
      ToolTag.should_receive(:new).with(mocked_title, :title_page, @browser).ordered.and_return(mocked_tooltag)

      @browser.title_page.should == mocked_tooltag

    end

    it "should have a canonical_link" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")
      $tracer.should_receive(:trace).with(:canonical_link).ordered
      @browser.should_receive(:jquery).with("link[rel='canonical']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :canonical_link).ordered.and_return(mocked_tooltag)
      @browser.canonical_link.should == mocked_tooltag
    end

    it "should have store_list_button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:store_list_button).ordered
      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("store_list").ordered.and_return("store_list")

      mocked_button.should_receive(:id).with("store_list").ordered.and_return(mocked_id)

      ToolTag.should_receive(:new).with(mocked_id, :store_list_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_list_button.should == mocked_tooltag

    end

    it "should have go_back_button" do

      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:go_back_button).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("go_back").ordered.and_return("go_back")
      mocked_div.should_receive(:className).with("go_back").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :go_back_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.go_back_button.should == mocked_tooltag
    end

   it "should have store_search_input" do
     mocked_tooltag = double("ToolTag")
     mocked_input = double("input")
     mocked_id = double("id")

     $tracer.should_receive(:trace).with(:store_search_input).ordered
     @browser.should_receive(:input).ordered.and_return(mocked_input)
     @browser.should_receive(:create_ats_regex_string).with("manual_store_search").ordered.and_return("manual_store_search")

     mocked_input.should_receive(:id).with("manual_store_search").ordered.and_return(mocked_id)

     ToolTag.should_receive(:new).with(mocked_id, :store_search_input, @browser).ordered.and_return(mocked_tooltag)

     @browser.store_search_input.should == mocked_tooltag
   end

  it "should have bing_map_pin" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:bing_map_pin).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("MapPushpinBase").ordered.and_return("MapPushpinBase")
    mocked_a.should_receive(:className).with("MapPushpinBase").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :bing_map_pin, @browser).ordered.and_return(mocked_tooltag)

    @browser.bing_map_pin.should == mocked_tooltag
  end

   it "should have bing_map_pin_directions" do

     mocked_tooltag = double("ToolTag")
     mocked_div = double("div")
     mocked_className = double("className")

     $tracer.should_receive(:trace).with(:bing_map_pin_directions).ordered

     @browser.should_receive(:div).ordered.and_return(mocked_div)
     @browser.should_receive(:create_ats_regex_string).with("infobox_divide").ordered.and_return("infobox_divide")
     mocked_div.should_receive(:className).with("infobox_divide").ordered.and_return(mocked_className)
     ToolTag.should_receive(:new).with(mocked_className, :bing_map_pin_directions, @browser).ordered.and_return(mocked_tooltag)

     @browser.bing_map_pin_directions.should == mocked_tooltag
   end

   it "should have microsoft_map_drawing" do
     mocked_tooltag = double("ToolTag")
     mocked_div = double("div")
     mocked_className = double("className")

     $tracer.should_receive(:trace).with(:microsoft_map_drawing).ordered

     @browser.should_receive(:div).ordered.and_return(mocked_div)
     @browser.should_receive(:create_ats_regex_string).with("MicrosoftMapDrawing").ordered.and_return("MicrosoftMapDrawing")
     mocked_div.should_receive(:className).with("MicrosoftMapDrawing").ordered.and_return(mocked_className)
     ToolTag.should_receive(:new).with(mocked_className, :microsoft_map_drawing, @browser).ordered.and_return(mocked_tooltag)

     @browser.microsoft_map_drawing.should == mocked_tooltag
   end
    it "should have home_store_toggle" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:home_store_toggle).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-homestore").ordered.and_return("ats-homestore")
      mocked_div.should_receive(:className).with("ats-homestore").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :home_store_toggle, @browser).ordered.and_return(mocked_tooltag)

      @browser.home_store_toggle.should == mocked_tooltag
    end

    it "should have map_list_toggle" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:map_list_toggle).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("mapToggle").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :map_list_toggle, @browser).ordered.and_return(mocked_tooltag)

      @browser.map_list_toggle.should == mocked_tooltag
    end

    it "should have map_list_toggle_style" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_id = double("id")
      mocked_span = double("span")

      $tracer.should_receive(:trace).with(:map_list_toggle_style).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:id).with("mapToggle").ordered.and_return(mocked_id)
      mocked_id.should_receive(:span).ordered.and_return(mocked_span)
      ToolTag.should_receive(:new).with(mocked_span, :map_list_toggle_style, @browser).ordered.and_return(mocked_tooltag)

      @browser.map_list_toggle_style.should == mocked_tooltag
    end

    it "should have store_results_panel" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:store_results_panel).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storeresults-panel").ordered.and_return("ats-storeresults-panel")
      mocked_div.should_receive(:className).with("ats-storeresults-panel").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :store_results_panel, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_results_panel.should == mocked_tooltag
    end

    it "should have footer_fullsite_link" do
      mocked_tooltag = double("ToolTag")
      mocked_footer = double("footer")
      mocked_className = double("className")
      mocked_ul = double("ul")
      mocked_li = double("li")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:footer_fullsite_link).ordered

      @browser.should_receive(:footer).ordered.and_return(mocked_footer)
      @browser.should_receive(:create_ats_regex_string).with("trackable").ordered.and_return("trackable")
      mocked_footer.should_receive(:className).with("trackable").ordered.and_return(mocked_className)
      mocked_className.should_receive(:ul).ordered.and_return(mocked_ul)
      mocked_ul.should_receive(:li).ordered.and_return(mocked_li)
      mocked_li.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :footer_fullsite_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.footer_fullsite_link.should == mocked_tooltag
    end

    it "should have find_store_link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:find_store_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-findstore").ordered.and_return("ats-findstore")
      mocked_a.should_receive(:className).with("ats-findstore").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :find_store_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.find_store_link.should == mocked_tooltag
    end

    it "should have store_title_link" do

      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:store_title_link).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-storetitle").ordered.and_return("ats-storetitle")
      mocked_div.should_receive(:className).with("ats-storetitle").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :store_title_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.store_title_link.should == mocked_tooltag
    end

    it "should have gs_search_field" do

      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_search_field).ordered
      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-searchfield").ordered.and_return("ats-searchfield")
      mocked_input.should_receive(:className).with("ats-searchfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_search_field, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_search_field.should == mocked_tooltag
    end

    it "should have gs_results_header" do

      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gs_results_header).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("results_header").ordered.and_return("results_header")
      mocked_div.should_receive(:className).with("results_header").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gs_results_header, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_results_header.should == mocked_tooltag
    end

    it "should have gs_product_info" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:gs_product_info).ordered
      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("product_info").ordered.and_return("product_info")
      mocked_div.should_receive(:className).with("product_info").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :gs_product_info, @browser).ordered.and_return(mocked_tooltag)

      @browser.gs_product_info.should == mocked_tooltag
    end
end
