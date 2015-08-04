# Author:: Paul Grizzaffi
# Copyright:: Copyright (c) 2011 GameStop, Inc.
# Not for external distribution.

# == Overview
# Class for Payment Options radio buttons.
# == Usage
#  @browser.payment_method_buttons.value = "Pay using Credit Card"
class ImpulseRadioButtons < CommonComponent

  # Mapping of button text on the page partial id.
  @@label_value_hash = {
    "Pay using Credit Card" => "RadioPaymentMethodCredit",
    "Pay using PayPal" => "RadioPaymentMethodPaypal"
  }

  # Returns the number of buttons. If there are no buttons, return
  # 0 for the length.
  def length
    return @tag.exists ? @tag.length : 0
  end

  # Sets the radio button matching the passed in label
  def value=(v)
    $tracer.trace("\tSet: #{format_method(__method__)} #{v}")
    value = @@label_value_hash[v]
    if length == 0 || value.nil?
      raise Exception.new(%Q["#{v}" is not a valid option for #{@tag.tag_name}])
    end

    @tag.find.input.id("/" + value + "/").checked = true
  end

  # Returns the label of the currently checked radio button.
  def value
    $tracer.trace("\tAction: #{format_method(__method__)}")
    label = ""

    input_list = @tag.find.input
    raise Exception.new("value called when radio buttons didn't exist") unless input_list.exists

    for i in (0 .. input_list.length - 1)
      if input_list.at(i).checked == "true"
        label = id_to_key(input_list.at(i).get("id"))
        break
      end
    end
    return label
  end

  private
  # Translates the specified HTML id to the associated key in the
  # @@label_value_hash. The translated key is returned. An Exception is
  # raised if the id can't be translated.
  # === Parameters:
  # _id_: HTML id to translate.
  def id_to_key(id)
    value_list = @@label_value_hash.values
    for i in 0..value_list.length - 1
      if id.include? value_list[i]
        return @@label_value_hash.key(value_list[i])
      end
    end
    raise Exception.new("Could not match id #{id} to any values in the hash table")
  end

end
