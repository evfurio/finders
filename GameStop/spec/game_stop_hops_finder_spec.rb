ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopHopsFinder, "finders" do

  before(:all) do
    class GameStopHopsFinderTest
      include GameStopHopsFinder
    end

    @browser = GameStopHopsFinderTest.allocate

    #$tracer.mode = :on
  end

  after(:all) do
    Object.send(:remove_const, :GameStopHopsFinderTest) if Object.const_defined?(:GameStopHopsFinderTest)
  end


  it "should have a hops product name label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_product_name_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/ProductNameLabel$/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_product_name_label).ordered.and_return(mocked_tooltag)

    @browser.hops_product_name_label.should == mocked_tooltag
  end


  it "should have a hops product name link" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")
    mocked_child = double("child")
    mocked_child = double("child")

    $tracer.should_receive(:trace).with(:hops_product_name_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/ProductPanel$/").ordered.and_return(mocked_id)
    mocked_id.should_receive(:child).with("h3").ordered.and_return(mocked_child)
    mocked_child.should_receive(:child).with("a").ordered.and_return(mocked_child)
    ToolTag.should_receive(:new).with(mocked_child, :hops_product_name_link).ordered.and_return(mocked_tooltag)

    @browser.hops_product_name_link.should == mocked_tooltag
  end


  it "should have a hops finish button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:hops_finish_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/SubmitButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_finish_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_finish_button.should == mocked_tooltag
  end


  it "should have a hops accepted page title" do
    mocked_tooltag = double("ToolTag")
    mocked_img = double("img")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_accepted_page_title).ordered

    @browser.should_receive(:img).ordered.and_return(mocked_img)
    mocked_img.should_receive(:id).with("/HoldConfirmationHeader$/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_accepted_page_title).ordered.and_return(mocked_tooltag)

    @browser.hops_accepted_page_title.should == mocked_tooltag
  end


  it "should have a hops accepted page message" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")
    mocked_find = double("find")
    mocked_p = double("p")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:hops_accepted_page_message).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("sentInfo").ordered.and_return(mocked_id)
    mocked_id.should_receive(:find).ordered.and_return(mocked_find)
    mocked_find.should_receive(:p).ordered.and_return(mocked_p)
    mocked_p.should_receive(:className).with("main").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :hops_accepted_page_message).ordered.and_return(mocked_tooltag)

    @browser.hops_accepted_page_message.should == mocked_tooltag
  end


  it "should have a hops accepted page home link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_accepted_page_home_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/BackToHomePageLink$/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_accepted_page_home_link).ordered.and_return(mocked_tooltag)

    @browser.hops_accepted_page_home_link.should == mocked_tooltag
  end

  it "should have a hops store list" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_gamestophopsstorelist = double("GameStopHopsStoreList")

    $tracer.should_receive(:trace).with(:store_locator_store_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-storeresult-panel").ordered.and_return("ats-storeresult-panel")
    mocked_div.should_receive(:className).with("ats-storeresult-panel").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_locator_store_list).ordered.and_return(mocked_tooltag)
    GameStopHopsStoreList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestophopsstorelist)

    @browser.store_locator_store_list.should == mocked_gamestophopsstorelist
  end


  it "should have a hops zip code search field" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_locator_zip_code_search_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:className).with("ats-storesearch-input").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_locator_zip_code_search_field).ordered.and_return(mocked_tooltag)

    @browser.store_locator_zip_code_search_field.should == mocked_tooltag
  end


  it "should have a hops zip code search button" do
    mocked_tooltag = double("ToolTag")
    mocked_button = double("button")
    mocked_className = double("className")
    mocked_ = double("")

    $tracer.should_receive(:trace).with(:store_locator_zip_code_search_button).ordered

    @browser.should_receive(:button).ordered.and_return(mocked_button)
    mocked_button.should_receive(:className).with("ats-storesearch-button").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_locator_zip_code_search_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.store_locator_zip_code_search_button.should == mocked_tooltag
  end

  it "should have a hops alternate store popup panel" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")
    mocked_hopsalternatestorepopuppanel = double("HopsAlternateStorePopupPanel")

    $tracer.should_receive(:trace).with(:hops_alternate_store_popup_panel).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/HopsAlternateStore_pnlPopUp$/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_alternate_store_popup_panel, @browser).ordered.and_return(mocked_tooltag)
    HopsAlternateStorePopupPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_hopsalternatestorepopuppanel)

    @browser.hops_alternate_store_popup_panel.should == mocked_hopsalternatestorepopuppanel
  end

  it "should have a hops pur member radio button" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_pur_member_radio_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/EdgeAuthenticationTypeRadioButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_pur_member_radio_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_pur_member_radio_button.should == mocked_tooltag
  end


  it "should have a hops pur not member radio button" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_pur_not_member_radio_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/CCAuthenticationTypeRadioButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_pur_not_member_radio_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_pur_not_member_radio_button.should == mocked_tooltag
  end

  it "should have a hops pickup at store link" do
    $tracer.should_receive(:trace).with(:hops_pickup_at_store_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("ats-hops-pickup-lnk").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :hops_pickup_at_store_link).ordered.and_return(mocked_tooltag)

    @browser.hops_pickup_at_store_link.should == mocked_tooltag
  end

  it "should have a nfs pickup at store button" do
    $tracer.should_receive(:trace).with(:nfs_pickup_at_store_button).ordered

    mocked_img = double("img")
    @browser.should_receive(:img).with(no_args).ordered.and_return(mocked_img)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("ats-nfs-pickup-btn").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_img.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :nfs_pickup_at_store_button).ordered.and_return(mocked_tooltag)

    @browser.nfs_pickup_at_store_button.should == mocked_tooltag
  end

  it "should have a hops pickup at store new link" do
    $tracer.should_receive(:trace).with(:hops_pickup_at_store_new_link).ordered

    mocked_div = double("div")
    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with("buy1").ordered.and_return(mocked_className)
    mocked_a = double("a")
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/PickUpAtStore$/").ordered.and_return(mocked_id)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, :hops_pickup_at_store_new_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_pickup_at_store_new_link.should == mocked_tooltag
  end

  it "should have a hops pickup at store used link" do
    $tracer.should_receive(:trace).with(:hops_pickup_at_store_used_link).ordered

    mocked_div = double("div")
    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_className = double("className")
    mocked_div.should_receive(:className).with("buy2").ordered.and_return(mocked_className)
    mocked_a = double("a")
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_id = double("id")
    mocked_a.should_receive(:id).with("/PickUpAtStore$/").ordered.and_return(mocked_id)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_id, :hops_pickup_at_store_used_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_pickup_at_store_used_link.should == mocked_tooltag
  end


  it "should have a hops no stores popup" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_no_stores_popup).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/NoStoresFoundModalPopup_PopupPanel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_no_stores_popup, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_no_stores_popup.should == mocked_tooltag
  end


  it "should have a hops no stores button" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_find = double("find")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_no_stores_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/NoStoresFoundModalPopup_PopupPanel/").ordered.and_return(mocked_id)
    mocked_id.should_receive(:find).ordered.and_return(mocked_find)
    mocked_find.should_receive(:a).ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :hops_no_stores_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_no_stores_button.should == mocked_tooltag
  end


  it "should have a hops pur textbox" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_pur_textbox).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/LoyaltyCardNumberTextBox/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_pur_textbox, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_pur_textbox.should == mocked_tooltag
  end


  it "should have a hops pickup at store tooltip" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:hops_pickup_at_store_tooltip).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/picklist/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :hops_pickup_at_store_tooltip, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_pickup_at_store_tooltip.should == mocked_tooltag
  end


  it "should have a hops not member panel" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_not_member_panel).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/notmember/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_not_member_panel, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_not_member_panel.should == mocked_tooltag
  end


  it "should have a hops cc dropdown" do
    mocked_tooltag = double("ToolTag")
    mocked_jquery = double("jquery")

    $tracer.should_receive(:trace).with(:hops_cc_dropdown).ordered

    @browser.should_receive(:jquery).with("div[class='cc']>select, select[id~='CCTypesDropDown']").ordered.and_return(mocked_jquery)
    ToolTag.should_receive(:new).with(mocked_jquery, :hops_cc_dropdown, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_cc_dropdown.should == mocked_tooltag
  end


  it "should have a hops cc textbox" do
    mocked_tooltag = double("ToolTag")
    mocked_jquery = double("jquery")

    $tracer.should_receive(:trace).with(:hops_cc_textbox).ordered

    @browser.should_receive(:jquery).with("div[class='ccnumber']>input, input[id~='CCNumberTextBox']").ordered.and_return(mocked_jquery)
    ToolTag.should_receive(:new).with(mocked_jquery, :hops_cc_textbox, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_cc_textbox.should == mocked_tooltag
  end


  it "should have a hops pur validator" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_pur_validator).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/MemberNumberCustomValidator/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_pur_validator, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_pur_validator.should == mocked_tooltag
  end


  it "should have a hops cc validator" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_cc_validator).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/CCNumberCustomValidator/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_cc_validator, @browser).ordered.and_return(mocked_tooltag)

    @browser.hops_cc_validator.should == mocked_tooltag
  end

  it "should have a hops find store button" do
    $tracer.should_receive(:trace).with(:hops_find_store_button).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("ats-hops-handling-btn").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
    mocked_tooltag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :hops_find_store_button).ordered.and_return(mocked_tooltag)

    @browser.hops_find_store_button.should == mocked_tooltag
  end

  it "should have a hops availability link" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_availability_link).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("availabilityHOPS").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_availability_link).ordered.and_return(mocked_tooltag)

    @browser.hops_availability_link.should == mocked_tooltag
  end

  it "should have a hops more info link" do
    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:hops_more_info_list).ordered

    @browser.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:id).with("hopsMoreInfo").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :hops_more_info_list).ordered.and_return(mocked_tooltag)

    @browser.hops_more_info_list.should == mocked_tooltag
  end


  it "should have a store_mall_name" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_h1 = double("h1")

    $tracer.should_receive(:trace).with(:store_mall_name).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-storeheader').ordered.and_return('ats-storeheader')
    mocked_div.should_receive(:className).with('ats-storeheader').ordered.and_return(mocked_className)
    mocked_className.should_receive(:h1).ordered.and_return(mocked_h1)
    ToolTag.should_receive(:new).with(mocked_h1, :store_mall_name).ordered.and_return(mocked_tooltag)

    @browser.store_mall_name.should == mocked_tooltag
  end

  it "should have a back_to_store_search" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:back_to_store_search).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-backto-storesearch').ordered.and_return('ats-backto-storesearch')
    mocked_div.should_receive(:className).with('ats-backto-storesearch').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :back_to_store_search).ordered.and_return(mocked_tooltag)

    @browser.back_to_store_search.should == mocked_tooltag
  end

  it "should have a store_search" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_search).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    @browser.should_receive(:create_ats_regex_string).with('ats-storesearch').ordered.and_return('ats-storesearch')
    mocked_input.should_receive(:className).with('ats-storesearch').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_search).ordered.and_return(mocked_tooltag)

    @browser.store_search.should == mocked_tooltag
  end

  it "should have a store_details" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_details).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-storedetails').ordered.and_return('ats-storedetails')
    mocked_div.should_receive(:className).with('ats-storedetails').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_details).ordered.and_return(mocked_tooltag)

    @browser.store_details.should == mocked_tooltag
  end

  it "should have a store_address" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_address).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-storeaddress').ordered.and_return('ats-storeaddress')
    mocked_div.should_receive(:className).with('ats-storeaddress').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_address).ordered.and_return(mocked_tooltag)

    @browser.store_address.should == mocked_tooltag
  end

  it "should have a store_phone" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_span = double("span")

    $tracer.should_receive(:trace).with(:store_phone).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-storephone').ordered.and_return('ats-storephone')
    mocked_div.should_receive(:className).with('ats-storephone').ordered.and_return(mocked_className)
    mocked_className.should_receive(:span).ordered.and_return(mocked_span)
    ToolTag.should_receive(:new).with(mocked_span, :store_phone).ordered.and_return(mocked_tooltag)

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
    @browser.should_receive(:create_ats_regex_string).with('ats-storehours').ordered.and_return('ats-storehours')
    mocked_div.should_receive(:className).with('ats-storehours').ordered.and_return(mocked_className)
    mocked_className.should_receive(:find).ordered.and_return(mocked_find)
    mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
    ToolTag.should_receive(:new).with(mocked_tr, :store_hours).ordered.and_return(mocked_tooltag)

    @browser.store_hours.should == mocked_tooltag
  end

  it "should have a store_home_store" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_home_store).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-homestore').ordered.and_return('ats-homestore')
    mocked_div.should_receive(:className).with('ats-homestore').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_home_store).ordered.and_return(mocked_tooltag)

    @browser.store_home_store.should == mocked_tooltag
  end

  it "should have a store_get_directions" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_get_directions).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-getdirections').ordered.and_return('ats-getdirections')
    mocked_div.should_receive(:className).with('ats-getdirections').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_get_directions).ordered.and_return(mocked_tooltag)

    @browser.store_get_directions.should == mocked_tooltag
  end

  it "should have a store_trade_values" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_trade_values).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-findtradevalues').ordered.and_return('ats-findtradevalues')
    mocked_div.should_receive(:className).with('ats-findtradevalues').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_trade_values).ordered.and_return(mocked_tooltag)

    @browser.store_trade_values.should == mocked_tooltag
  end

  it "should have a store_events_header" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_h2 = double("h2")

    $tracer.should_receive(:trace).with(:store_events_header).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-storeeventslist').ordered.and_return('ats-storeeventslist')
    mocked_div.should_receive(:className).with('ats-storeeventslist').ordered.and_return(mocked_className)
    mocked_className.should_receive(:h2).ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :store_events_header).ordered.and_return(mocked_tooltag)

    @browser.store_events_header.should == mocked_tooltag
  end

  it "should have a store_event" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_find = double("find")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:store_event).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-storeevent').ordered.and_return('ats-storeevent')
    mocked_div.should_receive(:className).with('ats-storeevent').ordered.and_return(mocked_className)
    mocked_className.should_receive(:find).ordered.and_return(mocked_find)
    mocked_find.should_receive(:a).ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :store_event).ordered.and_return(mocked_tooltag)

    @browser.store_event.should == mocked_tooltag
  end

  it "should have a store_special_offers_header" do
    mocked_tooltag = double("ToolTag")
    mocked_h2 = double("h2")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_special_offers_header).ordered

    @browser.should_receive(:h2).ordered.and_return(mocked_h2)
    @browser.should_receive(:create_ats_regex_string).with('ats-storespecialoffers').ordered.and_return('ats-storespecialoffers')
    mocked_h2.should_receive(:className).with('ats-storespecialoffers').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_special_offers_header).ordered.and_return(mocked_tooltag)

    @browser.store_special_offers_header.should == mocked_tooltag
  end

  it "should have a store_special_offer" do
    mocked_tooltag = double("ToolTag")
    mocked_li = double("li")
    mocked_className = double("className")
    mocked_gamestopstoreofferlist = double("GameStopStoreOfferList")

    $tracer.should_receive(:trace).with(:store_special_offer).ordered

    @browser.should_receive(:li).ordered.and_return(mocked_li)
    @browser.should_receive(:create_ats_regex_string).with("ats-cartridge-offerAd").ordered.and_return("ats-cartridge-offerAd")
    mocked_li.should_receive(:className).with("ats-cartridge-offerAd").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_special_offer).ordered.and_return(mocked_tooltag)
    GameStopStoreOfferList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopstoreofferlist)

    @browser.store_special_offer.should == mocked_gamestopstoreofferlist
  end

  it "should have a home store image" do
    mocked_tooltag = double("ToolTag")
    mocked_img = double("img")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:store_home_store_img).ordered

    @browser.should_receive(:img).ordered.and_return(mocked_img)
    @browser.should_receive(:create_ats_regex_string).with('homeImage').ordered.and_return('homeImage')
    mocked_img.should_receive(:id).with('homeImage').ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :store_home_store_img).ordered.and_return(mocked_tooltag)

    @browser.store_home_store_img.should == mocked_tooltag
  end

  it "should have a map_locator_pin" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")
    mocked_find = double("find")
    mocked_img = double("img")

    $tracer.should_receive(:trace).with(:store_map_locator).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with('MapPushpinBase').ordered.and_return('MapPushpinBase')
    mocked_a.should_receive(:className).with('MapPushpinBase').ordered.and_return(mocked_className)
    mocked_className.should_receive(:find).ordered.and_return(mocked_find)
    mocked_find.should_receive(:img).ordered.and_return(mocked_img)
    ToolTag.should_receive(:new).with(mocked_img, :store_map_locator).ordered.and_return(mocked_tooltag)

    @browser.store_map_locator.should == mocked_tooltag
  end

  it "should have a store_directions" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_directions).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('/dd_routeSummary dd_routeRootSummary/').ordered.and_return('/dd_routeSummary dd_routeRootSummary/')
    mocked_div.should_receive(:className).with('/dd_routeSummary dd_routeRootSummary/').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_directions).ordered.and_return(mocked_tooltag)

    @browser.store_directions.should == mocked_tooltag
  end

  it "should have a directions point A input" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:point_a_input).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    @browser.should_receive(:create_ats_regex_string).with('MicrosoftMapsDirections_1_WaypointInput3').ordered.and_return('MicrosoftMapsDirections_1_WaypointInput3')
    mocked_input.should_receive(:id).with('MicrosoftMapsDirections_1_WaypointInput3').ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :point_a_input).ordered.and_return(mocked_tooltag)

    @browser.point_a_input.should == mocked_tooltag
  end

  it "should have a directions point A label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:point_a_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('MicrosoftMapsDirections_1_WaypointText3').ordered.and_return('MicrosoftMapsDirections_1_WaypointText3')
    mocked_div.should_receive(:id).with('MicrosoftMapsDirections_1_WaypointText3').ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :point_a_label).ordered.and_return(mocked_tooltag)

    @browser.point_a_label.should == mocked_tooltag
  end

  it "should have a directions point B input" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:point_b_input).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    @browser.should_receive(:create_ats_regex_string).with('MicrosoftMapsDirections_1_WaypointInput4').ordered.and_return('MicrosoftMapsDirections_1_WaypointInput4')
    mocked_input.should_receive(:id).with('MicrosoftMapsDirections_1_WaypointInput4').ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :point_b_input).ordered.and_return(mocked_tooltag)

    @browser.point_b_input.should == mocked_tooltag
  end

  it "should have a directions point B label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:point_b_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('MicrosoftMapsDirections_1_WaypointText4').ordered.and_return('MicrosoftMapsDirections_1_WaypointText4')
    mocked_div.should_receive(:id).with('MicrosoftMapsDirections_1_WaypointText4').ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :point_b_label).ordered.and_return(mocked_tooltag)

    @browser.point_b_label.should == mocked_tooltag
  end

  it "should have a store_locator_url_scriptl" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")
    mocked_script = double("script")

    $tracer.should_receive(:trace).with(:store_locator_url_script).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with('navline1').ordered.and_return(mocked_id)
    mocked_id.should_receive(:script).ordered.and_return(mocked_script)
    ToolTag.should_receive(:new).with(mocked_script, :store_locator_url_script).ordered.and_return(mocked_tooltag)

    @browser.store_locator_url_script.should == mocked_tooltag
  end

  it "should have a Page Title" do
    mocked_tooltag = double("ToolTag")
    mocked_title = double("title")

    $tracer.should_receive(:trace).with(:title_page).ordered

    @browser.should_receive(:title).ordered.and_return(mocked_title)
    ToolTag.should_receive(:new).with(mocked_title, :title_page).ordered.and_return(mocked_tooltag)

    @browser.title_page.should == mocked_tooltag
  end

  it "should have a link_rel Canonical" do
    mocked_tooltag = double("ToolTag")
    mocked_jquery = double("jquery")

    $tracer.should_receive(:trace).with(:link_rel).ordered

    @browser.should_receive(:jquery).with("link[rel='canonical']").ordered.and_return(mocked_jquery)
    ToolTag.should_receive(:new).with(mocked_jquery, :link_rel).ordered.and_return(mocked_tooltag)

    @browser.link_rel.should == mocked_tooltag
  end

  it "should have a bing_map_pin" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:bing_map_pin).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with('MapPushpinBase').ordered.and_return('MapPushpinBase')
    mocked_a.should_receive(:className).with('MapPushpinBase').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :bing_map_pin).ordered.and_return(mocked_tooltag)

    @browser.bing_map_pin.should == mocked_tooltag
  end

  it "should have a bing_map_get_direction" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:bing_map_get_direction).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('infobox_divide').ordered.and_return('infobox_divide')
    mocked_div.should_receive(:className).with('infobox_divide').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :bing_map_get_direction).ordered.and_return(mocked_tooltag)

    @browser.bing_map_get_direction.should == mocked_tooltag
  end

  it "should have a qualtrics_survey_popup" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_find = double("find")
    mocked_img = double("img")

    $tracer.should_receive(:trace).with(:qualtrics_survey_popup).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('/QSIPopOver/').ordered.and_return('/QSIPopOver/')
    mocked_div.should_receive(:className).with('/QSIPopOver/').ordered.and_return(mocked_className)
    mocked_className.should_receive(:find).ordered.and_return(mocked_find)
    mocked_find.should_receive(:img).ordered.and_return(mocked_img)
    ToolTag.should_receive(:new).with(mocked_img, :qualtrics_survey_popup).ordered.and_return(mocked_tooltag)

    @browser.qualtrics_survey_popup.should == mocked_tooltag
  end

  it "should have a pickup_at_store_address" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:pickup_at_store_address).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('address').ordered.and_return('address')
    mocked_div.should_receive(:className).with('address').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :pickup_at_store_address).ordered.and_return(mocked_tooltag)

    @browser.pickup_at_store_address.should == mocked_tooltag
  end

  it "should have a pickup_at_store_hours" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:pickup_at_store_hours).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('hours').ordered.and_return('hours')
    mocked_div.should_receive(:className).with('hours').ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :pickup_at_store_hours).ordered.and_return(mocked_tooltag)

    @browser.pickup_at_store_hours.should == mocked_tooltag
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

  it "should have a alternate_link" do
    mocked_tooltag = double("ToolTag")
    mocked_jquery = double("jquery")
    $tracer.should_receive(:trace).with(:alternate_link).ordered
    @browser.should_receive(:jquery).with("link[rel='alternate']").ordered.and_return(mocked_jquery)
    ToolTag.should_receive(:new).with(mocked_jquery, :alternate_link).ordered.and_return(mocked_tooltag)
    @browser.alternate_link.should == mocked_tooltag
  end

  def store_search_header
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-storesearch-header")).h1, __method__)
  end

  it "should have a store_search_header" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_h1 = double("h1")

    $tracer.should_receive(:trace).with(:store_search_header).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with('ats-storesearch-header').ordered.and_return('ats-storesearch-header')
    mocked_div.should_receive(:className).with('ats-storesearch-header').ordered.and_return(mocked_className)
    mocked_className.should_receive(:h1).ordered.and_return(mocked_h1)
    ToolTag.should_receive(:new).with(mocked_h1, :store_search_header).ordered.and_return(mocked_tooltag)

    @browser.store_search_header.should == mocked_tooltag
  end

  it "should have order_tracking_pixel" do
    mocked_script = double("script")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:order_tracking_pixel).ordered
    @browser.should_receive(:script).with(no_args).ordered.and_return(mocked_script)
    mocked_script.should_receive(:innerText).with("/isOrderTrackingEnabled/").ordered.and_return(mocked_innerText)
    mocked_innerText.should_receive(:innerText).with(no_args).ordered.and_return("/isOrderTrackingEnabled/")
    @browser.order_tracking_pixel.should include "isOrderTrackingEnabled"
  end

  it "should have thank_you_fp_script" do
    mocked_tooltag = double("ToolTag")
    mocked_script = double("script")
    mocked_src = double("src")

    $tracer.should_receive(:trace).with(:thank_you_fp).ordered
    @browser.should_receive(:script).ordered.and_return(mocked_script)
    mocked_script.should_receive(:src).with("//t.channeladvisor.com/v2/12019276.js").ordered.and_return(mocked_src)
    ToolTag.should_receive(:new).with(mocked_src, :thank_you_fp).ordered.and_return(mocked_tooltag)
    @browser.thank_you_fp.should == mocked_tooltag
  end
end

