# == Overview
# Parent class for other selectors. Holds common methods.
# == Usage
#  @browser.state_province_selector.value = "Louisiana"
#  @browser.state_province_selector.value.should == "Louisiana"
#  @browser.country_selector.value = "Norway"
#  @browser.country_selector.value.should == "Norway"

class CommonSelector < CommonComponent
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

class CommonRadioButtons < CommonComponent

  # Returns the length of tags
  def length()
    # If there are no items, return 0 for the length.
    return @tag.exists ? @tag.length : 0
  end

  # Returns the available value labels
  def available_values
    result = []
    for i in (0 .. @tag.length - 1)
      result << @tag[i].value
    end
    return result
  end


  # Returns the label of the currently checked radio button
  def value
    $tracer.trace("\tAction: #{format_method(__method__)}")
    label = ""
    for i in (0 .. @tag.length - 1)
      if @tag[i].checked == "true"
        label =@tag[i].value
        break
      end
    end
    return label
  end

  # Sets the radio button matching the passed in label
  def value=(k)
    $tracer.trace("\tSet: #{format_method(__method__)} #{k}")

    if @tag.length == 0 || k.nil?
      raise ToolException.new(
                Exception.new,
                %Q(Option did not exist when you tried to set the value to "#{k}")
            )
    end

    for i in (0 .. @tag.length - 1)
      if k == @tag[i].value
        @tag[i].checked = true
        break
      end
    end
  end

end