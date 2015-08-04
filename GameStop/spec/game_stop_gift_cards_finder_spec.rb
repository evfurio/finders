ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopGiftCardsFinder, "finders" do

	before(:all) do
			class GameStopGiftCardsFinderTest
					include GameStopGiftCardsFinder
			end

			@browser = GameStopGiftCardsFinderTest.allocate
	end

	after(:all) do
			Object.send(:remove_const, :GameStopGiftCardsFinderTest) if Object.const_defined?(:GameStopGiftCardsFinderTest)
	end

	it "should have a choose_gift_card panel" do
			mocked_tooltag = double("ToolTag")
			mocked_div = double("div")
			mocked_className = double("className")
			mocked_gamestopgiftcardspanel = double("GameStopGiftCardsPanel")

			$tracer.should_receive(:trace).with(:choose_gift_card).ordered

			@browser.should_receive(:div).ordered.and_return(mocked_div)
			mocked_div.should_receive(:className).with("/radioStyle/").ordered.and_return(mocked_className)
			ToolTag.should_receive(:new).with(mocked_className, :choose_gift_card).ordered.and_return(mocked_tooltag)
			GameStopGiftCardsPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopgiftcardspanel)

			@browser.choose_gift_card.should == mocked_gamestopgiftcardspanel
	end
	
	it "should have a purchase_gift_card panel" do
			mocked_tooltag = double("ToolTag")
			mocked_div = double("div")
			mocked_className = double("className")
			mocked_gamestopgiftcardspanel = double("GameStopGiftCardsPanel")

			$tracer.should_receive(:trace).with(:purchase_gift_card).ordered

			@browser.should_receive(:div).ordered.and_return(mocked_div)
			mocked_div.should_receive(:className).with("gcPurchaseRow").ordered.and_return(mocked_className)
			ToolTag.should_receive(:new).with(mocked_className, :purchase_gift_card).ordered.and_return(mocked_tooltag)
			GameStopGiftCardsPanel.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopgiftcardspanel)

			@browser.purchase_gift_card.should == mocked_gamestopgiftcardspanel
	end
	
	it "it should have a buy_gift_card_link_button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:buy_gift_card_link_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
		mocked_a.should_receive(:className).with("ats-buyagiftcardlnk").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :buy_gift_card_link_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.buy_gift_card_link_button.should == mocked_tooltag
  end
  
  it "it should have a remove_item_button" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:remove_item_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
		mocked_input.should_receive(:id).with("/btnRemoveCurrentOrder").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :remove_item_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.remove_item_button.should == mocked_tooltag
  end
  
  it "it should have add_gift_card_button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:add_gift_card_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
		mocked_a.should_receive(:className).with("ats-addgifttocartbtn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :add_gift_card_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.add_gift_card_button.should == mocked_tooltag
  end
  
  it "it should have add_another_gift_card_button" do
    mocked_tooltag = double("ToolTag")
    mocked_input = double("input")
    mocked_className = double("className")

    $tracer.should_receive(:trace).with(:add_another_gift_card_button).ordered

    @browser.should_receive(:input).ordered.and_return(mocked_input)
		mocked_input.should_receive(:className).with("ats-addanothergiftbtn").ordered.and_return(mocked_className)
    ToolTag.should_receive(:new).with(mocked_className, :add_another_gift_card_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.add_another_gift_card_button.should == mocked_tooltag
  end
  
  it "it should have a gift_card_for_business_button" do
    mocked_tooltag = double("ToolTag")
    mocked_a = double("a")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:gift_card_for_business_button).ordered

    @browser.should_receive(:a).ordered.and_return(mocked_a)
		mocked_a.should_receive(:id).with("/blueLinkUnderline/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :gift_card_for_business_button, @browser).ordered.and_return(mocked_tooltag)

    @browser.gift_card_for_business_button.should == mocked_tooltag
  end
  
  it "it should have a gift_card_amount_error" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:gift_card_amount_error).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
		mocked_div.should_receive(:id).with("/pnlAmountError/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :gift_card_amount_error, @browser).ordered.and_return(mocked_tooltag)

    @browser.gift_card_amount_error.should == mocked_tooltag
  end
  
  it "it should have a quantity_error_message" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:quantity_error_message).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
		mocked_div.should_receive(:id).with("/pnlQuantityError/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :quantity_error_message, @browser).ordered.and_return(mocked_tooltag)

    @browser.quantity_error_message.should == mocked_tooltag
  end

	it "it should have a total_amount_error_message" do
    mocked_tooltag = double("ToolTag")
    mocked_div = double("div")
    mocked_id = double("id")

    $tracer.should_receive(:trace).with(:total_amount_error_message).ordered

    @browser.should_receive(:div).ordered.and_return(mocked_div)
		mocked_div.should_receive(:id).with("/pnlValidationErrors/").ordered.and_return(mocked_id)
    ToolTag.should_receive(:new).with(mocked_id, :total_amount_error_message, @browser).ordered.and_return(mocked_tooltag)

    @browser.total_amount_error_message.should == mocked_tooltag
  end
end
