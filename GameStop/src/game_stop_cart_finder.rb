# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

#unit_test: cart_list, tr.className(create_ats_regex_string("ats-lineitemrow"));GameStopCartList;self
#unit_test: shopping_cart_label, h1.with("/Shopping Cart/").get.innerText()
#unit_test: empty_cart_label, div.id("cartempty")
#unit_test: cart_subtotal_value, td.className(create_ats_regex_string('ats-subtotal'))
#unit_test: cart_pre_discount_value, span.id("/lblSubTotalPreDiscount$/")
#unit_test: cart_discounts_list, td.className("redstdcopy").with.innerText("/\\$/");CartDiscountsList;self
#unit_test: remove_promo_code_button, input.id("/lnkBtRemovePromoCode$/")
#unit_test: previous_cart_items_label, div.id("checkout_main").child("td").with("className", "redstdcopy").innerText("/previous visit in your cart/")
#unit_test: promo_code_label, span.id("/lblPromoCodeId$/")
#unit_test: invalid_promo_code_message, li.with("/The coupon you entered is not currently valid/")
#unit_test: apply_button, a.className(create_ats_regex_string('ats-promoapplybtn'))
#unit_test: promo_code_field, input.className(create_ats_regex_string('ats-promocode'))
#unit_test: powerup_rewards_number_field, input.className(create_ats_regex_string('ats-purnumber'))
#unit_test: powerup_rewards_points_label, p.className(create_ats_regex_string('check'))
#unit_test: powerup_rewards_discount_label, span.id("/earningDiscountsBulletLabel$/")

# == Overview
# This file contains the module that calls the WebSpec functions and methods
# directly for activities related to the shopping cart.
# This module exists to provide an abstraction layer for
# Game Stop test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameStopCartFinder
    # Returns the list of items (GameStopCartList) appearing on the
    # "Shopping Cart" page.
    # Updating cart finders to work with new checkout
    def cart_list()
        $tracer.trace(__method__)
        return GameStopCartList.new(ToolTag.new(tr.className(create_ats_regex_string("ats-lineitemrow")), __method__), self)
    end

    # Returns the shopping cart label.
    def shopping_cart_label
        $tracer.trace(__method__)
        return ToolTag.new(h1.with("/Shopping Cart/").get.innerText(), __method__)
    end

    # Returns the empty cart label.
    def empty_cart_label
        $tracer.trace(__method__)
        return ToolTag.new(div.id("cartempty"), __method__)
    end

    # Returns the cart_subtotal_value.
    def cart_subtotal_value
        $tracer.trace(__method__)
        return ToolTag.new(td.className(create_ats_regex_string('ats-subtotal')), __method__)
    end

    # Returns the cart pre discount value.
    def cart_pre_discount_value
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/lblSubTotalPreDiscount$/"), __method__)
    end

    # Returns the Cart Discounts list.
    def cart_discounts_list
        $tracer.trace(__method__)
        return CartDiscountsList.new(ToolTag.new(td.className("redstdcopy").with.innerText("/\\$/"), __method__), self)
    end

    # Returns the remove promo code button.
    def remove_promo_code_button
        $tracer.trace(__method__)
        return ToolTag.new(input.id("/lnkBtRemovePromoCode$/"), __method__)
    end

    # Returns the previous cart items label.
    def previous_cart_items_label
        $tracer.trace(__method__)
        return ToolTag.new(div.id("checkout_main").child("td").with("className", "redstdcopy").innerText("/previous visit in your cart/"), __method__)
    end

    # Returns the promo code label.
    def promo_code_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/lblPromoCodeId$/"), __method__)
    end

    # Returns the invalid promo code message.
    def invalid_promo_code_message
        $tracer.trace(__method__)
        return ToolTag.new(li.with("/The coupon you entered is not currently valid/"), __method__)
    end

    #Returns Apply button on Cart
    def apply_button
        $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string('ats-promoapplybtn')), __method__)
    end

    # Returns the promo code field.
    def promo_code_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string('ats-promocode')), __method__)
    end

    # Returns the text field for the PowerUp Rewards number. - Similar finder exists in COMMON but called profile_powerup_rewards_number_field
    def powerup_rewards_number_field
        $tracer.trace(__method__)
        return ToolTag.new(input.className(create_ats_regex_string('ats-purnumber')), __method__)
    end

    # Returns the PowerUp Rewards "you earned points" label.
    def powerup_rewards_points_label
        $tracer.trace(__method__)
        return ToolTag.new(p.className(create_ats_regex_string('check')), __method__)
    end

    # Returns the Powerup Rewards discount label.
    def powerup_rewards_discount_label
        $tracer.trace(__method__)
        return ToolTag.new(span.id("/earningDiscountsBulletLabel$/"), __method__)
    end
		
		# Returns the "We also Recommend" label for Certona
    def recommendations_label
        $tracer.trace(__method__)
        return ToolTag.new(div.className('productListResults').find.h3.className('blackband'), __method__)
		end

		# Returns the list of recommended items
		def recommendations_list()
        $tracer.trace(__method__)
        return GameStopRecommendationList.new(ToolTag.new(div.className('recobox'), __method__), self)
    end
		
		# Returns the 'PowerUp Rewards member?' message
		def pur_member_inquiry
			$tracer.trace(__method__)
			return ToolTag.new(div.className("noLoyaltyNumber").find.h2, __method__)
		end
		
		# Returns the discount amount from cart 
		def discount_amount_from_cart
			$tracer.trace(__method__)
			return ToolTag.new(table.className("subtotals").tbody.find.tr.className("discount"), __method__)
		end
		
		# Returns the Remove Coupon button
		def remove_coupon_from_cart
			$tracer.trace(__method__)
			return ToolTag.new(div.className("valuevoidmsg").find.a.href("/RemoveCoupon/"), __method__, self)
		end
		
		
		# These are the GameStop Desktop AOW finders
		
		# returns the upsell modal popup  ### is visible
		def upsell_modal_popup
			$tracer.trace(__method__)
			return ToolTag.new(div.className("fancybox-skin"), __method__, self)
		end
		
		# returns the upsell modal close button
		def upsell_modal_close_button
			$tracer.trace(__method__)
			return ToolTag.new(a.className("/fancybox-close/"), __method__, self)
		end
		
		# returns the service plan options
		def aow_service_plans
			$tracer.trace(__method__)
			return GameStopAOWPlans.new(ToolTag.new(input.id("rbWarranty"), __method__), self)
		end
		
		# returns the add plan to cart button
		def add_plan_to_cart_button
			$tracer.trace(__method__)
			return ToolTag.new(a.id("addWarrantyToCart"), __method__, self)
		end
		
		# returns the service plan panel
		def aow_panel
			$tracer.trace(__method__)
			return ToolTag.new(div.id("warrantyRecommendation"), __method__, self)
		end
		
		# returns the service plan panel header
		def aow_header
			$tracer.trace(__method__)
			return ToolTag.new(div.className("warrantyHeader"), __method__, self)
		end
		
		# returns the service plan panel message
		def aow_message
			$tracer.trace(__method__)
			return ToolTag.new(div.className("warrantyText"), __method__, self)
		end
		
		# after selecting a plan this will appear and the service plan panel will disappear
		def aow_selected_title
			$tracer.trace(__method__)
			return ToolTag.new(li.className("warrantyItemTitle"), __method__, self)
		end
		
		def aow_selected_price
			$tracer.trace(__method__)
			return ToolTag.new(li.className("warrantyItemprice"), __method__, self)
		end
		
		# returns the checkout button from upsell modal
		def upsell_checkout_button
			$tracer.trace(__method__)
			return ToolTag.new(a.id("checkoutButton"), __method__, self)
		end
		
		# returns the continue shopping link
		def upsell_continue_shopping_link
			$tracer.trace(__method__)
			return ToolTag.new(a.id("continueShoppingLink"), __method__, self)
		end
		
		# returns the cart count
		def upsell_cart_count
			$tracer.trace(__method__)
			return ToolTag.new(div.id("cartCount"), __method__, self)
		end
		
		# returns the cart total
		def upsell_cart_total
			$tracer.trace(__method__)
			return ToolTag.new(div.id("cartTotal"), __method__, self)
		end

end

