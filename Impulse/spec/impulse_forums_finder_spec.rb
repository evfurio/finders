ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseForumsFinder do

    before(:all) do
        class ImpulseForumsFinderTest
            include ImpulseForumsFinder
        end

        @browser = ImpulseForumsFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseForumsFinderTest) if Object.const_defined?(:ImpulseForumsFinderTest)
    end

    it "should have a forums email address field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_email_address_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-email-address-field").ordered.and_return("ats-email-address-field")
        mocked_input.should_receive(:className).with("ats-email-address-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_email_address_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_email_address_field.should == mocked_tooltag
    end

    it "should have a forums password field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_password_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-password-field").ordered.and_return("ats-password-field")
        mocked_input.should_receive(:className).with("ats-password-field").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_password_field, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_password_field.should == mocked_tooltag
    end

    it "should have a forums sign up link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_sign_up_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-sign-up-link").ordered.and_return("ats-sign-up-link")
        mocked_a.should_receive(:className).with("ats-sign-up-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_sign_up_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_sign_up_link.should == mocked_tooltag
    end

    it "should have a forums create new account button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_create_new_account_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-create-account-button").ordered.and_return("ats-create-account-button")
        mocked_a.should_receive(:className).with("ats-create-account-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_create_new_account_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_create_new_account_button.should == mocked_tooltag
    end

    it "should have a forums login button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_login_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-login-button").ordered.and_return("ats-login-button")
        mocked_input.should_receive(:className).with("ats-login-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_login_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_login_button.should == mocked_tooltag
    end

    it "should have a forums recent posts label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_a = double("a")
        mocked_title = double("title")

        $tracer.should_receive(:trace).with(:forums_recent_posts_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("/section recentposts/").ordered.and_return(mocked_className)
        mocked_className.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:title).with("/Recent Posts Within 72 Hours/").ordered.and_return(mocked_title)
        ToolTag.should_receive(:new).with(mocked_title, :forums_recent_posts_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_recent_posts_label.should == mocked_tooltag
    end

    it "should have a forums recent posts link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_recent_posts_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-recent-posts-link").ordered.and_return("ats-recent-posts-link")
        mocked_a.should_receive(:className).with("ats-recent-posts-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_recent_posts_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_recent_posts_link.should == mocked_tooltag
    end

    it "should have a forums sign out link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_sign_out_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-logout-link").ordered.and_return("ats-logout-link")
        mocked_a.should_receive(:className).with("ats-logout-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_sign_out_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_sign_out_link.should == mocked_tooltag
    end

    it "should have a forums my account link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_my_account_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-my-account-link").ordered.and_return("ats-my-account-link")
        mocked_a.should_receive(:className).with("ats-my-account-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_my_account_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_my_account_link.should == mocked_tooltag
    end

    it "should have a forums invalid login label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_invalid_login_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-invalid-login-label").ordered.and_return("ats-invalid-login-label")
        mocked_span.should_receive(:className).with("ats-invalid-login-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_invalid_login_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_invalid_login_label.should == mocked_tooltag
    end

    it "should have a forums welcome label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_welcome_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-welcome-user-label").ordered.and_return("ats-welcome-user-label")
        mocked_span.should_receive(:className).with("ats-welcome-user-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_welcome_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_welcome_label.should == mocked_tooltag
    end

    it "should have a forums home link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_home_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-forums-home-link").ordered.and_return("ats-forums-home-link")
        mocked_a.should_receive(:className).with("ats-forums-home-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_home_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_home_link.should == mocked_tooltag
    end

    it "should have a forums post list" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulseforumspostlist = double("ImpulseForumsPostList")

        $tracer.should_receive(:trace).with(:forums_post_list).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("post").ordered.and_return("post")
        mocked_div.should_receive(:className).with("post").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_post_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseForumsPostList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseforumspostlist)

        @browser.forums_post_list.should == mocked_impulseforumspostlist
    end

    it "should have a forums create post button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_create_post_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-forums-create-post-button").ordered.and_return("ats-forums-create-post-button")
        mocked_a.should_receive(:className).with("ats-forums-create-post-button").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_create_post_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_create_post_button.should == mocked_tooltag
    end

    it "should have a forums write new post label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_write_new_post_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-forums-write-new-post-label").ordered.and_return("ats-forums-write-new-post-label")
        mocked_span.should_receive(:className).with("ats-forums-write-new-post-label").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_write_new_post_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_write_new_post_label.should == mocked_tooltag
    end

    it "should have a forums create post panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulseforumscreatepostpanel = double("ImpulseForumsCreatePostPanel")

        $tracer.should_receive(:trace).with(:forums_create_post_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-forums-post-editor").ordered.and_return("ats-forums-post-editor")
        mocked_div.should_receive(:className).with("ats-forums-post-editor").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_create_post_panel, @browser).ordered.and_return(mocked_tooltag)
        ImpulseForumsCreatePostPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseforumscreatepostpanel)

        @browser.forums_create_post_panel.should == mocked_impulseforumscreatepostpanel
    end

    it "should have a forums reply post panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulseforumsreplypostpanel = double("ImpulseForumsReplyPostPanel")

        $tracer.should_receive(:trace).with(:forums_reply_post_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-forums-post-editor").ordered.and_return("ats-forums-post-editor")
        mocked_div.should_receive(:className).with("ats-forums-post-editor").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_reply_post_panel, @browser).ordered.and_return(mocked_tooltag)
        ImpulseForumsReplyPostPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseforumsreplypostpanel)

        @browser.forums_reply_post_panel.should == mocked_impulseforumsreplypostpanel
    end

end
