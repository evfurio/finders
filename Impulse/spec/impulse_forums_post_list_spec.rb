ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseForumsPostList, "at" do
    before(:each) do
        @mocked_browser = double("browser")
        @list = ImpulseForumsPostList.allocate
        @mocked_tag = double("ToolTag")
        @list.instance_variable_set(:@tag, @mocked_tag)
        @list.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should return instance of ImpulseForumsPostOriginalItem" do
        mocked_original_item = double("ImpulseForumsPostOriginalItem")
        ImpulseForumsPostOriginalItem.should_receive(:new).with(@list.instance_variable_get(:@tag), @list.instance_variable_get(:@browser)).ordered.and_return(mocked_original_item)

        @list.at(0).should == mocked_original_item
    end

    it "should return instance of ImpulseForumsPostReplyItem" do
        mocked_reply_item = double("ImpulseForumsPostOriginalItem")
        mocked_div = double("div")
        @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("create_ats_regex_string")
        @list.should_receive(:create_ats_regex_string).with("replyoverall").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_at = double("at")
        mocked_class_name.should_receive(:at).with(1 - 1).ordered.and_return(mocked_at)
        ImpulseForumsPostReplyItem.should_receive(:new).with(mocked_at, @list.instance_variable_get(:@browser)).ordered.and_return(mocked_reply_item)

        @list.at(1).should == mocked_reply_item
    end

end

describe ImpulseForumsPostList, "length" do
    before(:each) do
        @list = ImpulseForumsPostList.allocate
        @mocked_tag = double("ToolTag")
        @list.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return length + 1 if reply items" do
        mocked_div = double("div")
        mocked_ats = double("create_ats_regex_string")
        mocked_class_name = double("className")

        @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        @list.should_receive(:create_ats_regex_string).with("replyoverall").ordered.and_return(mocked_ats)
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_class_name.should_receive(:length).with(no_args).ordered.and_return(5)

        @list.length.should == 6
    end

    it "should return 1 if no reply items" do
        mocked_div = double("div")
        @list.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("create_ats_regex_string")
        @list.should_receive(:create_ats_regex_string).with("replyoverall").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_class_name.should_receive(:length).with(no_args).ordered.and_return(0)

        @list.length.should == 1
    end

end

describe ImpulseForumsPostOriginalItem do
    before(:each) do
        @mocked_browser = double("browser")
        @item = ImpulseForumsPostOriginalItem.allocate
        @mocked_tag = double("ToolTag")
        @item.instance_variable_set(:@tag, @mocked_tag)
        @item.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should return a title label" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:title_label).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_h2 = double("h2")
        @item.instance_variable_get(:@tag).should_receive(:h2).with(no_args).ordered.and_return(mocked_h2)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-post-title-label").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_h2.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_at = double("at")
        mocked_class_name.should_receive(:at).with(0).ordered.and_return(mocked_at)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_at, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.title_label.should == mocked_tooltag
    end

    it "should return a reply button" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:reply_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-reply-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_at = double("at")
        mocked_class_name.should_receive(:at).with(0).ordered.and_return(mocked_at)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_at, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.reply_button.should == mocked_tooltag
    end

    it "should return a quote button" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:quote_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-quote-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_at = double("at")
        mocked_class_name.should_receive(:at).with(0).ordered.and_return(mocked_at)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_at, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.quote_button.should == mocked_tooltag
    end

    it "should return a report button" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:report_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-report-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_at = double("at")
        mocked_class_name.should_receive(:at).with(0).ordered.and_return(mocked_at)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_at, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.report_button.should == mocked_tooltag
    end

    it "should return an author menu link" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:author_menu_link).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-post-author-link").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_at = double("at")
        mocked_class_name.should_receive(:at).with(0).ordered.and_return(mocked_at)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_at, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.author_menu_link.should == mocked_tooltag
    end

    it "should return an author menu" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:author_menu).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_div = double("div")
        @item.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-post-author-menu-list").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_at = double("at")
        mocked_class_name.should_receive(:at).with(0).ordered.and_return(mocked_at)
        mocked_a = double("a")
        mocked_at.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_a, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)
        mocked_author_menu = double("ImpulseForumsPostAuthorMenu")
        ImpulseForumsPostAuthorMenu.should_receive(:new).with(mocked_tooltag, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_author_menu)

        @item.author_menu.should == mocked_author_menu
    end
end

describe ImpulseForumsPostReplyItem do
    before(:each) do
        @mocked_browser = double("browser")
        @item = ImpulseForumsPostReplyItem.allocate
        @mocked_tag = double("ToolTag")
        @item.instance_variable_set(:@tag, @mocked_tag)
        @item.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should return a reply button" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:reply_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-reply-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.reply_button.should == mocked_tooltag
    end

    it "should return a quote button" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:quote_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-quote-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.quote_button.should == mocked_tooltag
    end

    it "should return a report button" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:report_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-report-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.report_button.should == mocked_tooltag
    end

    it "should return a karma button" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:karma_button).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-karma-button").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.karma_button.should == mocked_tooltag
    end

    it "should return an author menu link" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:author_menu_link).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-post-author-link").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_class_name, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @item.author_menu_link.should == mocked_tooltag
    end

    it "should return an author menu" do
        mocked_method = double("__method__")
        @item.should_receive(:format_method).with(:author_menu).ordered.and_return(mocked_method)
        $tracer.should_receive(:trace).with(mocked_method).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_ats = double("ats tag")
        @item.should_receive(:create_ats_regex_string).with("ats-forums-post-author-link").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_get = double("get")
        mocked_class_name.should_receive(:get).with("onclick").ordered.and_return("Sd.Menus.showMenu('userMenu21');")

        mocked_div = double("div")
        @item.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)
        mocked_id = double("id")
        mocked_div.should_receive(:id).with("userMenu21").ordered.and_return(mocked_id)

        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_id, mocked_method, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        mocked_author_menu = double("ImpulseForumsPostAuthorMenu")
        ImpulseForumsPostAuthorMenu.should_receive(:new).with(mocked_tooltag, @item.instance_variable_get(:@browser)).ordered.and_return(mocked_author_menu)

        @item.author_menu.should == mocked_author_menu
    end
end

describe ImpulseForumsPostAuthorMenu, "at" do
    before(:each) do
        @mocked_browser = double("browser")
        @menu = ImpulseForumsPostAuthorMenu.allocate
        @mocked_tag = double("ToolTag")
        @menu.instance_variable_set(:@tag, @mocked_tag)
        @menu.instance_variable_set(:@browser, @mocked_browser)
    end

    it "should return instance of ToolTag at index specified" do
        mocked_div = double("div")
        @menu.instance_variable_get(:@tag).should_receive(:div).with(no_args).ordered.and_return(mocked_div)

        mocked_ats = double("ats tag")
        @menu.should_receive(:create_ats_regex_string).with("items").ordered.and_return(mocked_ats)
        mocked_class_name = double("className")
        mocked_div.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_class_name)
        mocked_a = double("a")
        mocked_class_name.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_at = double("at")
        mocked_a.should_receive(:at).with(0).ordered.and_return(mocked_at)

        mocked_method = double("__method__")
        @menu.should_receive(:format_method).with(:at).ordered.and_return(mocked_method)

        mocked_tooltag = double("Tool Tag")
        ToolTag.should_receive(:new).with(mocked_at, mocked_method, @menu.instance_variable_get(:@browser)).ordered.and_return(mocked_tooltag)

        @menu.at(0).should == mocked_tooltag
    end
end

describe ImpulseForumsPostAuthorMenu, "length" do
    before(:each) do
        @menu = ImpulseForumsPostAuthorMenu.allocate
        @mocked_tag = double("ToolTag")
        @menu.instance_variable_set(:@tag, @mocked_tag)
    end

    it "should return length" do
        mocked_a = double("a")
        @menu.instance_variable_get(:@tag).should_receive(:a).with(no_args).ordered.and_return(mocked_a)
        mocked_length = double("length")
        mocked_a.should_receive(:length).with(no_args).and_return(mocked_length)

        @menu.length.should == mocked_length
    end
end
