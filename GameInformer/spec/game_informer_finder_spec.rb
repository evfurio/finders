ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_requires"

# d-con %QAAUTOMATION_FINDERS%\GameInformer\spec\game_informer_finder_spec.rb --or

describe GameInformerFinder, "finders" do

  before(:all) do
    class GameInformerFinderTest
      include GameInformerFinder
    end

    @browser = GameInformerFinderTest.allocate

  end

  after(:all) do
    Object.send(:remove_const, :GameInformerFinderTest) if Object.const_defined?(:GameInformerFinderTest)
  end

  #####################################################################
  ##### Unit tests for finders for gameinformer main page #############
  #####################################################################

  it "should return sign in link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:sign_in_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/login/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :sign_in_link).ordered.and_return(mocked_tooltag)
    @browser.sign_in_link.should == mocked_tooltag
  end

  it "should return join link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:join_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/user-registration/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :join_link).ordered.and_return(mocked_tooltag)
    @browser.join_link.should == mocked_tooltag
  end

  it "should return gi header link" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")
    mocked_div = double("div")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:gi_header_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    @browser.should_receive(:create_ats_regex_string).with("site-banner").ordered.and_return("site-banner")
    mocked_div.should_receive(:className).with("site-banner").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:innerText).with("/GameInformer/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :gi_header_link).ordered.and_return(mocked_tooltag)
    @browser.gi_header_link.should == mocked_tooltag
  end

  it "should return light switch button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:light_switch_button).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/Switch/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :light_switch_button).ordered.and_return(mocked_tooltag)
    @browser.light_switch_button.should == mocked_tooltag
  end

  it "should return sign in label" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:sign_in_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/page-name/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :sign_in_label).ordered.and_return(mocked_tooltag)
    @browser.sign_in_label.should == mocked_tooltag
  end

  it "should return light status label" do
    mocked_p = double("p")
    mocked_get_self = double("get_self")
    mocked_className = double("className")
    mocked_tooltag = double("ToolTag")

    $tracer.should_receive(:trace).with(:light_status_label).ordered

    @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_get_self)
    mocked_get_self.should_receive(:p).with(no_args).ordered.and_return(mocked_p)
    mocked_p.should_receive(:className).with("/text/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :light_status_label).ordered.and_return(mocked_tooltag)
    @browser.light_status_label.should == mocked_tooltag
  end

  it "should return feed tabs panel" do
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_tooltag = double("ToolTag")

    $tracer.should_receive(:trace).with(:feed_tabs_panel).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tabs/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :feed_tabs_panel).ordered.and_return(mocked_tooltag)
    @browser.feed_tabs_panel.should == mocked_tooltag
  end

  it "should return newsfeed feed link" do

    mocked_div = double("div")
    mocked_a = double("a")
    mocked_at = double("at")
    mocked_className = double("className")
    mocked_innerText = double("innerText")
    mocked_tooltag = double("ToolTag")

    $tracer.should_receive(:trace).with(:newsfeed_feed_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tabs/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(0).ordered.and_return(mocked_at)
    mocked_at.should_receive(:innerText).with("/the feed/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :newsfeed_feed_link).ordered.and_return(mocked_tooltag)
    @browser.newsfeed_feed_link.should == mocked_tooltag
  end

  it "should return newsfeed blogs link" do

    mocked_div = double("div")
    mocked_a = double("a")
    mocked_at = double("at")
    mocked_className = double("className")
    mocked_innerText = double("innerText")
    mocked_tooltag = double("ToolTag")

    $tracer.should_receive(:trace).with(:newsfeed_blogs_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tabs/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(1).ordered.and_return(mocked_at)
    mocked_at.should_receive(:innerText).with("/blogs/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :newsfeed_blogs_link).ordered.and_return(mocked_tooltag)
    @browser.newsfeed_blogs_link.should == mocked_tooltag
  end

  it "should return newsfeed community link" do

    mocked_div = double("div")
    mocked_a = double("a")
    mocked_at = double("at")
    mocked_className = double("className")
    mocked_innerText = double("innerText")
    mocked_tooltag = double("ToolTag")

    $tracer.should_receive(:trace).with(:newsfeed_community_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tabs/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(2).ordered.and_return(mocked_at)
    mocked_at.should_receive(:innerText).with("/community/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :newsfeed_community_link).ordered.and_return(mocked_tooltag)
    @browser.newsfeed_community_link.should == mocked_tooltag
  end

  it "should return newsfeed guides link" do

    mocked_div = double("div")
    mocked_a = double("a")
    mocked_at = double("at")
    mocked_className = double("className")
    mocked_innerText = double("innerText")
    mocked_tooltag = double("ToolTag")

    $tracer.should_receive(:trace).with(:newsfeed_guides_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tabs/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(3).ordered.and_return(mocked_at)
    mocked_at.should_receive(:innerText).with("/guides/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :newsfeed_guides_link).ordered.and_return(mocked_tooltag)
    @browser.newsfeed_guides_link.should == mocked_tooltag
  end

  it "should return user profile name link" do

    mocked_span = double("span")
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")

    $tracer.should_receive(:trace).with(:user_profile_name_link).ordered

    @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_span.should_receive(:className).with("/user-name/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/view-user-profile/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :user_profile_name_link).ordered.and_return(mocked_tooltag)
    @browser.user_profile_name_link.should == mocked_tooltag
  end

  it "should return control panel link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:control_panel_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/view-control-panel/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :control_panel_link).ordered.and_return(mocked_tooltag)
    @browser.control_panel_link.should == mocked_tooltag
  end

  it "should return navlistbar blogs link" do

    mocked_li = double("li")
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_ul = double("ul")
    mocked_a = double("a")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_className3 = double("className3")

    $tracer.should_receive(:trace).with(:navlistbar_blogs_link).ordered

    @browser.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/take-part/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/subnav/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/dropdown/").ordered.and_return(mocked_className3)
    mocked_className3.should_receive(:a).with("/Blogs/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :navlistbar_blogs_link).ordered.and_return(mocked_tooltag)
    @browser.navlistbar_blogs_link.should == mocked_tooltag
  end

  it "should return navlistbar forums link" do

    mocked_li = double("li")
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_ul = double("ul")
    mocked_a = double("a")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_className3 = double("className3")

    $tracer.should_receive(:trace).with(:navlistbar_forums_link).ordered

    @browser.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/take-part/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/subnav/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/dropdown/").ordered.and_return(mocked_className3)
    mocked_className3.should_receive(:a).with("/Forums/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :navlistbar_forums_link).ordered.and_return(mocked_tooltag)
    @browser.navlistbar_forums_link.should == mocked_tooltag
  end

  it "should return navlistbar guides link" do

    mocked_li = double("li")
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_ul = double("ul")
    mocked_a = double("a")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_className3 = double("className3")

    $tracer.should_receive(:trace).with(:navlistbar_guides_link).ordered

    @browser.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/take-part/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/subnav/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/dropdown/").ordered.and_return(mocked_className3)
    mocked_className3.should_receive(:a).with("/Guides/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :navlistbar_guides_link).ordered.and_return(mocked_tooltag)
    @browser.navlistbar_guides_link.should == mocked_tooltag
  end

  #FIXME
  #navlistbar_hubs_link is wrapped with component - waiting to do the finder till a more advanced stage

  it "should return navlistbar digimag link" do

    mocked_li = double("li")
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_ul = double("ul")
    mocked_a = double("a")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_className3 = double("className3")

    $tracer.should_receive(:trace).with(:navlistbar_digimag_link).ordered

    @browser.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/take part/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/subnav/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/dropdown/").ordered.and_return(mocked_className3)
    mocked_className3.should_receive(:a).with("/Read Current Issue/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :navlistbar_digimag_link).ordered.and_return(mocked_tooltag)
    @browser.navlistbar_digimag_link.should == mocked_tooltag
  end

  it "should return navlistbar groups link" do

    mocked_li = double("li")
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_ul = double("ul")
    mocked_a = double("a")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_className3 = double("className3")

    $tracer.should_receive(:trace).with(:navlistbar_groups_link).ordered

    @browser.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/take-part/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/subnav/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/dropdown/").ordered.and_return(mocked_className3)
    mocked_className3.should_receive(:a).with("/Groups/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :navlistbar_groups_link).ordered.and_return(mocked_tooltag)
    @browser.navlistbar_groups_link.should == mocked_tooltag
  end

  it "should return navlistbar news link" do

    mocked_li = double("li")
    mocked_tooltag = double("ToolTag")
    mocked_innerText = double("innerText")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:navlistbar_news_link).ordered

    @browser.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/news/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:innerText).with("/News/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :navlistbar_news_link).ordered.and_return(mocked_tooltag)
    @browser.navlistbar_news_link.should == mocked_tooltag
  end

  it "should return navlistbar podcasts link" do

    mocked_li = double("li")
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_ul = double("ul")
    mocked_a = double("a")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_className3 = double("className3")

    $tracer.should_receive(:trace).with(:navlistbar_podcasts_link).ordered

    @browser.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/explore/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/subnav/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/dropdown/").ordered.and_return(mocked_className3)
    mocked_className3.should_receive(:a).with("/Podcasts/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :navlistbar_podcasts_link).ordered.and_return(mocked_tooltag)
    @browser.navlistbar_podcasts_link.should == mocked_tooltag
  end

  it "should return navlistbar reviews link" do

    mocked_tooltag = double("ToolTag")
    mocked_li = double("li")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:navlistbar_reviews_link).ordered

    @browser.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/reviews/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with("/Reviews/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :navlistbar_reviews_link).ordered.and_return(mocked_tooltag)
    @browser.navlistbar_reviews_link.should == mocked_tooltag
  end

  it "should return search field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:search_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/headerSearchTextBox/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :search_field).ordered.and_return(mocked_tooltag)
    @browser.search_field.should == mocked_tooltag
  end

  it "should return search button" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:search_button).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:className).with("/search-options/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :search_button).ordered.and_return(mocked_tooltag)
    @browser.search_button.should == mocked_tooltag
  end

  it "should return search results panel" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:search_results_panel).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/ctl00_content_ctl00_content/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :search_results_panel).ordered.and_return(mocked_tooltag)
    @browser.search_results_panel.should == mocked_tooltag
  end

################################################################################################################
##### Unit Tests for finders from gameinformer join page (https://qa.gameinformer.com/user/createuser.aspx) ####
################################################################################################################

  it "should return join join label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerTest = double("innerText")

    $tracer.should_receive(:trace).with(:join_join_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/create_user_header/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Welcome to Game Informer online!/").ordered.and_return(mocked_innerTest)
    ToolTag.should_receive(:new).with(mocked_innerTest, :join_join_label).ordered.and_return(mocked_tooltag)
    @browser.join_join_label.should == mocked_tooltag
  end

  it "should return join signin name field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:join_signin_name_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_Username/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :join_signin_name_field).ordered.and_return(mocked_tooltag)
    @browser.join_signin_name_field.should == mocked_tooltag
  end

  it "should return join choose password field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:join_choose_password_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_PasswordPlaceholder_ctl09_Password/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :join_choose_password_field).ordered.and_return(mocked_tooltag)
    @browser.join_choose_password_field.should == mocked_tooltag
  end

  it "should return join reenter password field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:join_reenter_password_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_PasswordPlaceholder_ctl09_Password2/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :join_reenter_password_field).ordered.and_return(mocked_tooltag)
    @browser.join_reenter_password_field.should == mocked_tooltag
  end

  it "should return join email address field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:join_email_address_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_Email/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :join_email_address_field).ordered.and_return(mocked_tooltag)
    @browser.join_email_address_field.should == mocked_tooltag
  end

  it "should return join reenter email address field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:join_reenter_email_address_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_Email2/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :join_reenter_email_address_field).ordered.and_return(mocked_tooltag)
    @browser.join_reenter_email_address_field.should == mocked_tooltag
  end

  it "should return join now button" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:join_now_button).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_CreateAccount/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :join_now_button).ordered.and_return(mocked_tooltag)
    @browser.join_now_button.should == mocked_tooltag
  end

  it "should return incorrect captcha label" do

    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:incorrect_captcha_label).ordered

    @browser.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_span.should_receive(:id).with("/ctl00_content_ctl00_fragment_17442_ctl01_ctl00_ctl00_ctl05_lblResult/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :incorrect_captcha_label).ordered.and_return(mocked_tooltag)
    @browser.incorrect_captcha_label.should == mocked_tooltag
  end

##########################################################################################################
##### Unit tests for Finders from gameinformer sign in page (https://qa.gameinformer.com/login.aspx) #####
##########################################################################################################

  it "should return sign in name field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:sign_in_name_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_ctl00_fragment_4504_ctl01_ctl00_ctl02_ctl17_username/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :sign_in_name_field).ordered.and_return(mocked_tooltag)
    @browser.sign_in_name_field.should == mocked_tooltag
  end

  it "should return sign in password field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:sign_in_password_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_ctl00_fragment_4504_ctl01_ctl00_ctl02_ctl17_password/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :sign_in_password_field).ordered.and_return(mocked_tooltag)
    @browser.sign_in_password_field.should == mocked_tooltag
  end

  it "should return keep signedin checkbox" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:keep_signedin_checkbox).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_ctl00_fragment_4504_ctl01_ctl00_ctl02_ctl17_autoLogin/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :keep_signedin_checkbox).ordered.and_return(mocked_tooltag)
    @browser.keep_signedin_checkbox.should == mocked_tooltag
  end

  it "should return sign in button" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:sign_in_button).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/ctl00_content_ctl00_fragment_4504_ctl01_ctl00_ctl02_ctl17_loginButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :sign_in_button).ordered.and_return(mocked_tooltag)
    @browser.sign_in_button.should == mocked_tooltag
  end

###################################################################################################################################
##### Unit tests for Finders from gameinformer control panel main page (http://qa.gameinformer.com/controlpanel/default.aspx) #####
###################################################################################################################################

  it "should return membership admin link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_href = double("href")

    $tracer.should_receive(:trace).with(:membership_admin_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Membership/membersearch.aspx/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :membership_admin_link).ordered.and_return(mocked_tooltag)
    @browser.membership_admin_link.should == mocked_tooltag
  end

##################################################################################################################################################
##### Unit tests for Finders from gameinformer membership admin page (https://qa.gameinformer.com/controlpanel/Membership/membersearch.aspx) #####
##################################################################################################################################################

  it "should return membership admin label" do

    mocked_tooltag = double("ToolTag")
    mocked_h1 = double("h1")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:membership_admin_label).ordered

    @browser.should_receive(:h1).with(no_args).ordered.and_return(mocked_h1)
    mocked_h1.should_receive(:className).with("/CommonTitleBarTitle/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Membership Administration/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :membership_admin_label).ordered.and_return(mocked_tooltag)
    @browser.membership_admin_label.should == mocked_tooltag
  end

  it "should return create new account link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:create_new_acct_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/ChildNavPaneTab/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Create New Account/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :create_new_acct_link).ordered.and_return(mocked_tooltag)
    @browser.create_new_acct_link.should == mocked_tooltag
  end

  it "should return admin signin name field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:adm_signin_name_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_username/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :adm_signin_name_field).ordered.and_return(mocked_tooltag)
    @browser.adm_signin_name_field.should == mocked_tooltag
  end

  it "should return admin password field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:adm_password_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_password/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :adm_password_field).ordered.and_return(mocked_tooltag)
    @browser.adm_password_field.should == mocked_tooltag
  end

  it "should return admin reenter password field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:adm_reenter_password_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_password2/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :adm_reenter_password_field).ordered.and_return(mocked_tooltag)
    @browser.adm_reenter_password_field.should == mocked_tooltag
  end

  it "should return admin email address field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:adm_email_address_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_email/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :adm_email_address_field).ordered.and_return(mocked_tooltag)
    @browser.adm_email_address_field.should == mocked_tooltag
  end

  it "should return admin timezone field" do

    mocked_tooltag = double("ToolTag")
    mocked_get_self = double("get_self")
    mocked_select = double("select")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:adm_timezone_field).ordered

    @browser.should_receive(:get_self).with(no_args).ordered.and_return(mocked_get_self)
    mocked_get_self.should_receive(:select).with(no_args).ordered.and_return(mocked_select)
    mocked_select.should_receive(:id).with("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_timezone/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :adm_timezone_field).ordered.and_return(mocked_tooltag)
    @browser.adm_timezone_field.should == mocked_tooltag
  end

  it "should return admin create account button" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:adm_create_acct_button).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_ctl00_ctl00_OuterTaskRegion_TaskRegion_TaskRegion_TaskRegion_createButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :adm_create_acct_button).ordered.and_return(mocked_tooltag)
    @browser.adm_create_acct_button.should == mocked_tooltag
  end

  it "should return admin create user success label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:adm_user_create_success_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/CommonMessageSuccess/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :adm_user_create_success_label).ordered.and_return(mocked_tooltag)
    @browser.adm_user_create_success_label.should == mocked_tooltag
  end

###################################################################################################
##### Unit tests for Finders from gameinformer footer on any of the pages where footer exists #####
###################################################################################################

#FIXME footer_cover_stories_label is a component, waiting till more advanced to write unit test

  it "should return gamestop network logo link" do

    mocked_tooltag = double("ToolTag")
    mocked_nav = double("nav")
    mocked_className = double("className")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_gs_network_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("network").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :footer_gs_network_link).ordered.and_return(mocked_tooltag)
    @browser.footer_gs_network_link.should == mocked_tooltag
  end

  it "should return gamestop com logo link" do

    mocked_tooltag = double("ToolTag")
    mocked_nav = double("nav")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_gs_com_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("network").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/gamestop/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :footer_gs_com_link).ordered.and_return(mocked_tooltag)
    @browser.footer_gs_com_link.should == mocked_tooltag
  end

  it "should return gamestop pc downloads link" do

    mocked_tooltag = double("ToolTag")
    mocked_nav = double("nav")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_pc_downloads_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("network").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/impulse/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :footer_pc_downloads_link).ordered.and_return(mocked_tooltag)
    @browser.footer_pc_downloads_link.should == mocked_tooltag
  end

  it "should return footer gi link" do

    mocked_tooltag = double("ToolTag")
    mocked_nav = double("nav")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_gi_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("network").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/gi/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :footer_gi_link).ordered.and_return(mocked_tooltag)
    @browser.footer_gi_link.should == mocked_tooltag
  end

  it "should return footer kongregate link" do

    mocked_tooltag = double("ToolTag")
    mocked_nav = double("nav")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_kongregate_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("network").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/kongregate/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :footer_kongregate_link).ordered.and_return(mocked_tooltag)
    @browser.footer_kongregate_link.should == mocked_tooltag
  end

  it "should return footer contact us link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_at = double("at")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_contact_us_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("business").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(0).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_contact_us_link).ordered.and_return(mocked_tooltag)
    @browser.footer_contact_us_link.should == mocked_tooltag
  end

  it "should return footer staff bios link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_at = double("at")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_staff_bios_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("business").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(1).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_staff_bios_link).ordered.and_return(mocked_tooltag)
    @browser.footer_staff_bios_link.should == mocked_tooltag
  end

  it "should return footer terms conditions link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_at = double("at")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_terms_conditions_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("business").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(2).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_terms_conditions_link).ordered.and_return(mocked_tooltag)
    @browser.footer_terms_conditions_link.should == mocked_tooltag
  end

  it "should return footer privacy policy link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_at = double("at")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_privacy_policy_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("business").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(3).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_privacy_policy_link).ordered.and_return(mocked_tooltag)
    @browser.footer_privacy_policy_link.should == mocked_tooltag
  end

  it "should return footer customer service link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_at = double("at")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_customer_service_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("business").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(4).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_customer_service_link).ordered.and_return(mocked_tooltag)
    @browser.footer_customer_service_link.should == mocked_tooltag
  end

  it "should return footer corporate information link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_at = double("at")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_corporate_information_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("business").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(5).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_corporate_information_link).ordered.and_return(mocked_tooltag)
    @browser.footer_corporate_information_link.should == mocked_tooltag
  end

  it "should return footer advertising link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_at = double("at")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_advertising_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("business").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(6).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_advertising_link).ordered.and_return(mocked_tooltag)
    @browser.footer_advertising_link.should == mocked_tooltag
  end

  it "should return footer labratory link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_at = double("at")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_the_laboratory_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("business").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(7).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_the_laboratory_link).ordered.and_return(mocked_tooltag)
    @browser.footer_the_laboratory_link.should == mocked_tooltag
  end

  it "should return footer twitter link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_twitter_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("social").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("twitter").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :footer_twitter_link).ordered.and_return(mocked_tooltag)
    @browser.footer_twitter_link.should == mocked_tooltag
  end

  it "should return footer facebook link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_facebook_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("social").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("facebook").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :footer_facebook_link).ordered.and_return(mocked_tooltag)
    @browser.footer_facebook_link.should == mocked_tooltag
  end

  it "should return footer rss link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_rss_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("social").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("rss").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :footer_rss_link).ordered.and_return(mocked_tooltag)
    @browser.footer_rss_link.should == mocked_tooltag
  end

  it "should return footer youtube link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_youtube_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("social").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("youtube").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :footer_youtube_link).ordered.and_return(mocked_tooltag)
    @browser.footer_youtube_link.should == mocked_tooltag
  end

  it "should return footer webby awards link" do

    mocked_tooltag = double("ToolTag")
    mocked_id = double("id")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:footer_webby_awards_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/webby_awards/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :footer_webby_awards_link).ordered.and_return(mocked_tooltag)
    @browser.footer_webby_awards_link.should == mocked_tooltag
  end

  it "should return footer gi logo link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_nav = double("nav")

    $tracer.should_receive(:trace).with(:footer_gi_logo_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("logo").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :footer_gi_logo_link).ordered.and_return(mocked_tooltag)
    @browser.footer_gi_logo_link.should == mocked_tooltag
  end

  it "should return footer about link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_nav = double("nav")
    mocked_a = double("a")
    mocked_at = double("at")

    $tracer.should_receive(:trace).with(:footer_about_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("authentication").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(0).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_about_link).ordered.and_return(mocked_tooltag)
    @browser.footer_about_link.should == mocked_tooltag
  end

  it "should return footer join link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_nav = double("nav")
    mocked_a = double("a")
    mocked_at = double("at")

    $tracer.should_receive(:trace).with(:footer_join_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("authentication").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(1).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_join_link).ordered.and_return(mocked_tooltag)
    @browser.footer_join_link.should == mocked_tooltag
  end

  it "should return footer sign in link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_nav = double("nav")
    mocked_a = double("a")
    mocked_at = double("at")

    $tracer.should_receive(:trace).with(:footer_sign_in_link).ordered

    @browser.should_receive(:nav).with(no_args).ordered.and_return(mocked_nav)
    mocked_nav.should_receive(:className).with("authentication").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:at).with(2).ordered.and_return(mocked_at)
    ToolTag.should_receive(:new).with(mocked_at, :footer_sign_in_link).ordered.and_return(mocked_tooltag)
    @browser.footer_sign_in_link.should == mocked_tooltag
  end

###############################################################
##### Unit tests for Finders from gameinformer blogs page #####
###############################################################

  it "should return user blogs label" do

    mocked_tooltag = double("ToolTag")
    mocked_span = double("span")

    $tracer.should_receive(:trace).with(:user_blogs_label).ordered

    @browser.should_receive(:span).with("user blogs").ordered.and_return(mocked_span)
    ToolTag.should_receive(:new).with(mocked_span, :user_blogs_label).ordered.and_return(mocked_tooltag)
    @browser.user_blogs_label.should == mocked_tooltag
  end

  it "should return user blogs list" do

    mocked_tooltag = double("ToolTag")
    mocked_ul = double("ul")
    mocked_className1 = double("className1")
    mocked_li = double("li")
    mocked_className2 = double("className2")

    $tracer.should_receive(:trace).with(:user_blogs_list).ordered

    @browser.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/content-list standard/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/content-item/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :user_blogs_list).ordered.and_return(mocked_tooltag)
    @browser.user_blogs_list.should == mocked_tooltag
  end

  it "should return user blogs post label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:user_blogs_post_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("full-post").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :user_blogs_post_label).ordered.and_return(mocked_tooltag)
    @browser.user_blogs_post_label.should == mocked_tooltag
  end

################################################################
##### Unit tests for Finders from gameinformer forums page #####
################################################################

  it "should return user forums label" do

    mocked_tooltag = double("ToolTag")
    mocked_h2 = double("h2")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:user_forums_label).ordered

    @browser.should_receive(:h2).with(no_args).ordered.and_return(mocked_h2)
    mocked_h2.should_receive(:className).with("group-name").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Forums/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :user_forums_label).ordered.and_return(mocked_tooltag)
    @browser.user_forums_label.should == mocked_tooltag
  end

  it "should return forums general gaming link" do

    mocked_tooltag = double("ToolTag")
    mocked_div1 = double("div1")
    mocked_id = double("id")
    mocked_div2 = double("div2")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_ul = double("ul")
    mocked_li = double("li")
    mocked_at = double("at")
    mocked_span = double("span")
    mocked_className3 = double("className3")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:forums_general_gaming_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div1)
    mocked_div1.should_receive(:id).with("/fragment-4335/").ordered.and_return(mocked_id)
    mocked_id.should_receive(:div).with(no_args).ordered.and_return(mocked_div2)
    mocked_div2.should_receive(:className).with("/content-fragment-content/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/content-item/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:at).with(1).ordered.and_return(mocked_at)
    mocked_at.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_span.should_receive(:className).with("/group-name/").ordered.and_return(mocked_className3)
    mocked_className3.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :forums_general_gaming_link).ordered.and_return(mocked_tooltag)
    @browser.forums_general_gaming_link.should == mocked_tooltag
  end

  it "should return forums general gaming label" do

    mocked_tooltag = double("ToolTag")
    mocked_h2 = double("h2")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:forums_general_gaming_label).ordered

    @browser.should_receive(:h2).with(no_args).ordered.and_return(mocked_h2)
    mocked_h2.should_receive(:className).with("group-name").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/General Gaming/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :forums_general_gaming_label).ordered.and_return(mocked_tooltag)
    @browser.forums_general_gaming_label.should == mocked_tooltag
  end

  it "should return forums gamer helpline link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_div = double("div")
    mocked_id = double("id")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:forums_gamer_helpline_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/ctl00_content_ctl00_fragment_4954_ctl01_ctl00_appBrowser_DelayedSections/").ordered.and_return(mocked_id)
    mocked_id.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:innerText).with("/Gamer Helpline/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :forums_gamer_helpline_link).ordered.and_return(mocked_tooltag)
    @browser.forums_gamer_helpline_link.should == mocked_tooltag
  end

  it "should return forums post list" do

    mocked_tooltag = double("ToolTag")
    mocked_table = double("table")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_tr = double("tr")

    $tracer.should_receive(:trace).with(:forums_posts_list).ordered

    @browser.should_receive(:table).with(no_args).ordered.and_return(mocked_table)
    mocked_table.should_receive(:className).with("/table-list/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:tr).with(no_args).ordered.and_return(mocked_tr)
    mocked_tr.should_receive(:className).with("/table-item/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :forums_posts_list).ordered.and_return(mocked_tooltag)
    @browser.forums_posts_list.should == mocked_tooltag
  end

  it "should return forums post link" do

    mocked_tooltag = double("ToolTag")
    mocked_table = double("table")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_tr = double("tr")
    mocked_a = double("a")
    mocked_className3 = double("className3")

    $tracer.should_receive(:trace).with(:forums_post_link).ordered

    @browser.should_receive(:table).with(no_args).ordered.and_return(mocked_table)
    mocked_table.should_receive(:className).with("/table-list/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:tr).with(no_args).ordered.and_return(mocked_tr)
    mocked_tr.should_receive(:className).with("/table-item/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/view-post forum/").ordered.and_return(mocked_className3)
    ToolTag.should_receive(:new).with(mocked_className3, :forums_post_link).ordered.and_return(mocked_tooltag)
    @browser.forums_post_link.should == mocked_tooltag
  end

  it "should return forums post title label" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_h4 = double("h4")

    $tracer.should_receive(:trace).with(:forums_post_title_label).ordered

    @browser.should_receive(:h4).with(no_args).ordered.and_return(mocked_h4)
    mocked_h4.should_receive(:className).with("/post-name/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :forums_post_title_label).ordered.and_return(mocked_tooltag)
    @browser.forums_post_title_label.should == mocked_tooltag
  end

################################################################
##### Unit tests for Finders from gameinformer guides page #####
################################################################

  it "should return user guides label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:user_guides_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("tabs").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/guides/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :user_guides_label).ordered.and_return(mocked_tooltag)
    @browser.user_guides_label.should == mocked_tooltag
  end

  it "should return guides allpages link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:guides_allpages_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("sort-options").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with("/All Pages/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :guides_allpages_link).ordered.and_return(mocked_tooltag)
    @browser.guides_allpages_link.should == mocked_tooltag
  end

  it "should return guides newpages link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:guides_newpages_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("sort-options").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with("/New Pages/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :guides_newpages_link).ordered.and_return(mocked_tooltag)
    @browser.guides_newpages_link.should == mocked_tooltag
  end

  it "should return guides updatedpages link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:guides_updatedpages_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("sort-options").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with("/Updated Pages/").ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :guides_updatedpages_link).ordered.and_return(mocked_tooltag)
    @browser.guides_updatedpages_link.should == mocked_tooltag
  end

  it "should return guides posts list" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_ul = double("ul")
    mocked_li = double("li")

    $tracer.should_receive(:trace).with(:guides_posts_list).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/fragment-3805/").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("content-list").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/content-item/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :guides_posts_list).ordered.and_return(mocked_tooltag)
    @browser.guides_posts_list.should == mocked_tooltag
  end

  it "should return guides posts link" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_ul = double("ul")
    mocked_li = double("li")
    mocked_h4 = double("h4")
    mocked_a = double("a")

    $tracer.should_receive(:trace).with(:guides_posts_link).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/fragment-3805/").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("content-list").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:li).with(no_args).ordered.and_return(mocked_li)
    mocked_li.should_receive(:className).with("/content-item/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:h4).with(no_args).ordered.and_return(mocked_h4)
    mocked_h4.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    ToolTag.should_receive(:new).with(mocked_a, :guides_posts_link).ordered.and_return(mocked_tooltag)
    @browser.guides_posts_link.should == mocked_tooltag
  end

  it "should return guides posts title label" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_h1 = double("h1")

    $tracer.should_receive(:trace).with(:guides_posts_title_label).ordered

    @browser.should_receive(:h1).with(no_args).ordered.and_return(mocked_h1)
    mocked_h1.should_receive(:className).with("/post-name/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :guides_posts_title_label).ordered.and_return(mocked_tooltag)
    @browser.guides_posts_title_label.should == mocked_tooltag
  end

##########################################################################
#####Unit tests for Finders from gameinformer digital mag flow pages #####
##########################################################################

  it "should return digital mag edition label" do

    mocked_tooltag = double("ToolTag")
    mocked_h1 = double("h1")

    $tracer.should_receive(:trace).with(:digital_mag_edition_label).ordered

    @browser.should_receive(:h1).with("/Access the Latest Digital Edition/").ordered.and_return(mocked_h1)
    ToolTag.should_receive(:new).with(mocked_h1, :digital_mag_edition_label).ordered.and_return(mocked_tooltag)
    @browser.digital_mag_edition_label.should == mocked_tooltag
  end

  it "should return pc mag mag button" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_classname = double("className")

    $tracer.should_receive(:trace).with(:pc_mac_mag_button).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/digimag/").ordered.and_return(mocked_classname)
    ToolTag.should_receive(:new).with(mocked_classname, :pc_mac_mag_button).ordered.and_return(mocked_tooltag)
    @browser.pc_mac_mag_button.should == mocked_tooltag
  end

  it "should return digimag apple store button" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_classname = double("className")

    $tracer.should_receive(:trace).with(:digimag_apple_store_button).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/appstore/").ordered.and_return(mocked_classname)
    ToolTag.should_receive(:new).with(mocked_classname, :digimag_apple_store_button).ordered.and_return(mocked_tooltag)
    @browser.digimag_apple_store_button.should == mocked_tooltag
  end

  it "should return digimag google play button" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_classname = double("className")

    $tracer.should_receive(:trace).with(:digimag_google_play_button).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/googleplay/").ordered.and_return(mocked_classname)
    ToolTag.should_receive(:new).with(mocked_classname, :digimag_google_play_button).ordered.and_return(mocked_tooltag)
    @browser.digimag_google_play_button.should == mocked_tooltag
  end

  it "should return digimag google magazine button" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_classname = double("className")

    $tracer.should_receive(:trace).with(:digimag_google_magazine_button).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/googleplaymagazine/").ordered.and_return(mocked_classname)
    ToolTag.should_receive(:new).with(mocked_classname, :digimag_google_magazine_button).ordered.and_return(mocked_tooltag)
    @browser.digimag_google_magazine_button.should == mocked_tooltag
  end

  it "should return gi digital mag label" do

    mocked_tooltag = double("ToolTag")
    mocked_h2 = double("h2")

    $tracer.should_receive(:trace).with(:gi_digital_mag_label).ordered

    @browser.should_receive(:h2).with("/Game Informer, Digital/").ordered.and_return(mocked_h2)
    ToolTag.should_receive(:new).with(mocked_h2, :gi_digital_mag_label).ordered.and_return(mocked_tooltag)
    @browser.gi_digital_mag_label.should == mocked_tooltag
  end

  it "should return digimag signin name field" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:digimag_signin_name_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_digimagSignin_fragment_14992_ctl01_ctl00_ctl02_ctl17_username/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :digimag_signin_name_field).ordered.and_return(mocked_tooltag)
    @browser.digimag_signin_name_field.should == mocked_tooltag
  end

  it "should return digimag signin password field " do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:digimag_signin_password_field).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_digimagSignin_fragment_14992_ctl01_ctl00_ctl02_ctl17_password/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :digimag_signin_password_field).ordered.and_return(mocked_tooltag)
    @browser.digimag_signin_password_field.should == mocked_tooltag
  end

  it "should return digimag keep signin checkbox" do

    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:digimag_keep_signin_checkbox).ordered

    @browser.should_receive(:input).with(no_args).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/ctl00_content_digimagSignin_fragment_14992_ctl01_ctl00_ctl02_ctl17_autoLogin/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :digimag_keep_signin_checkbox).ordered.and_return(mocked_tooltag)
    @browser.digimag_keep_signin_checkbox.should == mocked_tooltag
  end

  it "should return digimag login button" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:digimag_login_button).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/ctl00_content_digimagSignin_fragment_14992_ctl01_ctl00_ctl02_ctl17_loginButton/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :digimag_login_button).ordered.and_return(mocked_tooltag)
    @browser.digimag_login_button.should == mocked_tooltag
  end

#####################################################################
#####Unit tests for Finders from gameinformer membergroups page #####
#####################################################################

  it "should return membergroups koolkid label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:membergroups_koolkid_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/parent-group-title/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Kool Kid Crusade/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :membergroups_koolkid_label).ordered.and_return(mocked_tooltag)
    @browser.membergroups_koolkid_label.should == mocked_tooltag
  end

  it "should return membergroups platform label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:membergroups_platform_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/parent-group-title/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Platform/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :membergroups_platform_label).ordered.and_return(mocked_tooltag)
    @browser.membergroups_platform_label.should == mocked_tooltag
  end

  it "should return membergroups style label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:membergroups_style_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/parent-group-title/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Style/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :membergroups_style_label).ordered.and_return(mocked_tooltag)
    @browser.membergroups_style_label.should == mocked_tooltag
  end

  it "should return membergroups playerslounge label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:membergroups_playerslounge_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/parent-group-title/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Player's Lounge/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :membergroups_playerslounge_label).ordered.and_return(mocked_tooltag)
    @browser.membergroups_playerslounge_label.should == mocked_tooltag
  end

  it "should return membergroups culture label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:membergroups_culture_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/parent-group-title/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Culture/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :membergroups_culture_label).ordered.and_return(mocked_tooltag)
    @browser.membergroups_culture_label.should == mocked_tooltag
  end

  it "should return membergroups gameinformer label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:membergroups_gameinformer_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/parent-group-title/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Game Informer/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :membergroups_gameinformer_label).ordered.and_return(mocked_tooltag)
    @browser.membergroups_gameinformer_label.should == mocked_tooltag
  end

  it "should return membergroups gi oldtimers link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_href = double("href")

    $tracer.should_receive(:trace).with(:membergroups_giooldtimers_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("//membergroups/game_informer/gio_old_timers/default.aspx/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :membergroups_giooldtimers_link).ordered.and_return(mocked_tooltag)
    @browser.membergroups_giooldtimers_link.should == mocked_tooltag
  end

  it "should return membergroups sitefeedback link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_href = double("href")

    $tracer.should_receive(:trace).with(:membergroups_sitefeedback_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("//membergroups/game_informer/site_feedback/default.aspx/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :membergroups_sitefeedback_link).ordered.and_return(mocked_tooltag)
    @browser.membergroups_sitefeedback_link.should == mocked_tooltag
  end

  it "should return membergroups writersguild link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_href = double("href")

    $tracer.should_receive(:trace).with(:membergroups_writersguild_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("//membergroups/game_informer/writers_guild/default.aspx/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :membergroups_writersguild_link).ordered.and_return(mocked_tooltag)
    @browser.membergroups_writersguild_link.should == mocked_tooltag
  end

  it "should return membergroups sitefeedback label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_h2 = double("h2")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:sitefeedback_sitefeedback_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/group-banner/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:h2).with(no_args).ordered.and_return(mocked_h2)
    mocked_h2.should_receive(:className).with("/group-name/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:innerText).with("/Site Feedback/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :sitefeedback_sitefeedback_label).ordered.and_return(mocked_tooltag)
    @browser.sitefeedback_sitefeedback_label.should == mocked_tooltag
  end

  it "should return sitefeedback hometab link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:sitefeedback_hometab_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/view-group/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("Home").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :sitefeedback_hometab_link).ordered.and_return(mocked_tooltag)
    @browser.sitefeedback_hometab_link.should == mocked_tooltag
  end

  it "should return sitefeedback blogtab link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:sitefeedback_blogtab_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/weblog/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("Blog").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :sitefeedback_blogtab_link).ordered.and_return(mocked_tooltag)
    @browser.sitefeedback_blogtab_link.should == mocked_tooltag
  end

  it "should return sitefeedback forumtab link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:sitefeedback_forumtab_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/forum/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("Forum").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :sitefeedback_forumtab_link).ordered.and_return(mocked_tooltag)
    @browser.sitefeedback_forumtab_link.should == mocked_tooltag
  end

  it "should return sitefeedback filestab link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:sitefeedback_filestab_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/media-gallery/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("Files").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :sitefeedback_filestab_link).ordered.and_return(mocked_tooltag)
    @browser.sitefeedback_filestab_link.should == mocked_tooltag
  end

  it "should return sitefeedback wikitab link" do

    mocked_tooltag = double("ToolTag")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:sitefeedback_wikitab_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:className).with("/wiki/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("Wiki").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :sitefeedback_wikitab_link).ordered.and_return(mocked_tooltag)
    @browser.sitefeedback_wikitab_link.should == mocked_tooltag
  end

  it "should return sitefeedback hometabposts panel" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:sitefeedback_hometabposts_panel).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/ctl00_content_ctl00_fragment_4819_MessageListWrapper/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :sitefeedback_hometabposts_panel).ordered.and_return(mocked_tooltag)
    @browser.sitefeedback_hometabposts_panel.should == mocked_tooltag
  end

##############################################################
##### Unit tests for Finders from gameinformer news page #####
##############################################################

  it "should return news stories label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")
    mocked_ul = double("ul")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:news_stories_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:id).with("/ctl00_content_newsPage_fragment_15369_ctl01_ctl00_delayer/").ordered.and_return(mocked_id)
    mocked_id.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/content-list/").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :news_stories_label).ordered.and_return(mocked_tooltag)
    @browser.news_stories_label.should == mocked_tooltag
  end

  it "should return news recent link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:news_recent_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/ctl00_content_newsPage_fragment_15369_ctl01_ctl00_delayer_ctl01_btnSortByMostRecent/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :news_recent_link).ordered.and_return(mocked_tooltag)
    @browser.news_recent_link.should == mocked_tooltag
  end

  it "should return news popular link" do

    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:news_popular_link).ordered

    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:id).with("/ctl00_content_newsPage_fragment_15369_ctl01_ctl00_delayer_ctl01_btnSortByMostViewed/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :news_popular_link).ordered.and_return(mocked_tooltag)
    @browser.news_popular_link.should == mocked_tooltag
  end

  it "should return news storypost label" do

    mocked_tooltag = double("ToolTag")
    mocked_div1 = double("div1")
    mocked_div2 = double("div2")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:news_storypost_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div1)
    mocked_div1.should_receive(:className).with("/gi-post/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div2)
    mocked_div2.should_receive(:className).with("/full-post/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:innerText).with("/post-name/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :news_storypost_label).ordered.and_return(mocked_tooltag)
    @browser.news_storypost_label.should == mocked_tooltag
  end

##################################################################
##### Unit tests for Finders from gameinformer podcasts page #####
##################################################################

  it "should return podcasts podcasts label" do

    mocked_tooltag = double("ToolTag")
    mocked_div1 = double("div1")
    mocked_div2 = double("div2")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_span = double("span")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:podcasts_podcasts_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div1)
    mocked_div1.should_receive(:className).with("/tabs/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div2)
    mocked_div2.should_receive(:className).with("/content-fragment-header/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:span).with(no_args).ordered.and_return(mocked_span)
    mocked_span.should_receive(:innerText).with("/Podcasts/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :podcasts_podcasts_label).ordered.and_return(mocked_tooltag)
    @browser.podcasts_podcasts_label.should == mocked_tooltag
  end

  it "should return podcasts podcasts panel" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_ul = double("ul")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")

    $tracer.should_receive(:trace).with(:podcasts_podcasts_panel).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/gi-post-list/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/content-list standard/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :podcasts_podcasts_panel).ordered.and_return(mocked_tooltag)
    @browser.podcasts_podcasts_panel.should == mocked_tooltag
  end

  it "should return podcasts podcastsstory label" do

    mocked_tooltag = double("ToolTag")
    mocked_div1 = double("div1")
    mocked_div2 = double("div2")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:podcasts_podcastsstory_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div1)
    mocked_div1.should_receive(:className).with("/gi-post preview/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:div).with(no_args).ordered.and_return(mocked_div2)
    mocked_div2.should_receive(:className).with("/full-post/").ordered.and_return(mocked_className2)
    mocked_className2.should_receive(:innerText).with("/post-name/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :podcasts_podcastsstory_label).ordered.and_return(mocked_tooltag)
    @browser.podcasts_podcastsstory_label.should == mocked_tooltag
  end

#################################################################
##### Unit tests for Finders from gameinformer reviews page #####
#################################################################

  it "should return featured reviews label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:reviews_featured_reviews_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/FeedTag/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:innerText).with("/Featured Reviews/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :reviews_featured_reviews_label).ordered.and_return(mocked_tooltag)
    @browser.reviews_featured_reviews_label.should == mocked_tooltag
  end

  it "should return editor reviews button" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:reviews_editorreviews_button).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tabs/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:innerText).with("/Editor Reviews/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :reviews_editorreviews_button).ordered.and_return(mocked_tooltag)
    @browser.reviews_editorreviews_button.should == mocked_tooltag
  end

  it "should return user reviews button" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className = double("className")
    mocked_a = double("a")
    mocked_innerText = double("innerText")

    $tracer.should_receive(:trace).with(:reviews_userreviews_button).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/tabs/").ordered.and_return(mocked_className)
    mocked_className.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_a.should_receive(:innerText).with("/user reviews/").ordered.and_return(mocked_innerText)
    ToolTag.should_receive(:new).with(mocked_innerText, :reviews_userreviews_button).ordered.and_return(mocked_tooltag)
    @browser.reviews_userreviews_button.should == mocked_tooltag
  end

  it "should return reviews reviews panel" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_ul = double("ul")

    $tracer.should_receive(:trace).with(:reviews_reviews_panel).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/gi-post-list/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:ul).with(no_args).ordered.and_return(mocked_ul)
    mocked_ul.should_receive(:className).with("/content-list/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :reviews_reviews_panel).ordered.and_return(mocked_tooltag)
    @browser.reviews_reviews_panel.should == mocked_tooltag
  end

  it "should return reviews reviewsstory label" do

    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_className1 = double("className1")
    mocked_className2 = double("className2")
    mocked_h1 = double("h1")

    $tracer.should_receive(:trace).with(:reviews_reviewsstory_label).ordered

    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_div.should_receive(:className).with("/gi-post/").ordered.and_return(mocked_className1)
    mocked_className1.should_receive(:h1).with(no_args).ordered.and_return(mocked_h1)
    mocked_h1.should_receive(:className).with("/game-name/").ordered.and_return(mocked_className2)
    ToolTag.should_receive(:new).with(mocked_className2, :reviews_reviewsstory_label).ordered.and_return(mocked_tooltag)
    @browser.reviews_reviewsstory_label.should == mocked_tooltag
  end

end
