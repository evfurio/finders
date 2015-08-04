ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameInformer/src/game_informer_requires"

describe GameInformerCrmFinder, "finders" do

  before(:all) do
    class GameInformerCrmFinderTest
      include GameInformerCrmFinder
    end

    @browser = GameInformerCrmFinderTest.allocate

  end

  after(:all) do
    Object.send(:remove_const, :GameInformerCrmFinderTest) if Object.const_defined?(:GameInformerCrmFinderTest)
  end

  #####################################################################
  ##### Unit tests from CRM login page(<crm_env>.gameinformer.com)#####
  #####################################################################

  it "should return log on link" do
    mocked_tooltag = mock("ToolTag")
    mocked_a = mock("a")
    mocked_href = mock("href")

    $tracer.should_receive(:trace).with(:log_on_link).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
    mocked_a.should_receive(:href).with("/Account/Logon/").ordered.and_return(mocked_href)
    ToolTag.should_receive(:new).with(mocked_href, :log_on_link).ordered.and_return(mocked_tooltag)
    @browser.log_on_link.should == mocked_tooltag
  end

  it "should return user name field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:user_name_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/UserName/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :user_name_field).ordered.and_return(mocked_tooltag)
    @browser.user_name_field.should == mocked_tooltag
  end

  it "should return password name field" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:password_field).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/Password/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :password_field).ordered.and_return(mocked_tooltag)
    @browser.password_field.should == mocked_tooltag
  end

  it "should return remember me checkbox" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_id = mock("id")

    $tracer.should_receive(:trace).with(:remember_me).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:id).with("/RememberMe/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :remember_me).ordered.and_return(mocked_tooltag)
    @browser.remember_me.should == mocked_tooltag
  end

  it "should return log on button" do
    mocked_tooltag = mock("ToolTag")
    mocked_input = mock("input")
    mocked_value = mock("value")

    $tracer.should_receive(:trace).with(:log_on_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
    mocked_input.should_receive(:value).with("Log On").ordered.and_return(mocked_value)
    ToolTag.should_receive(:new).with(mocked_value, :log_on_button).ordered.and_return(mocked_tooltag)
    @browser.log_on_button.should == mocked_tooltag
  end

end
