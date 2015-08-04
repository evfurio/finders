# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

Object.send(:remove_const, :GameInformerCrmFinderCodeTables) if Object.const_defined?(:GameInformerCrmFinderCodeTables)

# This module exists to provide an abstraction layer for
# GameInformer test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameInformerCrmFinderCodeTables

  ####################################################################################################################
  ##### Finders from Maintain Code Tables page (<crm_env>.gameinformer.com/Maintenance)  						   #####
  ####################################################################################################################

  def code_tables_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("Maintain Code Tables"), __method__)
  end


  def code_tables_subscription_title_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/SubscriptionTitle"), __method__)
  end

  def code_tables_media_type_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/MediaType"), __method__)
  end

  def code_tables_issue_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/Issue"), __method__)
  end

  def code_tables_item_code_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/ItemCode"), __method__)
  end


  def code_tables_cancel_reason_type_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/CancelReason"), __method__)
  end

  def code_tables_comp_reason_type_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/CompReason"), __method__)
  end

  def code_tables_country_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/Country"), __method__)
  end

  def code_tables_state_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/State"), __method__)
  end

  def code_tables_zip_code_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/ZipCode"), __method__)
  end

  def code_tables_app_settings_link
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").ul.a.href("/settings"), __method__)

  end


  ####################################################################################################################
  ##### Common Maintain Code Tables finders                                                                      #####

  ####################################################################################################################

  def maintain_code_tables_child_page_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h1, __method__)
  end

  def maintain_code_tables_media_type_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").table.className("details").th.className("value"), __method__)
  end

  ####################################################################################################################
  ##### Finders from Subscription Title page (<crm_env>.gameinformer.com/SubscriptionTitle)  				          	 #####
  ####################################################################################################################

  def subscription_digital_management_title
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").a.href("/SubscriptionTitle/Edit/2"), __method__)
  end

  def subscription_digital_print_title
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").a.href("/SubscriptionTitle/Edit/1"), __method__)
  end

  def subscription_title_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").table.className("details").th.className("code"), __method__)
  end

  def subscription_subscriber_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").a.href("/SubscriptionTitle/Add"), __method__)
  end

  ####################################################################################################################
  ##### Finders from Media Type Management page (<crm_env>.gameinformer.com/MediaType)  					               #####
  ####################################################################################################################

  def media_type_print_title
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").a.href("/MediaType/Edit/1"), __method__)
  end

  def media_type_digital_title
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").a.href("/MediaType/Edit/2"), __method__)
  end

  def media_type_add_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").a.href("/MediaType/Add"), __method__)
  end


####################################################################################################################
##### Finders from Issue Management page (<crm_env>.gameinformer.com/Issue)           					               #####
####################################################################################################################

  def issue_management_title_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Title [Media Type]"), __method__)
  end

  def issue_management_sku_num_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("SKU #"), __method__)
  end

  def issue_management_issue_num_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Issue #"), __method__)
  end

  def issue_management_volume_num_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Volume #"), __method__)
  end

  def issue_management_year_num_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Year"), __method__)
  end

  def issue_management_month_num_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Month"), __method__)
  end

  def issue_management_on_sale_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("On Sale"), __method__)
  end

  def issue_management_cut_off_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Cut Off"), __method__)
  end

  def issue_management_seq_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Seq"), __method__)
  end

  def issue_management_view_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-container").div.className("data-form").input.value("View"), __method__)
  end

  def issue_management_add_issue_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-container").div.className("data-form").a.href("/Issue/Add"), __method__)
  end

  ####################################################################################################################
  ##### Finders from Item Code Management page (<crm_env>.gameinformer.com/ItemCode)           					         #####
  ####################################################################################################################

  def item_code_management_label
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").h2("Item Code Management"), __method__)
  end

  def item_code_items_filter_picker_field
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-container").div.className("data-form").form.action("/ItemCode").select.id("SubscriptionTitleFilter"), __method__)
  end

  def item_code_items_types_picker_field
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-container").div.className("data-form").form.action("/ItemCode").select.id("SubscriptionTypeFilter"), __method__)
  end

  def item_code_management_search_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-container").div.className("data-form").input.value("Search"), __method__)
  end

  def item_code_management_add_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-container").a.href("/ItemCode/Add"), __method__)
  end

  def item_code_management_itemcode_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("ItemCode"), __method__)
  end

  def item_code_management_title_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Title"), __method__)
  end

  def item_code_management_mediatype_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Media Type"), __method__)
  end

  def item_code_management_subscriptiontype_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Subscription Type"), __method__)
  end

  def item_code_management_issues_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Issues"), __method__)
  end

  def item_code_management_price_column
    $tracer.trace(__method__)
    return ToolTag.new(div.className("page").div.id("main").div.className("data-list-container").tbody.td("Price"), __method__)
  end

end


