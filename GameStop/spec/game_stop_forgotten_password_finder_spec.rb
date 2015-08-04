#ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
#qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
#require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"
#
#
#describe GameStopForgottenPasswordFinder, "finders" do
#
#    #before(:all) do
#    #    class GameStopForgottenPasswordFinderTest
#    #        include GameStopForgottenPasswordFinder
#    #    end
#    #
#    #    @browser = GameStopForgottenPasswordFinderTest.allocate
#    #end
#    #
#    #after(:all) do
#    #    Object.send(:remove_const, :GameStopForgottenPasswordFinderTest) if Object.const_defined?(:GameStopForgottenPasswordFinderTest)
#    #end
#
#
#    #it "should have a forgot password email field" do
#    #    mocked_tooltag = double("ToolTag")
#    #    mocked_input = double("input")
#    #    mocked_id = double("id")
#    #
#    #    $tracer.should_receive(:trace).with(:forgot_password_email_field).ordered
#    #
#    #    @browser.should_receive(:input).ordered.and_return(mocked_input)
#    #    mocked_input.should_receive(:id).with("/forgotPasswordEmailText/").ordered.and_return(mocked_id)
#    #    ToolTag.should_receive(:new).with(mocked_id, :forgot_password_email_field).ordered.and_return(mocked_tooltag)
#    #
#    #    @browser.forgot_password_email_field.should == mocked_tooltag
#    #end
#    #
#    #
#    #it "should have a send password button" do
#    #    mocked_tooltag = double("ToolTag")
#    #    mocked_input = double("input")
#    #    mocked_id = double("id")
#    #
#    #    $tracer.should_receive(:trace).with(:send_password_button).ordered
#    #
#    #    @browser.should_receive(:input).ordered.and_return(mocked_input)
#    #    mocked_input.should_receive(:id).with("/forgotPasswordButton/").ordered.and_return(mocked_id)
#    #    ToolTag.should_receive(:new).with(mocked_id, :send_password_button).ordered.and_return(mocked_tooltag)
#    #
#    #    @browser.send_password_button.should == mocked_tooltag
#    #end
#    #
#    #
#    #it "should have a password retrieval label" do
#    #    mocked_tooltag = double("ToolTag")
#    #    mocked_span = double("span")
#    #    mocked_id = double("id")
#    #
#    #    $tracer.should_receive(:trace).with(:password_retrieval_label).ordered
#    #
#    #    @browser.should_receive(:span).ordered.and_return(mocked_span)
#    #    mocked_span.should_receive(:id).with("/lblPasswordSent/").ordered.and_return(mocked_id)
#    #    ToolTag.should_receive(:new).with(mocked_id, :password_retrieval_label).ordered.and_return(mocked_tooltag)
#    #
#    #    @browser.password_retrieval_label.should == mocked_tooltag
#    #end
#    #
#    #
#    #it "should have a send new password to user link" do
#    #    mocked_tooltag = double("ToolTag")
#    #    mocked_a = double("a")
#    #    mocked_with = double("with")
#    #
#    #    $tracer.should_receive(:trace).with(:send_new_password_to_user_link).ordered
#    #
#    #    @browser.should_receive(:a).ordered.and_return(mocked_a)
#    #    mocked_a.should_receive(:with).with("href", "/ForgotPasswordPopup/").ordered.and_return(mocked_with)
#    #    ToolTag.should_receive(:new).with(mocked_with, :send_new_password_to_user_link).ordered.and_return(mocked_tooltag)
#    #
#    #    @browser.send_new_password_to_user_link.should == mocked_tooltag
#    #end
#
#end
#
#
