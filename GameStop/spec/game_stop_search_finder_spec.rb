ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopSearchFinder, "finders" do

  before(:all) do
    class GameStopSearchFinderTest
      include GameStopSearchFinder
    end

    @browser = GameStopSearchFinderTest.allocate
  end

  after(:all) do
    Object.send(:remove_const, :GameStopSearchFinderTest) if Object.const_defined?(:GameStopSearchFinderTest)
  end


  it "should have a product availability ships in 24 hours link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:product_availability_ships_in_24_hours_link).ordered

    @browser.should_receive(:a).with("/Usually ships in 24 hours/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :product_availability_ships_in_24_hours_link).ordered.and_return(mocked_tooltag)

    @browser.product_availability_ships_in_24_hours_link.should == mocked_tooltag
  end


  it "should have a product list" do
    $tracer.should_receive(:trace).with(:product_list).ordered

    mocked_div = double("div")
    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_cars = double("create_ats_regex_string")
    @browser.should_receive(:create_ats_regex_string).with("products").ordered.and_return(mocked_cars)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with(mocked_cars).ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/^product$/").ordered.and_return(mocked_className)

    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :product_list).ordered.and_return(mocked_tooltag)

    mocked_gamestopproductlist = double("GameStopProductList")
    GameStopProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductlist)

    @browser.product_list.should == mocked_gamestopproductlist
  end


  it "should return a search_field_overlay" do
    $tracer.should_receive(:trace).with(:search_field_overlay).ordered

    mocked_search_field = double("search_field")
    @browser.should_receive(:search_field).with(no_args).ordered.and_return(mocked_search_field)
    mocked_trigger = double("trigger")
    mocked_search_field.should_receive(:trigger).with("keydown").ordered.and_return(mocked_trigger)
    mocked_ul = double("ul")
    @browser.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_className = double("className")
    mocked_ul.should_receive(:className).with("/ui-autocomplete/").ordered.and_return(mocked_className)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :search_field_overlay).ordered.and_return(mocked_tooltag)
    mocked_search_overlay = double("GameStopSearchOverlay")
    GameStopSearchOverlay.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_search_overlay)

    @browser.search_field_overlay.should == mocked_search_overlay
  end

  it "should return a breadcrumbs label using default" do
    $tracer.should_receive(:trace).with(:breadcrumbs_label).ordered
    mocked_div = double("div")
    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with("/results_header/").ordered.and_return(mocked_className)

    mocked_find = double("find")
    mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_find.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_div, :breadcrumbs_label).ordered.and_return(mocked_tooltag)

    @browser.breadcrumbs_label.should == mocked_tooltag
  end

  it "should return a breadcrumbs label using non-default" do
    $tracer.should_receive(:trace).with(:breadcrumbs_label).ordered
    mocked_div = double("div")
    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with("/results_header/").ordered.and_return(mocked_className)

    mocked_find = double("find")
    mocked_className.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_find.should_receive(:div).with("some text").ordered.and_return(mocked_div)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_div, :breadcrumbs_label).ordered.and_return(mocked_tooltag)

    @browser.breadcrumbs_label("some text").should == mocked_tooltag
  end

  it "should have a pre release link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:pre_release_link).ordered

    @browser.should_receive(:a).with("/PickUp@Store \\\(\\\d+\\\)/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :pre_release_link).ordered.and_return(mocked_tooltag)

    @browser.pre_release_link.should == mocked_tooltag
  end


  it "should have a pickup at store link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:pickup_at_store_link).ordered

    @browser.should_receive(:a).with("/PickUp@Store \\\(\\\d+\\\)/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :pickup_at_store_link).ordered.and_return(mocked_tooltag)

    @browser.pickup_at_store_link.should == mocked_tooltag
  end


  it "should have a available for download link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_with = double("with")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:available_for_download_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:with).ordered.and_return(mocked_with)
    mocked_with.should_receive(:innerText).with("/Available for Download \\(\\d+\\)/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :available_for_download_link).ordered.and_return(mocked_tooltag)

    @browser.available_for_download_link.should == mocked_tooltag
  end

  it "should have a search result section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:search_result_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/result_count$/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :search_result_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.search_result_section.should == mocked_tooltag
  end


  it "should have a best sellers list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_id = double("id")
    mocked_gamestopproductcontainerlist = double("GameStopProductContainerList")

    $tracer.should_receive(:trace).with(:best_sellers_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("bestseller_container").ordered.and_return("bestseller_container")
    mocked_div.should_receive(:className).with("bestseller_container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/BestItem/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :best_sellers_list).ordered.and_return(mocked_tooltag)
    GameStopProductContainerList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductcontainerlist)

    @browser.best_sellers_list.should == mocked_gamestopproductcontainerlist
  end


  it "should have a featured offers and deals list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_id = double("id")
    mocked_gamestopproductcontainerlist = double("GameStopProductContainerList")

    $tracer.should_receive(:trace).with(:featured_offers_and_deals_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("featuredoff").ordered.and_return("featuredoff")
    mocked_div.should_receive(:className).with("featuredoff").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/aImageUrl/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :featured_offers_and_deals_list).ordered.and_return(mocked_tooltag)
    GameStopProductContainerList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductcontainerlist)

    @browser.featured_offers_and_deals_list.should == mocked_gamestopproductcontainerlist
  end


  it "should have a featured offers and deals text list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_id = double("id")
    mocked_gamestopproductcontainerlist = double("GameStopProductContainerList")

    $tracer.should_receive(:trace).with(:featured_offers_and_deals_text_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("featuredoff").ordered.and_return("featuredoff")
    mocked_div.should_receive(:className).with("featuredoff").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/aImageTitleUrl/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :featured_offers_and_deals_text_list).ordered.and_return(mocked_tooltag)
    GameStopProductContainerList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductcontainerlist)

    @browser.featured_offers_and_deals_text_list.should == mocked_gamestopproductcontainerlist
  end


  it "should have a view more offers list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_gamestopproductcontainerlist = double("GameStopProductContainerList")

    $tracer.should_receive(:trace).with(:view_more_offers_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("viewmore").ordered.and_return("viewmore")
    mocked_div.should_receive(:className).with("viewmore").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :view_more_offers_list).ordered.and_return(mocked_tooltag)
    GameStopProductContainerList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductcontainerlist)

    @browser.view_more_offers_list.should == mocked_gamestopproductcontainerlist
  end


  it "should have a whats hot list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_id = double("id")
    mocked_gamestopproductcontainerlist = double("GameStopProductContainerList")

    $tracer.should_receive(:trace).with(:whats_hot_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("thehotness").ordered.and_return("thehotness")
    mocked_div.should_receive(:className).with("thehotness").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/aImageUrl/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :whats_hot_list).ordered.and_return(mocked_tooltag)
    GameStopProductContainerList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductcontainerlist)

    @browser.whats_hot_list.should == mocked_gamestopproductcontainerlist
  end


  it "should have a recommended for you list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_gamestopproductcontainerlist = double("GameStopProductContainerList")

    $tracer.should_receive(:trace).with(:recommended_for_you_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("scrollshelf").ordered.and_return("scrollshelf")
    mocked_div.should_receive(:className).with("scrollshelf").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("item").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :recommended_for_you_list).ordered.and_return(mocked_tooltag)
    GameStopProductContainerList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductcontainerlist)

    @browser.recommended_for_you_list.should == mocked_gamestopproductcontainerlist
  end


  it "should have a xbox360 best sellers list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_id = double("id")
    mocked_gamestopproductcontainerlist = double("GameStopProductContainerList")

    $tracer.should_receive(:trace).with(:xbox360_best_sellers_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("recommend").ordered.and_return("recommend")
    mocked_div.should_receive(:className).with("recommend").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/itemAnchor/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :xbox360_best_sellers_list).ordered.and_return(mocked_tooltag)
    GameStopProductContainerList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopproductcontainerlist)

    @browser.xbox360_best_sellers_list.should == mocked_gamestopproductcontainerlist
  end

  it "should have a store_events_header" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_events_header).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-storeeventslist").ordered.and_return("ats-storeeventslist")
    mocked_div.should_receive(:className).with("ats-storeeventslist").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_events_header, @browser).ordered.and_return(mocked_tooltag)

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

  it "should have a store_locator_offers_header" do
    mocked_tooltag = double("ToolTag")
    mocked_class = double("className")
    mocked_h2 = double("h2")

    $tracer.should_receive(:trace).with(:store_locator_offers_header).ordered

    @browser.should_receive(:h2).ordered.and_return(mocked_h2)
    @browser.should_receive(:create_ats_regex_string).with("ats-storelocatoroffers-header").ordered.and_return("ats-storelocatoroffers-header")
    mocked_h2.should_receive(:className).with("ats-storelocatoroffers-header").ordered.and_return(mocked_class)
    ToolTag.should_receive(:new).with(mocked_class, :store_locator_offers_header, @browser).ordered.and_return(mocked_tooltag)

    @browser.store_locator_offers_header.should == mocked_tooltag

  end
end
