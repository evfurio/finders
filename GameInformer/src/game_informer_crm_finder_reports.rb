# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

Object.send(:remove_const, :GameInformerCrmFinderReports) if Object.const_defined?(:GameInformerCrmFinderReports)

# This module exists to provide an abstraction layer for
# GameInformer test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameInformerCrmFinderReports

  ####################################################################################################################
  ##### Finders from CRM Reports page (http://<crm_env>.gameinformer.com/Reports) 							   #####
  ####################################################################################################################

  # Return the Reports Label
  def report_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("/Reports/"), __method__)
  end

  # Return the Score Card Report hyperlink on the main Reports page.
  def score_card_report_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").id("main").ul.a.href("/Reports/GIScoreCard/"), __method__)
  end

  # Return the Sales by State Report hyperlink on the main Reports page.
  def sales_by_state_report_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").id("main").ul.a.href("/Reports/GISalesByState/"), __method__)
  end

  # Return the Sales by Zip Report hyperlink on the main Reports page.
  def sales_by_zip_report_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").id("main").ul.a.href("/Reports/GISalesByZip/"), __method__)
  end

  # Return the Ten Day Paid Sales Report hyperlink on the main Reports page.
  def ten_day_paid_sales_report_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").id("main").ul.a.href("/Reports/GITenDaySales/"), __method__)
  end

  # Return the 9850 Sales by State Report hyperlink on the main Reports page.
  def store9850_sales_by_state_report_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").id("main").ul.a.href("/Reports/Store9850Report/"), __method__)
  end

  # Return the 9850 Sales by City Report hyperlink on the main Reports page.
  def store9850_sales_by_city_report_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").id("main").ul.a.href("/Reports/Store9850ReportByCityStatezip/"), __method__)
  end

  ####################################################################################################################
  ##### Common finders on Reports                                                                                #####
  ####################################################################################################################

  # Return the Title selector from the Score Card Report and SubscriptionTitle ID for Sales by States Report
  def title_id_selector
    $tracer.trace(__method__)
    return GameInformerCRMSelector.new(div.className("page").div.id("main").div.className("row").select, __method__)

  end

  # Return the Execute button.
  def execute_report_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("row").input.value("Execute"), __method__)

  end

  # Return the Download link.
  def download_report_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").a.href("/Download/"), __method__)

  end

  # Return the Score Report, Sales by State, Sales by Zip Details columns
  def report_column_details
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").table.className("details"), __method__)
  end

  # Return the month field for a report.
  #  def month_report_field
  #      $tracer.trace(__method__)
  #      return ToolTag.new(div.className("page").div.id("main").div.className("row").span., __method__)
  #    end

  # Return the year field for a report.
  #  def year_report_field
  #      $tracer.trace(__method__)
  #      return ToolTag.new(div.className("page").div.id("main").div.className("row").span., __method__)
  #    end


  # Return the start date range for 9850 Sales and 9850 Sales by City and Zip label
  def start_date_picker_field
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("row").input.id("startdatepicker"), __method__)
  end


  # Return the start date range for 9850 Sales and 9850 Sales by City and Zip label
  def end_date_picker_field
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("row").input.id("enddatepicker"), __method__)
  end

  ####################################################################################################################
  ##### Finders from Score Card Report page (http://<crm_env>.gameinformer.com/Reports/GIScoreCard)			   #####
  ####################################################################################################################

  # Return the label on Score Card Report
  def score_card_report_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("/Score Card/"), __method__)
  end

  # Return the Start Issue selector - currently not working
  def start_issue_selector
    $tracer.trace(__method__)
    return GameInformerCRMSelector.new(div.className("page").div.id("main").div.className("row").select, __method__)

  end


  # Return the No records found button.
  def no_records_found_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").table.className("details").td("/No records found/"), __method__)

  end


  ####################################################################################################################
  ##### Finders from Sales by State Report page (http://<crm_env>.gameinformer.com/Reports/GISalesByState) 	   #####
  ####################################################################################################################
  # Return the label on Sales by State Report
  def sales_by_state_report_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("/Sales by State/"), __method__)
  end


  ####################################################################################################################
  ##### Finders from Sales by Zip Code Report page (http://<crm_env>.gameinformer.com/Reports/GISalesByZip) 	   #####
  ####################################################################################################################
  # Return the label on Sales by Zip Report
  def sales_by_zip_report_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("/Sales by Zip/"), __method__)
  end

  ####################################################################################################################
  ##### Finders from Ten Day Paid Sales Report page (http://<crm_env>.gameinformer.com/Reports/GITenDaySales)	   #####
  ####################################################################################################################
  # Return the label on Ten day Paid Sales Report
  def ten_day_paid_sales_report_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("/Ten Day Paid Sales/"), __method__)
  end

  # Return the field Ten Day Paid Sales Report
  def ten_day_paid_sales_report_field
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("row").input.name("EndDate"), __method__)
  end

  ####################################################################################################################
  ##### Finders from Store 9850 Sales Report page (http://<crm_env>.gameinformer.com/Reports/Store9850Report)	   #####
  ####################################################################################################################
  # Return the label on 9850 Sales by State Report
  def store9850_sales_by_state_report_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("/Store 9850 Sales/"), __method__)
  end

  ####################################################################################################################
  ##### Finders from Store 9850 Sales By City State and Zip Report page #####
  ##### (http://<crm_env>.gameinformer.com/Reports/Store9850ReportByCityStatezip) 							   #####
  ####################################################################################################################
  # Return the label on 9850 Sales by City and State Report
  def store9850_sales_by_city_report_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("/Store 9850 Sales By City State and Zip/"), __method__)
  end
end