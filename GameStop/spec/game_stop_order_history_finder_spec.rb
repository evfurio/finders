ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopOrderHistoryFinder, "finders" do

    before(:all) do
        class GameStopOrderHistoryFinderTest
            include GameStopOrderHistoryFinder
        end

        @browser = GameStopOrderHistoryFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopOrderHistoryFinderTest) if Object.const_defined?(:GameStopOrderHistoryFinderTest)
    end


    it "should have a order history detail label" do
      mocked_tooltag = double("ToolTag")
      mocked_tag = double("img")
      mocked_attribute = double("className")
      $tracer.should_receive(:trace).with(:order_history_detail_label).ordered

      @browser.should_receive(:img).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-ordhistdtlslbl").ordered.and_return("ats-ordhistdtlslbl")
      mocked_tag.should_receive(:className).with("ats-ordhistdtlslbl").ordered.and_return(mocked_attribute)
      ToolTag.should_receive(:new).with(mocked_attribute, :order_history_detail_label).ordered.and_return(mocked_tooltag)

      @browser.order_history_detail_label.should == mocked_tooltag
    end


    it "should have a order list" do
        mocked_tooltag = double("ToolTag")
        mocked_table = double("table")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_a = double("a")
        mocked_id = double("id")
        mocked_gamestoporderlist = double("GameStopOrderList")

        $tracer.should_receive(:trace).with(:order_list).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_table)
        @browser.should_receive(:create_ats_regex_string).with("/ordersTable/").ordered.and_return("/ordersTable/")
        mocked_table.should_receive(:id).with("/ordersTable/").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("/lnkOrderDetail/").ordered.and_return("/lnkOrderDetail/")
        mocked_a.should_receive(:id).with("/lnkOrderDetail/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :order_list).ordered.and_return(mocked_tooltag)
        GameStopOrderList.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestoporderlist)

        @browser.order_list.should == mocked_gamestoporderlist
    end
		
		it "should have an order lookup email" do
			mocked_tooltag = double("ToolTag")
			mocked_input = double("input")
			mocked_id = double("id")

			$tracer.should_receive(:trace).with(:order_lookup_email).ordered

			@browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("/OrderLookup_EmailTextBox/").ordered.and_return("/OrderLookup_EmailTextBox/")
			mocked_input.should_receive(:id).with("/OrderLookup_EmailTextBox/").ordered.and_return(mocked_id)
			ToolTag.should_receive(:new).with(mocked_id, :order_lookup_email).ordered.and_return(mocked_tooltag)

			@browser.order_lookup_email.should == mocked_tooltag
		end

		it "should have an order lookup confirmationnumber" do
			mocked_tooltag = double("ToolTag")
			mocked_input = double("input")
			mocked_id = double("id")

			$tracer.should_receive(:trace).with(:order_lookup_confirmation_number).ordered

			@browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("/OrderLookup_ConfirmationNumberTextBox/").ordered.and_return("/OrderLookup_ConfirmationNumberTextBox/")
			mocked_input.should_receive(:id).with("/OrderLookup_ConfirmationNumberTextBox/").ordered.and_return(mocked_id)
			ToolTag.should_receive(:new).with(mocked_id, :order_lookup_confirmation_number).ordered.and_return(mocked_tooltag)

			@browser.order_lookup_confirmation_number.should == mocked_tooltag
		end		
		
		it "should have an order lookup button" do
			mocked_tooltag = double("ToolTag")
			mocked_input = double("input")
			mocked_id = double("id")

			$tracer.should_receive(:trace).with(:order_lookup_button).ordered

			@browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("/OrderLookup_SubmitButton/").ordered.and_return("/OrderLookup_SubmitButton/")
			mocked_input.should_receive(:id).with("/OrderLookup_SubmitButton/").ordered.and_return(mocked_id)
			ToolTag.should_receive(:new).with(mocked_id, :order_lookup_button).ordered.and_return(mocked_tooltag)

			@browser.order_lookup_button.should == mocked_tooltag
		end		

		it "should have an order number label" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("span")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:order_number_label).ordered

			@browser.should_receive(:span).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-ordnumlbl").ordered.and_return("ats-ordnumlbl")
			mocked_tag.should_receive(:className).with("ats-ordnumlbl").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :order_number_label).ordered.and_return(mocked_tooltag)

			@browser.order_number_label.should == mocked_tooltag
		end


		it "should have a credit card holder name label" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("span")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:credit_card_holder_name_label).ordered

			@browser.should_receive(:span).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-ccholdernamelbl").ordered.and_return("ats-ccholdernamelbl")
			mocked_tag.should_receive(:className).with("ats-ccholdernamelbl").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :credit_card_holder_name_label).ordered.and_return(mocked_tooltag)

			@browser.credit_card_holder_name_label.should == mocked_tooltag
		end
		
		it "should have a credit card type label" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("span")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:credit_card_type_label).ordered

			@browser.should_receive(:span).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-cctypelbl").ordered.and_return("ats-cctypelbl")
			mocked_tag.should_receive(:className).with("ats-cctypelbl").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :credit_card_type_label).ordered.and_return(mocked_tooltag)

			@browser.credit_card_type_label.should == mocked_tooltag
		end
		
		it "should have a credit card number label" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("span")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:credit_card_number_label).ordered

			@browser.should_receive(:span).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-ccnumlbl").ordered.and_return("ats-ccnumlbl")
			mocked_tag.should_receive(:className).with("ats-ccnumlbl").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :credit_card_number_label).ordered.and_return(mocked_tooltag)

			@browser.credit_card_number_label.should == mocked_tooltag
		end
		
		it "should have a subtotal amount label" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("span")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:subtotal_amount_label).ordered

			@browser.should_receive(:span).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-subttlamtlbl").ordered.and_return("ats-subttlamtlbl")
			mocked_tag.should_receive(:className).with("ats-subttlamtlbl").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :subtotal_amount_label).ordered.and_return(mocked_tooltag)

			@browser.subtotal_amount_label.should == mocked_tooltag
		end
		
		it "should have a handling amount label" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("span")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:handling_amount_label).ordered

			@browser.should_receive(:span).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-handlingamtlbl").ordered.and_return("ats-handlingamtlbl")
			mocked_tag.should_receive(:className).with("ats-handlingamtlbl").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :handling_amount_label).ordered.and_return(mocked_tooltag)

			@browser.handling_amount_label.should == mocked_tooltag
		end
		
		it "should have a tax amount label" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("span")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:tax_amount_label).ordered

			@browser.should_receive(:span).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-taxamtlbl").ordered.and_return("ats-taxamtlbl")
			mocked_tag.should_receive(:className).with("ats-taxamtlbl").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :tax_amount_label).ordered.and_return(mocked_tooltag)

			@browser.tax_amount_label.should == mocked_tooltag
		end
		
		it "should have a order total amount label" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("span")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:order_total_amount_label).ordered

			@browser.should_receive(:span).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-ordttlamtlbl").ordered.and_return("ats-ordttlamtlbl")
			mocked_tag.should_receive(:className).with("ats-ordttlamtlbl").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :order_total_amount_label).ordered.and_return(mocked_tooltag)

			@browser.order_total_amount_label.should == mocked_tooltag
		end
		
		it "should have a shipping group panel" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("div")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:shipping_group_panel).ordered

			@browser.should_receive(:div).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-shipgrppanel").ordered.and_return("ats-shipgrppanel")
			mocked_tag.should_receive(:className).with("ats-shipgrppanel").ordered.and_return(mocked_attribute)
      GameStopShipGroupPanel.should_receive(:new).with(mocked_attribute, :shipping_group_panel).ordered.and_return(mocked_tooltag)

			@browser.shipping_group_panel.should == mocked_tooltag
		end

		it "should have a digital ship group panel" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("div")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:digital_ship_group_panel).ordered

			@browser.should_receive(:div).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-digitalshipgrppanel").ordered.and_return("ats-digitalshipgrppanel")
			mocked_tag.should_receive(:className).with("ats-digitalshipgrppanel").ordered.and_return(mocked_attribute)
      GameStopDigitalShipGroupPanel.should_receive(:new).with(mocked_attribute, :digital_ship_group_panel).ordered.and_return(mocked_tooltag)

			@browser.digital_ship_group_panel.should == mocked_tooltag
		end

		it "should have an update credit card button" do
			mocked_tooltag = double("ToolTag")
			mocked_tag = double("input")
			mocked_attribute = double("className")
			$tracer.should_receive(:trace).with(:update_cc_button).ordered

			@browser.should_receive(:input).ordered.and_return(mocked_tag)
      @browser.should_receive(:create_ats_regex_string).with("ats-updtccbtn").ordered.and_return("ats-updtccbtn")
			mocked_tag.should_receive(:className).with("ats-updtccbtn").ordered.and_return(mocked_attribute)
			ToolTag.should_receive(:new).with(mocked_attribute, :update_cc_button).ordered.and_return(mocked_tooltag)

			@browser.update_cc_button.should == mocked_tooltag
		end


    it "should have a email address1 label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:email_address1_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-emailaddr1lbl").ordered.and_return("ats-emailaddr1lbl")
      mocked_span.should_receive(:className).with("ats-emailaddr1lbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :email_address1_label).ordered.and_return(mocked_tooltag)

      @browser.email_address1_label.should == mocked_tooltag
    end


    it "should have a order number label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:order_number_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-ordnumlbl").ordered.and_return("ats-ordnumlbl")
      mocked_span.should_receive(:className).with("ats-ordnumlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :order_number_label).ordered.and_return(mocked_tooltag)

      @browser.order_number_label.should == mocked_tooltag
    end


    it "should have a email address2 label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:email_address2_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-emailaddr2lbl").ordered.and_return("ats-emailaddr2lbl")
      mocked_span.should_receive(:className).with("ats-emailaddr2lbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :email_address2_label).ordered.and_return(mocked_tooltag)

      @browser.email_address2_label.should == mocked_tooltag
    end


    it "should have a email address2 field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:email_address2_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-emailaddr2field").ordered.and_return("ats-emailaddr2field")
      mocked_input.should_receive(:className).with("ats-emailaddr2field").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :email_address2_field).ordered.and_return(mocked_tooltag)

      @browser.email_address2_field.should == mocked_tooltag
    end


    it "should have a cc number label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:cc_number_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-ccnumlbl").ordered.and_return("ats-ccnumlbl")
      mocked_span.should_receive(:className).with("ats-ccnumlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :cc_number_label).ordered.and_return(mocked_tooltag)

      @browser.cc_number_label.should == mocked_tooltag
    end


    it "should have a cc number field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:cc_number_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-ccnumfield").ordered.and_return("ats-ccnumfield")
      mocked_input.should_receive(:className).with("ats-ccnumfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :cc_number_field).ordered.and_return(mocked_tooltag)

      @browser.cc_number_field.should == mocked_tooltag
    end


    it "should have a purcc label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:purcc_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcclbl").ordered.and_return("ats-purcclbl")
      mocked_span.should_receive(:className).with("ats-purcclbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :purcc_label).ordered.and_return(mocked_tooltag)

      @browser.purcc_label.should == mocked_tooltag
    end


    it "should have a purcc checkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:purcc_checkbox).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purccbox").ordered.and_return("ats-purccbox")
      mocked_span.should_receive(:className).with("ats-purccbox").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :purcc_checkbox).ordered.and_return(mocked_tooltag)

      @browser.purcc_checkbox.should == mocked_tooltag
    end


    it "should have a cc expiration label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:cc_expiration_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-ccexplbl").ordered.and_return("ats-ccexplbl")
      mocked_span.should_receive(:className).with("ats-ccexplbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :cc_expiration_label).ordered.and_return(mocked_tooltag)

      @browser.cc_expiration_label.should == mocked_tooltag
    end


    it "should have a cc expiration month selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_className = double("className")
      mocked_gamestopselector = double("GameStopSelector")

      $tracer.should_receive(:trace).with(:cc_expiration_month_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      @browser.should_receive(:create_ats_regex_string).with("ats-ccexpmonselector").ordered.and_return("ats-ccexpmonselector")
      mocked_select.should_receive(:className).with("ats-ccexpmonselector").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :cc_expiration_month_selector).ordered.and_return(mocked_tooltag)
      GameStopSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopselector)

      @browser.cc_expiration_month_selector.should == mocked_gamestopselector
    end


    it "should have a cc expiration year selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_className = double("className")
      mocked_gamestopselector = double("GameStopSelector")

      $tracer.should_receive(:trace).with(:cc_expiration_year_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      @browser.should_receive(:create_ats_regex_string).with("ats-ccexpyrselector").ordered.and_return("ats-ccexpyrselector")
      mocked_select.should_receive(:className).with("ats-ccexpyrselector").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :cc_expiration_year_selector).ordered.and_return(mocked_tooltag)
      GameStopSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_gamestopselector)

      @browser.cc_expiration_year_selector.should == mocked_gamestopselector
    end


    it "should have a order lookup2 button" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:order_lookup2_button).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-ordrlkup2btn").ordered.and_return("ats-ordrlkup2btn")
      mocked_input.should_receive(:className).with("ats-ordrlkup2btn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :order_lookup2_button).ordered.and_return(mocked_tooltag)

      @browser.order_lookup2_button.should == mocked_tooltag
    end

end
