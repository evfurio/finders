ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"


describe GameStopMobileOrderLookupFinder do
    before(:all) do
        class GameStopMobileOrderLookupFinderTest
            include GameStopMobileOrderLookupFinder
        end

        @browser = GameStopMobileOrderLookupFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileOrderLookupFinderTest) if Object.const_defined?(:GameStopMobileOrderLookupFinderTest)
    end

    it "should have a order_lookup button" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:order_lookup_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-nav_orders_link").ordered.and_return("ats-nav_orders_link")
      mocked_a.should_receive(:className).with("ats-nav_orders_link").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :order_lookup_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_lookup_link.should == mocked_tooltag

    end

    it "should have a order lookup type label" do
      mocked_tooltag = double("ToolTag")
      mocked_section = double("section")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:order_lookup_type_label).ordered

      @browser.should_receive(:section).ordered.and_return(mocked_section)
      @browser.should_receive(:create_ats_regex_string).with("lookup_type").ordered.and_return("lookup_type")
      mocked_section.should_receive(:id).with("lookup_type").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :order_lookup_type_label, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_lookup_type_label.should == mocked_tooltag

    end

    it "should have a order_lookup_by_login_button" do
      mocked_tooltag = double("ToolTag")
      mocked_li = double("li")
      mocked_id = double("id")
      mocked_find = double("find")
      mocked_button = double("button")

      $tracer.should_receive(:trace).with(:order_lookup_by_login_button).ordered

      @browser.should_receive(:li).ordered.and_return(mocked_li)
      @browser.should_receive(:create_ats_regex_string).with("lookup_by_login").ordered.and_return("lookup_by_login")
      mocked_li.should_receive(:id).with("lookup_by_login").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:button).and_return(mocked_button)
      ToolTag.should_receive(:new).with(mocked_button, :order_lookup_by_login_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_lookup_by_login_button.should == mocked_tooltag

    end

    it "should have a order_lookup_by_confirmation_button" do
      mocked_tooltag = double("ToolTag")
      mocked_li = double("li")
      mocked_id = double("id")
      mocked_find = double("find")
      mocked_button = double("button")

      $tracer.should_receive(:trace).with(:order_lookup_by_confirmation_button).ordered

      @browser.should_receive(:li).ordered.and_return(mocked_li)
      @browser.should_receive(:create_ats_regex_string).with("lookup_by_confirmation").ordered.and_return("lookup_by_confirmation")
      mocked_li.should_receive(:id).with("lookup_by_confirmation").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:button).and_return(mocked_button)
      ToolTag.should_receive(:new).with(mocked_button, :order_lookup_by_confirmation_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_lookup_by_confirmation_button.should == mocked_tooltag

    end

    it "should have a order_lookup_by_cc_button" do
      mocked_tooltag = double("ToolTag")
      mocked_li = double("li")
      mocked_id = double("id")
      mocked_find = double("find")
      mocked_button = double("button")

      $tracer.should_receive(:trace).with(:order_lookup_by_cc_button).ordered

      @browser.should_receive(:li).ordered.and_return(mocked_li)
      @browser.should_receive(:create_ats_regex_string).with("lookup_by_cc").ordered.and_return("lookup_by_cc")
      mocked_li.should_receive(:id).with("lookup_by_cc").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:button).and_return(mocked_button)
      ToolTag.should_receive(:new).with(mocked_button, :order_lookup_by_cc_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_lookup_by_cc_button.should == mocked_tooltag

    end

    it "should have a gsmw_log_out_link" do
      mocked_tooltag = double("ToolTag")
      mocked_li = double("li")
      mocked_id = double("id")
      mocked_find = double("find")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:gsmw_log_out_link).ordered

      @browser.should_receive(:li).ordered.and_return(mocked_li)
      @browser.should_receive(:create_ats_regex_string).with("login_link").ordered.and_return("login_link")
      mocked_li.should_receive(:id).with("login_link").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:a).and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :gsmw_log_out_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.gsmw_log_out_link.should == mocked_tooltag

    end

    it "should have a order_lookup_error_message" do
      mocked_tooltag = double("ToolTag")
      mocked_section = double("section")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_p = double("p")

      $tracer.should_receive(:trace).with(:order_lookup_error_message).ordered

      @browser.should_receive(:section).ordered.and_return(mocked_section)
      @browser.should_receive(:create_ats_regex_string).with("content_group").ordered.and_return("content_group")
      mocked_section.should_receive(:className).with("content_group").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:p).and_return(mocked_p)
      ToolTag.should_receive(:new).with(mocked_p, :order_lookup_error_message, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_lookup_error_message.should == mocked_tooltag

    end

    it "should have an order_history_list" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_section = double("section")
      mocked_className = double("clasName")
      mocked_find = double("find")
      mocked_table = double("table")
      mocked_tbody = double("tbody")
      mocked_gamestopmobileorderhistoryList = double("GameStopMobileOrderHistoryList")

      $tracer.should_receive(:trace).with(:order_history_list).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:section).ordered.and_return(mocked_section)
      mocked_section.should_receive(:className).with("content_group").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:table).ordered.and_return(mocked_table)
      mocked_table.should_receive(:tbody).ordered.and_return(mocked_tbody)
      ToolTag.should_receive(:new).with(mocked_tbody, :order_history_list, @browser).ordered.and_return(mocked_tooltag)
      GameStopMobileOrderHistoryList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileorderhistoryList)

      @browser.order_history_list.should == mocked_gamestopmobileorderhistoryList
    end

    it "should have a order_confirmation_text" do
      mocked_tooltag = double("ToolTag")
      mocked_section = double("section")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_p = double("p")

      $tracer.should_receive(:trace).with(:order_confirmation_text).ordered

      @browser.should_receive(:section).ordered.and_return(mocked_section)
      @browser.should_receive(:create_ats_regex_string).with("order_confirm_text").ordered.and_return("order_confirm_text")
      mocked_section.should_receive(:className).with("order_confirm_text").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:p).and_return(mocked_p)
      ToolTag.should_receive(:new).with(mocked_p, :order_confirmation_text, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_confirmation_text.should == mocked_tooltag

    end

    it "should have an order_shipping_info" do
      mocked_tooltag = double("ToolTag")
      mocked_section = double("section")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:order_shipping_info).ordered

      @browser.should_receive(:section).ordered.and_return(mocked_section)
      @browser.should_receive(:create_ats_regex_string).with("customer_address").ordered.and_return("customer_address")
      mocked_section.should_receive(:id).with("customer_address").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :order_shipping_info, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_shipping_info.should == mocked_tooltag

    end

    it "should have an order_billing_info" do
      mocked_tooltag = double("ToolTag")
      mocked_section = double("section")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:order_billing_info).ordered

      @browser.should_receive(:section).ordered.and_return(mocked_section)
      @browser.should_receive(:create_ats_regex_string).with("payment_information").ordered.and_return("payment_information")
      mocked_section.should_receive(:id).with("payment_information").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :order_billing_info, @browser).ordered.and_return(mocked_tooltag)

      @browser.order_billing_info.should == mocked_tooltag

    end

    it "should have an lookup_email_add" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("section")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:lookup_email_add).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("lookup_by_cc_email").ordered.and_return("lookup_by_cc_email")
      mocked_input.should_receive(:id).with("lookup_by_cc_email").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :lookup_email_add, @browser).ordered.and_return(mocked_tooltag)

      @browser.lookup_email_add.should == mocked_tooltag

    end

    it "should have an lookup_cc_last_4_digit" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("section")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:lookup_cc_last_4_digit).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("lookup_by_cc_number").ordered.and_return("lookup_by_cc_number")
      mocked_input.should_receive(:id).with("lookup_by_cc_number").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :lookup_cc_last_4_digit, @browser).ordered.and_return(mocked_tooltag)

      @browser.lookup_cc_last_4_digit.should == mocked_tooltag

    end

    it "should have an is_cc_a_purcc_chkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_id = double("id")

      $tracer.should_receive(:trace).with(:is_cc_a_purcc_chkbox).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("IsPurccCheckbox").ordered.and_return("IsPurccCheckbox")
      mocked_input.should_receive(:id).with("IsPurccCheckbox").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :is_cc_a_purcc_chkbox, @browser).ordered.and_return(mocked_tooltag)

      @browser.is_cc_a_purcc_chkbox.should == mocked_tooltag

    end

    it "should have an expire_month_selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_id = double("id")
      mocked_gamestopmobileselector = double("GameStopMobileSelector")

      $tracer.should_receive(:trace).with(:expire_month_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      mocked_select.should_receive(:id).with("ExpireMonth").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :expire_month_selector, @browser).ordered.and_return(mocked_tooltag)
      GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

      @browser.expire_month_selector.should == mocked_gamestopmobileselector
    end

    it "should have an expire_year_selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_id = double("id")
      mocked_gamestopmobileselector = double("GameStopMobileSelector")

      $tracer.should_receive(:trace).with(:expire_year_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      mocked_select.should_receive(:id).with("ExpireYear").ordered.and_return(mocked_id)
      ToolTag.should_receive(:new).with(mocked_id, :expire_year_selector, @browser).ordered.and_return(mocked_tooltag)
      GameStopMobileSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopmobileselector)

      @browser.expire_year_selector.should == mocked_gamestopmobileselector
    end

    it "should have a lookup_order_cc_button" do
      mocked_tooltag = double("ToolTag")
      mocked_section = double("section")
      mocked_id = double("id")
      mocked_find = double("find")
      mocked_button = double("button")

      $tracer.should_receive(:trace).with(:lookup_order_cc_button).ordered

      @browser.should_receive(:section).ordered.and_return(mocked_section)
      @browser.should_receive(:create_ats_regex_string).with("lookup_by_cc_form").ordered.and_return("lookup_by_cc_form")
      mocked_section.should_receive(:id).with("lookup_by_cc_form").ordered.and_return(mocked_id)
      mocked_id.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:button).and_return(mocked_button)
      ToolTag.should_receive(:new).with(mocked_button, :lookup_order_cc_button, @browser).ordered.and_return(mocked_tooltag)

      @browser.lookup_order_cc_button.should == mocked_tooltag

    end

    it "should have a lookup_order_error_message" do
      mocked_tooltag = double("ToolTag")
      mocked_section = double("section")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_li = double("li")

      $tracer.should_receive(:trace).with(:lookup_order_error_message).ordered

      @browser.should_receive(:section).ordered.and_return(mocked_section)
      @browser.should_receive(:create_ats_regex_string).with("error_message").ordered.and_return("error_message")
      mocked_section.should_receive(:className).with("error_message").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:li).and_return(mocked_li)
      ToolTag.should_receive(:new).with(mocked_li, :lookup_order_error_message, @browser).ordered.and_return(mocked_tooltag)

      @browser.lookup_order_error_message.should == mocked_tooltag

    end

    it "should have a cc_4_digit_error_message" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_li = double("li")

      $tracer.should_receive(:trace).with(:cc_4_digit_error_message).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("field-validation-error").ordered.and_return("field-validation-error")
      mocked_span.should_receive(:className).with("field-validation-error").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:li).and_return(mocked_li)
      ToolTag.should_receive(:new).with(mocked_li, :cc_4_digit_error_message, @browser).ordered.and_return(mocked_tooltag)

      @browser.cc_4_digit_error_message.should == mocked_tooltag

    end
end
