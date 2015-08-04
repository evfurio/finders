# == Overview
# This calss is used to simplify d-con script writers interaction with the Rest Agent
#
# Refer to the parent base class (RestService) for more information.
#
# == Usage
# config = RestAgentConfig.new
# config.set_user_agent('iPhone')
# config.set_option("accept", 'text/xml')
# config.set_option("content-type", 'text/xml')
#
# client = PaymentMethodsResource.new("https://logindev.gamestop.com/Api/PaymentMethods", config)
#
# Example:
# request = client.get_request_from_template(PAYMENT_METHODS_RESOURCE_TEMPLATE)
# response = client.activate(request.xml)
#
# NOTE: Please see online service resource help documents for more detailed information.

class PaymentMethodsResource < RestService

    # resource uri, is the uri for the rest service resource.  This is the uri provided at instantiation of the resource.
    attr_reader :resource_uri

    # Initializes Resource using user specified resource URI.
    # === Parameters:
    # _resource_uri_:: URI string of user specified resource
    # _config_::user provided config.  This must be an instance of RestAgentConfig.
    def initialize(resource_uri, config)
        @resource_uri = resource_uri

        super(config)
    end

    # Creates new Payment method.
    # === Parameters:
    # _payment_method_:: JSON or XML template of Payment Method.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def create(payment_method, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.post(@resource_uri, payment_method)
    end

    # Deletes a digital wallet according to id
    # === Parameters:
    # _id_:: id of digital wallet to delete
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def delete(id, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get("#{@resource_uri}/#{id}/delete")
    end

    # Returns digital wallets.
    # === Parameters:
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def index(cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get(@resource_uri)
    end

    # Sets the default wallet based on id.
    # === Parameters:
    # _id_:: id of digital wallet to set a default
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def set_as_default(id, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.put("#{@resource_uri}/setasdefault/#{id}")
    end

    # Returns digital wallet for the current user by id
    # === Parameters:
    # _id_:: id of digital wallet to be retrieved.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def show(id, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.get("#{@resource_uri}/#{id}")
    end

end
