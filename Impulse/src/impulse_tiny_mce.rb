# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2012 GameStop, Inc.
# Not for external distribution.

# == Overview
# This class houses and provides finders manipulating a tinyMCE instance
# on a web page.
# http://www.tinymce.com/
# == Usage
#  @browser.forums_post_message_field.value = "my message content"

class ImpulseTinyMCE < CommonComponent

  # Sets the content of the tinyMCE editor. Note, this replaces any
  # content currently in the editor.
  # === Parameters:
  # _content_: string of characters to be placed in the editor.
  def value=(content)
    $tracer.trace("\tSet: #{format_method(__method__)} #{content}")
    @browser.execute("tinyMCE.editors[0].setContent('#{content}')")
  end
end

