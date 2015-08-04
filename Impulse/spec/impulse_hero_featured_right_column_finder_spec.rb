ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseHeroFeaturedRightColumnFinder do

    before(:all) do
        class ImpulseHeroFeaturedRightColumnFinderTest
            include ImpulseHeroFeaturedRightColumnFinder
        end

        @browser = ImpulseHeroFeaturedRightColumnFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseHeroFeaturedRightColumnFinderTest) if Object.const_defined?(:ImpulseHeroFeaturedRightColumnFinderTest)
    end

    it "should have a hero banner" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_img = double("img")

        $tracer.should_receive(:trace).with(:hero_banner).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("hphero").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:img).ordered.and_return(mocked_img)
        ToolTag.should_receive(:new).with(mocked_img, :hero_banner, @browser).ordered.and_return(mocked_tooltag)

        @browser.hero_banner.should == mocked_tooltag
    end

    it "should have a hero left arrow button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")
        mocked_find = double("find")
        mocked_img = double("img")

        $tracer.should_receive(:trace).with(:hero_left_arrow_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("leftArrowTest").ordered.and_return(mocked_id)
        mocked_id.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:img).ordered.and_return(mocked_img)
        ToolTag.should_receive(:new).with(mocked_img, :hero_left_arrow_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.hero_left_arrow_button.should == mocked_tooltag
    end

    it "should have a hero right arrow button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_with = double("with")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_img = double("img")

        $tracer.should_receive(:trace).with(:hero_right_arrow_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:with).ordered.and_return(mocked_with)
        mocked_with.should_receive(:className).with("/(^|\s+)rightArrow($|\s+)/").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:img).ordered.and_return(mocked_img)
        ToolTag.should_receive(:new).with(mocked_img, :hero_right_arrow_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.hero_right_arrow_button.should == mocked_tooltag
    end

    it "should have a learn more button" do
        mocked_tooltag = double("ToolTag")
        mocked_area = double("area")
        mocked_href = double("href")

        $tracer.should_receive(:trace).with(:learn_more_button).ordered

        @browser.should_receive(:area).ordered.and_return(mocked_area)
        mocked_area.should_receive(:href).with("/[/]about$/").ordered.and_return(mocked_href)
        ToolTag.should_receive(:new).with(mocked_href, :learn_more_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.learn_more_button.should == mocked_tooltag
    end

    it "should have a daily deal link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")
        mocked_img = double("img")

        $tracer.should_receive(:trace).with(:daily_deal_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("impulsedailydeal").ordered.and_return(mocked_id)
        mocked_id.should_receive(:img).ordered.and_return(mocked_img)
        ToolTag.should_receive(:new).with(mocked_img, :daily_deal_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.daily_deal_link.should == mocked_tooltag
    end

    it "should have a announcements rss button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_href = double("href")

        $tracer.should_receive(:trace).with(:announcements_rss_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:href).with("/[/]rss[/]news$/").ordered.and_return(mocked_href)
        ToolTag.should_receive(:new).with(mocked_href, :announcements_rss_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.announcements_rss_button.should == mocked_tooltag
    end

    it "should have a announcements list" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_className = double("className")
        mocked_impulseannouncementslist = double("ImpulseAnnouncementsList")

        $tracer.should_receive(:trace).with(:announcements_list).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:className).ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :announcements_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseAnnouncementsList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseannouncementslist)

        @browser.announcements_list.should == mocked_impulseannouncementslist
    end

    it "should have a announcements more link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:announcements_more_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("imp_announcemore").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :announcements_more_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.announcements_more_link.should == mocked_tooltag
    end

    it "should have a featured games rss button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_href = double("href")

        $tracer.should_receive(:trace).with(:featured_games_rss_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:href).with("/[/]rss[/]gamesbestsellers$/").ordered.and_return(mocked_href)
        ToolTag.should_receive(:new).with(mocked_href, :featured_games_rss_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.featured_games_rss_button.should == mocked_tooltag
    end

    it "should have a featured games list" do
        mocked_tooltag = double("ToolTag")
        mocked_article = double("article")
        mocked_className = double("className")
        mocked_impulsefeaturedproductlist = double("ImpulseFeaturedProductList")

        $tracer.should_receive(:trace).with(:featured_games_list).ordered

        @browser.should_receive(:article).ordered.and_return(mocked_article)
        @browser.should_receive(:create_ats_regex_string).with("ats-feat-games-item").ordered.and_return("ats-feat-games-item")
        mocked_article.should_receive(:className).with("ats-feat-games-item").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :featured_games_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseFeaturedProductList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulsefeaturedproductlist)

        @browser.featured_games_list.should == mocked_impulsefeaturedproductlist
    end

    it "should have a download now link" do
        mocked_tooltag = double("ToolTag")
        mocked_area = double("area")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:download_now_link).ordered

        @browser.should_receive(:area).ordered.and_return(mocked_area)
        @browser.should_receive(:create_ats_regex_string).with("ats-download-now-link").ordered.and_return("ats-download-now-link")
        mocked_area.should_receive(:className).with("ats-download-now-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :download_now_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.download_now_link.should == mocked_tooltag
    end

    it "should have a announcements list" do
        mocked_tooltag = double("ToolTag")
        mocked_section = double("section")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:announcements_list).ordered

        @browser.should_receive(:section).ordered.and_return(mocked_section)
        mocked_section.should_receive(:className).with("/(^|\s+)ats-announcements($|\s+)/").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :announcements_list, @browser).ordered.and_return(mocked_tooltag)

        mocked_list = double("list")
        ImpulseAnnouncementsList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_list)

        @browser.announcements_list.should == mocked_list
    end

end

describe ImpulseAnnouncementsList do
    before(:each) do
        @browser = double("browser")
        @tag = double("tag")
        @list = ImpulseAnnouncementsList.new(@tag, @browser)
    end

    it "should return the i-th item in the list" do
        item = double("item")
        temp_tag = double("temp tag")

        @tag.should_receive(:article).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:at).with(10).ordered.and_return(temp_tag)
        ImpulseAnnouncementsListItem.should_receive(:new).with(temp_tag, @browser).ordered.and_return(item)

        @list.at(10).should == item
    end

    it "should return the length of the list" do
        temp_tag = double("temp tag")

        @tag.should_receive(:article).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:exists).with(no_args).ordered.and_return(true)
        @tag.should_receive(:article).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:length).with(no_args).ordered.and_return(4)

        @list.length.should == 4
    end

    it "should return length 0 if the list does not exist" do
        temp_tag = double("temp tag")

        @tag.should_receive(:article).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:exists).with(no_args).ordered.and_return(false)

        @list.length.should == 0
    end
end

describe ImpulseAnnouncementsListItem do
    before(:each) do
        @item = ImpulseAnnouncementsListItem.allocate
        mocked_tag = double("tag")
        @browser = double("browser")
        @item.instance_variable_set(:@tag, mocked_tag)
        @item.instance_variable_set(:@browser, @browser)
    end

    it "should have a date label" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:date_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_h2 = double("h2")
        @item.instance_variable_get(:@tag).should_receive(:h2).ordered.and_return(mocked_h2)

        @item.should_receive(:format_method).with(:date_label).ordered.and_return(mocked_format)

        mocked_tooltag = double("tooltag")
        ToolTag.should_receive(:new).with(mocked_h2, mocked_format, @browser).and_return(mocked_tooltag)

        @item.date_label.should == mocked_tooltag
    end

    it "should have a title label" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:title_label).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_h1 = double("h1")
        @item.instance_variable_get(:@tag).should_receive(:h1).ordered.and_return(mocked_h1)

        @item.should_receive(:format_method).with(:title_label).ordered.and_return(mocked_format)

        mocked_tooltag = double("tooltag")
        ToolTag.should_receive(:new).with(mocked_h1, mocked_format, @browser).and_return(mocked_tooltag)

        @item.title_label.should == mocked_tooltag
    end

    it "should have a read more link" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:read_more_link).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).ordered.and_return(mocked_a)

        mocked_innertext = double("innerText")
        mocked_a.should_receive(:innerText).with("read more").ordered.and_return(mocked_innertext)

        @item.should_receive(:format_method).with(:read_more_link).ordered.and_return(mocked_format)

        mocked_tooltag = double("tooltag")
        ToolTag.should_receive(:new).with(mocked_innertext, mocked_format, @browser).and_return(mocked_tooltag)

        @item.read_more_link.should == mocked_tooltag
    end

    it "should have a announcement link" do
        mocked_format = double("format")
        @item.should_receive(:format_method).with(:announcement_link).ordered.and_return(mocked_format)
        $tracer.should_receive(:trace).with(mocked_format).ordered

        mocked_a = double("a")
        @item.instance_variable_get(:@tag).should_receive(:a).ordered.and_return(mocked_a)

        mocked_href = double("href")
        mocked_a.should_receive(:href).with("/http:/").ordered.and_return(mocked_href)

        @item.should_receive(:format_method).with(:announcement_link).ordered.and_return(mocked_format)

        mocked_tooltag = double("tooltag")
        ToolTag.should_receive(:new).with(mocked_href, mocked_format, @browser).and_return(mocked_tooltag)

        @item.announcement_link.should == mocked_tooltag
    end

end

describe ImpulseFeaturedProductList do
    before(:each) do
        @browser = double("browser")
        @tag = double("tag")
        @list = ImpulseFeaturedProductList.new(@tag, @browser)
    end

    it "should return the i-th item in the list" do
        item = double("item")
        temp_tag = double("temp tag")

        @tag.should_receive(:at).with(10).ordered.and_return(temp_tag)
        ImpulseFeaturedProductListItem.should_receive(:new).with(temp_tag, @browser).ordered.and_return(item)

        @list.at(10).should == item
    end

    it "should return the length of the list" do
        temp_tag = double("temp tag")

        @tag.should_receive(:exists).with(no_args).ordered.and_return(true)
        @tag.should_receive(:length).with(no_args).ordered.and_return(4)

        @list.length.should == 4
    end

    it "should return length 0 if the list does not exist" do
        temp_tag = double("temp tag")

        @tag.should_receive(:exists).with(no_args).ordered.and_return(false)

        @list.length.should == 0
    end
end

describe ImpulseFeaturedProductListItem do
    before(:each) do
        @item = ImpulseFeaturedProductListItem.allocate
        @tag = double("tag")
        @browser = double("browser")
        @item.instance_variable_set(:@tag, @tag)
        @item.instance_variable_set(:@browser, @browser)
        @formatted_method = double("formatted method")
    end

    it "should return the product image link" do
        temp_tag = double("temp tag")
        new_tag = double("new tag")
        @item.should_receive(:format_method).with(:product_image_link).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with(@formatted_method).ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:div).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:className).with("/(\s+|^)imgBorder(\s+|$)/").ordered.and_return(temp_tag)
        temp_tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        @item.should_receive(:format_method).with(:product_image_link).ordered.and_return(@formatted_method)
        ToolTag.should_receive(:new).with(temp_tag, @formatted_method, @browser).ordered.and_return(new_tag)

        @item.product_image_link.should == new_tag
    end

    it "should return the price button" do
        temp_tag = double("temp tag")
        new_tag = double("new tag")
        @item.should_receive(:format_method).with(:price_button).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with(@formatted_method).ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:className).with("/(\s+|^)price(\s+|$)/").ordered.and_return(temp_tag)
        temp_tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        @item.should_receive(:format_method).with(:price_button).ordered.and_return(@formatted_method)
        ToolTag.should_receive(:new).with(temp_tag, @formatted_method, @browser).ordered.and_return(new_tag)

        @item.price_button.should == new_tag
    end

    it "should return the buy button" do
        temp_tag = double("temp tag")
        new_tag = double("new tag")
        @item.should_receive(:format_method).with(:buy_button).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with(@formatted_method).ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:className).with("/(\s+|^)buy(\s+|$)/").ordered.and_return(temp_tag)
        temp_tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        @item.should_receive(:format_method).with(:buy_button).ordered.and_return(@formatted_method)
        ToolTag.should_receive(:new).with(temp_tag, @formatted_method, @browser).ordered.and_return(new_tag)

        @item.buy_button.should == new_tag
    end

    it "should return the pre purchase button" do
        temp_tag = double("temp tag")
        new_tag = double("new tag")
        ats_string = double("ats string")

        @item.should_receive(:format_method).with(:pre_purchase_button).ordered.and_return(@formatted_method)
        $tracer.should_receive(:trace).with(@formatted_method).ordered
        @tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:li).with(no_args).ordered.and_return(temp_tag)
        @tag.should_receive(:create_ats_regex_string).with("pp").ordered.and_return(ats_string)
        temp_tag.should_receive(:className).with(ats_string).ordered.and_return(temp_tag)
        temp_tag.should_receive(:find).with(no_args).ordered.and_return(temp_tag)
        temp_tag.should_receive(:a).with(no_args).ordered.and_return(temp_tag)
        @item.should_receive(:format_method).with(:pre_purchase_button).ordered.and_return(@formatted_method)
        ToolTag.should_receive(:new).with(temp_tag, @formatted_method, @browser).ordered.and_return(new_tag)

        @item.pre_purchase_button.should == new_tag
    end

end
