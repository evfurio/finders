# == Overview
# This class contains the finders in order to login using the "My Account Login" page.
# Usage:
#
# panel = @browser.login_account_panel
# panel.email_address_field.value = "email@address.com"
# panel.password_field.value = "password"
# panel.login_button.click
class ImpulseLoginAccountPanel < CommonComponent
  # Returns 'Login to your account' label.
  def login_account_label
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.legend.className(create_ats_regex_string("ats-login-panel-label")), formatted_method, @browser)
  end

  # Returns 'email' field.
  def email_address_field
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-email-address-field")), formatted_method, @browser)
  end

  # Returns 'password' field.
  def password_field
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-password-field")).input, formatted_method, @browser)
  end

  # Returns 'I forgot my password' link.
  def forgot_your_password_link
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.a.className(create_ats_regex_string("ats-forgot-password-link")), formatted_method, @browser)
  end

  # Returns 'Login' button.
  def login_button
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-login-button")), formatted_method, @browser)
  end
end

# == Overview
# This class contains the finder in order to create an account on the "My Account Login" page.
#
# Usage:
# panel = @browser.create_account_panel
# panel.email_address_field.value = "email@address.com"
# panel.confirm_email_address_field.value = "email@address.com"
# panel.password_field.value = "password"
# panel.confirm_password_field.value = "password"
# panel.create_button.click
class ImpulseCreateAccountPanel < CommonComponent
  # Returns 'Don't Have an Account? Create One Now:' label.
  def create_account_label
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.legend.className(create_ats_regex_string("ats-create-panel-label")), formatted_method, @browser)
  end

  # Returns email field.
  def email_address_field
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-email-address-field")), formatted_method, @browser)
  end

  # Returns password field.
  def password_field
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-password-field")).input, formatted_method, @browser)
  end

  # Returns 'verify email' field.
  def confirm_email_address_field
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-confirm-email-address-field")), formatted_method, @browser)
  end

  # Returns 'verify password' field.
  def confirm_password_field
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.div.className(create_ats_regex_string("ats-confirm-password-field")).input, formatted_method, @browser)
  end

  # Returns 'Create' button.
  def create_button
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@tag.find.input.className(create_ats_regex_string("ats-create-account-button")), formatted_method, @browser)
  end

  # Returns the opt in checkbox for promotions, etc.
  def promotions_and_special_offers_opt_in_checkbox
    formatted_method = format_method(__method__)

    $tracer.trace(formatted_method)
    return ToolTag.new(@browser.jquery("span[class~='ats-promos-opt-in-checkbox'], div[class~='ats-promos-opt-in-checkbox']").input, formatted_method, @browser)
  end
  
end
