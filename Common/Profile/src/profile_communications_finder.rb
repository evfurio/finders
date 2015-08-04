module ProfileCommunicationsFinder

	# Returns the title for the Communications page.
	def communications_header_label()
		# unit_test_no_generate: communications_header_label, h2.className(create_ats_regex_string("ats-communicationslbl"))
		$tracer.trace(__method__)
		return ToolTag.new(h2.className(create_ats_regex_string("ats-communicationslbl")), __method__)
	end

  ##### PowerUp Reward's Communication Preferences Section

  # Returns the success message for the PowerUp Rewards section of the Communications page.
  def pur_communications_success_label()
    # unit_test_no_generate: pur_communications_success_label, div.className(create_ats_regex_string("ats-purcommsuccesslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-purcommsuccesslbl")), __method__)
  end

  # Returns the PowerUp Rewards section title on the Communications page.
  def pur_communications_label()
    # unit_test_no_generate: pur_communications_label,h3.className(create_ats_regex_string("ats-purcommlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-purcommlbl")), __method__)
  end
	
	# Returns the Update button for PUR on the Communications page.
	def communications_update_button()
		# unit_test_no_generate: communications_update_button, button.className(create_ats_regex_string("ats-commupdatebtn"))
		$tracer.trace(__method__)
		return ToolTag.new(button.className(create_ats_regex_string("ats-commupdatebtn")), __method__)
  end

  # Returns the save error message for the PUR section on the Communications page.
  def pur_communications_error_label()
    # unit_test_no_generate: pur_communications_error_label, div.className(create_ats_regex_string("ats-purcommerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-purcommerrorlbl")), __method__)
  end

  ##### GameStop's Communication Preferences Section

  # Returns the success message for the GameStop section on the Communications page.
  def gs_communications_success_label()
    # unit_test_no_generate: gs_communications_success_label, div.className(create_ats_regex_string("ats-gscommsuccesslbl"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-gscommsuccesslbl")), __method__)
  end

  # Returns the GameStop section title on the Communications page.
  def gs_communications_label()
    # unit_test_no_generate: gs_communications_label, h3.className(create_ats_regex_string("ats-gscommlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(h3.className(create_ats_regex_string("ats-gscommlbl")), __method__)
  end

  # Returns the subscribe button for the GameStop section on the Communications page.
  def gs_subscribe_button()
    # unit_test_no_generate: gs_subscribe_button, button.className(create_ats_regex_string("ats-gssubscribebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-gssubscribebtn")), __method__)
  end

  # Returns the unsubscribe button for the GameStop section on the Communications page.
  def gs_unsubscribe_button()
    # unit_test_no_generate: gs_unsubscribe_button, button.className(create_ats_regex_string("ats-gsunsubscribebtn"))
    $tracer.trace(__method__)
    return ToolTag.new(button.className(create_ats_regex_string("ats-gsunsubscribebtn")), __method__)
  end

  # Returns the save error message for the GameStop section on the Communications page.
  def gs_communications_error_label()
    # unit_test_no_generate: gs_communications_error_label, div.className(create_ats_regex_string("ats-gscommerrorlbl"))
    $tracer.trace(__method__)
    return ToolTag.new(div.className(create_ats_regex_string("ats-gscommerrorlbl")), __method__)
  end

end
