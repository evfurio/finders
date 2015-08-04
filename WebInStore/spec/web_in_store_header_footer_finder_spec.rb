ENV['QAAUTOMATION_FILES'] = "#{ENV['QAAUTOMATION_TOOLS']}/QAAutomation"
qaautomation_finders_dir = "#{ENV['QAAUTOMATION_FINDERS']}"
require "#{qaautomation_finders_dir}/WebInStore/src/web_in_store_requires"

########### ut-generator unit test input per finder - to be placed in src files accordingly.
#unit_test: gamestop_logo, span.className(create_ats_regex_string("ats-wis-gslogo"))
#unit_test: clear_customer_info_button, button.className(create_ats_regex_string("ats-wis-clearcustinfobtn"))
#unit_test: customer_info, span.className(create_ats_regex_string("ats-wis-custinfo"))
#unit_test: esc_to_close_label, span.className(create_ats_regex_string("closebtn"))
#unit_test: best_sellers_button, button.className(create_ats_regex_string("ats-wis-bestsellers"))
#unit_test: order_lookup_button, button.className(create_ats_regex_string("ats-wis-orderlookup"))
#unit_test: view_cart_button, button.className(create_ats_regex_string("ats-wis-viewcartbtn"))
#unit_test: search_field, input.className(create_ats_regex_string("ats-wis-searchfield"))
#unit_test: search_all_button, button.className(create_ats_regex_string("ats-wis-searchallbtn"))
#unit_test: search_exp_selection_button, button.className(create_ats_regex_string("ats-wis-searchonlineonlybtn"))
#unit_test: search_button, button.className(create_ats_regex_string("ats-wis-searchgobtn"))
#unit_test: pagination_field, div.className(create_ats_regex_string("pager"))
#unit_test: search_product_name, td.className(create_ats_regex_string("searchdispname"))
#unit_test: out_of_stock_label, span.className(create_ats_regex_string("ats-wis-catalogoutofstock"))
#unit_test: order_number_list, td.className(create_ats_regex_string("ats-wis-ordernumber"))
#unit_test: shipping_header, div.className(create_ats_regex_string("ats-wis-shippingmethod"))
#unit_test: low_stock_label, span.className(create_ats_regex_string("ats-wis-cataloglowstock"))
#unit_test: category_drop_down, jquery("select[class~='ats-wis-categorydropdwn']:visible")
#unit_test: search_result_label, div.className(create_ats_regex_string("ats-wis-searchresultslbl"))
#unit_test: product_search_list, table.className(create_ats_regex_string("productsearch"))
#unit_test: home_page, button.className(create_ats_regex_string("ats-wis-homepage"))
#unit_test: message, div.className(create_ats_regex_string("bigmessage"))
#unit_test: view_tracking_details_link, jquery("a[href*='/Checkout/instore/Order/TrackingDetails?']")
#unit_test: tracking_details_fields, div.className(create_ats_regex_string("orderdet"))
#unit_test: tracking_label, label.className(create_ats_regex_string("ats-wis-trackingheaderlbl"))
#unit_test: shipment_progress, table.id(create_ats_regex_string("shipmentprogress"))
#unit_test: best_selling_sort, a.id(create_ats_regex_string("bestselling"))
#unit_test: drop_ship_badge, span.className(create_ats_regex_string("ats-wis-catalogdropship"))
#unit_test: error_message, div.id(create_ats_regex_string("errmsg"))
#unit_test: shipping_search_result, td.className(create_ats_regex_string("searchhead"))
#unit_test: disabled_button, jquery("button[class='addtocart redbutton_gray ats-wis-addtocartbtn']")
#unit_test: empty_cart_message, span.className(create_ats_regex_string("emptyCartMsg"))
#unit_test: sort_best_selling, a.id(create_ats_regex_string("bestselling"))
#unit_test: sort_price, a.id(create_ats_regex_string("price"))
#unit_test: sort_release_date, a.id(create_ats_regex_string("releasedate"))
#unit_test: product_search_sku, tr.className(create_ats_regex_string("productsearchsku"))

describe WebInStoreHeaderFooterFinder do

    before(:all) do
        class WebInStoreHeaderFooterFinderTest
            include WebInStoreHeaderFooterFinder
        end

        @browser = WebInStoreHeaderFooterFinderTest.allocate
    end

    after(:all) do
        Object.send(:remove_const, :WebInStoreHeaderFooterFinderTest) if Object.const_defined?(:WebInStoreHeaderFooterFinderTest)
    end

    it "should have a gamestop logo" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("a")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:gamestop_logo).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-gslogo").ordered.and_return("ats-wis-gslogo")
        mocked_span.should_receive(:className).with("ats-wis-gslogo").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :gamestop_logo).ordered.and_return(mocked_tooltag)

        @browser.gamestop_logo.should == mocked_tooltag
    end

    it "should have a clear customer info button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:clear_customer_info_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-clearcustinfobtn").ordered.and_return("ats-wis-clearcustinfobtn")
        mocked_button.should_receive(:className).with("ats-wis-clearcustinfobtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :clear_customer_info_button).ordered.and_return(mocked_tooltag)

        @browser.clear_customer_info_button.should == mocked_tooltag
    end

    it "should have a customer info" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:customer_info).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-custinfo").ordered.and_return("ats-wis-custinfo")
        mocked_span.should_receive(:className).with("ats-wis-custinfo").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :customer_info).ordered.and_return(mocked_tooltag)

        @browser.customer_info.should == mocked_tooltag
    end

    it "should have a esc to close label" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:esc_to_close_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("closebtn").ordered.and_return("closebtn")
        mocked_span.should_receive(:className).with("closebtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :esc_to_close_label).ordered.and_return(mocked_tooltag)

        @browser.esc_to_close_label.should == mocked_tooltag
    end

    it "should have a best sellers button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:best_sellers_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-bestsellers").ordered.and_return("ats-wis-bestsellers")
        mocked_button.should_receive(:className).with("ats-wis-bestsellers").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :best_sellers_button).ordered.and_return(mocked_tooltag)

        @browser.best_sellers_button.should == mocked_tooltag
    end

    it "should have a order lookup button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_lookup_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-orderlookup").ordered.and_return("ats-wis-orderlookup")
        mocked_button.should_receive(:className).with("ats-wis-orderlookup").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_lookup_button).ordered.and_return(mocked_tooltag)

        @browser.order_lookup_button.should == mocked_tooltag
    end

    it "should have a view cart button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:view_cart_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-viewcartbtn").ordered.and_return("ats-wis-viewcartbtn")
        mocked_button.should_receive(:className).with("ats-wis-viewcartbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :view_cart_button).ordered.and_return(mocked_tooltag)

        @browser.view_cart_button.should == mocked_tooltag
    end

    it "should have a search field" do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("input")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_field).ordered

        @browser.should_receive(:input).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchfield").ordered.and_return("ats-wis-searchfield")
        mocked_input.should_receive(:className).with("ats-wis-searchfield").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_field).ordered.and_return(mocked_tooltag)

        @browser.search_field.should == mocked_tooltag
    end

    it "should have a search all button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_all_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchallbtn").ordered.and_return("ats-wis-searchallbtn")
        mocked_button.should_receive(:className).with("ats-wis-searchallbtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_all_button).ordered.and_return(mocked_tooltag)

        @browser.search_all_button.should == mocked_tooltag
    end

    it "should have a search exp selection button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_exp_selection_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchonlineonlybtn").ordered.and_return("ats-wis-searchonlineonlybtn")
        mocked_button.should_receive(:className).with("ats-wis-searchonlineonlybtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_exp_selection_button).ordered.and_return(mocked_tooltag)

        @browser.search_exp_selection_button.should == mocked_tooltag
    end

    it "should have a search button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_button).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchgobtn").ordered.and_return("ats-wis-searchgobtn")
        mocked_button.should_receive(:className).with("ats-wis-searchgobtn").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_button).ordered.and_return(mocked_tooltag)

        @browser.search_button.should == mocked_tooltag
    end

    it "should have a pagination field" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:pagination_field).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("pager").ordered.and_return("pager")
        mocked_div.should_receive(:className).with("pager").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :pagination_field).ordered.and_return(mocked_tooltag)

        @browser.pagination_field.should == mocked_tooltag
    end

    it "should have a search product name field" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_product_name).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("searchdispname").ordered.and_return("searchdispname")
        mocked_div.should_receive(:className).with("searchdispname").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_product_name).ordered.and_return(mocked_tooltag)

        @browser.search_product_name.should == mocked_tooltag
    end

    it "should have a out of stock label badge" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:out_of_stock_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-catalogoutofstock").ordered.and_return("ats-wis-catalogoutofstock")
        mocked_span.should_receive(:className).with("ats-wis-catalogoutofstock").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :out_of_stock_label).ordered.and_return(mocked_tooltag)

        @browser.out_of_stock_label.should == mocked_tooltag
    end

    it "should have a order number list" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("td")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:order_number_list).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-ordernumber").ordered.and_return("ats-wis-ordernumber")
        mocked_div.should_receive(:className).with("ats-wis-ordernumber").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :order_number_list).ordered.and_return(mocked_tooltag)

        @browser.order_number_list.should == mocked_tooltag
    end

    it "should have a shipping header" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:shipping_header).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-shippingmethod").ordered.and_return("ats-wis-shippingmethod")
        mocked_div.should_receive(:className).with("ats-wis-shippingmethod").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipping_header).ordered.and_return(mocked_tooltag)

        @browser.shipping_header.should == mocked_tooltag
    end

    it "should have a low stock label badge" do
        mocked_tooltag = double("ToolTag")
        mocked_span = double("span")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:low_stock_label).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_span)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-cataloglowstock").ordered.and_return("ats-wis-cataloglowstock")
        mocked_span.should_receive(:className).with("ats-wis-cataloglowstock").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :low_stock_label).ordered.and_return(mocked_tooltag)

        @browser.low_stock_label.should == mocked_tooltag
    end

    it "should have a category dropdown selector" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        mocked_webinstoreselector = double("WebInStoreSelector")

        $tracer.should_receive(:trace).with(:category_drop_down).ordered

        @browser.should_receive(:jquery).with("select[class~='ats-wis-categorydropdwn']:visible").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :category_drop_down).ordered.and_return(mocked_tooltag)
        WebInStoreSelector.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_webinstoreselector)

        @browser.category_drop_down.should == mocked_webinstoreselector
    end

    it "should have a search result label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:search_result_label).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-searchresultslbl").ordered.and_return("ats-wis-searchresultslbl")
        mocked_div.should_receive(:className).with("ats-wis-searchresultslbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :search_result_label).ordered.and_return(mocked_tooltag)

        @browser.search_result_label.should == mocked_tooltag
    end

    it "should have a product list" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("table")
        mocked_className = double("className")
        mocked_tr = double("tr")
        mocked_webinstoreproductlist = double("WebInStoreProductList")

        $tracer.should_receive(:trace).with(:product_search_list).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("productsearch").ordered.and_return("productsearch")
        mocked_div.should_receive(:className).with("productsearch").ordered.and_return(mocked_className)
        mocked_className.should_receive(:tr).ordered.and_return(mocked_tr)
        ToolTag.should_receive(:new).with(mocked_tr, :product_search_list).ordered.and_return(mocked_tooltag)
        WebInStoreProductList.should_receive(:new).with(mocked_tooltag).ordered.and_return(mocked_webinstoreproductlist)

        @browser.product_search_list.should == mocked_webinstoreproductlist
    end

    it "should have a home page button" do
        mocked_tooltag = double("ToolTag")
        mocked_button = double("button")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:home_page).ordered

        @browser.should_receive(:button).ordered.and_return(mocked_button)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-homepage").ordered.and_return("ats-wis-homepage")
        mocked_button.should_receive(:className).with("ats-wis-homepage").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :home_page).ordered.and_return(mocked_tooltag)

        @browser.home_page.should == mocked_tooltag
    end

    it "should have a message label" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:message).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("bigmessage").ordered.and_return("bigmessage")
        mocked_div.should_receive(:className).with("bigmessage").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :message).ordered.and_return(mocked_tooltag)

        @browser.message.should == mocked_tooltag
    end

    it "should have a view tracking details field" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        mocked_webinstoreselector = double("a")
        $tracer.should_receive(:trace).with(:view_tracking_details_link).ordered
        @browser.should_receive(:jquery).with("a[href*='/Checkout/instore/Order/TrackingDetails?']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :view_tracking_details_link).ordered.and_return(mocked_tooltag)
        @browser.view_tracking_details_link.should == mocked_tooltag
    end

    it "should have a tracking details field" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("div")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:tracking_details_fields).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("orderdet").ordered.and_return("orderdet")
        mocked_div.should_receive(:className).with("orderdet").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :tracking_details_fields).ordered.and_return(mocked_tooltag)

        @browser.tracking_details_fields.should == mocked_tooltag
    end

    it "should have a tracking label field" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("label")
        mocked_className = double("className")

        $tracer.should_receive(:trace).with(:tracking_label).ordered

        @browser.should_receive(:label).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-trackingheaderlbl").ordered.and_return("ats-wis-trackingheaderlbl")
        mocked_div.should_receive(:className).with("ats-wis-trackingheaderlbl").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :tracking_label).ordered.and_return(mocked_tooltag)

        @browser.tracking_label.should == mocked_tooltag
    end

    it "should have a shipping options radio selector for Shipping Options " do
        mocked_tooltag = double("ToolTag")
        mocked_input = double("table")
        mocked_className = double("id")
        mocked_webinstoreradiobuttons = double("WebInStoreRadioButtons")

        $tracer.should_receive(:trace).with(:shipment_progress).ordered

        @browser.should_receive(:table).ordered.and_return(mocked_input)
        @browser.should_receive(:create_ats_regex_string).with("shipmentprogress").ordered.and_return("shipmentprogress")
        mocked_input.should_receive(:id).with("shipmentprogress").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :shipment_progress, @browser).ordered.and_return(mocked_tooltag)
        WebInStoreRadioButtons.should_receive(:new).with(mocked_tooltag, @browser).ordered.and_return(mocked_webinstoreradiobuttons)

        @browser.shipment_progress.should == mocked_webinstoreradiobuttons
    end

    it "should have a best selling field" do
        mocked_tooltag = double("ToolTag")
        mocked_div = double("a")
        mocked_className = double("id")

        $tracer.should_receive(:trace).with(:best_selling_sort).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_div)
        @browser.should_receive(:create_ats_regex_string).with("bestselling").ordered.and_return("bestselling")
        mocked_div.should_receive(:id).with("bestselling").ordered.and_return(mocked_className)
        ToolTag.should_receive(:new).with(mocked_className, :best_selling_sort).ordered.and_return(mocked_tooltag)

        @browser.best_selling_sort.should == mocked_tooltag
    end

    it "should have a drop ship badge" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")

        $tracer.should_receive(:trace).with(:drop_ship_badge).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("ats-wis-catalogdropship").ordered.and_return("ats-wis-catalogdropship")
        mocked_tag.should_receive(:className).with("ats-wis-catalogdropship").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :drop_ship_badge).ordered.and_return(mocked_tooltag)

        @browser.drop_ship_badge.should == mocked_tooltag
    end

    it "should have a error message label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("div")
        mocked_attribute = double("id")

        $tracer.should_receive(:trace).with(:error_message).ordered

        @browser.should_receive(:div).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("errmsg").ordered.and_return("errmsg")
        mocked_tag.should_receive(:id).with("errmsg").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :error_message).ordered.and_return(mocked_tooltag)

        @browser.error_message.should == mocked_tooltag
    end

    it "should have a shipping search result label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("td")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:shipping_search_result).ordered

        @browser.should_receive(:td).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("searchhead").ordered.and_return("searchhead")
        mocked_tag.should_receive(:className).with("searchhead").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :shipping_search_result).ordered.and_return(mocked_tooltag)

        @browser.shipping_search_result.should == mocked_tooltag
    end

    it "should have a disabled button" do
        mocked_tooltag = double("ToolTag")
        mocked_jquery = double("jquery")
        $tracer.should_receive(:trace).with(:disabled_button).ordered
        @browser.should_receive(:jquery).with("button[class='addtocart redbutton_gray ats-wis-addtocartbtn']").ordered.and_return(mocked_jquery)
        ToolTag.should_receive(:new).with(mocked_jquery, :disabled_button).ordered.and_return(mocked_tooltag)
        @browser.disabled_button.should == mocked_tooltag
    end

    it "should have a empty cart message label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("span")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:empty_cart_message).ordered

        @browser.should_receive(:span).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("emptyCartMsg").ordered.and_return("emptyCartMsg")
        mocked_tag.should_receive(:className).with("emptyCartMsg").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :empty_cart_message).ordered.and_return(mocked_tooltag)

        @browser.empty_cart_message.should == mocked_tooltag
    end

    it "should have a sort price label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("a")
        mocked_attribute = double("id")
        $tracer.should_receive(:trace).with(:sort_price).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("price").ordered.and_return("price")
        mocked_tag.should_receive(:id).with("price").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :sort_price).ordered.and_return(mocked_tooltag)

        @browser.sort_price.should == mocked_tooltag
    end

    it "should have a sort release date label" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("a")
        mocked_attribute = double("id")
        $tracer.should_receive(:trace).with(:sort_release_date).ordered

        @browser.should_receive(:a).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("releasedate").ordered.and_return("releasedate")
        mocked_tag.should_receive(:id).with("releasedate").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :sort_release_date).ordered.and_return(mocked_tooltag)

        @browser.sort_release_date.should == mocked_tooltag
    end

    it "should have a product search sku" do
        mocked_tooltag = double("ToolTag")
        mocked_tag = double("tr")
        mocked_attribute = double("className")
        $tracer.should_receive(:trace).with(:product_search_sku).ordered

        @browser.should_receive(:tr).ordered.and_return(mocked_tag)
        @browser.should_receive(:create_ats_regex_string).with("productsearchsku").ordered.and_return("productsearchsku")
        mocked_tag.should_receive(:className).with("productsearchsku").ordered.and_return(mocked_attribute)
        ToolTag.should_receive(:new).with(mocked_attribute, :product_search_sku).ordered.and_return(mocked_tooltag)

        @browser.product_search_sku.should == mocked_tooltag
    end
end
