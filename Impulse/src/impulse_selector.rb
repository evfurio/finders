class ImpulseSelector < CommonComponent
  # Sets the select tag's option specified value. An _ArgumentError_ will be
  # raised if the specified value is not the text for one of the valid option
  # tags.
  # _v_:: value to set the selector to.
  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    @tag.option(v).selected = true
  end

  # Returns the value currently set as selected for the select tag.
  def value()
    $tracer.trace("\tAction: #{format_method(__method__)}")
    @tag.option.selected(true).innerText.strip
  end
end

