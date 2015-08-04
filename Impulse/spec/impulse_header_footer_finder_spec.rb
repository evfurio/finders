ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/Impulse/src/impulse_requires"

describe ImpulseHeaderFooterFinder do

    before(:all) do
        class ImpulseHeaderFooterFinderTest
            include ImpulseHeaderFooterFinder
        end

        @browser = ImpulseHeaderFooterFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :ImpulseHeaderFooterFinderTest) if Object.const_defined?(:ImpulseHeaderFooterFinderTest)
    end

    it "should have a gamestop logo pc downloads link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_with = double("with")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_logo_pc_downloads_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:with).ordered.and_return(mocked_with)
        @browser.should_receive(:create_ats_regex_string).with("ats-logo-link").ordered.and_return("ats-logo-link")
        mocked_with.should_receive(:className).with("ats-logo-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_logo_pc_downloads_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.gamestop_logo_pc_downloads_link.should == mocked_tooltag
    end

    it "should have a powered by impulse image" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_with = double("with")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_child = double("child")
        mocked_at = double("at")

        $tracer.should_receive(:trace).with(:powered_by_impulse_image).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:with).ordered.and_return(mocked_with)
        @browser.should_receive(:create_ats_regex_string).with("page_container").ordered.and_return("page_container")
        mocked_with.should_receive(:className).with("page_container").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:child).with("img").ordered.and_return(mocked_child)
        mocked_child.should_receive(:at).with(1).ordered.and_return(mocked_at)
        ToolTag.should_receive(:new).with(mocked_at, :powered_by_impulse_image, @browser).ordered.and_return(mocked_tooltag)

        @browser.powered_by_impulse_image.should == mocked_tooltag
    end

    it "should have a view cart link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_with = double("with")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:view_cart_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:with).ordered.and_return(mocked_with)
        @browser.should_receive(:create_ats_regex_string).with("ats-cart-link").ordered.and_return("ats-cart-link")
        mocked_with.should_receive(:className).with("ats-cart-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :view_cart_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.view_cart_link.should == mocked_tooltag
    end

    it "should have a checkout link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:checkout_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-checkout-link").ordered.and_return("ats-checkout-link")
        mocked_a.should_receive(:className).with("ats-checkout-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :checkout_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.checkout_link.should == mocked_tooltag
    end

    it "should have a genres menu list" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulseheadermenulist = double("ImpulseHeaderMenuList")

        $tracer.should_receive(:trace).with(:genres_menu_list).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-genretab").ordered.and_return("ats-genretab")
        mocked_div.should_receive(:className).with("ats-genretab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :genres_menu_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseHeaderMenuList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseheadermenulist)

        @browser.genres_menu_list.should == mocked_impulseheadermenulist
    end

    it "should have a publishers menu list" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulseheadermenulist = double("ImpulseHeaderMenuList")

        $tracer.should_receive(:trace).with(:publishers_menu_list).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-pubtab").ordered.and_return("ats-pubtab")
        mocked_div.should_receive(:className).with("ats-pubtab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :publishers_menu_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseHeaderMenuList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseheadermenulist)

        @browser.publishers_menu_list.should == mocked_impulseheadermenulist
    end

    it "should have a browse by menu list" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_impulseheadermenulist = double("ImpulseHeaderMenuList")

        $tracer.should_receive(:trace).with(:browse_by_menu_list).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-browsebytab").ordered.and_return("ats-browsebytab")
        mocked_div.should_receive(:className).with("ats-browsebytab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :browse_by_menu_list, @browser).ordered.and_return(mocked_tooltag)
        ImpulseHeaderMenuList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_impulseheadermenulist)

        @browser.browse_by_menu_list.should == mocked_impulseheadermenulist
    end

    it "should have a forums button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-forumstab").ordered.and_return("ats-forumstab")
        mocked_a.should_receive(:className).with("ats-forumstab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_button.should == mocked_tooltag
    end

    it "should have a support button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:support_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-supporttab").ordered.and_return("ats-supporttab")
        mocked_a.should_receive(:className).with("ats-supporttab").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :support_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.support_button.should == mocked_tooltag
    end

    it "should have a part of the gamestop network logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_with = double("with")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:part_of_the_gamestop_network_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:with).ordered.and_return(mocked_with)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-network-link").ordered.and_return("ats-gamestop-network-link")
        mocked_with.should_receive(:className).with("ats-gamestop-network-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :part_of_the_gamestop_network_logo_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.part_of_the_gamestop_network_logo_link.should == mocked_tooltag
    end

    it "should have a gamestop logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_with = double("with")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:with).ordered.and_return(mocked_with)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-link").ordered.and_return("ats-gamestop-link")
        mocked_with.should_receive(:className).with("ats-gamestop-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_logo_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.gamestop_logo_link.should == mocked_tooltag
    end

    it "should have a gameinformer logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gameinformer_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-gameinformer-link").ordered.and_return("ats-gameinformer-link")
        mocked_a.should_receive(:className).with("ats-gameinformer-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gameinformer_logo_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.gameinformer_logo_link.should == mocked_tooltag
    end

    it "should have a jolt logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:jolt_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-jolt-link").ordered.and_return("ats-jolt-link")
        mocked_a.should_receive(:className).with("ats-jolt-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :jolt_logo_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.jolt_logo_link.should == mocked_tooltag
    end

    it "should have a kongregate logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:kongregate_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-kongregate-link").ordered.and_return("ats-kongregate-link")
        mocked_a.should_receive(:className).with("ats-kongregate-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :kongregate_logo_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.kongregate_logo_link.should == mocked_tooltag
    end

    it "should have a buymytronics logo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:buymytronics_logo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-buymytronics-link").ordered.and_return("ats-buymytronics-link")
        mocked_a.should_receive(:className).with("ats-buymytronics-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :buymytronics_logo_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.buymytronics_logo_link.should == mocked_tooltag
    end

    it "should have a about label" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:about_label).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-footer-about").ordered.and_return("ats-footer-about")
        mocked_li.should_receive(:className).with("ats-footer-about").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :about_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.about_label.should == mocked_tooltag
    end

    it "should have a genres label" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:genres_label).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-footer-genres").ordered.and_return("ats-footer-genres")
        mocked_li.should_receive(:className).with("ats-footer-genres").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :genres_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.genres_label.should == mocked_tooltag
    end

    it "should have a categories label" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:categories_label).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-footer-categories").ordered.and_return("ats-footer-categories")
        mocked_li.should_receive(:className).with("ats-footer-categories").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :categories_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.categories_label.should == mocked_tooltag
    end

    it "should have a keep in touch label" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:keep_in_touch_label).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-footer-last").ordered.and_return("ats-footer-last")
        mocked_li.should_receive(:className).with("ats-footer-last").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :keep_in_touch_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.keep_in_touch_label.should == mocked_tooltag
    end

    it "should have a corporate link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:corporate_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-corporate-link").ordered.and_return("ats-corporate-link")
        mocked_a.should_receive(:className).with("ats-corporate-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :corporate_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.corporate_link.should == mocked_tooltag
    end

    it "should have a about impulse link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:about_impulse_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-about-impulse-link").ordered.and_return("ats-about-impulse-link")
        mocked_a.should_receive(:className).with("ats-about-impulse-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :about_impulse_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.about_impulse_link.should == mocked_tooltag
    end

    it "should have a developers link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developers_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-developers-link").ordered.and_return("ats-developers-link")
        mocked_a.should_receive(:className).with("ats-developers-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developers_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.developers_link.should == mocked_tooltag
    end

    it "should have a developers tools link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:developers_tools_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-developers-tools-link").ordered.and_return("ats-developers-tools-link")
        mocked_a.should_receive(:className).with("ats-developers-tools-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :developers_tools_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.developers_tools_link.should == mocked_tooltag
    end

    it "should have a action link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:action_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-action-link").ordered.and_return("ats-action-link")
        mocked_a.should_receive(:className).with("ats-action-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :action_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.action_link.should == mocked_tooltag
    end

    it "should have a adventure link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:adventure_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-adventure-link").ordered.and_return("ats-adventure-link")
        mocked_a.should_receive(:className).with("ats-adventure-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :adventure_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.adventure_link.should == mocked_tooltag
    end

    it "should have a casual link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:casual_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-casual-link").ordered.and_return("ats-casual-link")
        mocked_a.should_receive(:className).with("ats-casual-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :casual_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.casual_link.should == mocked_tooltag
    end

    it "should have a indie publishers link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:indie_publishers_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-indie-publishers-link").ordered.and_return("ats-indie-publishers-link")
        mocked_a.should_receive(:className).with("ats-indie-publishers-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :indie_publishers_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.indie_publishers_link.should == mocked_tooltag
    end

    it "should have a mmo link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:mmo_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-mmo-link").ordered.and_return("ats-mmo-link")
        mocked_a.should_receive(:className).with("ats-mmo-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :mmo_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.mmo_link.should == mocked_tooltag
    end

    it "should have a puzzle link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:puzzle_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-puzzle-link").ordered.and_return("ats-puzzle-link")
        mocked_a.should_receive(:className).with("ats-puzzle-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :puzzle_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.puzzle_link.should == mocked_tooltag
    end

    it "should have a rpgs link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:rpgs_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-rpgs-link").ordered.and_return("ats-rpgs-link")
        mocked_a.should_receive(:className).with("ats-rpgs-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :rpgs_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.rpgs_link.should == mocked_tooltag
    end

    it "should have a shooters link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shooters_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-shooters-link").ordered.and_return("ats-shooters-link")
        mocked_a.should_receive(:className).with("ats-shooters-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shooters_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.shooters_link.should == mocked_tooltag
    end

    it "should have a simulation link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:simulation_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-simulation-link").ordered.and_return("ats-simulation-link")
        mocked_a.should_receive(:className).with("ats-simulation-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :simulation_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.simulation_link.should == mocked_tooltag
    end

    it "should have a sports link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:sports_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-sports-link").ordered.and_return("ats-sports-link")
        mocked_a.should_receive(:className).with("ats-sports-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :sports_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.sports_link.should == mocked_tooltag
    end

    it "should have a staff picks link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:staff_picks_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-staff-picks-link").ordered.and_return("ats-staff-picks-link")
        mocked_a.should_receive(:className).with("ats-staff-picks-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :staff_picks_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.staff_picks_link.should == mocked_tooltag
    end

    it "should have a strategy link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:strategy_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-strategy-link").ordered.and_return("ats-strategy-link")
        mocked_a.should_receive(:className).with("ats-strategy-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :strategy_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.strategy_link.should == mocked_tooltag
    end

    it "should have a top sellers link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:top_sellers_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-top-sellers-link").ordered.and_return("ats-top-sellers-link")
        mocked_a.should_receive(:className).with("ats-top-sellers-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :top_sellers_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.top_sellers_link.should == mocked_tooltag
    end

    it "should have a new releases link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:new_releases_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-new-releases-link").ordered.and_return("ats-new-releases-link")
        mocked_a.should_receive(:className).with("ats-new-releases-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :new_releases_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.new_releases_link.should == mocked_tooltag
    end

    it "should have a on sale link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:on_sale_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-on-sale-link").ordered.and_return("ats-on-sale-link")
        mocked_a.should_receive(:className).with("ats-on-sale-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :on_sale_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.on_sale_link.should == mocked_tooltag
    end

    it "should have a coming soon link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:coming_soon_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-coming-soon-link").ordered.and_return("ats-coming-soon-link")
        mocked_a.should_receive(:className).with("ats-coming-soon-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :coming_soon_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.coming_soon_link.should == mocked_tooltag
    end

    it "should have a support link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:support_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-support-link").ordered.and_return("ats-support-link")
        mocked_a.should_receive(:className).with("ats-support-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :support_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.support_link.should == mocked_tooltag
    end

    it "should have a gamestop events link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_events_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-gamestop-events-link").ordered.and_return("ats-gamestop-events-link")
        mocked_a.should_receive(:className).with("ats-gamestop-events-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_events_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.gamestop_events_link.should == mocked_tooltag
    end

    it "should have a blogs link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:blogs_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-blogs-link").ordered.and_return("ats-blogs-link")
        mocked_a.should_receive(:className).with("ats-blogs-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :blogs_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.blogs_link.should == mocked_tooltag
    end

    it "should have a forums link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:forums_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-forums-link").ordered.and_return("ats-forums-link")
        mocked_a.should_receive(:className).with("ats-forums-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :forums_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.forums_link.should == mocked_tooltag
    end

    it "should have a impulse copyright link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:impulse_copyright_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-copyright-link").ordered.and_return("ats-copyright-link")
        mocked_a.should_receive(:className).with("ats-copyright-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :impulse_copyright_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.impulse_copyright_link.should == mocked_tooltag
    end

    it "should have a license link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:license_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-license-link").ordered.and_return("ats-license-link")
        mocked_a.should_receive(:className).with("ats-license-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :license_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.license_link.should == mocked_tooltag
    end

    it "should have a sales faq link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:sales_faq_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-sales-faq-link").ordered.and_return("ats-sales-faq-link")
        mocked_a.should_receive(:className).with("ats-sales-faq-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :sales_faq_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.sales_faq_link.should == mocked_tooltag
    end

    it "should have a privacy policy link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:privacy_policy_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-privacy-policy-link").ordered.and_return("ats-privacy-policy-link")
        mocked_a.should_receive(:className).with("ats-privacy-policy-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :privacy_policy_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.privacy_policy_link.should == mocked_tooltag
    end

    it "should have a return policy link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:return_policy_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-return-policy-link").ordered.and_return("ats-return-policy-link")
        mocked_a.should_receive(:className).with("ats-return-policy-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :return_policy_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.return_policy_link.should == mocked_tooltag
    end

    it "should have a terms of service link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:terms_of_service_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-terms-of-service-link").ordered.and_return("ats-terms-of-service-link")
        mocked_a.should_receive(:className).with("ats-terms-of-service-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :terms_of_service_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.terms_of_service_link.should == mocked_tooltag
    end

    it "should have a connect label" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:connect_label).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        @browser.should_receive(:create_ats_regex_string).with("ats-footer-connect").ordered.and_return("ats-footer-connect")
        mocked_li.should_receive(:className).with("ats-footer-connect").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :connect_label, @browser).ordered.and_return(mocked_tooltag)

        @browser.connect_label.should == mocked_tooltag
    end

    it "should have a twitter link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:twitter_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-twitter-link").ordered.and_return("ats-twitter-link")
        mocked_a.should_receive(:className).with("ats-twitter-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :twitter_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.twitter_link.should == mocked_tooltag
    end

    it "should have a facebook link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:facebook_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-facebook-link").ordered.and_return("ats-facebook-link")
        mocked_a.should_receive(:className).with("ats-facebook-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :facebook_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.facebook_link.should == mocked_tooltag
    end

    it "should have a announcements rss link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:announcements_rss_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with("ats-rss-link").ordered.and_return("ats-rss-link")
        mocked_a.should_receive(:className).with("ats-rss-link").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :announcements_rss_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.announcements_rss_link.should == mocked_tooltag
    end

end

