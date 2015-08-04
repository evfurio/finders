ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Common/Profile/src/profile_requires"

describe ProfilePersonalInfoFinder, "finders" do

    before(:all) do
        class ProfilePersonalInfoFinderTest
            include ProfilePersonalInfoFinder
        end

        @browser = ProfilePersonalInfoFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ProfilePersonalInfoFinderTest) if Object.const_defined?(:ProfilePersonalInfoFinderTest)
    end

    it "should have a personal info label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_info_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-personalinfolbl").ordered.and_return("ats-personalinfolbl")
      mocked_h2.should_receive(:className).with("ats-personalinfolbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_info_label).ordered.and_return(mocked_tooltag)

      @browser.personal_info_label.should == mocked_tooltag
    end

    it "should have a name prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:name_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-namepromptlbl").ordered.and_return("ats-namepromptlbl")
      mocked_h3.should_receive(:className).with("ats-namepromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :name_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.name_prompt_label.should == mocked_tooltag
    end

    it "should have a profile first name field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:profile_first_name_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-fnamefield").ordered.and_return("ats-fnamefield")
      mocked_input.should_receive(:className).with("ats-fnamefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :profile_first_name_field).ordered.and_return(mocked_tooltag)

      @browser.profile_first_name_field.should == mocked_tooltag
    end

    it "should have a first name error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:first_name_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-fnameerrorlbl").ordered.and_return("ats-fnameerrorlbl")
      mocked_span.should_receive(:className).with("ats-fnameerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :first_name_error_label).ordered.and_return(mocked_tooltag)

      @browser.first_name_error_label.should == mocked_tooltag
    end

    it "should have a first name error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:first_name_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-fnameerrorlbl").ordered.and_return("ats-fnameerrorlbl")
      mocked_span.should_receive(:className).with("ats-fnameerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :first_name_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.first_name_error_close_button.should == mocked_tooltag
    end

    it "should have a middle name field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:middle_name_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-mnamefield").ordered.and_return("ats-mnamefield")
      mocked_input.should_receive(:className).with("ats-mnamefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :middle_name_field).ordered.and_return(mocked_tooltag)

      @browser.middle_name_field.should == mocked_tooltag
    end

    it "should have a profile last name field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:profile_last_name_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-lnamefield").ordered.and_return("ats-lnamefield")
      mocked_input.should_receive(:className).with("ats-lnamefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :profile_last_name_field).ordered.and_return(mocked_tooltag)

      @browser.profile_last_name_field.should == mocked_tooltag
    end

    it "should have a last name error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:last_name_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-lnameerrorlbl").ordered.and_return("ats-lnameerrorlbl")
      mocked_span.should_receive(:className).with("ats-lnameerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :last_name_error_label).ordered.and_return(mocked_tooltag)

      @browser.last_name_error_label.should == mocked_tooltag
    end

    it "should have a last name error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:last_name_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-lnameerrorlbl").ordered.and_return("ats-lnameerrorlbl")
      mocked_span.should_receive(:className).with("ats-lnameerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :last_name_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.last_name_error_close_button.should == mocked_tooltag
    end

    it "should have a reviewer prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:reviewer_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-reviewerpromptlbl").ordered.and_return("ats-reviewerpromptlbl")
      mocked_h3.should_receive(:className).with("ats-reviewerpromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :reviewer_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.reviewer_prompt_label.should == mocked_tooltag
    end

    it "should have a reviewer field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:reviewer_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-reviewerfield").ordered.and_return("ats-reviewerfield")
      mocked_input.should_receive(:className).with("ats-reviewerfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :reviewer_field).ordered.and_return(mocked_tooltag)

      @browser.reviewer_field.should == mocked_tooltag
    end

    it "should have a reviewer prompt description label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:reviewer_prompt_description_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-reviewerdesclbl").ordered.and_return("ats-reviewerdesclbl")
      mocked_span.should_receive(:className).with("ats-reviewerdesclbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :reviewer_prompt_description_label).ordered.and_return(mocked_tooltag)

      @browser.reviewer_prompt_description_label.should == mocked_tooltag
    end

    it "should have a username prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:username_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-usernamepromptlbl").ordered.and_return("ats-usernamepromptlbl")
      mocked_h3.should_receive(:className).with("ats-usernamepromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :username_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.username_prompt_label.should == mocked_tooltag
    end

    it "should have a username edit button" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:username_edit_button).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-usernameeditbtn").ordered.and_return("ats-usernameeditbtn")
      mocked_a.should_receive(:className).with("ats-usernameeditbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :username_edit_button).ordered.and_return(mocked_tooltag)

      @browser.username_edit_button.should == mocked_tooltag
    end

    it "should have a username label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:username_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-emailaddrlbl").ordered.and_return("ats-emailaddrlbl")
      mocked_span.should_receive(:className).with("ats-emailaddrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :username_label).ordered.and_return(mocked_tooltag)

      @browser.username_label.should == mocked_tooltag
    end

    it "should have a password prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdpromptlbl").ordered.and_return("ats-pwdpromptlbl")
      mocked_h3.should_receive(:className).with("ats-pwdpromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.password_prompt_label.should == mocked_tooltag
    end

    it "should have a password edit button" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_edit_button).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdeditbtn").ordered.and_return("ats-pwdeditbtn")
      mocked_a.should_receive(:className).with("ats-pwdeditbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_edit_button).ordered.and_return(mocked_tooltag)

      @browser.password_edit_button.should == mocked_tooltag
    end

    it "should have a password label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdlbl").ordered.and_return("ats-pwdlbl")
      mocked_span.should_receive(:className).with("ats-pwdlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_label).ordered.and_return(mocked_tooltag)

      @browser.password_label.should == mocked_tooltag
    end

    it "should have a contact email prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:contact_email_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-contactemailpromptlbl").ordered.and_return("ats-contactemailpromptlbl")
      mocked_h3.should_receive(:className).with("ats-contactemailpromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :contact_email_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.contact_email_prompt_label.should == mocked_tooltag
    end

    it "should have a contact email field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:contact_email_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-contactfield").ordered.and_return("ats-contactfield")
      mocked_input.should_receive(:className).with("ats-contactfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :contact_email_field).ordered.and_return(mocked_tooltag)

      @browser.contact_email_field.should == mocked_tooltag
    end

    it "should have a contact email error label" do
      $tracer.should_receive(:trace).with(:contact_email_error_label).ordered

      mocked_span = double("span")
      @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-contactemailerrorlbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :contact_email_error_label).ordered.and_return(mocked_ToolTag)

      @browser.contact_email_error_label.should == mocked_ToolTag
    end

    it "should have a contact email error close button" do
      $tracer.should_receive(:trace).with(:contact_email_error_close_button).ordered

      mocked_span = double("span")
      @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-contactemailerrorlbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_a = double("a")
      mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_a, :contact_email_error_close_button).ordered.and_return(mocked_ToolTag)

      @browser.contact_email_error_close_button.should == mocked_ToolTag
    end

    it "should have a phone prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:phone_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-phonepromptlbl").ordered.and_return("ats-phonepromptlbl")
      mocked_h3.should_receive(:className).with("ats-phonepromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :phone_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.phone_prompt_label.should == mocked_tooltag
    end

    it "should have a contact primary phone field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:contact_primary_phone_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-primaryphonefield").ordered.and_return("ats-primaryphonefield")
      mocked_input.should_receive(:className).with("ats-primaryphonefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :contact_primary_phone_field).ordered.and_return(mocked_tooltag)

      @browser.contact_primary_phone_field.should == mocked_tooltag
    end

    it "should have a phone error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:phone_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-phoneerrorlbl").ordered.and_return("ats-phoneerrorlbl")
      mocked_span.should_receive(:className).with("ats-phoneerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :phone_error_label).ordered.and_return(mocked_tooltag)

      @browser.phone_error_label.should == mocked_tooltag
    end

    it "should have a phone error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:phone_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-phoneerrorlbl").ordered.and_return("ats-phoneerrorlbl")
      mocked_span.should_receive(:className).with("ats-phoneerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :phone_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.phone_error_close_button.should == mocked_tooltag
    end

    it "should have a security question prompt label" do
      $tracer.should_receive(:trace).with(:security_question_prompt_label).ordered

      mocked_section = double("section")
      @browser.should_receive(:section).with(no_args).ordered.and_return(mocked_section)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-inputsecuritypanel").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_section.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_div = double("div")
      mocked_className.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("readonly").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_h3 = double("h3")
      mocked_className.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-securityquestionpromptlbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_h3.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_tooltag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :security_question_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.security_question_prompt_label.should == mocked_tooltag
    end

    it "should have a security question label" do
      $tracer.should_receive(:trace).with(:security_question_label).ordered

      mocked_span = double("span")
      @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-securityquestionlbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_tooltag = double("tooltag")
      ToolTag.should_receive(:new).with(mocked_className, :security_question_label).ordered.and_return(mocked_tooltag)

      @browser.security_question_label.should == mocked_tooltag
    end

    it "should have a security answer prompt label" do
      $tracer.should_receive(:trace).with(:security_answer_prompt_label).ordered

      mocked_h3 = double("h3")
      @browser.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-securityanswerpromptlbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_h3.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_tooltag = double("tooltag")
      ToolTag.should_receive(:new).with(mocked_className, :security_answer_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.security_answer_prompt_label.should == mocked_tooltag
    end

    it "should have a security answer label" do
      $tracer.should_receive(:trace).with(:security_answer_label).ordered

      mocked_span = double("span")
      @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-securityanswerlbl").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_span.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_tooltag = double("tooltag")
      ToolTag.should_receive(:new).with(mocked_className, :security_answer_label).ordered.and_return(mocked_tooltag)

      @browser.security_answer_label.should == mocked_tooltag
    end

    it "should have a security edit link" do
      $tracer.should_receive(:trace).with(:security_edit_link).ordered

      mocked_a = double("a")
      @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-securityeditlnk").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_tooltag = double("tooltag")
      ToolTag.should_receive(:new).with(mocked_className, :security_edit_link).ordered.and_return(mocked_tooltag)

      @browser.security_edit_link.should == mocked_tooltag
    end

    it "should have a security cancel link" do
      $tracer.should_receive(:trace).with(:security_cancel_link).ordered

      mocked_a = double("a")
      @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-securitycancellnk").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_tooltag = double("tooltag")
      ToolTag.should_receive(:new).with(mocked_className, :security_cancel_link).ordered.and_return(mocked_tooltag)

      @browser.security_cancel_link.should == mocked_tooltag
    end

    it "should have a birthday prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:birthday_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-birthdaypromptlbl").ordered.and_return("ats-birthdaypromptlbl")
      mocked_h3.should_receive(:className).with("ats-birthdaypromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :birthday_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.birthday_prompt_label.should == mocked_tooltag
    end

    it "should have birth month selector" do
      $tracer.should_receive(:trace).with(:birth_month_selector).ordered

      mocked_self = double("get_self")
      @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_self)
      mocked_select = double("select")
      mocked_self.should_receive(:select).with(no_args).ordered.and_return(mocked_select)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-monthselector").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_select.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :birth_month_selector).ordered.and_return(mocked_ToolTag)

      mocked_selector = double("CommonSelector")
      CommonSelector.should_receive(:new).with(mocked_ToolTag).ordered.and_return(mocked_selector)

      @browser.birth_month_selector.should == mocked_selector
    end

    it "should have birth day selector" do
      $tracer.should_receive(:trace).with(:birth_day_selector).ordered

      mocked_self = double("get_self")
      @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_self)
      mocked_select = double("select")
      mocked_self.should_receive(:select).with(no_args).ordered.and_return(mocked_select)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-dayselector").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_select.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_className, :birth_day_selector).ordered.and_return(mocked_ToolTag)
      mocked_selector = double("CommonSelector")
      CommonSelector.should_receive(:new).with(mocked_ToolTag).ordered.and_return(mocked_selector)

      @browser.birth_day_selector.should == mocked_selector
    end

    it "should have a birthday error label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:birthday_error_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-birthdayerrorlbl").ordered.and_return("ats-birthdayerrorlbl")
      mocked_div.should_receive(:className).with("ats-birthdayerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :birthday_error_label).ordered.and_return(mocked_tooltag)

      @browser.birthday_error_label.should == mocked_tooltag
    end

    it "should have a gender prompt label" do
      mocked_tooltag = double("ToolTag")
      mocked_h3 = double("h3")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gender_prompt_label).ordered

      @browser.should_receive(:h3).ordered.and_return(mocked_h3)
      @browser.should_receive(:create_ats_regex_string).with("ats-genderpromptlbl").ordered.and_return("ats-genderpromptlbl")
      mocked_h3.should_receive(:className).with("ats-genderpromptlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gender_prompt_label).ordered.and_return(mocked_tooltag)

      @browser.gender_prompt_label.should == mocked_tooltag
    end

    it "should have gender buttons" do
      $tracer.should_receive(:trace).with(:gender_buttons).ordered

      mocked_div = double("div")
      @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
      mocked_ats = double("ats")
      @browser.should_receive(:create_ats_regex_string).with("ats-genderoptions").ordered.and_return(mocked_ats)
      mocked_className = double("className")
      mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)
      mocked_input = double("input")
      mocked_className.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
      mocked_ToolTag = double("ToolTag")
      ToolTag.should_receive(:new).with(mocked_input, :gender_buttons).ordered.and_return(mocked_ToolTag)
      mocked_radiobuttons = double("CommonRadioButtons")
      CommonRadioButtons.should_receive(:new).with(mocked_ToolTag).ordered.and_return(mocked_radiobuttons)

      @browser.gender_buttons.should == mocked_radiobuttons
    end

    it "should have a personal info save button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_info_save_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-personalinfosavebtn").ordered.and_return("ats-personalinfosavebtn")
      mocked_button.should_receive(:className).with("ats-personalinfosavebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_info_save_button).ordered.and_return(mocked_tooltag)

      @browser.personal_info_save_button.should == mocked_tooltag
    end

    it "should have a personal info success label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_info_success_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-personalinfosuccesslbl").ordered.and_return("ats-personalinfosuccesslbl")
      mocked_div.should_receive(:className).with("ats-personalinfosuccesslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_info_success_label).ordered.and_return(mocked_tooltag)

      @browser.personal_info_success_label.should == mocked_tooltag
    end

    it "should have a personal info error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_info_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-personalinfoerrorlbl").ordered.and_return("ats-personalinfoerrorlbl")
      mocked_span.should_receive(:className).with("ats-personalinfoerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_info_error_label).ordered.and_return(mocked_tooltag)

      @browser.personal_info_error_label.should == mocked_tooltag
    end

    it "should have a first name label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:first_name_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-fnamelbl").ordered.and_return("ats-fnamelbl")
      mocked_span.should_receive(:className).with("ats-fnamelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :first_name_label).ordered.and_return(mocked_tooltag)

      @browser.first_name_label.should == mocked_tooltag
    end


    it "should have a middle name label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:middle_name_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-mnamelbl").ordered.and_return("ats-mnamelbl")
      mocked_span.should_receive(:className).with("ats-mnamelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :middle_name_label).ordered.and_return(mocked_tooltag)

      @browser.middle_name_label.should == mocked_tooltag
    end


    it "should have a last name label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:last_name_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-lnamelbl").ordered.and_return("ats-lnamelbl")
      mocked_span.should_receive(:className).with("ats-lnamelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :last_name_label).ordered.and_return(mocked_tooltag)

      @browser.last_name_label.should == mocked_tooltag
    end


    it "should have a reviewer name label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:reviewer_name_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-reviewerlbl").ordered.and_return("ats-reviewerlbl")
      mocked_span.should_receive(:className).with("ats-reviewerlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :reviewer_name_label).ordered.and_return(mocked_tooltag)

      @browser.reviewer_name_label.should == mocked_tooltag
    end


    it "should have a phone label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:phone_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-phonelbl").ordered.and_return("ats-phonelbl")
      mocked_span.should_receive(:className).with("ats-phonelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :phone_label).ordered.and_return(mocked_tooltag)

      @browser.phone_label.should == mocked_tooltag
    end


    it "should have a birth month label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:birth_month_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-birthmonthlbl").ordered.and_return("ats-birthmonthlbl")
      mocked_span.should_receive(:className).with("ats-birthmonthlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :birth_month_label).ordered.and_return(mocked_tooltag)

      @browser.birth_month_label.should == mocked_tooltag
    end


    it "should have a birthday label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:birthday_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-bdaylbl").ordered.and_return("ats-bdaylbl")
      mocked_span.should_receive(:className).with("ats-bdaylbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :birthday_label).ordered.and_return(mocked_tooltag)

      @browser.birthday_label.should == mocked_tooltag
    end


    it "should have a gender label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gender_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-genderlbl").ordered.and_return("ats-genderlbl")
      mocked_span.should_receive(:className).with("ats-genderlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gender_label).ordered.and_return(mocked_tooltag)

      @browser.gender_label.should == mocked_tooltag
    end


    it "should have a security save button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:security_save_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-securitysavebtn").ordered.and_return("ats-securitysavebtn")
      mocked_button.should_receive(:className).with("ats-securitysavebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :security_save_button).ordered.and_return(mocked_tooltag)

      @browser.security_save_button.should == mocked_tooltag
    end


    it "should have a security cancel button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:security_cancel_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-securitycancelbtn").ordered.and_return("ats-securitycancelbtn")
      mocked_button.should_receive(:className).with("ats-securitycancelbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :security_cancel_button).ordered.and_return(mocked_tooltag)

      @browser.security_cancel_button.should == mocked_tooltag
    end


    it "should have a contact email label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:contact_email_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-contactemaillbl").ordered.and_return("ats-contactemaillbl")
      mocked_span.should_receive(:className).with("ats-contactemaillbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :contact_email_label).ordered.and_return(mocked_tooltag)

      @browser.contact_email_label.should == mocked_tooltag
    end


    it "should have a contact email edit link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:contact_email_edit_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-emaileditlnk").ordered.and_return("ats-emaileditlnk")
      mocked_a.should_receive(:className).with("ats-emaileditlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :contact_email_edit_link).ordered.and_return(mocked_tooltag)

      @browser.contact_email_edit_link.should == mocked_tooltag
    end


    it "should have a contact email save button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:contact_email_save_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-contactsavebtn").ordered.and_return("ats-contactsavebtn")
      mocked_button.should_receive(:className).with("ats-contactsavebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :contact_email_save_button).ordered.and_return(mocked_tooltag)

      @browser.contact_email_save_button.should == mocked_tooltag
    end


    it "should have a contact email cancel button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:contact_email_cancel_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-contactcancelbtn").ordered.and_return("ats-contactcancelbtn")
      mocked_button.should_receive(:className).with("ats-contactcancelbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :contact_email_cancel_button).ordered.and_return(mocked_tooltag)

      @browser.contact_email_cancel_button.should == mocked_tooltag
    end


    it "should have a username save button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:username_save_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-usernamesavebtn").ordered.and_return("ats-usernamesavebtn")
      mocked_button.should_receive(:className).with("ats-usernamesavebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :username_save_button).ordered.and_return(mocked_tooltag)

      @browser.username_save_button.should == mocked_tooltag
    end


    it "should have a username cancel button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:username_cancel_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-usernamecancelbtn").ordered.and_return("ats-usernamecancelbtn")
      mocked_button.should_receive(:className).with("ats-usernamecancelbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :username_cancel_button).ordered.and_return(mocked_tooltag)

      @browser.username_cancel_button.should == mocked_tooltag
    end


    it "should have a password save button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_save_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdsavebtn").ordered.and_return("ats-pwdsavebtn")
      mocked_button.should_receive(:className).with("ats-pwdsavebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_save_button).ordered.and_return(mocked_tooltag)

      @browser.password_save_button.should == mocked_tooltag
    end


    it "should have a password cancel button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_cancel_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwdcancelbtn").ordered.and_return("ats-pwdcancelbtn")
      mocked_button.should_receive(:className).with("ats-pwdcancelbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_cancel_button).ordered.and_return(mocked_tooltag)

      @browser.password_cancel_button.should == mocked_tooltag
    end


    it "should have a personal details cancel button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_details_cancel_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-personaldtlscancelbtn").ordered.and_return("ats-personaldtlscancelbtn")
      mocked_button.should_receive(:className).with("ats-personaldtlscancelbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_details_cancel_button).ordered.and_return(mocked_tooltag)

      @browser.personal_details_cancel_button.should == mocked_tooltag
    end


    it "should have a personal details label" do
      mocked_tooltag = double("ToolTag")
      mocked_h2 = double("h2")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_details_label).ordered

      @browser.should_receive(:h2).ordered.and_return(mocked_h2)
      @browser.should_receive(:create_ats_regex_string).with("ats-personaldtlslbl").ordered.and_return("ats-personaldtlslbl")
      mocked_h2.should_receive(:className).with("ats-personaldtlslbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_details_label).ordered.and_return(mocked_tooltag)

      @browser.personal_details_label.should == mocked_tooltag
    end


    it "should have a personal details edit link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:personal_details_edit_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-personaldtlseditlnk").ordered.and_return("ats-personaldtlseditlnk")
      mocked_a.should_receive(:className).with("ats-personaldtlseditlnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :personal_details_edit_link).ordered.and_return(mocked_tooltag)

      @browser.personal_details_edit_link.should == mocked_tooltag
    end


    it "should have a username field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:username_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-emailaddrfield").ordered.and_return("ats-emailaddrfield")
      mocked_input.should_receive(:className).with("ats-emailaddrfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :username_field).ordered.and_return(mocked_tooltag)

      @browser.username_field.should == mocked_tooltag
    end


    it "should have a new username error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:new_username_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-usernameerrorlbl").ordered.and_return("ats-usernameerrorlbl")
      mocked_span.should_receive(:className).with("ats-usernameerrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :new_username_error_label).ordered.and_return(mocked_tooltag)

      @browser.new_username_error_label.should == mocked_tooltag
    end


    it "should have a new username error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:new_username_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-usernameerrorlbl").ordered.and_return("ats-usernameerrorlbl")
      mocked_span.should_receive(:className).with("ats-usernameerrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :new_username_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.new_username_error_close_button.should == mocked_tooltag
    end


    it "should have a password error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:password_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwderrorlbl").ordered.and_return("ats-pwderrorlbl")
      mocked_span.should_receive(:className).with("ats-pwderrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :password_error_label).ordered.and_return(mocked_tooltag)

      @browser.password_error_label.should == mocked_tooltag
    end


    it "should have a password error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:password_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-pwderrorlbl").ordered.and_return("ats-pwderrorlbl")
      mocked_span.should_receive(:className).with("ats-pwderrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :password_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.password_error_close_button.should == mocked_tooltag
    end


    it "should have a current password field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:current_password_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-currentpwdfield").ordered.and_return("ats-currentpwdfield")
      mocked_input.should_receive(:className).with("ats-currentpwdfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :current_password_field).ordered.and_return(mocked_tooltag)

      @browser.current_password_field.should == mocked_tooltag
    end


    it "should have a current password error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:current_password_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-currentpwderrorlbl").ordered.and_return("ats-currentpwderrorlbl")
      mocked_span.should_receive(:className).with("ats-currentpwderrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :current_password_error_label).ordered.and_return(mocked_tooltag)

      @browser.current_password_error_label.should == mocked_tooltag
    end


    it "should have a current password error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:current_password_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-currentpwderrorlbl").ordered.and_return("ats-currentpwderrorlbl")
      mocked_span.should_receive(:className).with("ats-currentpwderrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :current_password_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.current_password_error_close_button.should == mocked_tooltag
    end


    it "should have a new password error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:new_password_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-newpwderrorlbl").ordered.and_return("ats-newpwderrorlbl")
      mocked_span.should_receive(:className).with("ats-newpwderrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :new_password_error_label).ordered.and_return(mocked_tooltag)

      @browser.new_password_error_label.should == mocked_tooltag
    end


    it "should have a new password error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:new_password_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-newpwderrorlbl").ordered.and_return("ats-newpwderrorlbl")
      mocked_span.should_receive(:className).with("ats-newpwderrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :new_password_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.new_password_error_close_button.should == mocked_tooltag
    end


    it "should have a verify new password field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:verify_new_password_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-verifypwdfield").ordered.and_return("ats-verifypwdfield")
      mocked_input.should_receive(:className).with("ats-verifypwdfield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :verify_new_password_field).ordered.and_return(mocked_tooltag)

      @browser.verify_new_password_field.should == mocked_tooltag
    end


    it "should have a confirm password error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:confirm_password_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-confirmpwderrorlbl").ordered.and_return("ats-confirmpwderrorlbl")
      mocked_span.should_receive(:className).with("ats-confirmpwderrorlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :confirm_password_error_label).ordered.and_return(mocked_tooltag)

      @browser.confirm_password_error_label.should == mocked_tooltag
    end


    it "should have a confirm password error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:confirm_password_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-confirmpwderrorlbl").ordered.and_return("ats-confirmpwderrorlbl")
      mocked_span.should_receive(:className).with("ats-confirmpwderrorlbl").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :confirm_password_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.confirm_password_error_close_button.should == mocked_tooltag
    end

    it "should have a popup authentication panel" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:popup_authentication_panel).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      @browser.should_receive(:create_ats_regex_string).with("ats-popupauthpanel").ordered.and_return("ats-popupauthpanel")
      mocked_div.should_receive(:className).with("ats-popupauthpanel").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :popup_authentication_panel).ordered.and_return(mocked_tooltag)

      @browser.popup_authentication_panel.should == mocked_tooltag
    end


    it "should have a authentication header label" do
      mocked_tooltag = double("ToolTag")
      mocked_h1 = double("h1")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:authentication_header_label).ordered

      @browser.should_receive(:h1).ordered.and_return(mocked_h1)
      @browser.should_receive(:create_ats_regex_string).with("ats-authhdrlbl").ordered.and_return("ats-authhdrlbl")
      mocked_h1.should_receive(:className).with("ats-authhdrlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :authentication_header_label).ordered.and_return(mocked_tooltag)

      @browser.authentication_header_label.should == mocked_tooltag
    end


    it "should have a authentication close button" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:authentication_close_button).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-authclosebtn").ordered.and_return("ats-authclosebtn")
      mocked_a.should_receive(:className).with("ats-authclosebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :authentication_close_button).ordered.and_return(mocked_tooltag)

      @browser.authentication_close_button.should == mocked_tooltag
    end


    it "should have a resend code link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:resend_code_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-resendcodelnk").ordered.and_return("ats-resendcodelnk")
      mocked_a.should_receive(:className).with("ats-resendcodelnk").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :resend_code_link).ordered.and_return(mocked_tooltag)

      @browser.resend_code_link.should == mocked_tooltag
    end


    it "should have a code field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:code_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-codefield").ordered.and_return("ats-codefield")
      mocked_input.should_receive(:className).with("ats-codefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :code_field).ordered.and_return(mocked_tooltag)

      @browser.code_field.should == mocked_tooltag
    end


    it "should have a device name field" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:device_name_field).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-devicenamefield").ordered.and_return("ats-devicenamefield")
      mocked_input.should_receive(:className).with("ats-devicenamefield").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :device_name_field).ordered.and_return(mocked_tooltag)

      @browser.device_name_field.should == mocked_tooltag
    end


    it "should have a remember device checkbox" do
      mocked_tooltag = double("ToolTag")
      mocked_input = double("input")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:remember_device_checkbox).ordered

      @browser.should_receive(:input).ordered.and_return(mocked_input)
      @browser.should_receive(:create_ats_regex_string).with("ats-rememberdevicebox").ordered.and_return("ats-rememberdevicebox")
      mocked_input.should_receive(:className).with("ats-rememberdevicebox").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :remember_device_checkbox).ordered.and_return(mocked_tooltag)

      @browser.remember_device_checkbox.should == mocked_tooltag
    end


    it "should have a remember device label" do
      mocked_tooltag = double("ToolTag")
      mocked_label = double("label")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:remember_device_label).ordered

      @browser.should_receive(:label).ordered.and_return(mocked_label)
      @browser.should_receive(:create_ats_regex_string).with("ats-rememberdevicelbl").ordered.and_return("ats-rememberdevicelbl")
      mocked_label.should_receive(:className).with("ats-rememberdevicelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :remember_device_label).ordered.and_return(mocked_tooltag)

      @browser.remember_device_label.should == mocked_tooltag
    end


    it "should have a authentication save button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:authentication_save_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-authsavebtn").ordered.and_return("ats-authsavebtn")
      mocked_button.should_receive(:className).with("ats-authsavebtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :authentication_save_button).ordered.and_return(mocked_tooltag)

      @browser.authentication_save_button.should == mocked_tooltag
    end


    it "should have a authentication cancel button" do
      mocked_tooltag = double("ToolTag")
      mocked_button = double("button")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:authentication_cancel_button).ordered

      @browser.should_receive(:button).ordered.and_return(mocked_button)
      @browser.should_receive(:create_ats_regex_string).with("ats-authcancelbtn").ordered.and_return("ats-authcancelbtn")
      mocked_button.should_receive(:className).with("ats-authcancelbtn").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :authentication_cancel_button).ordered.and_return(mocked_tooltag)

      @browser.authentication_cancel_button.should == mocked_tooltag
    end


    it "should have a invalid code error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:invalid_code_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-invalidcodelbl").ordered.and_return("ats-invalidcodelbl")
      mocked_span.should_receive(:className).with("ats-invalidcodelbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :invalid_code_error_label).ordered.and_return(mocked_tooltag)

      @browser.invalid_code_error_label.should == mocked_tooltag
    end

    it "should have a code field error label" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:code_field_error_label).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-codefielderror").ordered.and_return("ats-codefielderror")
      mocked_span.should_receive(:className).with("ats-codefielderror").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :code_field_error_label).ordered.and_return(mocked_tooltag)

      @browser.code_field_error_label.should == mocked_tooltag
    end


    it "should have a code field error close button" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")
      mocked_a = double("a")

      $tracer.should_receive(:trace).with(:code_field_error_close_button).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-codefielderror").ordered.and_return("ats-codefielderror")
      mocked_span.should_receive(:className).with("ats-codefielderror").ordered.and_return(mocked_className)
      mocked_className.should_receive(:a).ordered.and_return(mocked_a)
      ToolTag.should_receive(:new).with(mocked_a, :code_field_error_close_button).ordered.and_return(mocked_tooltag)

      @browser.code_field_error_close_button.should == mocked_tooltag
    end

end