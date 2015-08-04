# == Overview
# This class contains the finders for the EULA panel.  It's generally reached via adding a product to the cart.  One 
# product example is "Delve Deeper".
#
# panel = @browser.eula_panel
# panel.accept_link.click
#
class ImpulseEulaPanel < CommonComponent

    # Returns the 'Accept' link.
    def accept_link
        formatted_method = format_method(__method__)

        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.a.className(create_ats_regex_string("ats-eula-accept-link")), formatted_method, @browser)
    end

    # Returns the eula close 'X'.
    def close_button
        formatted_method = format_method(__method__)

        $tracer.trace(formatted_method)
        return ToolTag.new(@tag.div.className(create_ats_regex_string("ats-eula-close-link")), formatted_method, @browser)
    end

end

