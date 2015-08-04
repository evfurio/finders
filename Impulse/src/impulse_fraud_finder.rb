# == Overview
# Module contains Fraud Queue and Fraud Order History finders.
module ImpulseFraudFinder

    # Returns the "Fraud Queue" label.
    def fraud_queue_label
        $tracer.trace(__method__)
        # unit_test_no_generate: fraud_queue_label, div("/Fraud Queue/")
        return ToolTag.new(div("/Fraud Queue/"), __method__, self)
    end

    # Return the "Fraud Queue" list.
    def fraud_queue_list
        $tracer.trace(__method__)
        # unit_test_no_generate: fraud_queue_list, div("/Fraud Queue/").find.table; ImpulseFraudQueueList
        return ImpulseFraudQueueList.new(ToolTag.new(div("/Fraud Queue/").find.table, __method__, self), self)
    end

    # Return the "View Fraud Queue History" link.
    def view_fraud_queue_history_link
        $tracer.trace(__method__)
        # unit_test_no_generate: view_fraud_queue_history_link, a("/View Fraud Queue History/")
        return ToolTag.new(a("/View Fraud Queue History/"), __method__, self)
    end

    # Return "Fraud Queue Reports" label.
    def fraud_queue_reports_label
        $tracer.trace(__method__)
        # unit_test_no_generate: fraud_queue_reports_label, div.id("ctl00__Content__SearchCriteria").find.table.td("/Fraud Queue Reports/")
        return ToolTag.new(div.id("ctl00__Content__SearchCriteria").find.table.td("/Fraud Queue Reports/"), __method__, self)

    end

    # Return "Fraudulent Order History" label.
    def fraudulent_order_history_label
        $tracer.trace(__method__)
        return ToolTag.new(div("/Fraudulent Order History/"), __method__, self)
    end

    # Return the "Fraudulent Order History" list.
    def fraud_order_history_list
        $tracer.trace(__method__)
        return ImpulseFraudOrderHistoryList.new(ToolTag.new(div("/Fraudulent Order History/").find.table, __method__, self), self)
    end

end
