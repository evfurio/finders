ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

describe ProfileForgotPasswordFinder, "finders" do

    before(:all) do
        class ProfileForgotPasswordFinderTest
            include ProfileForgotPasswordFinder
        end

        @browser = ProfileForgotPasswordFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ProfileForgotPasswordFinderTest) if Object.const_defined?(:ProfileForgotPasswordFinderTest)
    end


    it "should have a forgot your password link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:forgot_your_password_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-forgotpwdlnk").ordered.and_return("ats-forgotpwdlnk")
      mocked_a.should_receive(:className).with("ats-forgotpwdlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :forgot_your_password_link).ordered.and_return(mocked_tooltag)

      @browser.forgot_your_password_link.should == mocked_tooltag
    end


    it "should have a forgot password email field" do
      $tracer.should_receive(:trace).with(:forgot_password_email_field).ordered

      mocked_input = double("input")
      @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-forgotpwdemailfield").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_tooltag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :forgot_password_email_field).ordered.and_return(mocked_tooltag)

      @browser.forgot_password_email_field.should == mocked_tooltag
    end


    it "should have a send password button" do
      $tracer.should_receive(:trace).with(:send_password_button).ordered

      mocked_input = double("input")
      @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-sendpwdbtn").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_tooltag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :send_password_button).ordered.and_return(mocked_tooltag)

      @browser.send_password_button.should == mocked_tooltag
    end


    it "should have a password retrieval label" do
      $tracer.should_receive(:trace).with(:password_retrieval_label).ordered

      mocked_self = double("get_self")
      @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_self)
      mocked_p = double("p")
      mocked_self.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdretrievallbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_p.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_tooltag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :password_retrieval_label).ordered.and_return(mocked_tooltag)

      @browser.password_retrieval_label.should == mocked_tooltag
    end


    it "should have a password retrieval header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_retrieval_header_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdretrievallbl").ordered.and_return("ats-pwdretrievallbl")
      mocked_h2.should_receive(:className).with("ats-pwdretrievallbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_retrieval_header_label).ordered.and_return(mocked_tooltag)

      @browser.password_retrieval_header_label.should == mocked_tooltag
    end


    it "should have a forgot password label" do
      mocked_tooltag = double("ToolTag")
      mocked_h4 = double("h4")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:forgot_password_label).ordered

      @browser.should_receive(:h4).ordered.and_return(mocked_h4)
      @browser.should_receive(:create_ats_regex_string).with("ats-forgotpwdlbl").ordered.and_return("ats-forgotpwdlbl")
      mocked_h4.should_receive(:className).with("ats-forgotpwdlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :forgot_password_label).ordered.and_return(mocked_tooltag)

      @browser.forgot_password_label.should == mocked_tooltag
    end


    it "should have a forgot password text label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:forgot_password_text_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-forgotpwdtxtlbl").ordered.and_return("ats-forgotpwdtxtlbl")
      mocked_p.should_receive(:className).with("ats-forgotpwdtxtlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :forgot_password_text_label).ordered.and_return(mocked_tooltag)

      @browser.forgot_password_text_label.should == mocked_tooltag
    end


    it "should have a forgot password email label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:forgot_password_email_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-forgotpwdemaillbl").ordered.and_return("ats-forgotpwdemaillbl")
      mocked_label.should_receive(:className).with("ats-forgotpwdemaillbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :forgot_password_email_label).ordered.and_return(mocked_tooltag)

      @browser.forgot_password_email_label.should == mocked_tooltag
    end


    it "should have a forgot password note label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:forgot_password_note_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-forgotpwdnotelbl").ordered.and_return("ats-forgotpwdnotelbl")
      mocked_p.should_receive(:className).with("ats-forgotpwdnotelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :forgot_password_note_label).ordered.and_return(mocked_tooltag)

      @browser.forgot_password_note_label.should == mocked_tooltag
    end


    it "should have a password retrieval error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_retrieval_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdretrievalerrorlbl").ordered.and_return("ats-pwdretrievalerrorlbl")
      mocked_div.should_receive(:className).with("ats-pwdretrievalerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_retrieval_error_label).ordered.and_return(mocked_tooltag)

      @browser.password_retrieval_error_label.should == mocked_tooltag
    end


    it "should have a reset password label" do
      mocked_tooltag = double("ToolTag")
      mocked_h4 = double("h4")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:reset_password_label).ordered

      @browser.should_receive(:h4).ordered.and_return(mocked_h4)
      @browser.should_receive(:create_ats_regex_string).with("ats-resetpwdlbl").ordered.and_return("ats-resetpwdlbl")
      mocked_h4.should_receive(:className).with("ats-resetpwdlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :reset_password_label).ordered.and_return(mocked_tooltag)

      @browser.reset_password_label.should == mocked_tooltag
    end


    it "should have a new password label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:new_password_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-newpwdlbl").ordered.and_return("ats-newpwdlbl")
      mocked_label.should_receive(:className).with("ats-newpwdlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :new_password_label).ordered.and_return(mocked_tooltag)

      @browser.new_password_label.should == mocked_tooltag
    end


    it "should have a confirm new password label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:confirm_new_password_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-confirmpwdlbl").ordered.and_return("ats-confirmpwdlbl")
      mocked_label.should_receive(:className).with("ats-confirmpwdlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :confirm_new_password_label).ordered.and_return(mocked_tooltag)

      @browser.confirm_new_password_label.should == mocked_tooltag
    end


    it "should have a new password field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:new_password_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-newpwdfield").ordered.and_return("ats-newpwdfield")
      mocked_input.should_receive(:className).with("ats-newpwdfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :new_password_field).ordered.and_return(mocked_tooltag)

      @browser.new_password_field.should == mocked_tooltag
    end


    it "should have a confirm new password field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:confirm_new_password_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-confirmpwdfield").ordered.and_return("ats-confirmpwdfield")
      mocked_input.should_receive(:className).with("ats-confirmpwdfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :confirm_new_password_field).ordered.and_return(mocked_tooltag)

      @browser.confirm_new_password_field.should == mocked_tooltag
    end


    it "should have a reset password submit button" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:reset_password_submit_button).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-submitbtn").ordered.and_return("ats-submitbtn")
      mocked_input.should_receive(:className).with("ats-submitbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :reset_password_submit_button).ordered.and_return(mocked_tooltag)

      @browser.reset_password_submit_button.should == mocked_tooltag
    end


    it "should have a reset password error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:reset_password_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-resetpwderrorlbl").ordered.and_return("ats-resetpwderrorlbl")
      mocked_div.should_receive(:className).with("ats-resetpwderrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :reset_password_error_label).ordered.and_return(mocked_tooltag)

      @browser.reset_password_error_label.should == mocked_tooltag
    end


    it "should have a reset password success label" do
      mocked_tooltag = double("ToolTag")
      mocked_get_self = double("get_self")
      mocked_p = double("p")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:reset_password_success_label).ordered

      @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
      mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
      @browser.should_receive(:create_ats_regex_string).with("ats-resetpwdsuccesslbl").ordered.and_return("ats-resetpwdsuccesslbl")
      mocked_p.should_receive(:className).with("ats-resetpwdsuccesslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :reset_password_success_label).ordered.and_return(mocked_tooltag)

      @browser.reset_password_success_label.should == mocked_tooltag
    end

end