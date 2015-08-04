ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseForumsCreatePostPanel do
    before(:each) do
        @mocked_browser = double("browser")
        @panel = ImpulseForumsCreatePostPanel.allocate
        @mocked_tag = double("ToolTag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
        @panel.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should have a title label" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:title_label).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_div = double("div")
        @panel.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-title-label").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @panel.title_label.should == mocked_tooltag
    end

    it "should have a title field" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:title_field).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_input = double("input")
        @panel.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-title-field").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @panel.title_field.should == mocked_tooltag
    end

    it "should have a subtitle label" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:subtitle_label).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_div = double("div")
        @panel.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-subtitle-label").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @panel.subtitle_label.should == mocked_tooltag
    end

    it "should have a subtitle field" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:subtitle_field).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_input = double("input")
        @panel.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-subtitle-field").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @panel.subtitle_field.should == mocked_tooltag
    end

    it "should have a submit new post button" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:submit_new_post_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_input = double("input")
        @panel.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-submit-new-post-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @panel.submit_new_post_button.should == mocked_tooltag
    end

    it "should have a post reply button" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:post_reply_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_input = double("input")
        @panel.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-reply-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @panel.post_reply_button.should == mocked_tooltag
    end

    it "should have a post message field" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:post_message_field).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_div = double("div")
        @panel.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-message-field").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        mocked_tiny = double("ImpulseTinyMCE")
        ImpulseTinyMCE.should_receive(:new).with(mocked_tooltag, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tiny)

        @panel.post_message_field.should == mocked_tiny
    end
end

describe ImpulseForumsReplyPostPanel do
    before(:each) do
        @mocked_browser = double("browser")
        @panel = ImpulseForumsReplyPostPanel.allocate
        @mocked_tag = double("ToolTag")
        @panel.instance_variable_set(:@tag, @mocked_tag)
        @panel.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should have a post reply button" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:post_reply_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_input = double("input")
        @panel.instance_variable_get(:@tag).should_receive(:input).with(no_args).ordered.and_return(mocked_input)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-reply-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_input.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @panel.post_reply_button.should == mocked_tooltag
    end

    it "should have a post message field" do
        mocked_method = double("__method__")
        @panel.should_receive(:format_method).with(:post_message_field).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_div = double("div")
        @panel.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats tag")
        @panel.should_receive(:create_ats_regex_string).with("ats-forums-post-message-field").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        mocked_tiny = double("ImpulseTinyMCE")
        ImpulseTinyMCE.should_receive(:new).with(mocked_tooltag, @panel.instance_variable_get(:@browser)).ordered.and_return(mocked_tiny)

        @panel.post_message_field.should == mocked_tiny
    end
end
