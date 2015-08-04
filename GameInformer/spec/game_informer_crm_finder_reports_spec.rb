ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_requires"

describe GameInformerCrmFinderReports, "finders" do

  before(:all) do
    class GameInformerCrmFinderReportsTest
      include GameInformerCrmFinderReports
    end

    @browser = GameInformerCrmFinderReportsTest.allocate

  end

  after(:all) do
    Object.send(:remove_const, :GameInformerCrmFinderReportsTest) if Object.const_defined?(:GameInformerCrmFinderReportsTest)
  end


  ####################################################################################################################
  ##### Unit tests from CRM Reports page (http://<crm_env>.gameinformer.com/Reports) 							   #####
  ####################################################################################################################

  it "should return the reports label" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:report_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("/Reports/").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :report_label).ordered.and_return(mocked_tooltag)
    @browser.report_label.should == mocked_tooltag
  end

  it "should return score card report hyperlink on the main reports page" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:score_card_report_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Reports/GIScoreCard/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :score_card_report_link).ordered.and_return(mocked_tooltag)
    @browser.score_card_report_link.should == mocked_tooltag
  end

  it "should return sales by state report hyperlink on the main reports page" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:sales_by_state_report_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Reports/GISalesByState/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :sales_by_state_report_link).ordered.and_return(mocked_tooltag)
    @browser.sales_by_state_report_link.should == mocked_tooltag
  end

  it "should return sales by zip report hyperlink on the main reports page" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:sales_by_zip_report_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Reports/GISalesByZip/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :sales_by_zip_report_link).ordered.and_return(mocked_tooltag)
    @browser.sales_by_zip_report_link.should == mocked_tooltag
  end

  it "should return ten day paid sales report hyperlink on the main reports page" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:ten_day_paid_sales_report_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Reports/GITenDaySales/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :ten_day_paid_sales_report_link).ordered.and_return(mocked_tooltag)
    @browser.ten_day_paid_sales_report_link.should == mocked_tooltag
  end

  it "should return 9850 sales by state report hyperlink on the main reports page" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:store9850_sales_by_state_report_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Reports/Store9850Report/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :store9850_sales_by_state_report_link).ordered.and_return(mocked_tooltag)
    @browser.store9850_sales_by_state_report_link.should == mocked_tooltag
  end

  it "should return 9850 sales by city report hyperlink on the main reports page" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_ul = mock("ul")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:store9850_sales_by_city_report_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Reports/Store9850ReportByCityStatezip/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :store9850_sales_by_city_report_link).ordered.and_return(mocked_tooltag)
    @browser.store9850_sales_by_city_report_link.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests Common finders on Reports                                                                     #####
  ####################################################################################################################

  it "should return the title selector" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_select = mock("select")
    mocked_gameinformercrmselector = mock("GameInformerCRMSelector")

    $tracer.should_receive(:trace).with(:title_id_selector).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("row").ordered.and_return(mocked_className)
    mocked_className.should_receive(:select).ordered.and_return(mocked_select)
    GameInformerCRMSelector.should_receive(:new).with(mocked_select,:title_id_selector).ordered.and_return(mocked_gameinformercrmselector)
    @browser.title_id_selector.should == mocked_gameinformercrmselector
  end

  it "should return the execute button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_input = mock("input")
    mocked_value = mock("value")

    $tracer.should_receive(:trace).with(:execute_report_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("row").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:value).with("Execute").ordered.and_return(mocked_value)
    ToolTag.should_receive(:new).with(mocked_value, :execute_report_button).ordered.and_return(mocked_tooltag)
    @browser.execute_report_button.should == mocked_tooltag
  end

  it "should return the download link" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:download_report_link).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Download/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :download_report_link).ordered.and_return(mocked_tooltag)
    @browser.download_report_link.should == mocked_tooltag
  end

  it "should return the columns on score report, sales by state, and sales by zip" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_table = mock("table")

    $tracer.should_receive(:trace).with(:report_column_details).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:table).ordered.and_return(mocked_table)
    mocked_table.should_receive(:className).with("details").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :report_column_details).ordered.and_return(mocked_tooltag)
    @browser.report_column_details.should == mocked_tooltag
  end

  it "should return the start date picker" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_input = mock("input")
    mocked_id = mock("id")
    $tracer.should_receive(:trace).with(:start_date_picker_field).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("row").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("startdatepicker").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :start_date_picker_field).ordered.and_return(mocked_tooltag)
    @browser.start_date_picker_field.should == mocked_tooltag
  end

  it "should return the end date picker" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:end_date_picker_field).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("row").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("enddatepicker").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :end_date_picker_field).ordered.and_return(mocked_tooltag)
    @browser.end_date_picker_field.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Score Card Report page (http://<crm_env>.gameinformer.com/Reports/GIScoreCard)			     #####
  ####################################################################################################################

  it "should return the label on score report card" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:score_card_report_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("/Score Card/").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :score_card_report_label).ordered.and_return(mocked_tooltag)
    @browser.score_card_report_label.should == mocked_tooltag
  end

  it "should return the start issue selector" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_select = mock("select")
    mocked_gameinformercrmselector = mock("GameInformerCRMSelector")

    $tracer.should_receive(:trace).with(:start_issue_selector).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("row").ordered.and_return(mocked_className)
    mocked_className.should_receive(:select).ordered.and_return(mocked_select)
    GameInformerCRMSelector.should_receive(:new).with(mocked_select, :start_issue_selector).ordered.and_return(mocked_gameinformercrmselector)
    @browser.start_issue_selector.should == mocked_gameinformercrmselector

  end

  it "should return the no records found button" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_table = mock("table")
    mocked_td = mock("td")

    $tracer.should_receive(:trace).with(:no_records_found_button).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("data-list-container").ordered.and_return(mocked_className)
    mocked_className.should_receive(:table).ordered.and_return(mocked_table)
    mocked_table.should_receive(:className).with("details").ordered.and_return(mocked_className)
    mocked_className.should_receive(:td).with("/No records found/").ordered.and_return(mocked_td)
    ToolTag.should_receive(:new).with(mocked_td, :no_records_found_button).ordered.and_return(mocked_tooltag)
    @browser.no_records_found_button.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Sales by State Report page (http://<crm_env>.gameinformer.com/Reports/GISalesByState)    #####
  ####################################################################################################################

  it "should return the label on sales by state report" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:sales_by_state_report_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("/Sales by State/").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :sales_by_state_report_label).ordered.and_return(mocked_tooltag)
    @browser.sales_by_state_report_label.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Sales by Zip Code Report page (http://<crm_env>.gameinformer.com/Reports/GISalesByZip) 	 #####
  ####################################################################################################################

  it "should return the label on sales by zip report" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:sales_by_zip_report_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("/Sales by Zip/").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :sales_by_zip_report_label).ordered.and_return(mocked_tooltag)
    @browser.sales_by_zip_report_label.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Ten Day Paid Sales Report page (http://<crm_env>.gameinformer.com/Reports/GITenDaySales) #####
  ####################################################################################################################

  it "should return the label on ten day paid sales report" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:ten_day_paid_sales_report_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("/Ten Day Paid Sales/").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :ten_day_paid_sales_report_label).ordered.and_return(mocked_tooltag)
    @browser.ten_day_paid_sales_report_label.should == mocked_tooltag
  end

  it "should return the field on ten day paid sales report" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_input = mock("input")
    mocked_name = mock("name")

    $tracer.should_receive(:trace).with(:ten_day_paid_sales_report_field).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("row").ordered.and_return(mocked_className)
    mocked_className.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:name).with("EndDate").ordered.and_return(mocked_name)
    ToolTag.should_receive(:new).with(mocked_name, :ten_day_paid_sales_report_field).ordered.and_return(mocked_tooltag)
    @browser.ten_day_paid_sales_report_field.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Store 9850 Sales Report page (http://<crm_env>.gameinformer.com/Reports/Store9850Report) #####
  ####################################################################################################################

  it "should return the label on 9850 sales by state report" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:store9850_sales_by_state_report_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("/Store 9850 Sales/").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :store9850_sales_by_state_report_label).ordered.and_return(mocked_tooltag)
    @browser.store9850_sales_by_state_report_label.should == mocked_tooltag
  end

  ####################################################################################################################
  ##### Unit tests from Store 9850 Sales By City State and Zip Report page                                       #####
  ##### (http://<crm_env>.gameinformer.com/Reports/Store9850ReportByCityStatezip) 							                 #####
  ####################################################################################################################
  it "should return the label on 9850 sales by city state and zip report" do
    mocked_tooltag = mock("ToolTag")
    mocked_div = mock("div")
    mocked_className = mock("className")
    mocked_id = mock("id")
    mocked_h2 = mock("h2")

    $tracer.should_receive(:trace).with(:store9850_sales_by_city_report_label).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("page").ordered.and_return(mocked_className)
    mocked_className.should_receive(:div).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("main").ordered.and_return(mocked_id)
    mocked_id.should_receive(:h2).with("/Store 9850 Sales By City State and Zip/").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :store9850_sales_by_city_report_label).ordered.and_return(mocked_tooltag)
    @browser.store9850_sales_by_city_report_label.should == mocked_tooltag
  end
end