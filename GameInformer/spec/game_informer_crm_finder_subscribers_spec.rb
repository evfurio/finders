ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_requires"

describe GameInformerCrmFinderSubscribers, "finders" do

  before(:all) do
    class GameInformerCrmFinderSubscribersTest
      include GameInformerCrmFinderSubscribers
    end

    @browser = GameInformerCrmFinderSubscribersTest.allocate

  end

  after(:all) do
    Object.send(:remove_const, :GameInformerCrmFinderSubscribersTest) if Object.const_defined?(:GameInformerCrmFinderSubscribersTest)
  end



  #################################################################################################
  ##### Unit tests from CRM Subscription Management page (http://<crm_env>.gameinformer.com/Subscriber#)  ####
  #################################################################################################

  it "should return log off link" do
    mocked_tooltag = mock("ToolTag")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:log_off_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Account/LogOff/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :log_off_link).ordered.and_return(mocked_tooltag)
    @browser.log_off_link.should == mocked_tooltag

  end

  it "should return card num field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:card_num_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/CardNumber/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :card_num_field).ordered.and_return(mocked_tooltag)
    @browser.card_num_field.should == mocked_tooltag
  end

  it "should return subscriber num field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:subscriber_num_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/SubscriberId/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :subscriber_num_field).ordered.and_return(mocked_tooltag)
    @browser.subscriber_num_field.should == mocked_tooltag
  end

  it "should return email field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:email_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/Email/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :email_field).ordered.and_return(mocked_tooltag)
    @browser.email_field.should == mocked_tooltag
  end

  it "should return last name field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:last_name_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/LastName/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :last_name_field).ordered.and_return(mocked_tooltag)
    @browser.last_name_field.should == mocked_tooltag
  end

  it "should return first name field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:first_name_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/FirstName/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :first_name_field).ordered.and_return(mocked_tooltag)
    @browser.first_name_field.should == mocked_tooltag
  end

  it "should return address 1 field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:address_one_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/Address1/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :address_one_field).ordered.and_return(mocked_tooltag)
    @browser.address_one_field.should == mocked_tooltag
  end

  it "should return city field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:city_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/City/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :city_field).ordered.and_return(mocked_tooltag)
    @browser.city_field.should == mocked_tooltag
  end

  it "should return zip code field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:zip_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ZipCode/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :zip_field).ordered.and_return(mocked_tooltag)
    @browser.zip_field.should == mocked_tooltag
  end

  it "should return clear button" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_value = mock("value")

    $tracer.should_receive(:trace).with(:subscriber_clear_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:value).with("Clear").ordered.and_return(mocked_value)
    ToolTag.should_receive(:new).with(mocked_value, :subscriber_clear_button).ordered.and_return(mocked_tooltag)
    @browser.subscriber_clear_button.should == mocked_tooltag
  end

  it "should return search button" do
    mocked_tooltag = mock("ToolTag")
    mocked_a = mock("a")
    mocked_className = mock("className")

    $tracer.should_receive(:trace).with(:subscriber_search_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("search-button").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :subscriber_search_button).ordered.and_return(mocked_tooltag)
    @browser.subscriber_search_button.should == mocked_tooltag
  end

  it "should return log create subscriber button" do
    mocked_tooltag = mock("ToolTag")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:create_subscriber_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Subscriber/AddWithSubscription/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :create_subscriber_button).ordered.and_return(mocked_tooltag)
    @browser.create_subscriber_button.should == mocked_tooltag
  end

  it "should return name column from the table" do
    mocked_tooltag = mock("ToolTag")
    mocked_th = mock("th")
    mocked_className = mock("className")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:name_column).ordered

    @browser.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:className).with("user").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Name/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :name_column).ordered.and_return(mocked_tooltag)
    @browser.name_column.should == mocked_tooltag
  end

  it "should return email column from the table" do
    mocked_tooltag = mock("ToolTag")
    mocked_th = mock("th")
    mocked_className = mock("className")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:email_column).ordered

    @browser.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:className).with("email").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Email").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :email_column).ordered.and_return(mocked_tooltag)
    @browser.email_column.should == mocked_tooltag
  end

  it "should return phone column from the table" do
    mocked_tooltag = mock("ToolTag")
    mocked_th = mock("th")
    mocked_className = mock("className")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:phone_column).ordered

    @browser.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:className).with("phone").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Phone").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :phone_column).ordered.and_return(mocked_tooltag)
    @browser.phone_column.should == mocked_tooltag
  end

  it "should return address column from the table" do
    mocked_tooltag = mock("ToolTag")
    mocked_th = mock("th")
    mocked_className = mock("className")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:address_column).ordered

    @browser.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:className).with("address").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Address").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :address_column).ordered.and_return(mocked_tooltag)
    @browser.address_column.should == mocked_tooltag
  end

  it "should return zip code column from the table" do
    mocked_tooltag = mock("ToolTag")
    mocked_th = mock("th")
    mocked_className = mock("className")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:zip_code_column).ordered

    @browser.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:className).with("zipcode").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Zip Code").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :zip_code_column).ordered.and_return(mocked_tooltag)
    @browser.zip_code_column.should == mocked_tooltag
  end

  it "should return subscriber number column from the table" do
    mocked_tooltag = mock("ToolTag")
    mocked_th = mock("th")
    mocked_className = mock("className")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:subscriber_num_column).ordered

    @browser.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:className).with("customnumer").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Subscriber #").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :subscriber_num_column).ordered.and_return(mocked_tooltag)
    @browser.subscriber_num_column.should == mocked_tooltag
  end

  it "should return the subscriber menu list" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_child = mock("child")
    mocked_a = mock("a")
    mocked_href = mock("href")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:create_subscriber_menu).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("menu").ordered.and_return(mocked_className)
    mocked_className.should_receive(:child).with("li").ordered.and_return(mocked_child)
    mocked_child.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/#/").ordered.and_return(mocked_href)
    mocked_href.should_receive(:innerText).with("/Subscribers/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :create_subscriber_menu).ordered.and_return(mocked_tooltag)
    @browser.create_subscriber_menu.should == mocked_tooltag
  end

  it "should return subscriber sublistsfrom subscriber" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_li = mock("li")
    mocked_innerText = mock("innerText")
    mocked_a = mock("a")
    mocked_gameinformercrmmenulist = mock("GameInformerCRMMenuList")

    $tracer.should_receive(:trace).with(:create_subscriber_menu_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("menu").ordered.and_return(mocked_className)
    mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    mocked_li.should_receive(:innerText).with("/Subscribers/").ordered.and_return(mocked_innerText)
    mocked_innerText.should_receive(:a).ordered.and_return(mocked_a)
    GameInformerCRMMenuList.should_receive(:new).with(mocked_a, :create_subscriber_menu_list).ordered.and_return(mocked_gameinformercrmmenulist)
    @browser.create_subscriber_menu_list == mocked_gameinformercrmmenulist
  end

  it "should return the subscriber menu list" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_child = mock("child")
    mocked_a = mock("a")
    mocked_href = mock("href")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:create_maintenance_menu).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("menu").ordered.and_return(mocked_className)
    mocked_className.should_receive(:child).with("li").ordered.and_return(mocked_child)
    mocked_child.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/#/").ordered.and_return(mocked_href)
    mocked_href.should_receive(:innerText).with("/Maintenance/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :create_maintenance_menu).ordered.and_return(mocked_tooltag)
    @browser.create_maintenance_menu.should == mocked_tooltag
  end

  it "should return the maintenance sublist" do

    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_li = mock("li")
    mocked_innerText = mock("innerText")
    mocked_a = mock("a")
    mocked_gameinformercrmmenulist = mock("GameInformerCRMMenuList")

    $tracer.should_receive(:trace).with(:create_maintenance_menu_list).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("menu").ordered.and_return(mocked_className)
    mocked_className.should_receive(:li).ordered.and_return(mocked_li)
    mocked_li.should_receive(:innerText).with("/Maintenance/").ordered.and_return(mocked_innerText)
    mocked_innerText.should_receive(:a).ordered.and_return(mocked_a)
    GameInformerCRMMenuList.should_receive(:new).with(mocked_a, :create_maintenance_menu_list).ordered.and_return(mocked_gameinformercrmmenulist)
    @browser.create_maintenance_menu_list == mocked_gameinformercrmmenulist

  end

  it "should return the next button" do
    mocked_tooltag = mock("ToolTag")
    mocked_a = mock("a")
    mocked_className = mock("className")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:subscriber_next_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("next").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("Next").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :subscriber_next_button).ordered.and_return(mocked_tooltag)
    @browser.subscriber_next_button.should == mocked_tooltag
  end

  it "should return the last button" do
    mocked_tooltag = mock("ToolTag")
    mocked_a = mock("a")
    mocked_className = mock("className")
    mocked_innerText = mock("innerText")

    $tracer.should_receive(:trace).with(:subscriber_last_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("last").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("Last").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :subscriber_last_button).ordered.and_return(mocked_tooltag)
    @browser.subscriber_last_button.should == mocked_tooltag
  end

  it "should return the go button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_input = mock("input")
    mocked_id = mock("id")
    mocked_value = mock("value")

    $tracer.should_receive(:trace).with(:subscriber_go_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("pager").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("btnJumpToPage").ordered.and_return(mocked_id)
    mocked_id.should_receive(:value).with("Go").ordered.and_return(mocked_value)
    ToolTag.should_receive(:new).with(mocked_value, :subscriber_go_button).ordered.and_return(mocked_tooltag)
    @browser.subscriber_go_button.should == mocked_tooltag
  end

  it "should return the total number of pages returned" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:subscriber_total_num_pages_retrieved).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("pager").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("hdnTotalPages").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :subscriber_total_num_pages_retrieved).ordered.and_return(mocked_tooltag)
    @browser.subscriber_total_num_pages_retrieved.should == mocked_tooltag
  end

  it "should return the first page of search results" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:subscriber_first_page_retrieved).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("pager").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("txtJumpToPage").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :subscriber_first_page_retrieved).ordered.and_return(mocked_tooltag)
    @browser.subscriber_first_page_retrieved.should == mocked_tooltag
  end
end