ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseStoreFrontReportsFinder do

    before(:all) do
        class ImpulseStoreFrontReportsFinderTest
            include ImpulseStoreFrontReportsFinder
        end

        @browser = ImpulseStoreFrontReportsFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseStoreFrontReportsFinderTest) if Object.const_defined?(:ImpulseStoreFrontReportsFinderTest)
    end

    it "should have a storefront reports label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:storefront_reports_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("StoreFront Reports").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :storefront_reports_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.storefront_reports_label.should == mocked_tooltag
    end

    it "should have a start date field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_name = double("name")

        $tracer.should_receive(:trace).with(:start_date_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:name).with("/startDate|_StartDate/").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :start_date_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.start_date_field.should == mocked_tooltag
    end

    it "should have a end date field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_name = double("name")

        $tracer.should_receive(:trace).with(:end_date_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:name).with("/endDate|_EndDate/").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :end_date_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.end_date_field.should == mocked_tooltag
    end

    it "should have a select report selector" do
        mocked_tooltag = double("ToolTag")
        mocked_self = double("self")
        mocked_select = double("select")
        mocked_name = double("name")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:select_report_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_self)
        mocked_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:name).with("selReport").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :select_report_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.select_report_selector.should == mocked_impulseselector
    end

    it "should have a storefront submit button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_name = double("name")

        $tracer.should_receive(:trace).with(:storefront_submit_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:name).with("btnSubmit").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :storefront_submit_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.storefront_submit_button.should == mocked_tooltag
    end

    it "should have a create product report label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:create_product_report_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("Create Product Report").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :create_product_report_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.create_product_report_label.should == mocked_tooltag
    end

    it "should have a product id field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_name = double("name")

        $tracer.should_receive(:trace).with(:product_id_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:name).with("txtProdID").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :product_id_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.product_id_field.should == mocked_tooltag
    end

    it "should have a product selector" do
        mocked_tooltag = double("ToolTag")
        mocked_self = double("self")
        mocked_select = double("select")
        mocked_name = double("name")
        mocked_impulseselector = double("ImpulseSelector")

        $tracer.should_receive(:trace).with(:product_selector).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_self)
        mocked_self.should_receive(:select).ordered.and_return(mocked_select)
        mocked_select.should_receive(:name).with("/sltProdID|cboProducts/").ordered.and_return(mocked_name)
        ToolTag.should_receive(:new).with(mocked_name, :product_selector, @browser).ordered.and_return(mocked_tooltag)
        ImpulseSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseselector)

        @browser.product_selector.should == mocked_impulseselector
    end

    it "should have a products by country report label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:products_by_country_report_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("Products By Country Report").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :products_by_country_report_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.products_by_country_report_label.should == mocked_tooltag
    end

    it "should have a affiliate sales summary label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:affiliate_sales_summary_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("Affiliate Sales Summary").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :affiliate_sales_summary_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.affiliate_sales_summary_label.should == mocked_tooltag
    end

    it "should have a coupon sales summary label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:coupon_sales_summary_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("/^Coupon Sales Summary/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :coupon_sales_summary_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.coupon_sales_summary_label.should == mocked_tooltag
    end

    it "should have a product sales and coupons summary label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:product_sales_and_coupons_summary_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("/^Product Sales and Coupon Summary/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :product_sales_and_coupons_summary_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.product_sales_and_coupons_summary_label.should == mocked_tooltag
    end

    it "should have a impulse legacy store reports label" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:impulse_legacy_store_reports_label).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:with).with("Impulse Legacy Store Reports").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :impulse_legacy_store_reports_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.impulse_legacy_store_reports_label.should == mocked_tooltag
    end

    it "should have a orders having coupons label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:orders_having_coupons_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("/^Orders having coupons/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :orders_having_coupons_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.orders_having_coupons_label.should == mocked_tooltag
    end

    it "should have a sales summary label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:sales_summary_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("/^Sales Summary/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :sales_summary_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.sales_summary_label.should == mocked_tooltag
    end

    it "should have a product sales by territory label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:product_sales_by_territory_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("/^Product Sales by Territory/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :product_sales_by_territory_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.product_sales_by_territory_label.should == mocked_tooltag
    end

    it "should have a publisher sales totals label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:publisher_sales_totals_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("/^Publisher Sales Totals/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :publisher_sales_totals_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.publisher_sales_totals_label.should == mocked_tooltag
    end

    it "should have a product sales by hour summary label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:product_sales_by_hour_summary_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("/^Product Sales by Hour Summary/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :product_sales_by_hour_summary_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.product_sales_by_hour_summary_label.should == mocked_tooltag
    end

    it "should have a sales details label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:sales_details_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("Sales Details").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :sales_details_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.sales_details_label.should == mocked_tooltag
    end

    it "should have a token sales summary label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:token_sales_summary_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("/^Token Sales Summary/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :token_sales_summary_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.token_sales_summary_label.should == mocked_tooltag
    end

    it "should have a transaction services label" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:transaction_services_label).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:with).with("Transaction Services").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :transaction_services_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.transaction_services_label.should == mocked_tooltag
    end
end
