ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_requires"

describe GameInformerCrmFinderCodeTables, "finders" do

  before(:all) do
    class GameInformerCrmFinderCodeTablesTest
      include GameInformerCrmFinderCodeTables
    end

    @browser = GameInformerCrmFinderCodeTablesTest.allocate

  end

  after(:all) do
    Object.send(:remove_const, :GameInformerCrmFinderCodeTablesTest) if Object.const_defined?(:GameInformerCrmFinderCodeTablesTest)
  end

  ####################################################################################################################
  ##### Unit tests from Maintain Code Tables page (<crm_env>.gameinformer.com/Maintenance)  						         #####
  ####################################################################################################################
  it "should return the label on code tables page" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:code_tables_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("Maintain Code Tables").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :code_tables_label).ordered.and_return(mocked_tooltag)
    @browser.code_tables_label.should == mocked_tooltag
  end

  it "should return the subscription title link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_subscription_title_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/SubscriptionTitle").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_subscription_title_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_subscription_title_link.should == mocked_tooltag
  end

  it "should return the media type link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_media_type_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/MediaType").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_media_type_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_media_type_link.should == mocked_tooltag
  end

  it "should return the issue link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_issue_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Issue").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_issue_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_issue_link.should == mocked_tooltag
  end

  it "should return the item code link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_item_code_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/ItemCode").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_item_code_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_item_code_link.should == mocked_tooltag
  end

  it "should return the cancel reason type link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_cancel_reason_type_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/CancelReason").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_cancel_reason_type_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_cancel_reason_type_link.should == mocked_tooltag
  end

  it "should return the comp reason type link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_comp_reason_type_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/CompReason").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_comp_reason_type_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_comp_reason_type_link.should == mocked_tooltag
  end

  it "should return the country link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_country_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Country").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_country_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_country_link.should == mocked_tooltag
  end

  it "should return the state link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_state_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/State").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_state_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_state_link.should == mocked_tooltag
  end

  it "should return the zip code link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_zip_code_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/ZipCode").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_zip_code_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_zip_code_link.should == mocked_tooltag
  end

  it "should return the application settings link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:code_tables_app_settings_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/settings").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :code_tables_app_settings_link).ordered.and_return(mocked_tooltag)
    @browser.code_tables_app_settings_link.should == mocked_tooltag
  end

####################################################################################################################
##### Unit test for Common Maintain Code Tables finders                                                        #####
####################################################################################################################

  it "should return the maintain code tables child page labels" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h1 = mock("h1")

    $tracer.should_receive(:trace).with(:maintain_code_tables_child_page_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h1).ordered.and_return(mocked_h1)
    ToolTag.should_receive(:new).with(mocked_h1, :maintain_code_tables_child_page_label).ordered.and_return(mocked_tooltag)
    @browser.maintain_code_tables_child_page_label.should == mocked_tooltag
  end

  it "should return the maintain code table media type column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_table = mock("table")
    mocked_th = mock("th")

    $tracer.should_receive(:trace).with(:maintain_code_tables_media_type_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:table).ordered.and_return(mocked_table)
    mocked_table.should_receive(:className).with("details").ordered.and_return(mocked_className)
    mocked_className.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:className).with("value").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :maintain_code_tables_media_type_column).ordered.and_return(mocked_tooltag)
    @browser.maintain_code_tables_media_type_column.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Subscription Title page (<crm_env>.gameinformer.com/SubscriptionTitle)  					       #####
  ####################################################################################################################

  it "should return the subscription digital management title" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:subscription_digital_management_title).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/SubscriptionTitle/Edit/2").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :subscription_digital_management_title).ordered.and_return(mocked_tooltag)
    @browser.subscription_digital_management_title.should == mocked_tooltag
  end

  it "should return the subscription digital print title" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:subscription_digital_print_title).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/SubscriptionTitle/Edit/1").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :subscription_digital_print_title).ordered.and_return(mocked_tooltag)
    @browser.subscription_digital_print_title.should == mocked_tooltag
  end

  it "should return the subscription title column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_table = mock("table")
    mocked_th = mock("th")

    $tracer.should_receive(:trace).with(:subscription_title_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:table).ordered.and_return(mocked_table)
    mocked_table.should_receive(:className).with("details").ordered.and_return(mocked_className)
    mocked_className.should_receive(:th).ordered.and_return(mocked_th)
    mocked_th.should_receive(:className).with("code").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :subscription_title_column).ordered.and_return(mocked_tooltag)
    @browser.subscription_title_column.should == mocked_tooltag
  end


  it "should return the subscription subscriber button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:subscription_subscriber_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/SubscriptionTitle/Add").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :subscription_subscriber_button).ordered.and_return(mocked_tooltag)
    @browser.subscription_subscriber_button.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Media Type Management page (<crm_env>.gameinformer.com/MediaType)        					       #####
  ####################################################################################################################

  it "should return the media type print title" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:media_type_print_title).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/MediaType/Edit/1").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :media_type_print_title).ordered.and_return(mocked_tooltag)
    @browser.media_type_print_title.should == mocked_tooltag
  end

  it "should return the media type digital title" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:media_type_digital_title).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/MediaType/Edit/2").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :media_type_digital_title).ordered.and_return(mocked_tooltag)
    @browser.media_type_digital_title.should == mocked_tooltag
  end


  it "should return the media type add media button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:media_type_add_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/MediaType/Add").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :media_type_add_button).ordered.and_return(mocked_tooltag)
    @browser.media_type_add_button.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Issue Management page (<crm_env>.gameinformer.com/Issue)                 					       #####
  ####################################################################################################################

  it "should return the issue management title column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_title_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Title [Media Type]").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_title_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_title_column.should == mocked_tooltag
  end

  it "should return the issue management sku num column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_sku_num_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("SKU #").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_sku_num_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_sku_num_column.should == mocked_tooltag
  end

  it "should return the issue management num column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_issue_num_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Issue #").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_issue_num_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_issue_num_column.should == mocked_tooltag
  end

  it "should return the issue management volume num column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_volume_num_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Volume #").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_volume_num_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_volume_num_column.should == mocked_tooltag
  end

  it "should return the issue management year num column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_year_num_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Year").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_year_num_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_year_num_column.should == mocked_tooltag
  end

  it "should return the issue management month num column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_month_num_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Month").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_month_num_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_month_num_column.should == mocked_tooltag
  end

  it "should return the issue management on sale column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_on_sale_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("On Sale").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_on_sale_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_on_sale_column.should == mocked_tooltag
  end

  it "should return the issue management cut off column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_cut_off_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Cut Off").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_cut_off_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_cut_off_column.should == mocked_tooltag
  end

  it "should return the issue management seq column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:issue_management_seq_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Seq").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :issue_management_seq_column).ordered.and_return(mocked_tooltag)
    @browser.issue_management_seq_column.should == mocked_tooltag
  end

  it "should return the issue management view button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_input = mock("input")
    mocked_value = mock("value")

    $tracer.should_receive(:trace).with(:issue_management_view_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-form").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:value).with("View").ordered.and_return(mocked_value)
    ToolTag.should_receive(:new).with(mocked_value, :issue_management_view_button).ordered.and_return(mocked_tooltag)
    @browser.issue_management_view_button.should == mocked_tooltag
  end

  it "should return the issue management add issue button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:issue_management_add_issue_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-form").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Issue/Add").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :issue_management_add_issue_button).ordered.and_return(mocked_tooltag)
    @browser.issue_management_add_issue_button.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Issue Management page (<crm_env>.gameinformer.com/ItemCode)                 					       #####
  ####################################################################################################################

  it "should return the item code management label" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:item_code_management_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("Item Code Management").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :item_code_management_label).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_label.should == mocked_tooltag
  end

  it "should return the item code management filter picker field" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_form = mock("form")
    mocked_action = mock("action")
    mocked_select = mock("select")

    $tracer.should_receive(:trace).with(:item_code_items_filter_picker_field).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-form").ordered.and_return(mocked_className)
    mocked_className.should_receive(:form).ordered.and_return(mocked_form)
    mocked_form.should_receive(:action).with("/ItemCode").ordered.and_return(mocked_action)
    mocked_action.should_receive(:select).ordered.and_return(mocked_select)
    mocked_select.should_receive(:id).with("SubscriptionTitleFilter").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :item_code_items_filter_picker_field).ordered.and_return(mocked_tooltag)
    @browser.item_code_items_filter_picker_field.should == mocked_tooltag
  end

  it "should return the item code management types picker field" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_form = mock("form")
    mocked_action = mock("action")
    mocked_select = mock("select")

    $tracer.should_receive(:trace).with(:item_code_items_types_picker_field).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-form").ordered.and_return(mocked_className)
    mocked_className.should_receive(:form).ordered.and_return(mocked_form)
    mocked_form.should_receive(:action).with("/ItemCode").ordered.and_return(mocked_action)
    mocked_action.should_receive(:select).ordered.and_return(mocked_select)
    mocked_select.should_receive(:id).with("SubscriptionTypeFilter").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :item_code_items_types_picker_field).ordered.and_return(mocked_tooltag)
    @browser.item_code_items_types_picker_field.should == mocked_tooltag
  end

  it "should return the item code management search button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_input = mock("input")
    mocked_value = mock("value")

    $tracer.should_receive(:trace).with(:item_code_management_search_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-form").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:value).with("Search").ordered.and_return(mocked_value)
    ToolTag.should_receive(:new).with(mocked_value, :item_code_management_search_button).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_search_button.should == mocked_tooltag
  end


  it "should return the item code management add button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:item_code_management_add_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/ItemCode/Add").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :item_code_management_add_button).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_add_button.should == mocked_tooltag
  end


  it "should return the item code management item code column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")


    $tracer.should_receive(:trace).with(:item_code_management_itemcode_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("ItemCode").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :item_code_management_itemcode_column).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_itemcode_column.should == mocked_tooltag
  end


  it "should return the item code management title column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:item_code_management_title_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Title").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :item_code_management_title_column).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_title_column.should == mocked_tooltag
  end

  it "should return the item code management media type column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:item_code_management_mediatype_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Media Type").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :item_code_management_mediatype_column).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_mediatype_column.should == mocked_tooltag
  end

  it "should return the item code management subscription type column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:item_code_management_subscriptiontype_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Subscription Type").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :item_code_management_subscriptiontype_column).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_subscriptiontype_column.should == mocked_tooltag
  end

  it "should return the item code management issues column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:item_code_management_issues_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Issues").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :item_code_management_issues_column).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_issues_column.should == mocked_tooltag
  end

  it "should return the item code management issues column" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_tbody = mock("tbody")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:item_code_management_price_column).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
    mocked_tbody.should_receive(:td).with("Price").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :item_code_management_price_column).ordered.and_return(mocked_tooltag)
    @browser.item_code_management_price_column.should == mocked_tooltag
  end


end