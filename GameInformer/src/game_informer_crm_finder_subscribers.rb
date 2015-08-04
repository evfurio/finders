# Copyright:: Copyright (c) 2013 GameStop, Inc.
# Not for external distribution.

Object.send(:remove_const, :GameInformerCrmFinderSubscribers) if Object.const_defined?(:GameInformerCrmFinderSubscribers)

# This module exists to provide an abstraction layer for
# GameInformer test case writers. It prevents the test case writers
# from having to have intimate knowledge of the underlying tool.

module GameInformerCrmFinderSubscribers

#################################################################################################
##### Finders from CRM Subscription Management page (http://<crm_env>.gameinformer.com/Subscriber#)  ####
#################################################################################################

  # Return the Log Off link
  def log_off_link
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/Account/LogOff/"), __method__)
  end

  # Return the Card # field
  def card_num_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/CardNumber/"), __method__)
  end

  # Return the Subscriber # field
  def subscriber_num_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/SubscriberId/"), __method__)
  end

  # Return the Email field
  def email_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/Email/"), __method__)
  end

  # Return the Last Name field
  def last_name_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/LastName/"), __method__)
  end

  # Return the First Name field
  def first_name_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/FirstName/"), __method__)
  end

  # Return the Address 1  field
  def address_one_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/Address1/"), __method__)
  end

  # Return the City field
  def city_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/City/"), __method__)
  end

  # Return the Zip field
  def zip_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/ZipCode/"), __method__)
  end

  # Return the Phone field
  def phone_field
    $tracer.trace(__method__)
    return ToolTag.new(input.id("/Phone/"), __method__)
  end

  # Return the Clear button
  def subscriber_clear_button
    $tracer.trace(__method__)
    return ToolTag.new(input.value("Clear"), __method__)
  end

  #  Return the Search button - fix
  def subscriber_search_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className("search-button"), __method__)
  end

  #  Return the Create Subscriber button
  def create_subscriber_button
    $tracer.trace(__method__)
    return ToolTag.new(a.href("/Subscriber/AddWithSubscription/"), __method__)
  end

  #  Return the Name column from the table
  def name_column
    $tracer.trace(__method__)
    return ToolTag.new(th.className("user").innerText("/Name/"), __method__)
  end

  #     Return the Email column from the table
  def email_column
    $tracer.trace(__method__)
    return ToolTag.new(th.className("email").innerText("/Email"), __method__)
  end

  #  Return the Phone column from the table
  def phone_column
    $tracer.trace(__method__)
    return ToolTag.new(th.className("phone").innerText("/Phone"), __method__)
  end

  #  Return the Address column from the table
  def address_column
    $tracer.trace(__method__)
    return ToolTag.new(th.className("address").innerText("/Address"), __method__)
  end

  #  Return the Zip Code column from the table
  def zip_code_column
    $tracer.trace(__method__)
    return ToolTag.new(th.className("zipcode").innerText("/Zip Code"), __method__)
  end

  #  Return the Subscriber # column from the table
  def subscriber_num_column
    $tracer.trace(__method__)
    return ToolTag.new(th.className("customnumer").innerText("/Subscriber #"), __method__)
  end


  #  Return the Subscriber menu list
  def create_subscriber_menu
    $tracer.trace(__method__)
    return ToolTag.new(div.className("menu").child("li").a.href("/#/").innerText("/Subscribers/"), __method__)
  end


  #  Return the Subscriber sublistsfrom Subscriber
  def create_subscriber_menu_list
    $tracer.trace(__method__)
    return GameInformerCRMMenuList.new(div.className("menu").li.innerText("/Subscribers/").a, __method__)
  end


  #  Return the Maintenance menu list
  def create_maintenance_menu
    $tracer.trace(__method__)
    return ToolTag.new(div.className("menu").child("li").a.href("/#/").innerText("/Maintenance/"), __method__)
  end

  #  Return the Maintenance Sublists
  def create_maintenance_menu_list
    $tracer.trace(__method__)
    return GameInformerCRMMenuList.new(div.className("menu").li.innerText("/Maintenance/").a, __method__)
  end

  #  Return the Next button
  def subscriber_next_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className("next").innerText("Next"), __method__)
  end

  #  Return the Last button
  def subscriber_last_button
    $tracer.trace(__method__)
    return ToolTag.new(a.className("last").innerText("Last"), __method__)
  end

  #  Return the Go button
  def subscriber_go_button
    $tracer.trace(__method__)
    return ToolTag.new(div.className("pager").input.id("btnJumpToPage").value("Go"), __method__)
  end

  #  Return the total number of pages returned
  def subscriber_total_num_pages_retrieved
    $tracer.trace(__method__)
    return ToolTag.new(div.className("pager").input.id("hdnTotalPages"), __method__)
  end

  #  Return the first page of search result
  def subscriber_first_page_retrieved
    $tracer.trace(__method__)
    return ToolTag.new(div.className("pager").input.id("txtJumpToPage"), __method__)
  end
end