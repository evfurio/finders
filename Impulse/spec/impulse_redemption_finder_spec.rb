ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseRedemptionFinder do

    before(:all) do
        class ImpulseRedemptionFinderTest
            include ImpulseRedemptionFinder
        end

        @browser = ImpulseRedemptionFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseRedemptionFinderTest) if Object.const_defined?(:ImpulseRedemptionFinderTest)
    end

    it "should have a redemption gamestop header logo label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_gamestop_header_logo_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-header-logo-label").ordered.and_return("ats-gamestop-header-logo-label")
        mocked_div.should_receive(:className).with("ats-gamestop-header-logo-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_gamestop_header_logo_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_gamestop_header_logo_label.should == mocked_tooltag
    end

    it "should have a support page button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:support_page_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-support-page-button").ordered.and_return("ats-support-page-button")
        mocked_a.should_receive(:className).with("ats-support-page-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :support_page_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.support_page_button.should == mocked_tooltag
    end

    it "should have a redemption welcome user label" do
        mocked_tooltag = double("ToolTag")
        mocked_get_self = double("get_self")
        mocked_p = double("p")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_welcome_user_label).ordered

        @browser.should_receive(:get_self).ordered.and_return(mocked_get_self)
        mocked_get_self.should_receive(:p).ordered.and_return(mocked_p)
        @browser.should_receive(:create_ats_regex_string).with("ats-welcome-user-label").ordered.and_return("ats-welcome-user-label")
        mocked_p.should_receive(:className).with("ats-welcome-user-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_welcome_user_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_welcome_user_label.should == mocked_tooltag
    end

    it "should have a redemption code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-redemption-code-field").ordered.and_return("ats-redemption-code-field")
        mocked_input.should_receive(:className).with("ats-redemption-code-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_code_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_code_field.should == mocked_tooltag
    end

    it "should have a redemption captcha text field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_captcha_text_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-captcha-text-field").ordered.and_return("ats-captcha-text-field")
        mocked_input.should_receive(:className).with("ats-captcha-text-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_captcha_text_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_captcha_text_field.should == mocked_tooltag
    end

    it "should have a redemption captcha image" do
        mocked_tooltag = double("ToolTag")
        mocked_img = double("img")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_captcha_image).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_img)
        @browser.should_receive(:create_ats_regex_string).with("ats-captcha-image").ordered.and_return("ats-captcha-image")
        mocked_img.should_receive(:className).with("ats-captcha-image").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_captcha_image, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_captcha_image.should == mocked_tooltag
    end

    it "should have a redemption redeem button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_redeem_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-redeem-button").ordered.and_return("ats-redeem-button")
        mocked_input.should_receive(:className).with("ats-redeem-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_redeem_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_redeem_button.should == mocked_tooltag
    end

    it "should have a redemption receipt image" do
        mocked_tooltag = double("ToolTag")
        mocked_img = double("img")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_receipt_image).ordered

        @browser.should_receive(:img).ordered.and_return(mocked_img)
        @browser.should_receive(:create_ats_regex_string).with("ats-receipt-image").ordered.and_return("ats-receipt-image")
        mocked_img.should_receive(:className).with("ats-receipt-image").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_receipt_image, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_receipt_image.should == mocked_tooltag
    end

    it "should have a redemption download now button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_download_now_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-download-now-button").ordered.and_return("ats-download-now-button")
        mocked_a.should_receive(:className).with("ats-download-now-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_download_now_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_download_now_button.should == mocked_tooltag
    end

    it "should have a redemption continue button" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")

        $tracer.should_receive(:trace).with(:redemption_continue_button).ordered

        @browser.should_receive(:jquery).with("a[class~='ats-continue-button'], input[class~='ats-continue-button']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :redemption_continue_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_continue_button.should == mocked_tooltag
    end

    it "should have a redemption download your game label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_download_your_game_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        @browser.should_receive(:create_ats_regex_string).with("ats-download-your-game-label").ordered.and_return("ats-download-your-game-label")
        mocked_h1.should_receive(:className).with("ats-download-your-game-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_download_your_game_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_download_your_game_label.should == mocked_tooltag
    end

    it "should have a redemption all set label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_all_set_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-all-set-label").ordered.and_return("ats-all-set-label")
        mocked_div.should_receive(:className).with("ats-all-set-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_all_set_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_all_set_label.should == mocked_tooltag
    end

    it "should have a redemption logout link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:redemption_logout_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-logout-link").ordered.and_return("ats-logout-link")
        mocked_a.should_receive(:className).with("ats-logout-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :redemption_logout_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.redemption_logout_link.should == mocked_tooltag
    end
end
