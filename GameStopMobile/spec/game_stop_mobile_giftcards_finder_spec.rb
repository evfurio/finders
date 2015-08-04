ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStopMobile/src/game_stop_mobile_requires"




describe GameStopMobileGiftCardsFinder do
    before(:all) do
        class GameStopMobileGiftCardsFinderTest
            include GameStopMobileGiftCardsFinder
        end

        @browser = GameStopMobileGiftCardsFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopMobileGiftCardsFinderTest) if Object.const_defined?(:GameStopMobileGiftCardsFinderTest)
    end

    it "should have a gift_card_link" do
      mocked_tooltag = double("ToolTag")
      mocked_a = double("a")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gift_card_link).ordered

      @browser.should_receive(:a).ordered.and_return(mocked_a)
      @browser.should_receive(:create_ats_regex_string).with("ats-nav_gift_cards_link").ordered.and_return("ats-nav_gift_cards_link")
      mocked_a.should_receive(:className).with("ats-nav_gift_cards_link").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gift_card_link, @browser).ordered.and_return(mocked_tooltag)

      @browser.gift_card_link.should == mocked_tooltag

    end

    it "should have a gift_card_header" do
      mocked_tooltag = double("ToolTag")
      mocked_span = double("span")
      mocked_className = double("className")

      $tracer.should_receive(:trace).with(:gift_card_header).ordered

      @browser.should_receive(:span).ordered.and_return(mocked_span)
      @browser.should_receive(:create_ats_regex_string).with("ats-giftcardlbl").ordered.and_return("ats-giftcardlbl")
      mocked_span.should_receive(:className).with("ats-giftcardlbl").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :gift_card_header, @browser).ordered.and_return(mocked_tooltag)

      @browser.gift_card_header.should == mocked_tooltag

    end

    it "should have a buy_gift_card_link" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_a = double("a")

        $tracer.should_receive(:trace).with(:buy_gift_card_link).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:className).with("leftColumn").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        ToolTag.should_receive(:new).with(mocked_a, :buy_gift_card_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.buy_gift_card_link.should == mocked_tooltag
    end
		
		
		it "should have card_type_list " do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
				mocked_select = double("select")

        $tracer.should_receive(:trace).with(:card_type_list).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("ChooseType").ordered.and_return(mocked_id)
				mocked_id.should_receive(:select).ordered.and_return(mocked_select)
				mocked_select.should_receive(:id).with("cardType").ordered.and_return(mocked_id)
				ToolTag.should_receive(:new).with(mocked_id, :card_type_list, @browser).ordered.and_return(mocked_tooltag)

        @browser.card_type_list.should == mocked_tooltag
    end


		it "should have gift_amount_list " do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
				mocked_className = double("className")
        mocked_id = double("id")
				mocked_select = double("select")

        $tracer.should_receive(:trace).with(:gift_amount_list).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("leftColumn").ordered.and_return(mocked_className)
				mocked_className.should_receive(:select).ordered.and_return(mocked_select)
				mocked_select.should_receive(:id).with("giftAmount").ordered.and_return(mocked_id)
				ToolTag.should_receive(:new).with(mocked_id, :gift_amount_list, @browser).ordered.and_return(mocked_tooltag)

        @browser.gift_amount_list.should == mocked_tooltag
    end
		
		
		it "should have quantity_text" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:quantity_text).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("quantity").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :quantity_text, @browser).ordered.and_return(mocked_tooltag)

        @browser.quantity_text.should == mocked_tooltag
    end
		
		
		it "should have quantity_error_message " do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
				mocked_className = double("className")
				mocked_span = double("span")

        $tracer.should_receive(:trace).with(:quantity_error_message).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("ChooseQuantity").ordered.and_return(mocked_id)
				mocked_id.should_receive(:span).ordered.and_return(mocked_span)
        ToolTag.should_receive(:new).with(mocked_span, :quantity_error_message, @browser).ordered.and_return(mocked_tooltag)

        @browser.quantity_error_message.should == mocked_tooltag
    end
			
		
    it "should have amount_text" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:amount_text).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("amount").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :amount_text, @browser).ordered.and_return(mocked_tooltag)

        @browser.amount_text.should == mocked_tooltag
    end
		
		
		it "should have amount_error_message " do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
				mocked_className = double("className")
				mocked_span = double("span")

        $tracer.should_receive(:trace).with(:amount_error_message).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("ChooseAmount").ordered.and_return(mocked_id)
				mocked_id.should_receive(:div).ordered.and_return(mocked_div)
				mocked_div.should_receive(:className).with("errorPopup").ordered.and_return(mocked_className)
				mocked_className.should_receive(:span).ordered.and_return(mocked_span)
        ToolTag.should_receive(:new).with(mocked_span, :amount_error_message, @browser).ordered.and_return(mocked_tooltag)

        @browser.amount_error_message.should == mocked_tooltag
    end


    it "should have add_gc_to_cart" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:add_gc_to_cart).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("addToCart").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :add_gc_to_cart, @browser).ordered.and_return(mocked_tooltag)

        @browser.add_gc_to_cart.should == mocked_tooltag
    end
		
end

