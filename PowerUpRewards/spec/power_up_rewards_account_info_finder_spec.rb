ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"

#qaautomation_dir = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
#require "#{qaautomation_dir}/dsl/Browser/src/browser_requires.rb"

qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/PowerUpRewards/src/power_up_rewards_requires"

describe PowerUpRewardsAccountInfoFinder, "finders" do

  before(:all) do
    class PowerUpRewardsAccountInfoFinderTest
      include PowerUpRewardsAccountInfoFinder
    end

    @browser = PowerUpRewardsAccountInfoFinderTest.allocate
  end

  after(:all) do
    Object.send(:remove_const, :PowerUpRewardsAccountInfoFinderTest) if Object.const_defined?(:PowerUpRewardsAccountInfoFinderTest)
  end

  it "should have a pur logo link" do
    $tracer.should_receive(:trace).with(:pur_logo_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("/PowerUpRewards/Home/Index").ordered.and_return(mocked_ats)
    mocked_href = double("href")
    mocked_a.should_receive(:href).with(mocked_ats).ordered.and_return(mocked_href)
    mocked_tooltag = double("tooltag")
    ToolTag.should_receive(:new).with(mocked_href, :pur_logo_link).ordered.and_return(mocked_tooltag)

    @browser.pur_logo_link.should == mocked_tooltag
  end

  it "should have an activate link" do
    $tracer.should_receive(:trace).with(:activate_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_with = double("with")
    mocked_a.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
    mocked_className = double("className")
    mocked_with.should_receive(:className).with("activate").ordered.and_return(mocked_className)
    mocked_href = double("href")
    mocked_className.should_receive(:href).with("/Activation/").ordered.and_return(mocked_href)
    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_href, :activate_link).ordered.and_return(mocked_ToolTag)

    @browser.activate_link.should == mocked_ToolTag
  end

  it "should have a log in link" do
    $tracer.should_receive(:trace).with(:log_in_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_with = double("with")
    mocked_a.should_receive(:with).with(no_args).ordered.and_return(mocked_with)
    mocked_className = double("className")
    mocked_with.should_receive(:className).with("action-login").ordered.and_return(mocked_className)
    mocked_href = double("href")
    mocked_className.should_receive(:href).with("/LogOn/").ordered.and_return(mocked_href)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_href, :log_in_link).ordered.and_return(mocked_ToolTag)

    @browser.log_in_link.should == mocked_ToolTag
  end

  it "should have a hi name label" do
    $tracer.should_receive(:trace).with(:hi_name_label).ordered

    mocked_div = double("div")
    @browser.should_receive(:div).with(no_args).ordered.and_return(mocked_div)
    mocked_id = double("id")
    mocked_div.should_receive(:id).with("login").ordered.and_return(mocked_id)
    mocked_find = double("find")
    mocked_id.should_receive(:find).with(no_args).ordered.and_return(mocked_find)
    mocked_h3 = double("h3")
    mocked_find.should_receive(:h3).with(no_args).ordered.and_return(mocked_h3)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_h3, :hi_name_label).ordered.and_return(mocked_ToolTag)

    @browser.hi_name_label.should == mocked_ToolTag
  end

  it "should have a sign out link" do
    $tracer.should_receive(:trace).with(:sign_out_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_href = double("href")
    mocked_a.should_receive(:href).with("/LogOff/").ordered.and_return(mocked_href)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_href, :sign_out_link).ordered.and_return(mocked_ToolTag)

    @browser.sign_out_link.should == mocked_ToolTag
  end

  it "should have a dashboard menu link" do
    $tracer.should_receive(:trace).with(:dashboard_menu_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("dashboard").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :dashboard_menu_link).ordered.and_return(mocked_ToolTag)

    @browser.dashboard_menu_link.should == mocked_ToolTag
  end

  it "should have a rewards catalog menu link" do
    $tracer.should_receive(:trace).with(:rewards_catalog_menu_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("rewards").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :rewards_catalog_menu_link).ordered.and_return(mocked_ToolTag)

    @browser.rewards_catalog_menu_link.should == mocked_ToolTag
  end

  it "should have a game library menu link" do
    $tracer.should_receive(:trace).with(:game_library_menu_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("library").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :game_library_menu_link).ordered.and_return(mocked_ToolTag)

    @browser.game_library_menu_link.should == mocked_ToolTag
  end

  it "should have a my account menu link" do
    $tracer.should_receive(:trace).with(:my_account_menu_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("account").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :my_account_menu_link).ordered.and_return(mocked_ToolTag)

    @browser.my_account_menu_link.should == mocked_ToolTag
  end

  it "should have a xtra points menu link" do
    $tracer.should_receive(:trace).with(:xtra_points_menu_link).ordered

    mocked_a = double("a")
    @browser.should_receive(:a).with(no_args).ordered.and_return(mocked_a)
    mocked_ats = double("ats")
    @browser.should_receive(:create_ats_regex_string).with("AuthorizedFaq").ordered.and_return(mocked_ats)
    mocked_className = double("className")
    mocked_a.should_receive(:className).with(mocked_ats).ordered.and_return(mocked_className)

    mocked_ToolTag = double("ToolTag")
    ToolTag.should_receive(:new).with(mocked_className, :xtra_points_menu_link).ordered.and_return(mocked_ToolTag)

    @browser.xtra_points_menu_link.should == mocked_ToolTag
  end
end
