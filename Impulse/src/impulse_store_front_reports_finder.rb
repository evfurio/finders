# == Overview
# Module contains StoreFront Reports finders.
module ImpulseStoreFrontReportsFinder
    # Returns "StoreFront Reports" label.
    def storefront_reports_label
        $tracer.trace(__method__)
        # unit_test_no_generate: storefront_reports_label, td.with("StoreFront Reports")
        return ToolTag.new(td.with("StoreFront Reports"), __method__, self)
    end

    # Returns the "Start Date" field.
    def start_date_field
        $tracer.trace(__method__)
        # unit_test_no_generate: start_date_field, input.name("/startDate|_StartDate/")
        return ToolTag.new(input.name("/startDate|_StartDate/"), __method__, self)
    end

    # Returns the "End Date" field.
    def end_date_field
        $tracer.trace(__method__)
        # unit_test_no_generate: end_date_field, input.name("/endDate|_EndDate/")
        return ToolTag.new(input.name("/endDate|_EndDate/"), __method__, self)
    end

    # Returns the "Select Report" list.
    def select_report_selector
        $tracer.trace(__method__)
        # unit_test_no_generate: select_report_selector, self.select.name("selReport"); ImpulseSelector
        return ImpulseSelector.new(ToolTag.new(get_self.select.name("selReport"), __method__, self), self)
    end

    # Returns the submit button.
    def storefront_submit_button
        $tracer.trace(__method__)
        # unit_test_no_generate: storefront_submit_button, input.name("btnSubmit")
        return ToolTag.new(input.name("btnSubmit"), __method__, self)
    end

    # Returns the "Create Product Report" label.
    def create_product_report_label
        $tracer.trace(__method__)
        # unit_test_no_generate: create_product_report_label, td.with("Create Product Report")
        return ToolTag.new(td.with("Create Product Report"), __method__, self)
    end

    # Returns the "Product ID:" field.
    def product_id_field
        $tracer.trace(__method__)
        # unit_test_no_generate: product_id_field, input.name("txtProdID")
        return ToolTag.new(input.name("txtProdID"), __method__, self)
    end

    # Returns the product selector.
    def product_selector
        $tracer.trace(__method__)
        # unit_test_no_generate: product_selector, ToolTag.new(self.select.name("/sltProdID|cboProducts/"); ImpulseSelector
        return ImpulseSelector.new(ToolTag.new(get_self.select.name("/sltProdID|cboProducts/"), __method__, self), self)
    end

    # Returns the products by country label.
    def products_by_country_report_label
        $tracer.trace(__method__)
        # unit_test_no_generate: products_by_country_report_label, td.with("Products By Country Report")
        return ToolTag.new(td.with("Products By Country Report"), __method__, self)
    end

    # Returns affiliate sales summary label. Label used to determine "Affiliate Partner Report" report.
    def affiliate_sales_summary_label
        $tracer.trace(__method__)
        # unit_test_no_generate: affiliate_sales_summary_label, td.with("Affiliate Sales Summary")
        return ToolTag.new(td.with("Affiliate Sales Summary"), __method__, self)
    end

    # Returns coupon sales summary label. Label used to determine "Coupon Summary" report.
    def coupon_sales_summary_label
        $tracer.trace(__method__)
        # unit_test_no_generate: coupon_sales_summary_label, td.with("/^Coupon Sales Summary/")
        return ToolTag.new(td.with("/^Coupon Sales Summary/"), __method__, self)
    end

    # Returns product sales and coupons summary label.  Label used to determine "Legacy Product Sales Report" report.
    # NOTE: functionality should be swapped with product_sales_report_label.
    def product_sales_and_coupons_summary_label
        $tracer.trace(__method__)
        # unit_test_no_generate: product_sales_and_coupons_summary_label, td.with("/^Product Sales and Coupon Summary/")
        return ToolTag.new(td.with("/^Product Sales and Coupon Summary/"), __method__, self)
    end

    # Returns impulse legacy store report label. Label used to determine "Product Sale Report" report.
    # NOTE: functionality should be swapped with legacy_product_sales_report.
    def impulse_legacy_store_reports_label
        $tracer.trace(__method__)
        # unit_test_no_generate: impulse_legacy_store_reports_label, a.with("Impulse Legacy Store Reports")
        return ToolTag.new(a.with("Impulse Legacy Store Reports"), __method__, self)
    end

    # Returns order having coupons. Label used to determine "Orders with Coupons" report.
    def orders_having_coupons_label
        $tracer.trace(__method__)
        # unit_test_no_generate: orders_having_coupons_label, td.with("/^Orders having coupons/")
        return ToolTag.new(td.with("/^Orders having coupons/"), __method__, self)
    end

    # Returns sales summary label. Label used to determine "Pre-Order Report" label and "Sales Summary" report.
    def sales_summary_label
        $tracer.trace(__method__)
        # unit_test_no_generate: sales_summary_label, td.with("/^Sales Summary/")
        return ToolTag.new(td.with("/^Sales Summary/"), __method__, self)
    end

    # Returns product sales by territory label. Label used to determine "Product Sales By Territory" report.
    def product_sales_by_territory_label
        $tracer.trace(__method__)
        # unit_test_no_generate: product_sales_by_territory_label, td.with("/^Product Sales by Territory/")
        return ToolTag.new(td.with("/^Product Sales by Territory/"), __method__, self)
    end

    # Returns publisher sales totals label. Label used to determine "Publisher Sales Rollup" report.
    def publisher_sales_totals_label
        $tracer.trace(__method__)
        # unit_test_no_generate: publisher_sales_totals_label, td.with("/^Publisher Sales Totals/")
        return ToolTag.new(td.with("/^Publisher Sales Totals/"), __method__, self)
    end

    # Returns product sales by hour summary label. Label used to determine "Sales By Hour" report.
    def product_sales_by_hour_summary_label
        $tracer.trace(__method__)
        # unit_test_no_generate: product_sales_by_hour_summary_label, td.with("/^Product Sales by Hour Summary/")
        return ToolTag.new(td.with("/^Product Sales by Hour Summary/"), __method__, self)
    end

    # Returns sales details label. Label used to determine "Sale Details" report.
    def sales_details_label
        $tracer.trace(__method__)
        # unit_test_no_generate: sales_details_label, td.with("Sales Details")
        return ToolTag.new(td.with("Sales Details"), __method__, self)
    end

    # Returns token sales summary label. Label used to determine Token Sales Report" report.
    def token_sales_summary_label
        $tracer.trace(__method__)
        # unit_test_no_generate: token_sales_summary_label, td.with("/^Token Sales Summary/")
        return ToolTag.new(td.with("/^Token Sales Summary/"), __method__, self)
    end

    # Returns transaction services label. Label used to determine "Transaction Service Report" report.
    def transaction_services_label
        $tracer.trace(__method__)
        # unit_test_no_generate: transaction_services_label, td.with("Transaction Services")
        return ToolTag.new(td.with("Transaction Services"), __method__, self)
    end

end
