ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseDeveloperFinder do

    before(:all) do
        class ImpulseDeveloperFinderTest
            include ImpulseDeveloperFinder
        end

        @browser = ImpulseDeveloperFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseDeveloperFinderTest) if Object.const_defined?(:ImpulseDeveloperFinderTest)
    end

    it "should have a developer login link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_login_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-login-link").ordered.and_return("ats-login-link")
        mocked_a.should_receive(:className).with("ats-login-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_login_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_login_link.should == mocked_tooltag
    end

    it "should have a developer header label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_header_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-developer-header-label").ordered.and_return("ats-developer-header-label")
        mocked_div.should_receive(:className).with("ats-developer-header-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_header_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_header_label.should == mocked_tooltag
    end

    it "should have a developer welcome label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_welcome_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-welcome-user-label").ordered.and_return("ats-welcome-user-label")
        mocked_span.should_receive(:className).with("ats-welcome-user-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_welcome_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_welcome_label.should == mocked_tooltag
    end

    it "should have a developer logout link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_logout_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-logout-link").ordered.and_return("ats-logout-link")
        mocked_a.should_receive(:className).with("ats-logout-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_logout_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_logout_link.should == mocked_tooltag
    end

    it "should have a developer login error label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_login_error_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-developer-login-error-label").ordered.and_return("ats-developer-login-error-label")
        mocked_span.should_receive(:className).with("ats-developer-login-error-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_login_error_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_login_error_label.should == mocked_tooltag
    end

    it "should have a developer login button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_login_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-login-button").ordered.and_return("ats-login-button")
        mocked_input.should_receive(:className).with("ats-login-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_login_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_login_button.should == mocked_tooltag
    end

    it "should have a developer reports link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_reports_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-developer-reports-link").ordered.and_return("ats-developer-reports-link")
        mocked_a.should_receive(:className).with("ats-developer-reports-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_reports_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_reports_link.should == mocked_tooltag
    end

    it "should have a developer sales chart label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_sales_chart_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-developer-sales-charts-label").ordered.and_return("ats-developer-sales-charts-label")
        mocked_span.should_receive(:className).with("ats-developer-sales-charts-label").ordered.and_return(mocked_className)

        ToolTag.should_receive(:new).with(mocked_className, :developer_sales_chart_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_sales_chart_label.should == mocked_tooltag
    end

    it "should have a developer product data label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_product_data_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-developer-product-data-label").ordered.and_return("ats-developer-product-data-label")
        mocked_span.should_receive(:className).with("ats-developer-product-data-label").ordered.and_return(mocked_className)

        ToolTag.should_receive(:new).with(mocked_className, :developer_product_data_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_product_data_label.should == mocked_tooltag
    end

    it "should have a developer product comparison chart label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_product_comparison_chart_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-developer-product-data-label").ordered.and_return("ats-developer-product-data-label")
        mocked_span.should_receive(:className).with("ats-developer-product-data-label").ordered.and_return(mocked_className)

        ToolTag.should_receive(:new).with(mocked_className, :developer_product_comparison_chart_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_product_comparison_chart_label.should == mocked_tooltag
    end

    it "should have a developer email address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_email_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-developer-email-address-field").ordered.and_return("ats-developer-email-address-field")
        mocked_input.should_receive(:className).with("ats-developer-email-address-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_email_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_email_address_field.should == mocked_tooltag
    end

    it "should have a developer password field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developer_password_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-developer-password-field").ordered.and_return("ats-developer-password-field")
        mocked_input.should_receive(:className).with("ats-developer-password-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developer_password_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.developer_password_field.should == mocked_tooltag
    end

end
