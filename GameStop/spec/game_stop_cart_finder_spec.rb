ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/GameStop/src/game_stop_requires"


describe GameStopCartFinder, "finders" do

    before(:all) do
        class GameStopCartFinderTest
            include GameStopCartFinder
        end

        @browser = GameStopCartFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :GameStopCartFinderTest) if Object.const_defined?(:GameStopCartFinderTest)
    end


    it "should have a cart list" do
        mocked_tooltag = double("ToolTag")
        mocked_tr = double("tr")
        mocked_className = double("className")
        mocked_gamestopcartlist = double("GameStopCartList")

        $tracer.should_receive(:trace).with(:cart_list).ordered

        @browser.should_receive(:tr).ordered.and_return(mocked_tr)
        @browser.should_receive(:create_ats_regex_string).with("ats-lineitemrow").ordered.and_return("ats-lineitemrow")
        mocked_tr.should_receive(:className).with("ats-lineitemrow").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_list).ordered.and_return(mocked_tooltag)
        GameStopCartList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopcartlist)

        @browser.cart_list.should == mocked_gamestopcartlist
    end


    it "should have a shopping cart label" do
        mocked_tooltag = double("ToolTag")
        mocked_h1 = double("h1")
        mocked_with = double("with")
        mocked_get = double("get")
        mocked_innerText = double("innerText")

        $tracer.should_receive(:trace).with(:shopping_cart_label).ordered

        @browser.should_receive(:h1).ordered.and_return(mocked_h1)
        mocked_h1.should_receive(:with).with("/Shopping Cart/").ordered.and_return(mocked_with)
        mocked_with.should_receive(:get).ordered.and_return(mocked_get)
        mocked_get.should_receive(:innerText).with().ordered.and_return(mocked_innerText)
        ToolTag.should_receive(:new).with(mocked_innerText, :shopping_cart_label).ordered.and_return(mocked_tooltag)

        @browser.shopping_cart_label.should == mocked_tooltag
    end


    it "should have a empty cart label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:empty_cart_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("cartempty").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :empty_cart_label).ordered.and_return(mocked_tooltag)

        @browser.empty_cart_label.should == mocked_tooltag
    end


    it "should have a cart subtotal value" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:cart_subtotal_value).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        @browser.should_receive(:create_ats_regex_string).with('ats-subtotal').ordered.and_return('ats-subtotal')
        mocked_td.should_receive(:className).with('ats-subtotal').ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :cart_subtotal_value).ordered.and_return(mocked_tooltag)

        @browser.cart_subtotal_value.should == mocked_tooltag
    end


    it "should have a cart pre discount value" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:cart_pre_discount_value).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/lblSubTotalPreDiscount$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :cart_pre_discount_value).ordered.and_return(mocked_tooltag)

        @browser.cart_pre_discount_value.should == mocked_tooltag
    end


    it "should have a cart discounts list" do
        mocked_tooltag = double("ToolTag")
        mocked_td = double("td")
        mocked_className = double("className")
        mocked_with = double("with")
        mocked_innerText = double("innerText")
        mocked_cartdiscountslist = double("CartDiscountsList")

        $tracer.should_receive(:trace).with(:cart_discounts_list).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_td)
        mocked_td.should_receive(:className).with("redstdcopy").ordered.and_return(mocked_className)
        mocked_className.should_receive(:with).ordered.and_return(mocked_with)
        mocked_with.should_receive(:innerText).with("/\\$/").ordered.and_return(mocked_innerText)
        ToolTag.should_receive(:new).with(mocked_innerText, :cart_discounts_list).ordered.and_return(mocked_tooltag)
        CartDiscountsList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_cartdiscountslist)

        @browser.cart_discounts_list.should == mocked_cartdiscountslist
    end


    it "should have a remove promo code button" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:remove_promo_code_button).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        mocked_input.should_receive(:id).with("/lnkBtRemovePromoCode$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :remove_promo_code_button).ordered.and_return(mocked_tooltag)

        @browser.remove_promo_code_button.should == mocked_tooltag
    end


    it "should have a previous cart items label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")
        mocked_child = double("child")
        mocked_with = double("with")
        mocked_innerText = double("innerText")

        $tracer.should_receive(:trace).with(:previous_cart_items_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("checkout_main").ordered.and_return(mocked_id)
        mocked_id.should_receive(:child).with("td").ordered.and_return(mocked_child)
        mocked_child.should_receive(:with).with("className", "redstdcopy").ordered.and_return(mocked_with)
        mocked_with.should_receive(:innerText).with("/previous visit in your cart/").ordered.and_return(mocked_innerText)
        ToolTag.should_receive(:new).with(mocked_innerText, :previous_cart_items_label).ordered.and_return(mocked_tooltag)

        @browser.previous_cart_items_label.should == mocked_tooltag
    end


    it "should have a promo code label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:promo_code_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/lblPromoCodeId$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :promo_code_label).ordered.and_return(mocked_tooltag)

        @browser.promo_code_label.should == mocked_tooltag
    end


    it "should have a invalid promo code message" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_with = double("with")

        $tracer.should_receive(:trace).with(:invalid_promo_code_message).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:with).with("/The coupon you entered is not currently valid/").ordered.and_return(mocked_with)
        ToolTag.should_receive(:new).with(mocked_with, :invalid_promo_code_message).ordered.and_return(mocked_tooltag)

        @browser.invalid_promo_code_message.should == mocked_tooltag
    end


    it "should have a apply button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:apply_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        @browser.should_receive(:create_ats_regex_string).with('ats-promoapplybtn').ordered.and_return('ats-promoapplybtn')
        mocked_a.should_receive(:className).with('ats-promoapplybtn').ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :apply_button).ordered.and_return(mocked_tooltag)

        @browser.apply_button.should == mocked_tooltag
    end


    it "should have a promo code field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:promo_code_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with('ats-promocode').ordered.and_return('ats-promocode')
        mocked_input.should_receive(:className).with('ats-promocode').ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :promo_code_field).ordered.and_return(mocked_tooltag)

        @browser.promo_code_field.should == mocked_tooltag
    end

    it "should have a powerup rewards number field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:powerup_rewards_number_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with('ats-purnumber').ordered.and_return('ats-purnumber')
        mocked_input.should_receive(:className).with('ats-purnumber').ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :powerup_rewards_number_field).ordered.and_return(mocked_tooltag)

        @browser.powerup_rewards_number_field.should == mocked_tooltag
    end

    it "should have a powerup rewards points label" do
        mocked_tooltag = double("ToolTag")
        mocked_p = double("p")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:powerup_rewards_points_label).ordered

        @browser.should_receive(:p).ordered.and_return(mocked_p)
        @browser.should_receive(:create_ats_regex_string).with('check').ordered.and_return('check')
        mocked_p.should_receive(:className).with('check').ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :powerup_rewards_points_label).ordered.and_return(mocked_tooltag)

        @browser.powerup_rewards_points_label.should == mocked_tooltag
    end

    it "should have a powerup rewards discount label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:powerup_rewards_discount_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        mocked_span.should_receive(:id).with("/earningDiscountsBulletLabel$/").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :powerup_rewards_discount_label).ordered.and_return(mocked_tooltag)

        @browser.powerup_rewards_discount_label.should == mocked_tooltag
    end

    it "should have a recommendations label" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_h3 = double("h3")

      $tracer.should_receive(:trace).with(:recommendations_label).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:className).with("productListResults").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:h3).ordered.and_return(mocked_h3)
      mocked_h3.should_receive(:className).with("blackband").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :recommendations_label).ordered.and_return(mocked_tooltag)

      @browser.recommendations_label.should == mocked_tooltag
    end

    it "should have a recommendations list" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_gsreclist = double("GameStopRecommendationList")

      $tracer.should_receive(:trace).with(:recommendations_list).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:className).with("recobox").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :recommendations_list).ordered.and_return(mocked_tooltag)
      GameStopRecommendationList.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gsreclist)

      @browser.recommendations_list.should == mocked_gsreclist
    end

    it "should have a pur member inquiry" do
      mocked_tooltag = double("ToolTag")
      mocked_div = double("div")
      mocked_className = double("className")
      mocked_find = double("find")
      mocked_h2 = double("h2")

      $tracer.should_receive(:trace).with(:pur_member_inquiry).ordered

      @browser.should_receive(:div).ordered.and_return(mocked_div)
      mocked_div.should_receive(:className).with("noLoyaltyNumber").ordered.and_return(mocked_className)
      mocked_className.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:h2).ordered.and_return(mocked_h2)
      ToolTag.should_receive(:new).with(mocked_h2, :pur_member_inquiry).ordered.and_return(mocked_tooltag)

      @browser.pur_member_inquiry.should == mocked_tooltag
    end

		it "should have a discount_amount_from_cart" do
      mocked_tooltag = double("ToolTag")
      mocked_table = double("table")
      mocked_className = double("className")
			mocked_tbody = double("tbody")
      mocked_find = double("find")
      mocked_tr = double("tr")

      $tracer.should_receive(:trace).with(:discount_amount_from_cart).ordered

      @browser.should_receive(:table).ordered.and_return(mocked_table)
      mocked_table.should_receive(:className).with("subtotals").ordered.and_return(mocked_className)
      mocked_className.should_receive(:tbody).ordered.and_return(mocked_tbody)
			mocked_tbody.should_receive(:find).ordered.and_return(mocked_find)
      mocked_find.should_receive(:tr).ordered.and_return(mocked_tr)
      mocked_tr.should_receive(:className).with("discount").ordered.and_return(mocked_className)
      ToolTag.should_receive(:new).with(mocked_className, :discount_amount_from_cart).ordered.and_return(mocked_tooltag)

      @browser.discount_amount_from_cart.should == mocked_tooltag
    end	

		it "should have a remove coupon button from cart" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")
        mocked_find = double("find")
        mocked_a = double("a")
        mocked_href = double("href")

        $tracer.should_receive(:trace).with(:remove_coupon_from_cart).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("valuevoidmsg").ordered.and_return(mocked_className)
        mocked_className.should_receive(:find).ordered.and_return(mocked_find)
        mocked_find.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:href).with("/RemoveCoupon/").ordered.and_return(mocked_href)
        ToolTag.should_receive(:new).with(mocked_href, :remove_coupon_from_cart, @browser).ordered.and_return(mocked_tooltag)

        @browser.remove_coupon_from_cart.should == mocked_tooltag
    end

		
		it "should have upsell_modal_popup" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:upsell_modal_popup).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("fancybox-skin").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :upsell_modal_popup, @browser).ordered.and_return(mocked_tooltag)

        @browser.upsell_modal_popup.should == mocked_tooltag
    end
		
		it "should have upsell_modal_close_button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:upsell_modal_close_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:className).with("/fancybox-close/").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :upsell_modal_close_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.upsell_modal_close_button.should == mocked_tooltag
    end
		
		it "should have aow_service_plans" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_id = double("id")
        mocked_gamestopaowplans = double("GameStopAOWPlans")

			$tracer.should_receive(:trace).with(:aow_service_plans).ordered

			@browser.should_receive(:input).ordered.and_return(mocked_input)
			mocked_input.should_receive(:id).with("rbWarranty").ordered.and_return(mocked_id)
			ToolTag.should_receive(:new).with(mocked_id, :aow_service_plans).ordered.and_return(mocked_tooltag)
			GameStopAOWPlans.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_gamestopaowplans)

			@browser.aow_service_plans.should == mocked_gamestopaowplans
    end
		
		it "should have add_plan_to_cart_button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:add_plan_to_cart_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("addWarrantyToCart").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :add_plan_to_cart_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.add_plan_to_cart_button.should == mocked_tooltag
    end
		
		it "should have aow_panel" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:aow_panel).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("warrantyRecommendation").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :aow_panel, @browser).ordered.and_return(mocked_tooltag)

        @browser.aow_panel.should == mocked_tooltag
    end
		
		it "should have aow_header" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:aow_header).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("warrantyHeader").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :aow_header, @browser).ordered.and_return(mocked_tooltag)

        @browser.aow_header.should == mocked_tooltag
    end
		
		it "should have aow_message" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:aow_message).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:className).with("warrantyText").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :aow_message, @browser).ordered.and_return(mocked_tooltag)

        @browser.aow_message.should == mocked_tooltag
    end
		
		it "should have aow_selected_title" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:aow_selected_title).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:className).with("warrantyItemTitle").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :aow_selected_title, @browser).ordered.and_return(mocked_tooltag)

        @browser.aow_selected_title.should == mocked_tooltag
    end
		
		it "should have aow_selected_price" do
        mocked_tooltag = double("ToolTag")
        mocked_li = double("li")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:aow_selected_price).ordered

        @browser.should_receive(:li).ordered.and_return(mocked_li)
        mocked_li.should_receive(:className).with("warrantyItemprice").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :aow_selected_price, @browser).ordered.and_return(mocked_tooltag)

        @browser.aow_selected_price.should == mocked_tooltag
    end		
		
		it "should have upsell_checkout_button" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:upsell_checkout_button).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("checkoutButton").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :upsell_checkout_button, @browser).ordered.and_return(mocked_tooltag)

        @browser.upsell_checkout_button.should == mocked_tooltag
    end
		
		it "should have upsell_continue_shopping_link" do
        mocked_tooltag = double("ToolTag")
        mocked_a = double("a")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:upsell_continue_shopping_link).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_a)
        mocked_a.should_receive(:id).with("continueShoppingLink").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :upsell_continue_shopping_link, @browser).ordered.and_return(mocked_tooltag)

        @browser.upsell_continue_shopping_link.should == mocked_tooltag
    end
		
		it "should have upsell_cart_count" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:upsell_cart_count).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("cartCount").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :upsell_cart_count, @browser).ordered.and_return(mocked_tooltag)

        @browser.upsell_cart_count.should == mocked_tooltag
    end
		
		it "should have upsell_cart_total" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_id = double("id")

        $tracer.should_receive(:trace).with(:upsell_cart_total).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        mocked_div.should_receive(:id).with("cartTotal").ordered.and_return(mocked_id)
        ToolTag.should_receive(:new).with(mocked_id, :upsell_cart_total, @browser).ordered.and_return(mocked_tooltag)

        @browser.upsell_cart_total.should == mocked_tooltag
    end
		
		
end
