ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"

describe RecommerceSearchFinder, "finders" do

  before(:all) do
    class RecommerceSearchFinderTest
      include RecommerceSearchFinder
    end

    @browser = RecommerceSearchFinderTest.allocate
  end

  after(:all) do
    Object.send(:remove_const, :RecommerceSearchFinderTest) if Object.const_defined?(:RecommerceSearchFinderTest)
  end


  it "should have a trade in your stuff title" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:trade_in_your_stuff_title).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tradetitle/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :trade_in_your_stuff_title, @browser).ordered.and_return(mocked_tooltag)

    @browser.trade_in_your_stuff_title.should == mocked_tooltag
  end


  it "should have a trade information section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:trade_information_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tradeinformation/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :trade_information_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.trade_information_section.should == mocked_tooltag
  end


  it "should have a trade info find it section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:trade_info_find_it_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tradeinfo findit/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :trade_info_find_it_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.trade_info_find_it_section.should == mocked_tooltag
  end


  it "should have a trade info choose section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:trade_info_choose_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tradeinfo choose/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :trade_info_choose_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.trade_info_choose_section.should == mocked_tooltag
  end


  it "should have a trade info quote section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:trade_info_quote_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tradeinfo quote/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :trade_info_quote_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.trade_info_quote_section.should == mocked_tooltag
  end


  it "should have a rcm product select section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_product_select_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/productselect/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_product_select_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_product_select_section.should == mocked_tooltag
  end


  it "should have a product list dropdown" do
    mocked_tooltag = double("ToolTag")
    mocked_get_self = double("get_self")
    mocked_select = double("select")
    mocked_className = double("className")
    mocked_gamestopselector = double("GameStopSelector")

    $tracer.should_receive(:trace).with(:product_list_dropdown).ordered

    @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
    mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-selectproduct").ordered.and_return("ats-rcm-selectproduct")
    mocked_select.should_receive(:className).with("ats-rcm-selectproduct").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :product_list_dropdown).ordered.and_return(mocked_tooltag)
    GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

    @browser.product_list_dropdown.should == mocked_gamestopselector
  end


  it "should have a product list button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:product_list_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-btnGo").ordered.and_return("ats-rcm-btnGo")
    mocked_a.should_receive(:className).with("ats-rcm-btnGo").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :product_list_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.product_list_button.should == mocked_tooltag
  end


  it "should have a faq links section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:faq_links_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/faqlinks/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :faq_links_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.faq_links_section.should == mocked_tooltag
  end


  it "should have a how works link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:how_works_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-howworks").ordered.and_return("ats-rcm-howworks")
    mocked_a.should_receive(:className).with("ats-rcm-howworks").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :how_works_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.how_works_link.should == mocked_tooltag
  end


  it "should have a what trade link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:what_trade_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-whattrade").ordered.and_return("ats-rcm-whattrade")
    mocked_a.should_receive(:className).with("ats-rcm-whattrade").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :what_trade_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.what_trade_link.should == mocked_tooltag
  end


  it "should have a where take link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:where_take_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-wheretake").ordered.and_return("ats-rcm-wheretake")
    mocked_a.should_receive(:className).with("ats-rcm-wheretake").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :where_take_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.where_take_link.should == mocked_tooltag
  end


  it "should have a faqs link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:faqs_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-faqs").ordered.and_return("ats-rcm-faqs")
    mocked_a.should_receive(:className).with("ats-rcm-faqs").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :faqs_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.faqs_link.should == mocked_tooltag
  end


  it "should have a disclaimer label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:disclaimer_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-disclaimer").ordered.and_return("ats-rcm-disclaimer")
    mocked_div.should_receive(:className).with("ats-rcm-disclaimer").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :disclaimer_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.disclaimer_label.should == mocked_tooltag
  end


  it "should have a rcm product family label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_product_family_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-lblproductfamily").ordered.and_return("ats-rcm-lblproductfamily")
    mocked_span.should_receive(:className).with("ats-rcm-lblproductfamily").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_product_family_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_product_family_label.should == mocked_tooltag
  end


  it "should have a device name label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:device_name_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-lbldevice").ordered.and_return("ats-rcm-lbldevice")
    mocked_span.should_receive(:className).with("ats-rcm-lbldevice").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :device_name_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.device_name_label.should == mocked_tooltag
  end


  it "should have a device image" do
    mocked_tooltag = double("ToolTag")
    mocked_img = double("img")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:device_image).ordered

    @browser.should_receive(:img).ordered.and_return(mocked_img)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-deviceimage").ordered.and_return("ats-rcm-deviceimage")
    mocked_img.should_receive(:className).with("ats-rcm-deviceimage").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :device_image, @browser).ordered.and_return(mocked_tooltag)

    @browser.device_image.should == mocked_tooltag
  end


  it "should have a product storage label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:product_storage_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-lblStorage").ordered.and_return("ats-rcm-lblStorage")
    mocked_span.should_receive(:className).with("ats-rcm-lblStorage").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :product_storage_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.product_storage_label.should == mocked_tooltag
  end


  it "should have a product connectivity label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:product_connectivity_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-lblProductOptions").ordered.and_return("ats-rcm-lblProductOptions")
    mocked_span.should_receive(:className).with("ats-rcm-lblProductOptions").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :product_connectivity_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.product_connectivity_label.should == mocked_tooltag
  end


  it "should have a get offer button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:get_offer_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-getoffer").ordered.and_return("ats-rcm-getoffer")
    mocked_a.should_receive(:className).with("ats-rcm-getoffer").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :get_offer_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.get_offer_button.should == mocked_tooltag
  end


  it "should have a product family label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:product_family_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-productfamily").ordered.and_return("ats-rcm-productfamily")
    mocked_span.should_receive(:className).with("ats-rcm-productfamily").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :product_family_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.product_family_label.should == mocked_tooltag
  end


  it "should have a product condition image" do
    mocked_tooltag = double("ToolTag")
    mocked_img = double("img")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:product_condition_image).ordered

    @browser.should_receive(:img).ordered.and_return(mocked_img)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-prdconddvcimage").ordered.and_return("ats-rcm-prdconddvcimage")
    mocked_img.should_receive(:className).with("ats-rcm-prdconddvcimage").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :product_condition_image, @browser).ordered.and_return(mocked_tooltag)

    @browser.product_condition_image.should == mocked_tooltag
  end


  it "should have a choose another device link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:choose_another_device_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-lnkAnotherDev").ordered.and_return("ats-rcm-lnkAnotherDev")
    mocked_a.should_receive(:className).with("ats-rcm-lnkAnotherDev").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :choose_another_device_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.choose_another_device_link.should == mocked_tooltag
  end


  it "should have a product title label" do
    mocked_tooltag = double("ToolTag")
    mocked_label = double("label")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_product_title_label).ordered

    @browser.should_receive(:label).ordered.and_return(mocked_label)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-prod_title").ordered.and_return("ats-rcm-prod_title")
    mocked_label.should_receive(:className).with("ats-rcm-prod_title").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_product_title_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_product_title_label.should == mocked_tooltag
  end


  it "should have a model holder label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:model_holder_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-modelnumberhdr").ordered.and_return("ats-rcm-modelnumberhdr")
    mocked_span.should_receive(:className).with("ats-rcm-modelnumberhdr").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :model_holder_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.model_holder_label.should == mocked_tooltag
  end


  it "should have a model number label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:model_number_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-modelnbr").ordered.and_return("ats-rcm-modelnbr")
    mocked_span.should_receive(:className).with("ats-rcm-modelnbr").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :model_number_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.model_number_label.should == mocked_tooltag
  end


  it "should have a like new tab" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:like_new_tab).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-tab1").ordered.and_return("ats-rcm-tab1")
    mocked_a.should_receive(:className).with("ats-rcm-tab1").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :like_new_tab, @browser).ordered.and_return(mocked_tooltag)

    @browser.like_new_tab.should == mocked_tooltag
  end


  it "should have a good tab" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:good_tab).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-tab2").ordered.and_return("ats-rcm-tab2")
    mocked_a.should_receive(:className).with("ats-rcm-tab2").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :good_tab, @browser).ordered.and_return(mocked_tooltag)

    @browser.good_tab.should == mocked_tooltag
  end


  it "should have a poor tab" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:poor_tab).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-tab3").ordered.and_return("ats-rcm-tab3")
    mocked_a.should_receive(:className).with("ats-rcm-tab3").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :poor_tab, @browser).ordered.and_return(mocked_tooltag)

    @browser.poor_tab.should == mocked_tooltag
  end


  it "should have a broken tab" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:broken_tab).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-tab4").ordered.and_return("ats-rcm-tab4")
    mocked_a.should_receive(:className).with("ats-rcm-tab4").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :broken_tab, @browser).ordered.and_return(mocked_tooltag)

    @browser.broken_tab.should == mocked_tooltag
  end


  it "should have a rcm tab1 section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_tab1_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("tab1").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_tab1_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_tab1_section.should == mocked_tooltag
  end


  it "should have a rcm tab2 section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_tab2_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("tab2").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_tab2_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_tab2_section.should == mocked_tooltag
  end


  it "should have a rcm tab3 section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_tab3_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("tab3").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_tab3_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_tab3_section.should == mocked_tooltag
  end


  it "should have a rcm tab4 section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_tab4_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("tab4").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_tab4_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_tab4_section.should == mocked_tooltag
  end


  it "should have a items included checkbox" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:items_included_checkbox).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-opt").ordered.and_return("ats-rcm-opt")
    mocked_input.should_receive(:className).with("ats-rcm-opt").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :items_included_checkbox, @browser).ordered.and_return(mocked_tooltag)

    @browser.items_included_checkbox.should == mocked_tooltag
  end


  it "should have a rcm price details section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_price_details_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("pricedetails").ordered.and_return("pricedetails")
    mocked_div.should_receive(:className).with("pricedetails").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_price_details_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_price_details_section.should == mocked_tooltag
  end


  it "should have a credit price label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:credit_price_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-creditprice").ordered.and_return("ats-rcm-creditprice")
    mocked_div.should_receive(:className).with("ats-rcm-creditprice").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :credit_price_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.credit_price_label.should == mocked_tooltag
  end


  it "should have a cash price label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:cash_price_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-cashprice").ordered.and_return("ats-rcm-cashprice")
    mocked_div.should_receive(:className).with("ats-rcm-cashprice").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :cash_price_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.cash_price_label.should == mocked_tooltag
  end


  it "should have a print quote button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:print_quote_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("btnPrint").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :print_quote_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.print_quote_button.should == mocked_tooltag
  end


  it "should have a rcm store search section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_store_search_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("recomstoresearch").ordered.and_return("recomstoresearch")
    mocked_div.should_receive(:className).with("recomstoresearch").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_store_search_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_search_section.should == mocked_tooltag
  end


  it "should have a rcm the map section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_the_map_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("themap").ordered.and_return("themap")
    mocked_div.should_receive(:className).with("themap").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_the_map_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_the_map_section.should == mocked_tooltag
  end


  it "should have a rcm the words section" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_the_words_section).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("thewords").ordered.and_return("thewords")
    mocked_div.should_receive(:className).with("thewords").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_the_words_section, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_the_words_section.should == mocked_tooltag
  end


  it "should have a store locator textbox" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:store_locator_textbox).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    @browser.should_receive(:create_ats_regex_string).with("ats-rcm-storelocatortextfield").ordered.and_return("ats-rcm-storelocatortextfield")
    mocked_input.should_receive(:className).with("ats-rcm-storelocatortextfield").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :store_locator_textbox, @browser).ordered.and_return(mocked_tooltag)

    @browser.store_locator_textbox.should == mocked_tooltag
  end


  it "should have a store locator button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:store_locator_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("btnGo").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :store_locator_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.store_locator_button.should == mocked_tooltag
  end


  it "should have a rcm print quote header" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_print_quote_header).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/printquoteheader/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_print_quote_header, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_print_quote_header.should == mocked_tooltag
  end


  it "should have a rcm product title" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_product_title).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/displayProductTitle/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_product_title, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_product_title.should == mocked_tooltag
  end


  it "should have a rcm model name" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_model_name).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/modelname/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_model_name, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_model_name.should == mocked_tooltag
  end


  it "should have a rcm product image" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_product_image).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("/prodimage/").ordered.and_return("/prodimage/")
    mocked_div.should_receive(:className).with("/prodimage/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_product_image, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_product_image.should == mocked_tooltag
  end


  it "should have a rcm condition details" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_condition_details).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("/conditiondetails/").ordered.and_return("/conditiondetails/")
    mocked_div.should_receive(:className).with("/conditiondetails/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_condition_details, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_condition_details.should == mocked_tooltag
  end


  it "should have a rcm price display" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_price_display).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("/pricedisplay/").ordered.and_return("/pricedisplay/")
    mocked_div.should_receive(:className).with("/pricedisplay/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_price_display, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_price_display.should == mocked_tooltag
  end


  it "should have a rcm home store address" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_home_store_address).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("/hsaddress/").ordered.and_return("/hsaddress/")
    mocked_div.should_receive(:className).with("/hsaddress/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_home_store_address, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_home_store_address.should == mocked_tooltag
  end


  it "should have a rcm disclaimer" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_disclaimer).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/ats-rcm-disclaimer/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_disclaimer, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_disclaimer.should == mocked_tooltag
  end


  it "should have a rcm faqs title" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_faqs_title).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/typesection/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_faqs_title, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_faqs_title.should == mocked_tooltag
  end


  it "should have a rcm store location close button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_location_close_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("tdbtnClose").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_location_close_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_location_close_button.should == mocked_tooltag
  end


  it "should have a rcm set home store link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_set_home_store_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/sethmstorebtn/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_set_home_store_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_set_home_store_link.should == mocked_tooltag
  end


  it "should have a rcm bing directions link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_bing_directions_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/set_preferred basic directions/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_bing_directions_link, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_bing_directions_link.should == mocked_tooltag
  end


  it "should have a rcm store saved ok button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_saved_ok_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/ClosePopupButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_saved_ok_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_saved_ok_button.should == mocked_tooltag
  end


  it "should have a rcm miles away" do
    mocked_tooltag = double("ToolTag")
    mocked_th = double("th")
    mocked_with = double("with")
    mocked_classname = double("classname")

    $tracer.should_receive(:trace).with(:rcm_miles_away).ordered

    @browser.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:with).ordered.and_return(mocked_with)
    mocked_with.should_receive(:classname).with("/miles_away/").ordered.and_return(mocked_classname)
    ToolTag.should_receive(:new).with(mocked_classname, :rcm_miles_away, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_miles_away.should == mocked_tooltag
  end


  it "should have a rcm store distance label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_distance_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/StoreDistanceLabel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_distance_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_distance_label.should == mocked_tooltag
  end


  it "should have a rcm miles away label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_miles_away_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/MilesAwayLabel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_miles_away_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_miles_away_label.should == mocked_tooltag
  end


  it "should have a rcm item number" do
    mocked_tooltag = double("ToolTag")
    mocked_td = double("td")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_item_number).ordered

    @browser.should_receive(:td).ordered.and_return(mocked_td)
    @browser.should_receive(:create_ats_regex_string).with("item_num_in_list").ordered.and_return("item_num_in_list")
    mocked_td.should_receive(:className).with("item_num_in_list").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_item_number, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_item_number.should == mocked_tooltag
  end


  it "should have a rcm store index image" do
    mocked_tooltag = double("ToolTag")
    mocked_img = double("img")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_index_image).ordered

    @browser.should_receive(:img).ordered.and_return(mocked_img)
    mocked_img.should_receive(:id).with("/StoreIndexImage/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_index_image, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_index_image.should == mocked_tooltag
  end


  it "should have a rcm store address" do
    mocked_tooltag = double("ToolTag")
    mocked_td = double("td")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_store_address).ordered

    @browser.should_receive(:td).ordered.and_return(mocked_td)
    @browser.should_receive(:create_ats_regex_string).with("store_address").ordered.and_return("store_address")
    mocked_td.should_receive(:className).with("store_address").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_store_address, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_address.should == mocked_tooltag
  end


  it "should have a rcm mall label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_mall_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/StoreInfoControl_MallLabel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_mall_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_mall_label.should == mocked_tooltag
  end


  it "should have a rcm store address1 label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_address1_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/StoreInfoControl_Address1Label/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_address1_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_address1_label.should == mocked_tooltag
  end


  it "should have a rcm store address2 label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_address2_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/StoreInfoControl_Address2Label/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_address2_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_address2_label.should == mocked_tooltag
  end


  it "should have a rcm store city label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_city_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/StoreInfoControl_CityLabel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_city_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_city_label.should == mocked_tooltag
  end


  it "should have a rcm store state label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_state_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/StoreInfoControl_StateLabel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_state_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_state_label.should == mocked_tooltag
  end


  it "should have a rcm store zip label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_zip_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/StoreInfoControl_ZipLabel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_zip_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_zip_label.should == mocked_tooltag
  end


  it "should have a rcm store phone label" do
    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_phone_label).ordered

    @browser.should_receive(:span).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/StoreInfoControl_PhoneLabel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_phone_label, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_phone_label.should == mocked_tooltag
  end


  it "should have a rcm store hours" do
    mocked_tooltag = double("ToolTag")
    mocked_td = double("td")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:rcm_store_hours).ordered

    @browser.should_receive(:td).ordered.and_return(mocked_td)
    @browser.should_receive(:create_ats_regex_string).with("store_hours").ordered.and_return("store_hours")
    mocked_td.should_receive(:className).with("store_hours").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :rcm_store_hours, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_hours.should == mocked_tooltag
  end


  it "should have a rcm store zip input" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_zip_input).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/EnterZipTextBox/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_zip_input, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_zip_input.should == mocked_tooltag
  end


  it "should have a rcm store zip find button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_store_zip_find_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/FindZipButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_store_zip_find_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_store_zip_find_button.should == mocked_tooltag
  end


  it "should have a rcm map panel" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_map_panel).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/MapUpdatePanel/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_map_panel, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_map_panel.should == mocked_tooltag
  end


  it "should have a rcm load more button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:rcm_load_more_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/LoadMoreButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :rcm_load_more_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.rcm_load_more_button.should == mocked_tooltag
  end

end