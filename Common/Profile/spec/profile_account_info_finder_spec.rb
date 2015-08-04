ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

describe ProfileAccountInfoFinder, "finders" do

    before(:all) do
        class ProfileAccountInfoFinderTest
            include ProfileAccountInfoFinder
        end

        @browser = ProfileAccountInfoFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ProfileAccountInfoFinderTest) if Object.const_defined?(:ProfileAccountInfoFinderTest)
    end



    it "should have a login header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:login_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-loginlbl").ordered.and_return("ats-loginlbl")
      mocked_h2.should_receive(:className).with("ats-loginlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :login_header_label).ordered.and_return(mocked_tooltag)

      @browser.login_header_label.should == mocked_tooltag
    end


    it "should have a login email address label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:login_email_address_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-loginemailaddrlbl").ordered.and_return("ats-loginemailaddrlbl")
      mocked_label.should_receive(:className).with("ats-loginemailaddrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :login_email_address_label).ordered.and_return(mocked_tooltag)

      @browser.login_email_address_label.should == mocked_tooltag
    end


    it "should have a login password label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:login_password_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-loginpwdlbl").ordered.and_return("ats-loginpwdlbl")
      mocked_label.should_receive(:className).with("ats-loginpwdlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :login_password_label).ordered.and_return(mocked_tooltag)

      @browser.login_password_label.should == mocked_tooltag
    end


    it "should have a remember me checkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:remember_me_checkbox).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-remembermebox").ordered.and_return("ats-remembermebox")
      mocked_input.should_receive(:className).with("ats-remembermebox").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :remember_me_checkbox).ordered.and_return(mocked_tooltag)

      @browser.remember_me_checkbox.should == mocked_tooltag
    end


    it "should have a remember me label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")
      mocked_span = double("span")

      $tracer.should_receive(:trace).with(:remember_me_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-remembermelbl").ordered.and_return("ats-remembermelbl")
      mocked_label.should_receive(:className).with("ats-remembermelbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:span).ordered.and_return(mocked_span)
      ToolTag.should_receive(:new).with(mocked_span, :remember_me_label).ordered.and_return(mocked_tooltag)

      @browser.remember_me_label.should == mocked_tooltag
    end


    it "should have a create now label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_now_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-createnowlbl").ordered.and_return("ats-createnowlbl")
      mocked_h2.should_receive(:className).with("ats-createnowlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_now_label).ordered.and_return(mocked_tooltag)

      @browser.create_now_label.should == mocked_tooltag
    end


    it "should have a show log in button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:show_log_in_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-showloginbtn").ordered.and_return("ats-showloginbtn")
      mocked_button.should_receive(:className).with("ats-showloginbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :show_log_in_button).ordered.and_return(mocked_tooltag)

      @browser.show_log_in_button.should == mocked_tooltag
    end


    it "should have a create user header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_user_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-createuserheaderlbl").ordered.and_return("ats-createuserheaderlbl")
      mocked_h2.should_receive(:className).with("ats-createuserheaderlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_user_header_label).ordered.and_return(mocked_tooltag)

      @browser.create_user_header_label.should == mocked_tooltag
    end


    it "should have a create email address label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_email_address_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-createemailaddrlbl").ordered.and_return("ats-createemailaddrlbl")
      mocked_label.should_receive(:className).with("ats-createemailaddrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_email_address_label).ordered.and_return(mocked_tooltag)

      @browser.create_email_address_label.should == mocked_tooltag
    end


    it "should have a create password label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_password_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-createpwdlbl").ordered.and_return("ats-createpwdlbl")
      mocked_label.should_receive(:className).with("ats-createpwdlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_password_label).ordered.and_return(mocked_tooltag)

      @browser.create_password_label.should == mocked_tooltag
    end


    it "should have a create verify password label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_verify_password_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-createverifypwdlbl").ordered.and_return("ats-createverifypwdlbl")
      mocked_label.should_receive(:className).with("ats-createverifypwdlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_verify_password_label).ordered.and_return(mocked_tooltag)

      @browser.create_verify_password_label.should == mocked_tooltag
    end


    it "should have a create opt in checkbox label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_opt_in_checkbox_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-createoptinboxlbl").ordered.and_return("ats-createoptinboxlbl")
      mocked_label.should_receive(:className).with("ats-createoptinboxlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_opt_in_checkbox_label).ordered.and_return(mocked_tooltag)

      @browser.create_opt_in_checkbox_label.should == mocked_tooltag
    end


    it "should have a create email error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_email_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-createemailerrorlbl").ordered.and_return("ats-createemailerrorlbl")
      mocked_span.should_receive(:className).with("ats-createemailerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_email_error_label).ordered.and_return(mocked_tooltag)

      @browser.create_email_error_label.should == mocked_tooltag
    end


    it "should have a create email error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:create_email_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-createemailerrorlbl").ordered.and_return("ats-createemailerrorlbl")
      mocked_span.should_receive(:className).with("ats-createemailerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :create_email_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.create_email_error_close_button.should == mocked_tooltag
    end


    it "should have a create password error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_password_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-createpwderrorlbl").ordered.and_return("ats-createpwderrorlbl")
      mocked_span.should_receive(:className).with("ats-createpwderrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_password_error_label).ordered.and_return(mocked_tooltag)

      @browser.create_password_error_label.should == mocked_tooltag
    end


    it "should have a create password error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:create_password_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-createpwderrorlbl").ordered.and_return("ats-createpwderrorlbl")
      mocked_span.should_receive(:className).with("ats-createpwderrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :create_password_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.create_password_error_close_button.should == mocked_tooltag
    end


    it "should have a verify password error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:verify_password_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-createverifypwderrorlbl").ordered.and_return("ats-createverifypwderrorlbl")
      mocked_span.should_receive(:className).with("ats-createverifypwderrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :verify_password_error_label).ordered.and_return(mocked_tooltag)

      @browser.verify_password_error_label.should == mocked_tooltag
    end


    it "should have a verify password error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:verify_password_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-createverifypwderrorlbl").ordered.and_return("ats-createverifypwderrorlbl")
      mocked_span.should_receive(:className).with("ats-createverifypwderrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :verify_password_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.verify_password_error_close_button.should == mocked_tooltag
    end


    it "should have a sign in now label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:sign_in_now_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-signinnowlbl").ordered.and_return("ats-signinnowlbl")
      mocked_h2.should_receive(:className).with("ats-signinnowlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :sign_in_now_label).ordered.and_return(mocked_tooltag)

      @browser.sign_in_now_label.should == mocked_tooltag
    end

    it "should have a email address field" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:email_address_field).ordered

      @browser.should_receive(:jquery).with("input[id$='LogIn_UserName'], input[class~='ats-emailaddrfield'], input[class~='ats-emailfield'], input[id*='txtEmailAddress'], input[id$='loginControl_UserName']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :email_address_field).ordered.and_return(mocked_tooltag)

      @browser.email_address_field.should == mocked_tooltag
    end


    it "should have a password field" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:password_field).ordered

      @browser.should_receive(:jquery).with("input[id$='LogIn_password'], input[class~='ats-pwdfield'], input[id$='loginControl_password']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :password_field).ordered.and_return(mocked_tooltag)

      @browser.password_field.should == mocked_tooltag
    end


    it "should have a log in button" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:log_in_button).ordered

      @browser.should_receive(:jquery).with("button[class~='ats-loginbtn'], a[class~='ats-loginbtn'], input[name$='loginButton']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :log_in_button).ordered.and_return(mocked_tooltag)

      @browser.log_in_button.should == mocked_tooltag
    end


    it "should have a create an account button" do

      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
			mocked_className = double("className")

      $tracer.should_receive(:trace).with(:create_an_account_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-createacctbtn").ordered.and_return("ats-createacctbtn")
      mocked_button.should_receive(:className).with("ats-createacctbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :create_an_account_button).ordered.and_return(mocked_tooltag)

      @browser.create_an_account_button.should == mocked_tooltag
    end


    it "should have a create email address field" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:create_email_address_field).ordered

      @browser.should_receive(:jquery).with("input[id$='CreateAccountHorizontal_emailTextBox'], input[class~='ats-createemailaddr']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :create_email_address_field).ordered.and_return(mocked_tooltag)

      @browser.create_email_address_field.should == mocked_tooltag
    end


    it "should have a create password field" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:create_password_field).ordered

      @browser.should_receive(:jquery).with("input[id$='CreateAccountHorizontal_PasswordText'], input[class~='ats-createpwdfield']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :create_password_field).ordered.and_return(mocked_tooltag)

      @browser.create_password_field.should == mocked_tooltag
    end

    it "should have a confirm password field" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:confirm_password_field).ordered

      @browser.should_receive(:jquery).with("input[class~='ats-confirmpwdfield']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :confirm_password_field).ordered.and_return(mocked_tooltag)

      @browser.confirm_password_field.should == mocked_tooltag
    end

    it "should have a current password field" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:current_password_field).ordered

      @browser.should_receive(:jquery).with("input[class~='ats-currentpwdfield']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :current_password_field).ordered.and_return(mocked_tooltag)

      @browser.current_password_field.should == mocked_tooltag
    end

    it "should have a new password field" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:new_password_field).ordered

      @browser.should_receive(:jquery).with("input[class~='ats-newpwdfield']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :new_password_field).ordered.and_return(mocked_tooltag)

      @browser.new_password_field.should == mocked_tooltag
    end

    it "should have a submit button" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:submit_button).ordered

      @browser.should_receive(:jquery).with("input[id$='CreateAccountButton'], button[class~='ats-submitbtn']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :submit_button).ordered.and_return(mocked_tooltag)

      @browser.submit_button.should == mocked_tooltag
    end

    it "should have a email opt in checkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_jquery = double("jquery")

      $tracer.should_receive(:trace).with(:email_opt_in_checkbox).ordered

      @browser.should_receive(:jquery).with("input[id$='chkE[Mm]ailOptIn'], input[class~='ats-optinbox']").ordered.and_return(mocked_jquery)
      ToolTag.should_receive(:new).with(mocked_jquery, :email_opt_in_checkbox).ordered.and_return(mocked_tooltag)

      @browser.email_opt_in_checkbox.should == mocked_tooltag
    end

    it "should have a log in error panel" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
			mocked_className = double("className")

      $tracer.should_receive(:trace).with(:log_in_error_panel).ordered

			@browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-loginerrorpanel").ordered.and_return("ats-loginerrorpanel")
      mocked_div.should_receive(:className).with("ats-loginerrorpanel").ordered.and_return(mocked_className)
			ToolTag.should_receive(:new).with(mocked_className, :log_in_error_panel).ordered.and_return(mocked_tooltag)
      @browser.log_in_error_panel.should == mocked_tooltag
    end

    it "should have a password rules section label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_rules_section_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdrulessectionlbl").ordered.and_return("ats-pwdrulessectionlbl")
      mocked_div.should_receive(:className).with("ats-pwdrulessectionlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_rules_section_label).ordered.and_return(mocked_tooltag)

      @browser.password_rules_section_label.should == mocked_tooltag
    end


    it "should have a password requirements label" do
      mocked_tooltag = double("ToolTag")
      mocked_h4 = double("h4")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_requirements_label).ordered

      @browser.should_receive(:h4).ordered.and_return(mocked_h4)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdreqslbl").ordered.and_return("ats-pwdreqslbl")
      mocked_h4.should_receive(:className).with("ats-pwdreqslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_requirements_label).ordered.and_return(mocked_tooltag)

      @browser.password_requirements_label.should == mocked_tooltag
    end


    it "should have a password not email label" do
      mocked_tooltag = double("ToolTag")
      mocked_dt = double("dt")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_not_email_label).ordered

      @browser.should_receive(:dt).ordered.and_return(mocked_dt)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdnotemaillbl").ordered.and_return("ats-pwdnotemaillbl")
      mocked_dt.should_receive(:className).with("ats-pwdnotemaillbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_not_email_label).ordered.and_return(mocked_tooltag)

      @browser.password_not_email_label.should == mocked_tooltag
    end


    it "should have a password minimum length label" do
      mocked_tooltag = double("ToolTag")
      mocked_dt = double("dt")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_min_length_label).ordered

      @browser.should_receive(:dt).ordered.and_return(mocked_dt)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdminlenlbl").ordered.and_return("ats-pwdminlenlbl")
      mocked_dt.should_receive(:className).with("ats-pwdminlenlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_min_length_label).ordered.and_return(mocked_tooltag)

      @browser.password_min_length_label.should == mocked_tooltag
    end


    it "should have a password contain three label" do
      mocked_tooltag = double("ToolTag")
      mocked_dt = double("dt")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_contain_three_label).ordered

      @browser.should_receive(:dt).ordered.and_return(mocked_dt)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdcontainthreelbl").ordered.and_return("ats-pwdcontainthreelbl")
      mocked_dt.should_receive(:className).with("ats-pwdcontainthreelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_contain_three_label).ordered.and_return(mocked_tooltag)

      @browser.password_contain_three_label.should == mocked_tooltag
    end


    it "should have a password number label" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_number_label).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdnumlbl").ordered.and_return("ats-pwdnumlbl")
      mocked_dd.should_receive(:className).with("ats-pwdnumlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_number_label).ordered.and_return(mocked_tooltag)

      @browser.password_number_label.should == mocked_tooltag
    end


    it "should have a password uppercase label" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_uppercase_label).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwducaselbl").ordered.and_return("ats-pwducaselbl")
      mocked_dd.should_receive(:className).with("ats-pwducaselbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_uppercase_label).ordered.and_return(mocked_tooltag)

      @browser.password_uppercase_label.should == mocked_tooltag
    end


    it "should have a password lowercase label" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_lowercase_label).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdlcaselbl").ordered.and_return("ats-pwdlcaselbl")
      mocked_dd.should_receive(:className).with("ats-pwdlcaselbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_lowercase_label).ordered.and_return(mocked_tooltag)

      @browser.password_lowercase_label.should == mocked_tooltag
    end


    it "should have a password special character label" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_special_character_label).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdspecialcharlbl").ordered.and_return("ats-pwdspecialcharlbl")
      mocked_dd.should_receive(:className).with("ats-pwdspecialcharlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_special_character_label).ordered.and_return(mocked_tooltag)

      @browser.password_special_character_label.should == mocked_tooltag
    end


    #it "should have a password valid image" do
    #  mocked_tooltag = double("ToolTag")
    #  mocked_img = double("img")
    #  mocked_className = double("className")
    #
    #  $tracer.should_receive(:trace).with(:password_valid_image).ordered
    #
    #  @browser.should_receive(:img).ordered.and_return(mocked_img)
    #  @browser.should_receive(:create_ats_regex_string).with("ats-pwdvalidimg").ordered.and_return("ats-pwdvalidimg")
    #  mocked_img.should_receive(:className).with("ats-pwdvalidimg").ordered.and_return(mocked_className)
    #  ToolTag.should_receive(:new).with(mocked_className, :password_valid_image).ordered.and_return(mocked_tooltag)
    #
    #  @browser.password_valid_image.should == mocked_tooltag
    #end
    #
    #
    #it "should have a password invalid image" do
    #  mocked_tooltag = double("ToolTag")
    #  mocked_img = double("img")
    #  mocked_className = double("className")
    #
    #  $tracer.should_receive(:trace).with(:password_invalid_image).ordered
    #
    #  @browser.should_receive(:img).ordered.and_return(mocked_img)
    #  @browser.should_receive(:create_ats_regex_string).with("ats-pwdinvalidimg").ordered.and_return("ats-pwdinvalidimg")
    #  mocked_img.should_receive(:className).with("ats-pwdinvalidimg").ordered.and_return(mocked_className)
    #  ToolTag.should_receive(:new).with(mocked_className, :password_invalid_image).ordered.and_return(mocked_tooltag)
    #
    #  @browser.password_invalid_image.should == mocked_tooltag
    #end


    it "should have a password complete label" do
      mocked_tooltag = double("ToolTag")
      mocked_h5 = double("h5")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_complete_label).ordered

      @browser.should_receive(:h5).ordered.and_return(mocked_h5)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdcompletelbl").ordered.and_return("ats-pwdcompletelbl")
      mocked_h5.should_receive(:className).with("ats-pwdcompletelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_complete_label).ordered.and_return(mocked_tooltag)

      @browser.password_complete_label.should == mocked_tooltag
    end


    it "should have a valid password not email image" do
      mocked_tooltag = double("ToolTag")
      mocked_dt = double("dt")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:valid_password_not_email_image).ordered

      @browser.should_receive(:dt).ordered.and_return(mocked_dt)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdnotemaillbl").ordered.and_return("ats-pwdnotemaillbl")
      mocked_dt.should_receive(:className).with("ats-pwdnotemaillbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdvalidimg").ordered.and_return("ats-pwdvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :valid_password_not_email_image).ordered.and_return(mocked_tooltag)

      @browser.valid_password_not_email_image.should == mocked_tooltag
    end


    it "should have a invalid password not email image" do
      mocked_tooltag = double("ToolTag")
      mocked_dt = double("dt")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:invalid_password_not_email_image).ordered

      @browser.should_receive(:dt).ordered.and_return(mocked_dt)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdnotemaillbl").ordered.and_return("ats-pwdnotemaillbl")
      mocked_dt.should_receive(:className).with("ats-pwdnotemaillbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdinvalidimg").ordered.and_return("ats-pwdinvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdinvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :invalid_password_not_email_image).ordered.and_return(mocked_tooltag)

      @browser.invalid_password_not_email_image.should == mocked_tooltag
    end


    it "should have a valid password minimum length image" do
      mocked_tooltag = double("ToolTag")
      mocked_dt = double("dt")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:valid_password_min_length_image).ordered

      @browser.should_receive(:dt).ordered.and_return(mocked_dt)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdminlenlbl").ordered.and_return("ats-pwdminlenlbl")
      mocked_dt.should_receive(:className).with("ats-pwdminlenlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdvalidimg").ordered.and_return("ats-pwdvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :valid_password_min_length_image).ordered.and_return(mocked_tooltag)

      @browser.valid_password_min_length_image.should == mocked_tooltag
    end


    it "should have a invalid password minimum length image" do
      mocked_tooltag = double("ToolTag")
      mocked_dt = double("dt")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:invalid_password_min_length_image).ordered

      @browser.should_receive(:dt).ordered.and_return(mocked_dt)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdminlenlbl").ordered.and_return("ats-pwdminlenlbl")
      mocked_dt.should_receive(:className).with("ats-pwdminlenlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdinvalidimg").ordered.and_return("ats-pwdinvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdinvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :invalid_password_min_length_image).ordered.and_return(mocked_tooltag)

      @browser.invalid_password_min_length_image.should == mocked_tooltag
    end


    it "should have a valid password number image" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:valid_password_number_image).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdnumlbl").ordered.and_return("ats-pwdnumlbl")
      mocked_dd.should_receive(:className).with("ats-pwdnumlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdvalidimg").ordered.and_return("ats-pwdvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :valid_password_number_image).ordered.and_return(mocked_tooltag)

      @browser.valid_password_number_image.should == mocked_tooltag
    end


    it "should have a invalid password number image" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:invalid_password_number_image).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdnumlbl").ordered.and_return("ats-pwdnumlbl")
      mocked_dd.should_receive(:className).with("ats-pwdnumlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdinvalidimg").ordered.and_return("ats-pwdinvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdinvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :invalid_password_number_image).ordered.and_return(mocked_tooltag)

      @browser.invalid_password_number_image.should == mocked_tooltag
    end


    it "should have a valid password uppercase image" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:valid_password_uppercase_image).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwducaselbl").ordered.and_return("ats-pwducaselbl")
      mocked_dd.should_receive(:className).with("ats-pwducaselbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdvalidimg").ordered.and_return("ats-pwdvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :valid_password_uppercase_image).ordered.and_return(mocked_tooltag)

      @browser.valid_password_uppercase_image.should == mocked_tooltag
    end


    it "should have a invalid password uppercase image" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:invalid_password_uppercase_image).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwducaselbl").ordered.and_return("ats-pwducaselbl")
      mocked_dd.should_receive(:className).with("ats-pwducaselbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdinvalidimg").ordered.and_return("ats-pwdinvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdinvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :invalid_password_uppercase_image).ordered.and_return(mocked_tooltag)

      @browser.invalid_password_uppercase_image.should == mocked_tooltag
    end


    it "should have a valid password lowercase image" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:valid_password_lowercase_image).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdlcaselbl").ordered.and_return("ats-pwdlcaselbl")
      mocked_dd.should_receive(:className).with("ats-pwdlcaselbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdvalidimg").ordered.and_return("ats-pwdvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :valid_password_lowercase_image).ordered.and_return(mocked_tooltag)

      @browser.valid_password_lowercase_image.should == mocked_tooltag
    end


    it "should have a invalid password lowercase image" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:invalid_password_lowercase_image).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdlcaselbl").ordered.and_return("ats-pwdlcaselbl")
      mocked_dd.should_receive(:className).with("ats-pwdlcaselbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdinvalidimg").ordered.and_return("ats-pwdinvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdinvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :invalid_password_lowercase_image).ordered.and_return(mocked_tooltag)

      @browser.invalid_password_lowercase_image.should == mocked_tooltag
    end


    it "should have a valid password special character image" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:valid_password_special_char_image).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdspecialcharlbl").ordered.and_return("ats-pwdspecialcharlbl")
      mocked_dd.should_receive(:className).with("ats-pwdspecialcharlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdvalidimg").ordered.and_return("ats-pwdvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :valid_password_special_char_image).ordered.and_return(mocked_tooltag)

      @browser.valid_password_special_char_image.should == mocked_tooltag
    end


    it "should have a invalid password special character image" do
      mocked_tooltag = double("ToolTag")
      mocked_dd = double("dd")
      mocked_className = double("className")
      mocked_img = double("img")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:invalid_password_special_char_image).ordered

      @browser.should_receive(:dd).ordered.and_return(mocked_dd)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdspecialcharlbl").ordered.and_return("ats-pwdspecialcharlbl")
      mocked_dd.should_receive(:className).with("ats-pwdspecialcharlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:img).ordered.and_return(mocked_img)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdinvalidimg").ordered.and_return("ats-pwdinvalidimg")
      mocked_img.should_receive(:className).with("ats-pwdinvalidimg").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :invalid_password_special_char_image).ordered.and_return(mocked_tooltag)

      @browser.invalid_password_special_char_image.should == mocked_tooltag
    end



end
