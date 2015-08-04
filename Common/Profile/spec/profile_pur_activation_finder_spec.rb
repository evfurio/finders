ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

describe ProfilePurActivationFinder, "finders" do

    before(:all) do
        class ProfilePurActivationFinderTest
            include ProfilePurActivationFinder
        end

        @browser = ProfilePurActivationFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ProfilePurActivationFinderTest) if Object.const_defined?(:ProfilePurActivationFinderTest)
    end


    it "should have a pur activation label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_activation_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-puractivationlbl").ordered.and_return("ats-puractivationlbl")
      mocked_div.should_receive(:className).with("ats-puractivationlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_activation_label).ordered.and_return(mocked_tooltag)

      @browser.pur_activation_label.should == mocked_tooltag
    end


    it "should have a requires account label" do
      mocked_tooltag = double("ToolTag")
      mocked_h1 = double("h1")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:requires_account_label).ordered

      @browser.should_receive(:h1).ordered.and_return(mocked_h1)
      @browser.should_receive(:create_ats_regex_string).with("ats-requiresacctlbl").ordered.and_return("ats-requiresacctlbl")
      mocked_h1.should_receive(:className).with("ats-requiresacctlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :requires_account_label).ordered.and_return(mocked_tooltag)

      @browser.requires_account_label.should == mocked_tooltag
    end


    it "should have a sign in create prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:sign_in_create_prompt_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-signincreatepromptlbl").ordered.and_return("ats-signincreatepromptlbl")
      mocked_p.should_receive(:className).with("ats-signincreatepromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :sign_in_create_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.sign_in_create_prompt_label.should == mocked_tooltag
    end

    it "should have a activate pur header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:activate_pur_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-activatepurlbl").ordered.and_return("ats-activatepurlbl")
      mocked_h2.should_receive(:className).with("ats-activatepurlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :activate_pur_header_label).ordered.and_return(mocked_tooltag)

      @browser.activate_pur_header_label.should == mocked_tooltag
    end

    it "should have a profile powerup rewards number field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:profile_powerup_rewards_number_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-purnumber").ordered.and_return("ats-purnumber")
      mocked_input.should_receive(:className).with("ats-purnumber").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :profile_powerup_rewards_number_field).ordered.and_return(mocked_tooltag)

      @browser.profile_powerup_rewards_number_field.should == mocked_tooltag
    end


    it "should have a pur email phone label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_email_phone_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-puremailphonefieldlbl").ordered.and_return("ats-puremailphonefieldlbl")
      mocked_label.should_receive(:className).with("ats-puremailphonefieldlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_email_phone_label).ordered.and_return(mocked_tooltag)

      @browser.pur_email_phone_label.should == mocked_tooltag
    end


    it "should have a pur email field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_email_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-puremailfield").ordered.and_return("ats-puremailfield")
      mocked_input.should_receive(:className).with("ats-puremailfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_email_field).ordered.and_return(mocked_tooltag)

      @browser.pur_email_field.should == mocked_tooltag
    end


    it "should have a pur phone field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_phone_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-purphonefield").ordered.and_return("ats-purphonefield")
      mocked_input.should_receive(:className).with("ats-purphonefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_phone_field).ordered.and_return(mocked_tooltag)

      @browser.pur_phone_field.should == mocked_tooltag
    end


    it "should have a activate pur continue button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:activate_pur_continue_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcontinuebtn").ordered.and_return("ats-purcontinuebtn")
      mocked_button.should_receive(:className).with("ats-purcontinuebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :activate_pur_continue_button).ordered.and_return(mocked_tooltag)

      @browser.activate_pur_continue_button.should == mocked_tooltag
    end


    it "should have a pur authentication error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_authentication_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-purautherrorlbl").ordered.and_return("ats-purautherrorlbl")
      mocked_div.should_receive(:className).with("ats-purautherrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_authentication_error_label).ordered.and_return(mocked_tooltag)

      @browser.pur_authentication_error_label.should == mocked_tooltag
    end


    it "should have a pur card number error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_card_number_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcardnumerrorlbl").ordered.and_return("ats-purcardnumerrorlbl")
      mocked_span.should_receive(:className).with("ats-purcardnumerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_card_number_error_label).ordered.and_return(mocked_tooltag)

      @browser.pur_card_number_error_label.should == mocked_tooltag
    end


    it "should have a pur card number error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:pur_card_number_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcardnumerrorlbl").ordered.and_return("ats-purcardnumerrorlbl")
      mocked_span.should_receive(:className).with("ats-purcardnumerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :pur_card_number_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.pur_card_number_error_close_button.should == mocked_tooltag
    end


    it "should have a pur number image" do
      mocked_tooltag = double("ToolTag")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_number_image).ordered

      @browser.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-purnumimage").ordered.and_return("ats-purnumimage")
      mocked_img.should_receive(:className).with("ats-purnumimage").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_number_image).ordered.and_return(mocked_tooltag)

      @browser.pur_number_image.should == mocked_tooltag
    end


    it "should have a pur step1 prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_step1_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-purstep1promptlbl").ordered.and_return("ats-purstep1promptlbl")
      mocked_h3.should_receive(:className).with("ats-purstep1promptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_step1_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.pur_step1_prompt_label.should == mocked_tooltag
    end

    it "should have a pur opt in text messages checkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_opt_in_text_messages_checkbox).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-purtxtmsgbox").ordered.and_return("ats-purtxtmsgbox")
      mocked_input.should_receive(:className).with("ats-purtxtmsgbox").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_opt_in_text_messages_checkbox).ordered.and_return(mocked_tooltag)

      @browser.pur_opt_in_text_messages_checkbox.should == mocked_tooltag
    end


    it "should have a pur text messages label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_text_messages_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purtxtmsglbl").ordered.and_return("ats-purtxtmsglbl")
      mocked_span.should_receive(:className).with("ats-purtxtmsglbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_text_messages_label).ordered.and_return(mocked_tooltag)

      @browser.pur_text_messages_label.should == mocked_tooltag
    end

    it "should have a pur opt in phone checkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_opt_in_phone_checkbox).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-purphonebox").ordered.and_return("ats-purphonebox")
      mocked_input.should_receive(:className).with("ats-purphonebox").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_opt_in_phone_checkbox).ordered.and_return(mocked_tooltag)

      @browser.pur_opt_in_phone_checkbox.should == mocked_tooltag
    end

    it "should have a pur phone calls label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_phone_calls_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purphonecallslbl").ordered.and_return("ats-purphonecallslbl")
      mocked_span.should_receive(:className).with("ats-purphonecallslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_phone_calls_label).ordered.and_return(mocked_tooltag)

      @browser.pur_phone_calls_label.should == mocked_tooltag
    end

    it "should have a pur opt in mail checkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_opt_in_mail_checkbox).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-purmailbox").ordered.and_return("ats-purmailbox")
      mocked_input.should_receive(:className).with("ats-purmailbox").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_opt_in_mail_checkbox).ordered.and_return(mocked_tooltag)

      @browser.pur_opt_in_mail_checkbox.should == mocked_tooltag
    end


    it "should have a pur mail label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_mail_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purmaillbl").ordered.and_return("ats-purmaillbl")
      mocked_span.should_receive(:className).with("ats-purmaillbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_mail_label).ordered.and_return(mocked_tooltag)

      @browser.pur_mail_label.should == mocked_tooltag
    end


    it "should have a pur primary phone field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_primary_phone_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-purprimaryphonefield").ordered.and_return("ats-purprimaryphonefield")
      mocked_input.should_receive(:className).with("ats-purprimaryphonefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_primary_phone_field).ordered.and_return(mocked_tooltag)

      @browser.pur_primary_phone_field.should == mocked_tooltag
    end


    it "should have a pur phone error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_phone_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purphoneerrorlbl").ordered.and_return("ats-purphoneerrorlbl")
      mocked_span.should_receive(:className).with("ats-purphoneerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_phone_error_label).ordered.and_return(mocked_tooltag)

      @browser.pur_phone_error_label.should == mocked_tooltag
    end


    it "should have a pur phone error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:pur_phone_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-purphoneerrorlbl").ordered.and_return("ats-purphoneerrorlbl")
      mocked_span.should_receive(:className).with("ats-purphoneerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :pur_phone_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.pur_phone_error_close_button.should == mocked_tooltag
    end


    it "should have a pur address label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_address_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-puraddrlbl").ordered.and_return("ats-puraddrlbl")
      mocked_p.should_receive(:className).with("ats-puraddrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_address_label).ordered.and_return(mocked_tooltag)

      @browser.pur_address_label.should == mocked_tooltag
    end


    it "should have a pur no address label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_no_address_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-purnoaddrlbl").ordered.and_return("ats-purnoaddrlbl")
      mocked_p.should_receive(:className).with("ats-purnoaddrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_no_address_label).ordered.and_return(mocked_tooltag)

      @browser.pur_no_address_label.should == mocked_tooltag
    end


    it "should have a pur add address button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_add_address_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-puraddaddrbtn").ordered.and_return("ats-puraddaddrbtn")
      mocked_button.should_receive(:className).with("ats-puraddaddrbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_add_address_button).ordered.and_return(mocked_tooltag)

      @browser.pur_add_address_button.should == mocked_tooltag
    end


    it "should have a pur address book button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_address_book_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-puraddrbookbtn").ordered.and_return("ats-puraddrbookbtn")
      mocked_button.should_receive(:className).with("ats-puraddrbookbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_address_book_button).ordered.and_return(mocked_tooltag)

      @browser.pur_address_book_button.should == mocked_tooltag
    end


    it "should have a pur disclaimer label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_disclaimer_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-purdisclaimerlbl").ordered.and_return("ats-purdisclaimerlbl")
      mocked_p.should_receive(:className).with("ats-purdisclaimerlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_disclaimer_label).ordered.and_return(mocked_tooltag)

      @browser.pur_disclaimer_label.should == mocked_tooltag
    end


    it "should have a pur step2 prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_step2_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-purstep2promptlbl").ordered.and_return("ats-purstep2promptlbl")
      mocked_h3.should_receive(:className).with("ats-purstep2promptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_step2_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.pur_step2_prompt_label.should == mocked_tooltag
    end


    it "should have a pur security question selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_className = double("className")
      mocked_commonselector = double("CommonSelector")

      $tracer.should_receive(:trace).with(:pur_security_question_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      @browser.should_receive(:create_ats_regex_string).with("ats-pursecurityquestionselector").ordered.and_return("ats-pursecurityquestionselector")
      mocked_select.should_receive(:className).with("ats-pursecurityquestionselector").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_security_question_selector).ordered.and_return(mocked_tooltag)
      CommonSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_commonselector)

      @browser.pur_security_question_selector.should == mocked_commonselector
    end


    it "should have a pur security question error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_security_question_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-pursecurityquestionerrorlbl").ordered.and_return("ats-pursecurityquestionerrorlbl")
      mocked_div.should_receive(:className).with("ats-pursecurityquestionerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_security_question_error_label).ordered.and_return(mocked_tooltag)

      @browser.pur_security_question_error_label.should == mocked_tooltag
    end


    it "should have a pur security answer field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_security_answer_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-pursecurityanswerfield").ordered.and_return("ats-pursecurityanswerfield")
      mocked_input.should_receive(:className).with("ats-pursecurityanswerfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_security_answer_field).ordered.and_return(mocked_tooltag)

      @browser.pur_security_answer_field.should == mocked_tooltag
    end


    it "should have a pur security answer error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_security_answer_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-pursecurityanswererrorlbl").ordered.and_return("ats-pursecurityanswererrorlbl")
      mocked_span.should_receive(:className).with("ats-pursecurityanswererrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_security_answer_error_label).ordered.and_return(mocked_tooltag)

      @browser.pur_security_answer_error_label.should == mocked_tooltag
    end


    it "should have a pur security answer error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:pur_security_answer_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-pursecurityanswererrorlbl").ordered.and_return("ats-pursecurityanswererrorlbl")
      mocked_span.should_receive(:className).with("ats-pursecurityanswererrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :pur_security_answer_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.pur_security_answer_error_close_button.should == mocked_tooltag
    end


    it "should have a pur step3 prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_step3_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-purstep3promptlbl").ordered.and_return("ats-purstep3promptlbl")
      mocked_h3.should_receive(:className).with("ats-purstep3promptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_step3_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.pur_step3_prompt_label.should == mocked_tooltag
    end


    it "should have a pur birthday prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h4 = double("h4")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_birthday_prompt_label).ordered

      @browser.should_receive(:h4).ordered.and_return(mocked_h4)
      @browser.should_receive(:create_ats_regex_string).with("ats-purbdaypromptlbl").ordered.and_return("ats-purbdaypromptlbl")
      mocked_h4.should_receive(:className).with("ats-purbdaypromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_birthday_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.pur_birthday_prompt_label.should == mocked_tooltag
    end


    it "should have a pur birth month selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_className = double("className")
      mocked_commonselector = double("CommonSelector")

      $tracer.should_receive(:trace).with(:pur_birth_month_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      @browser.should_receive(:create_ats_regex_string).with("ats-purmonthselector").ordered.and_return("ats-purmonthselector")
      mocked_select.should_receive(:className).with("ats-purmonthselector").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_birth_month_selector).ordered.and_return(mocked_tooltag)
      CommonSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_commonselector)

      @browser.pur_birth_month_selector.should == mocked_commonselector
    end


    it "should have a pur birth day selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_className = double("className")
      mocked_commonselector = double("CommonSelector")

      $tracer.should_receive(:trace).with(:pur_birth_day_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      @browser.should_receive(:create_ats_regex_string).with("ats-purdayselector").ordered.and_return("ats-purdayselector")
      mocked_select.should_receive(:className).with("ats-purdayselector").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_birth_day_selector).ordered.and_return(mocked_tooltag)
      CommonSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_commonselector)

      @browser.pur_birth_day_selector.should == mocked_commonselector
    end


    it "should have a pur birth year selector" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_select = double("select")
      mocked_className = double("className")
      mocked_commonselector = double("CommonSelector")

      $tracer.should_receive(:trace).with(:pur_birth_year_selector).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:select).ordered.and_return(mocked_select)
      @browser.should_receive(:create_ats_regex_string).with("ats-puryearselector").ordered.and_return("ats-puryearselector")
      mocked_select.should_receive(:className).with("ats-puryearselector").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_birth_year_selector).ordered.and_return(mocked_tooltag)
      CommonSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_commonselector)

      @browser.pur_birth_year_selector.should == mocked_commonselector
    end


    it "should have a pur birthday error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_birthday_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-purbirthdayerrorlbl").ordered.and_return("ats-purbirthdayerrorlbl")
      mocked_div.should_receive(:className).with("ats-purbirthdayerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_birthday_error_label).ordered.and_return(mocked_tooltag)

      @browser.pur_birthday_error_label.should == mocked_tooltag
    end


    it "should have a pur gender prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h4 = double("h4")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_gender_prompt_label).ordered

      @browser.should_receive(:h4).ordered.and_return(mocked_h4)
      @browser.should_receive(:create_ats_regex_string).with("ats-purgenderpromptlbl").ordered.and_return("ats-purgenderpromptlbl")
      mocked_h4.should_receive(:className).with("ats-purgenderpromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_gender_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.pur_gender_prompt_label.should == mocked_tooltag
    end


    it "should have a pur gender buttons" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_input = double("input")
      mocked_commonradiobuttons = double("CommonRadioButtons")

      $tracer.should_receive(:trace).with(:pur_gender_buttons).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-purgenderoptions").ordered.and_return("ats-purgenderoptions")
      mocked_div.should_receive(:className).with("ats-purgenderoptions").ordered.and_return(mocked_className)
      mocked_className.should_receive(:input).ordered.and_return(mocked_input)
      ToolTag.should_receive(:new).with(mocked_input, :pur_gender_buttons).ordered.and_return(mocked_tooltag)
      CommonRadioButtons.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_commonradiobuttons)

      @browser.pur_gender_buttons.should == mocked_commonradiobuttons
    end


    it "should have a pur privacy label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_privacy_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-purprivacylbl").ordered.and_return("ats-purprivacylbl")
      mocked_p.should_receive(:className).with("ats-purprivacylbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_privacy_label).ordered.and_return(mocked_tooltag)

      @browser.pur_privacy_label.should == mocked_tooltag
    end


    it "should have a pur activate button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_activate_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-puractivatebtn").ordered.and_return("ats-puractivatebtn")
      mocked_button.should_receive(:className).with("ats-puractivatebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_activate_button).ordered.and_return(mocked_tooltag)

      @browser.pur_activate_button.should == mocked_tooltag
    end


    it "should have a pur address book header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_address_book_header_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-puraddrbooklbl").ordered.and_return("ats-puraddrbooklbl")
      mocked_h3.should_receive(:className).with("ats-puraddrbooklbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_address_book_header_label).ordered.and_return(mocked_tooltag)

      @browser.pur_address_book_header_label.should == mocked_tooltag
    end


    it "should have a pur address list" do
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_puraddresslist = double("PURAddressList")

      $tracer.should_receive(:trace).with(:pur_address_list).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-puraddrpanel").ordered.and_return("ats-puraddrpanel")
      mocked_span.should_receive(:className).with("ats-puraddrpanel").ordered.and_return(mocked_className)
      PURAddressList.should_receive(:new).with(mocked_className, :pur_address_list).ordered.and_return(mocked_puraddresslist)

      @browser.pur_address_list.should == mocked_puraddresslist
    end


    it "should have a pur address book close button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_address_book_close_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-puraddrbookclosebtn").ordered.and_return("ats-puraddrbookclosebtn")
      mocked_button.should_receive(:className).with("ats-puraddrbookclosebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_address_book_close_button).ordered.and_return(mocked_tooltag)

      @browser.pur_address_book_close_button.should == mocked_tooltag
    end


    it "should have a pur congrats label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_congrats_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-purcongratslbl").ordered.and_return("ats-purcongratslbl")
      mocked_div.should_receive(:className).with("ats-purcongratslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_congrats_label).ordered.and_return(mocked_tooltag)

      @browser.pur_congrats_label.should == mocked_tooltag
    end


    it "should have a pur success text label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_success_text_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-pursuccesstxtlbl").ordered.and_return("ats-pursuccesstxtlbl")
      mocked_div.should_receive(:className).with("ats-pursuccesstxtlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_success_text_label).ordered.and_return(mocked_tooltag)

      @browser.pur_success_text_label.should == mocked_tooltag
    end


    it "should have a pur continue button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:pur_continue_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-pursuccesscontinuebtn").ordered.and_return("ats-pursuccesscontinuebtn")
      mocked_button.should_receive(:className).with("ats-pursuccesscontinuebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :pur_continue_button).ordered.and_return(mocked_tooltag)

      @browser.pur_continue_button.should == mocked_tooltag
    end

    it "should have a pur invalid age error label" do
      $tracer.should_receive(:trace).with(:pur_invalid_age_error_label).ordered

      mocked_self = double("get_self")
      @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_self)
      mocked_p = double("p")
      mocked_self.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-purinvalidageerrorlbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :pur_invalid_age_error_label).ordered.and_return(mocked_ToolTag)

      @browser.pur_invalid_age_error_label.should == mocked_ToolTag
    end

    it "should have a privacy policy link" do
      $tracer.should_receive(:trace).with(:privacy_policy_link).ordered

      mocked_a = double("a")
      @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-privacypolicylnk").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :privacy_policy_link).ordered.and_return(mocked_ToolTag)

      @browser.privacy_policy_link.should == mocked_ToolTag
    end

    it "should have a terms and conditions link" do
      $tracer.should_receive(:trace).with(:terms_and_conditions_link).ordered

      mocked_a = double("a")
      @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-tandclnk").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :terms_and_conditions_link).ordered.and_return(mocked_ToolTag)

      @browser.terms_and_conditions_link.should == mocked_ToolTag
    end

end