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
# client = ActivationResource.new("https://logindev.gamestop.com/Api/Activation", config)
#
# Example:
# request = client.get_request_from_template(ACTIVATIONREQUEST_RESOURCE_TEMPLATE)
# response = client.activate(request.xml)
#
# NOTE: Please see online service resource help documents for more detailed information.

class ActivationResource < RestService

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

    # This is the final activate call, ie (updates communcation preferences, updates security question, activates card).
    # === Parameters:
    # _data_:: user specified data as a string. This generally should be via an xml/json template,
    #          but must be in the type specified via the configuration.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def activate(activation_request, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.post(@resource_uri, activation_request)
    end

    # Checks the status of a card number and customer to see if activation is possible.
    # === Parameters:
    # _data_:: user specified data as a string. This generally should be via an xml/json template,
    #          but must be in the type specified via the configuration.
    # _cookie_or_cookies:: SeleniumCookie/WebSpecCookie cookie or ruby Array of cookies.  NOTE: the parameter is optional.  The cookie used
    #                      normally comes from the login webpage, via a browser.  It may be added directly to the http header as part of the
    #                      configuration or as a parameter.  As a parameter, any cookie with the same name will be replaced, or appended to
    #                      if the name is different.  As a parameter may be useful as some cookies are on rolling timers.
    def check_activation_status(activation_data, cookie_or_cookies = nil)
        add_cookie_to_http_header(cookie_or_cookies)
        return @client.post("#{@resource_uri}/check", activation_data)
    end
end

