module GameStopRespMobileFooterFinder

  # Returns mgs_footer_section
  def mgs_footer_section
		$tracer.trace(__method__)
		return ToolTag.new(section.className(create_ats_regex_string("ats-footer-section")), __method__)
	end

	# Returns mgs_footer_lnklist
  def mgs_footer_lnklist
		$tracer.trace(__method__)
		return ToolTag.new(ul.className(create_ats_regex_string("ats-footerList-links")).li, __method__)
	end

      # Returns mgs_ftr_fullsite_lnk
      def mgs_ftr_fullsite_lnk
      $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-ftr-fullSite")), __method__)
      end

      # Returns mgs_ftr_about_lnk
      def mgs_ftr_about_lnk
      $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-ftr-about")), __method__)
      end

      # Returns mgs_ftr_privpolicy_lnk
      def mgs_ftr_privpolicy_lnk
      $tracer.trace(__method__)
        return ToolTag.new(a.className(create_ats_regex_string("ats-ftr-privacyPolicy")), __method__)
      end

    # Returns mgs_ftr_feedback_lnk
    def mgs_ftr_feedback_lnk
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-ftr-feedback")), __method__)
    end

    # Returns mgs_ftr_condition_lnk
    def mgs_ftr_condition_lnk
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-conditionsOfUSe")), __method__)
    end

    # Returns mgs_ftr_contact_lnk
    def mgs_ftr_contact_lnk
      $tracer.trace(__method__)
      return ToolTag.new(a.className(create_ats_regex_string("ats-ftr-contact")), __method__)
    end

  # Returns mgs_footer_otherlist
  def mgs_footer_otherlist
    $tracer.trace(__method__)
    return ToolTag.new(ul.className(create_ats_regex_string("ats-footerList-others")).li, __method__)
  end

end