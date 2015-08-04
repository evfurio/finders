ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopPURCCFinder, "finders" do

    before(:all) do
        class GameStopPURCCFinderTest
            include GameStopPURCCFinder
        end

        @browser = GameStopPURCCFinderTest.allocate

        #$tracer.mode = :on
    end

    after(:all) do
        Object.send(:remove_const, :GameStopPURCCFinderTest) if Object.const_defined?(:GameStopPURCCFinderTest)
    end


    it "should have a first name prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:first_name_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-fnamelbl").ordered.and_return("ats-fnamelbl")
      mocked_span.should_receive(:className).with("ats-fnamelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :first_name_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.first_name_prompt_label.should == mocked_tooltag
    end


    it "should have a middle name prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:middle_name_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-mnamelbl").ordered.and_return("ats-mnamelbl")
      mocked_span.should_receive(:className).with("ats-mnamelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :middle_name_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.middle_name_prompt_label.should == mocked_tooltag
    end


    it "should have a last name prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:last_name_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-lnamelbl").ordered.and_return("ats-lnamelbl")
      mocked_span.should_receive(:className).with("ats-lnamelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :last_name_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.last_name_prompt_label.should == mocked_tooltag
    end


    it "should have a birthday field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:birthday_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-bdayfield").ordered.and_return("ats-bdayfield")
      mocked_input.should_receive(:className).with("ats-bdayfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :birthday_field).ordered.and_return(mocked_tooltag)

      @browser.birthday_field.should == mocked_tooltag
    end


    it "should have a ssn prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:ssn_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-ssnlbl").ordered.and_return("ats-ssnlbl")
      mocked_span.should_receive(:className).with("ats-ssnlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :ssn_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.ssn_prompt_label.should == mocked_tooltag
    end


    it "should have a ssn field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:ssn_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-ssnfield").ordered.and_return("ats-ssnfield")
      mocked_input.should_receive(:className).with("ats-ssnfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :ssn_field).ordered.and_return(mocked_tooltag)

      @browser.ssn_field.should == mocked_tooltag
    end


    it "should have a ssn help link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:ssn_help_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-ssnhelplnk").ordered.and_return("ats-ssnhelplnk")
      mocked_a.should_receive(:className).with("ats-ssnhelplnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :ssn_help_link).ordered.and_return(mocked_tooltag)

      @browser.ssn_help_link.should == mocked_tooltag
    end


    it "should have a email address prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:email_address_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-emailaddrlbl").ordered.and_return("ats-emailaddrlbl")
      mocked_span.should_receive(:className).with("ats-emailaddrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :email_address_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.email_address_prompt_label.should == mocked_tooltag
    end


    it "should have a address line1 prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:address_line1_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-addrline1lbl").ordered.and_return("ats-addrline1lbl")
      mocked_span.should_receive(:className).with("ats-addrline1lbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :address_line1_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.address_line1_prompt_label.should == mocked_tooltag
    end


    it "should have a address line1 field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:address_line1_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-addrline1field").ordered.and_return("ats-addrline1field")
      mocked_input.should_receive(:className).with("ats-addrline1field").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :address_line1_field).ordered.and_return(mocked_tooltag)

      @browser.address_line1_field.should == mocked_tooltag
    end


    it "should have a address line2 prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:address_line2_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-addrline2lbl").ordered.and_return("ats-addrline2lbl")
      mocked_span.should_receive(:className).with("ats-addrline2lbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :address_line2_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.address_line2_prompt_label.should == mocked_tooltag
    end


    it "should have a address line2 field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:address_line2_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-addrline2field").ordered.and_return("ats-addrline2field")
      mocked_input.should_receive(:className).with("ats-addrline2field").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :address_line2_field).ordered.and_return(mocked_tooltag)

      @browser.address_line2_field.should == mocked_tooltag
    end


    it "should have a city prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:city_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-citylbl").ordered.and_return("ats-citylbl")
      mocked_span.should_receive(:className).with("ats-citylbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :city_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.city_prompt_label.should == mocked_tooltag
    end


    it "should have a city field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:city_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-cityfield").ordered.and_return("ats-cityfield")
      mocked_input.should_receive(:className).with("ats-cityfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :city_field).ordered.and_return(mocked_tooltag)

      @browser.city_field.should == mocked_tooltag
    end


    it "should have a state prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:state_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-statelbl").ordered.and_return("ats-statelbl")
      mocked_span.should_receive(:className).with("ats-statelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :state_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.state_prompt_label.should == mocked_tooltag
    end


    it "should have a state selector" do
      mocked_tooltag = double("ToolTag")
      mocked_getself = double("get_self")
      mocked_select = double("select")
      mocked_className = double("className")
      mocked_gamestopselector = double("GameStopSelector")

      $tracer.should_receive(:trace).with(:state_selector).ordered
      @browser.should_receive(:get_self).ordered.and_return(mocked_getself)
      mocked_getself.should_receive(:select).ordered.and_return(mocked_select)
      @browser.should_receive(:create_ats_regex_string).with("ats-usstate").ordered.and_return("ats-usstate")
      mocked_select.should_receive(:className).with("ats-usstate").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :state_selector).ordered.and_return(mocked_tooltag)
      GameStopSelector.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopselector)

      @browser.state_selector.should == mocked_gamestopselector
    end


    it "should have a zip postal code prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:zip_postal_code_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-postalcodelbl").ordered.and_return("ats-postalcodelbl")
      mocked_span.should_receive(:className).with("ats-postalcodelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :zip_postal_code_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.zip_postal_code_prompt_label.should == mocked_tooltag
    end


    it "should have a zip postal code field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:zip_postal_code_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-postalcodefield").ordered.and_return("ats-postalcodefield")
      mocked_input.should_receive(:className).with("ats-postalcodefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :zip_postal_code_field).ordered.and_return(mocked_tooltag)

      @browser.zip_postal_code_field.should == mocked_tooltag
    end


    it "should have a home phone prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:home_phone_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-homephonelbl").ordered.and_return("ats-homephonelbl")
      mocked_span.should_receive(:className).with("ats-homephonelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :home_phone_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.home_phone_prompt_label.should == mocked_tooltag
    end


    it "should have a home phone number field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:home_phone_number_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-homephonefield").ordered.and_return("ats-homephonefield")
      mocked_input.should_receive(:className).with("ats-homephonefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :home_phone_number_field).ordered.and_return(mocked_tooltag)

      @browser.home_phone_number_field.should == mocked_tooltag
    end


    it "should have a work phone prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:work_phone_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-workphonelbl").ordered.and_return("ats-workphonelbl")
      mocked_span.should_receive(:className).with("ats-workphonelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :work_phone_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.work_phone_prompt_label.should == mocked_tooltag
    end


    it "should have a work phone number field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:work_phone_number_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-workphonefield").ordered.and_return("ats-workphonefield")
      mocked_input.should_receive(:className).with("ats-workphonefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :work_phone_number_field).ordered.and_return(mocked_tooltag)

      @browser.work_phone_number_field.should == mocked_tooltag
    end


    it "should have a annual income prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:annual_income_prompt_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-annualincomelbl").ordered.and_return("ats-annualincomelbl")
      mocked_span.should_receive(:className).with("ats-annualincomelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :annual_income_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.annual_income_prompt_label.should == mocked_tooltag
    end


    it "should have a annual income field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:annual_income_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-annualincomefield").ordered.and_return("ats-annualincomefield")
      mocked_input.should_receive(:className).with("ats-annualincomefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :annual_income_field).ordered.and_return(mocked_tooltag)

      @browser.annual_income_field.should == mocked_tooltag
    end


    it "should have a income help link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:income_help_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-incomehelplnk").ordered.and_return("ats-incomehelplnk")
      mocked_a.should_receive(:className).with("ats-incomehelplnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :income_help_link).ordered.and_return(mocked_tooltag)

      @browser.income_help_link.should == mocked_tooltag
    end


    it "should have a income disclosure label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:income_disclosure_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-incomedisclosurelbl").ordered.and_return("ats-incomedisclosurelbl")
      mocked_p.should_receive(:className).with("ats-incomedisclosurelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :income_disclosure_label).ordered.and_return(mocked_tooltag)

      @browser.income_disclosure_label.should == mocked_tooltag
    end


    it "should have a communications label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:communications_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-commlbl").ordered.and_return("ats-commlbl")
      mocked_p.should_receive(:className).with("ats-commlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :communications_label).ordered.and_return(mocked_tooltag)

      @browser.communications_label.should == mocked_tooltag
    end


    it "should have a disclaimers header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:disclaimers_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-disclaimershdrlbl").ordered.and_return("ats-disclaimershdrlbl")
      mocked_h2.should_receive(:className).with("ats-disclaimershdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :disclaimers_header_label).ordered.and_return(mocked_tooltag)

      @browser.disclaimers_header_label.should == mocked_tooltag
    end


    it "should have a disclaimers label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:disclaimers_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-disclaimerslbl").ordered.and_return("ats-disclaimerslbl")
      mocked_div.should_receive(:className).with("ats-disclaimerslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :disclaimers_label).ordered.and_return(mocked_tooltag)

      @browser.disclaimers_label.should == mocked_tooltag
    end


    it "should have a consent header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:consent_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-consenthdrlbl").ordered.and_return("ats-consenthdrlbl")
      mocked_h2.should_receive(:className).with("ats-consenthdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :consent_header_label).ordered.and_return(mocked_tooltag)

      @browser.consent_header_label.should == mocked_tooltag
    end


    it "should have a consent label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:consent_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-consentlbl").ordered.and_return("ats-consentlbl")
      mocked_div.should_receive(:className).with("ats-consentlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :consent_label).ordered.and_return(mocked_tooltag)

      @browser.consent_label.should == mocked_tooltag
    end


    it "should have a consent panel" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:consent_panel).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-consentpanel").ordered.and_return("ats-consentpanel")
      mocked_div.should_receive(:className).with("ats-consentpanel").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :consent_panel).ordered.and_return(mocked_tooltag)

      @browser.consent_panel.should == mocked_tooltag
    end


    it "should have a consent checkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:consent_checkbox).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-consentbox").ordered.and_return("ats-consentbox")
      mocked_input.should_receive(:className).with("ats-consentbox").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :consent_checkbox).ordered.and_return(mocked_tooltag)

      @browser.consent_checkbox.should == mocked_tooltag
    end


    it "should have a consent checkbox label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:consent_checkbox_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-consentboxlbl").ordered.and_return("ats-consentboxlbl")
      mocked_label.should_receive(:className).with("ats-consentboxlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :consent_checkbox_label).ordered.and_return(mocked_tooltag)

      @browser.consent_checkbox_label.should == mocked_tooltag
    end


    it "should have a no thanks link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:no_thanks_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-nothnkslnk").ordered.and_return("ats-nothnkslnk")
      mocked_a.should_receive(:className).with("ats-nothnkslnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :no_thanks_link).ordered.and_return(mocked_tooltag)

      @browser.no_thanks_link.should == mocked_tooltag
    end


    it "should have a purcc error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:purcc_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purccerrorlbl").ordered.and_return("ats-purccerrorlbl")
      mocked_span.should_receive(:className).with("ats-purccerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :purcc_error_label).ordered.and_return(mocked_tooltag)

      @browser.purcc_error_label.should == mocked_tooltag
    end


    it "should have a consent error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:consent_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-consenterrorlbl").ordered.and_return("ats-consenterrorlbl")
      mocked_span.should_receive(:className).with("ats-consenterrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :consent_error_label).ordered.and_return(mocked_tooltag)

      @browser.consent_error_label.should == mocked_tooltag
    end


    it "should have a birthday error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:birthday_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-bdayerrorlbl").ordered.and_return("ats-bdayerrorlbl")
      mocked_span.should_receive(:className).with("ats-bdayerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :birthday_error_label).ordered.and_return(mocked_tooltag)

      @browser.birthday_error_label.should == mocked_tooltag
    end


    it "should have a birthday error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:birthday_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-bdayerrorlbl").ordered.and_return("ats-bdayerrorlbl")
      mocked_span.should_receive(:className).with("ats-bdayerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :birthday_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.birthday_error_close_button.should == mocked_tooltag
    end


    it "should have a ssn error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:ssn_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-ssnerrorlbl").ordered.and_return("ats-ssnerrorlbl")
      mocked_span.should_receive(:className).with("ats-ssnerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :ssn_error_label).ordered.and_return(mocked_tooltag)

      @browser.ssn_error_label.should == mocked_tooltag
    end


    it "should have a ssn error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:ssn_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-ssnerrorlbl").ordered.and_return("ats-ssnerrorlbl")
      mocked_span.should_receive(:className).with("ats-ssnerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :ssn_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.ssn_error_close_button.should == mocked_tooltag
    end


    it "should have a annual income error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:annual_income_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-annualincomeerrorlbl").ordered.and_return("ats-annualincomeerrorlbl")
      mocked_span.should_receive(:className).with("ats-annualincomeerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :annual_income_error_label).ordered.and_return(mocked_tooltag)

      @browser.annual_income_error_label.should == mocked_tooltag
    end


    it "should have a income error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:income_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-annualincomeerrorlbl").ordered.and_return("ats-annualincomeerrorlbl")
      mocked_span.should_receive(:className).with("ats-annualincomeerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :income_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.income_error_close_button.should == mocked_tooltag
    end


    it "should have a email address error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:email_address_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-emailaddrerrorlbl").ordered.and_return("ats-emailaddrerrorlbl")
      mocked_span.should_receive(:className).with("ats-emailaddrerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :email_address_error_label).ordered.and_return(mocked_tooltag)

      @browser.email_address_error_label.should == mocked_tooltag
    end


    it "should have a email error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:email_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-emailaddrerrorlbl").ordered.and_return("ats-emailaddrerrorlbl")
      mocked_span.should_receive(:className).with("ats-emailaddrerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :email_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.email_error_close_button.should == mocked_tooltag
    end


    it "should have a address line1 error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:address_line1_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-addrline1errorlbl").ordered.and_return("ats-addrline1errorlbl")
      mocked_span.should_receive(:className).with("ats-addrline1errorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :address_line1_error_label).ordered.and_return(mocked_tooltag)

      @browser.address_line1_error_label.should == mocked_tooltag
    end


    it "should have a address line1 error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:address_line1_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-addrline1errorlbl").ordered.and_return("ats-addrline1errorlbl")
      mocked_span.should_receive(:className).with("ats-addrline1errorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :address_line1_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.address_line1_error_close_button.should == mocked_tooltag
    end


    it "should have a city error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:city_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-cityerrorlbl").ordered.and_return("ats-cityerrorlbl")
      mocked_span.should_receive(:className).with("ats-cityerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :city_error_label).ordered.and_return(mocked_tooltag)

      @browser.city_error_label.should == mocked_tooltag
    end


    it "should have a city error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:city_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-cityerrorlbl").ordered.and_return("ats-cityerrorlbl")
      mocked_span.should_receive(:className).with("ats-cityerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :city_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.city_error_close_button.should == mocked_tooltag
    end


    it "should have a state error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:state_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-stateerrorlbl").ordered.and_return("ats-stateerrorlbl")
      mocked_div.should_receive(:className).with("ats-stateerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :state_error_label).ordered.and_return(mocked_tooltag)

      @browser.state_error_label.should == mocked_tooltag
    end


    it "should have a state error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:state_error_close_button).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-stateerrorlbl").ordered.and_return("ats-stateerrorlbl")
      mocked_div.should_receive(:className).with("ats-stateerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :state_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.state_error_close_button.should == mocked_tooltag
    end


    it "should have a zip postal code error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:zip_postal_code_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-postalcodeerrorlbl").ordered.and_return("ats-postalcodeerrorlbl")
      mocked_span.should_receive(:className).with("ats-postalcodeerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :zip_postal_code_error_label).ordered.and_return(mocked_tooltag)

      @browser.zip_postal_code_error_label.should == mocked_tooltag
    end


    it "should have a zip error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:zip_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-postalcodeerrorlbl").ordered.and_return("ats-postalcodeerrorlbl")
      mocked_span.should_receive(:className).with("ats-postalcodeerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :zip_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.zip_error_close_button.should == mocked_tooltag
    end


    it "should have a home phone error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:home_phone_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-homephoneerrorlbl").ordered.and_return("ats-homephoneerrorlbl")
      mocked_span.should_receive(:className).with("ats-homephoneerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :home_phone_error_label).ordered.and_return(mocked_tooltag)

      @browser.home_phone_error_label.should == mocked_tooltag
    end


    it "should have a home phone error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:home_phone_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-homephoneerrorlbl").ordered.and_return("ats-homephoneerrorlbl")
      mocked_span.should_receive(:className).with("ats-homephoneerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :home_phone_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.home_phone_error_close_button.should == mocked_tooltag
    end


    it "should have a work phone error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:work_phone_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-workphoneerrorlbl").ordered.and_return("ats-workphoneerrorlbl")
      mocked_span.should_receive(:className).with("ats-workphoneerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :work_phone_error_label).ordered.and_return(mocked_tooltag)

      @browser.work_phone_error_label.should == mocked_tooltag
    end


    it "should have a work phone error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:work_phone_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-workphoneerrorlbl").ordered.and_return("ats-workphoneerrorlbl")
      mocked_span.should_receive(:className).with("ats-workphoneerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :work_phone_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.work_phone_error_close_button.should == mocked_tooltag
    end


    it "should have a prescreen header label" do
      mocked_tooltag = double("ToolTag")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:prescreen_header_label).ordered

      @browser.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-prescreenhdrlbl").ordered.and_return("ats-prescreenhdrlbl")
      mocked_img.should_receive(:className).with("ats-prescreenhdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :prescreen_header_label).ordered.and_return(mocked_tooltag)

      @browser.prescreen_header_label.should == mocked_tooltag
    end


    it "should have a personal info header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_info_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-personalinfohdrlbl").ordered.and_return("ats-personalinfohdrlbl")
      mocked_h2.should_receive(:className).with("ats-personalinfohdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_info_header_label).ordered.and_return(mocked_tooltag)

      @browser.personal_info_header_label.should == mocked_tooltag
    end


    it "should have a purcc personal info label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:purcc_personal_info_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-personalinfolbl").ordered.and_return("ats-personalinfolbl")
      mocked_div.should_receive(:className).with("ats-personalinfolbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :purcc_personal_info_label).ordered.and_return(mocked_tooltag)

      @browser.purcc_personal_info_label.should == mocked_tooltag
    end

    it "should have a purcc personal info div" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:purcc_personal_info_div).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-popuppersonalinfopanel").ordered.and_return("ats-popuppersonalinfopanel")
      mocked_div.should_receive(:className).with("ats-popuppersonalinfopanel").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :purcc_personal_info_div).ordered.and_return(mocked_tooltag)

      @browser.purcc_personal_info_div.should == mocked_tooltag
    end

    it "should have a edit personal info link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:edit_personal_info_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-editpersonalinfolnk").ordered.and_return("ats-editpersonalinfolnk")
      mocked_a.should_receive(:className).with("ats-editpersonalinfolnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :edit_personal_info_link).ordered.and_return(mocked_tooltag)

      @browser.edit_personal_info_link.should == mocked_tooltag
    end


    it "should have a update info label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:update_info_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-updateinfolbl").ordered.and_return("ats-updateinfolbl")
      mocked_span.should_receive(:className).with("ats-updateinfolbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :update_info_label).ordered.and_return(mocked_tooltag)

      @browser.update_info_label.should == mocked_tooltag
    end


    it "should have a update label close button" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:update_label_close_button).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-updtlblclosebtn").ordered.and_return("ats-updtlblclosebtn")
      mocked_a.should_receive(:className).with("ats-updtlblclosebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :update_label_close_button).ordered.and_return(mocked_tooltag)

      @browser.update_label_close_button.should == mocked_tooltag
    end

    it "should have a edit personal info label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:edit_personal_info_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-editpersonalinfolbl").ordered.and_return("ats-editpersonalinfolbl")
      mocked_h2.should_receive(:className).with("ats-editpersonalinfolbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :edit_personal_info_label).ordered.and_return(mocked_tooltag)

      @browser.edit_personal_info_label.should == mocked_tooltag
    end


    it "should have a edit cancel button" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:edit_cancel_button).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-editcancelbtn").ordered.and_return("ats-editcancelbtn")
      mocked_a.should_receive(:className).with("ats-editcancelbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :edit_cancel_button).ordered.and_return(mocked_tooltag)

      @browser.edit_cancel_button.should == mocked_tooltag
    end


    it "should have a edit submit button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:edit_submit_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-editsubmitbtn").ordered.and_return("ats-editsubmitbtn")
      mocked_button.should_receive(:className).with("ats-editsubmitbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :edit_submit_button).ordered.and_return(mocked_tooltag)

      @browser.edit_submit_button.should == mocked_tooltag
    end


    it "should have a edit info error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:edit_info_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-editinfoerrorlbl").ordered.and_return("ats-editinfoerrorlbl")
      mocked_div.should_receive(:className).with("ats-editinfoerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :edit_info_error_label).ordered.and_return(mocked_tooltag)

      @browser.edit_info_error_label.should == mocked_tooltag
    end


    it "should have a fname length error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:fname_length_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-truncfnameerrorlbl").ordered.and_return("ats-truncfnameerrorlbl")
      mocked_span.should_receive(:className).with("ats-truncfnameerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :fname_length_error_label).ordered.and_return(mocked_tooltag)

      @browser.fname_length_error_label.should == mocked_tooltag
    end


    it "should have a lname length error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:lname_length_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-trunclnameerrorlbl").ordered.and_return("ats-trunclnameerrorlbl")
      mocked_span.should_receive(:className).with("ats-trunclnameerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :lname_length_error_label).ordered.and_return(mocked_tooltag)

      @browser.lname_length_error_label.should == mocked_tooltag
    end


    it "should have a addrline1 length error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:addrline1_length_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-truncaddrline1errorlbl").ordered.and_return("ats-truncaddrline1errorlbl")
      mocked_span.should_receive(:className).with("ats-truncaddrline1errorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :addrline1_length_error_label).ordered.and_return(mocked_tooltag)

      @browser.addrline1_length_error_label.should == mocked_tooltag
    end


    it "should have a addrline2 length error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:addrline2_length_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-truncaddrline2errorlbl").ordered.and_return("ats-truncaddrline2errorlbl")
      mocked_span.should_receive(:className).with("ats-truncaddrline2errorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :addrline2_length_error_label).ordered.and_return(mocked_tooltag)

      @browser.addrline2_length_error_label.should == mocked_tooltag
    end


    it "should have a city length error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:city_length_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-trunccityerrorlbl").ordered.and_return("ats-trunccityerrorlbl")
      mocked_span.should_receive(:className).with("ats-trunccityerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :city_length_error_label).ordered.and_return(mocked_tooltag)

      @browser.city_length_error_label.should == mocked_tooltag
    end


    it "should have a postal code length error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:postal_code_length_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-truncpostalcodeerrorlbl").ordered.and_return("ats-truncpostalcodeerrorlbl")
      mocked_span.should_receive(:className).with("ats-truncpostalcodeerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :postal_code_length_error_label).ordered.and_return(mocked_tooltag)

      @browser.postal_code_length_error_label.should == mocked_tooltag
    end



    it "should have a credit limit label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:credit_limit_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-creditlimitlbl").ordered.and_return("ats-creditlimitlbl")
      mocked_span.should_receive(:className).with("ats-creditlimitlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :credit_limit_label).ordered.and_return(mocked_tooltag)

      @browser.credit_limit_label.should == mocked_tooltag
    end


    it "should have a payment methods link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:payment_methods_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-paymentmethodslnk").ordered.and_return("ats-paymentmethodslnk")
      mocked_a.should_receive(:className).with("ats-paymentmethodslnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :payment_methods_link).ordered.and_return(mocked_tooltag)

      @browser.payment_methods_link.should == mocked_tooltag
    end


    it "should have a purcc continue button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:purcc_continue_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-continuebtn").ordered.and_return("ats-continuebtn")
      mocked_button.should_receive(:className).with("ats-continuebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :purcc_continue_button).ordered.and_return(mocked_tooltag)

      @browser.purcc_continue_button.should == mocked_tooltag
    end


    it "should have a join today header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h1 = double("h1")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:join_today_header_label).ordered

      @browser.should_receive(:h1).ordered.and_return(mocked_h1)
      @browser.should_receive(:create_ats_regex_string).with("ats-jointodayhdrlbl").ordered.and_return("ats-jointodayhdrlbl")
      mocked_h1.should_receive(:className).with("ats-jointodayhdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :join_today_header_label).ordered.and_return(mocked_tooltag)

      @browser.join_today_header_label.should == mocked_tooltag
    end


    it "should have a apply now button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:apply_now_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-applynowbtn").ordered.and_return("ats-applynowbtn")
      mocked_button.should_receive(:className).with("ats-applynowbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :apply_now_button).ordered.and_return(mocked_tooltag)

      @browser.apply_now_button.should == mocked_tooltag
    end


    it "should have a join pur header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h1 = double("h1")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:join_pur_header_label).ordered

      @browser.should_receive(:h1).ordered.and_return(mocked_h1)
      @browser.should_receive(:create_ats_regex_string).with("ats-joinpurhdrlbl").ordered.and_return("ats-joinpurhdrlbl")
      mocked_h1.should_receive(:className).with("ats-joinpurhdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :join_pur_header_label).ordered.and_return(mocked_tooltag)

      @browser.join_pur_header_label.should == mocked_tooltag
    end


    it "should have a learn more link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:learn_more_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-learnmorelnk").ordered.and_return("ats-learnmorelnk")
      mocked_a.should_receive(:className).with("ats-learnmorelnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :learn_more_link).ordered.and_return(mocked_tooltag)

      @browser.learn_more_link.should == mocked_tooltag
    end


    it "should have a purcc find store button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:purcc_find_store_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-findstorebtn").ordered.and_return("ats-findstorebtn")
      mocked_button.should_receive(:className).with("ats-findstorebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :purcc_find_store_button).ordered.and_return(mocked_tooltag)

      @browser.purcc_find_store_button.should == mocked_tooltag
    end


    it "should have a preapproved header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h1 = double("h1")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:preapproved_header_label).ordered

      @browser.should_receive(:h1).ordered.and_return(mocked_h1)
      @browser.should_receive(:create_ats_regex_string).with("ats-preapprovedhdrlbl").ordered.and_return("ats-preapprovedhdrlbl")
      mocked_h1.should_receive(:className).with("ats-preapprovedhdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :preapproved_header_label).ordered.and_return(mocked_tooltag)

      @browser.preapproved_header_label.should == mocked_tooltag
    end


    it "should have a accept now button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:accept_now_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-acceptnowbtn").ordered.and_return("ats-acceptnowbtn")
      mocked_button.should_receive(:className).with("ats-acceptnowbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :accept_now_button).ordered.and_return(mocked_tooltag)

      @browser.accept_now_button.should == mocked_tooltag
    end


    it "should have a purcc tandc link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:purcc_tandc_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcctandclnk").ordered.and_return("ats-purcctandclnk")
      mocked_a.should_receive(:className).with("ats-purcctandclnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :purcc_tandc_link).ordered.and_return(mocked_tooltag)

      @browser.purcc_tandc_link.should == mocked_tooltag
    end


    it "should have a manage account header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h1 = double("h1")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:manage_account_header_label).ordered

      @browser.should_receive(:h1).ordered.and_return(mocked_h1)
      @browser.should_receive(:create_ats_regex_string).with("ats-manageaccthdrlbl").ordered.and_return("ats-manageaccthdrlbl")
      mocked_h1.should_receive(:className).with("ats-manageaccthdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :manage_account_header_label).ordered.and_return(mocked_tooltag)

      @browser.manage_account_header_label.should == mocked_tooltag
    end


    it "should have a manage account button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:manage_account_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-manageacctbtn").ordered.and_return("ats-manageacctbtn")
      mocked_button.should_receive(:className).with("ats-manageacctbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :manage_account_button).ordered.and_return(mocked_tooltag)

      @browser.manage_account_button.should == mocked_tooltag
    end
end

