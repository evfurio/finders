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
# client = GameStopCartResource.new("http://m.qa.gamestop.com/Orders/AddToCart", config)
#
# Example:
# request = client.get_request_from_template(ADDTOCART_RESOURCE_TEMPLATE)
# response = client.activate(request.xml)
#
# NOTE: Please see online service resource help documents for more detailed information.

class GameStopCartResource < RestService

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

  # Performs the "search" operation, responding with a dot object.  The search operation requires an
  # XML or JSON data structure -- this is due to the password possibly being exposed in log files,
  # even though the connection established is secure.
  # === Parameters:
  # _data_:: user specified data as a string. This generally should be via an xml/json template, or from the "index" operation
  #          response, but must be in the type specified via the configuration.
  # _parameters_:: user specified query string in the standard REST format "var=val&var=val"
  #                  (excluding beginning "?"). Default is no query string.
  def add_to_cart(data)
    resource_uri = "#{@resource_uri}/Orders/AddToCart"
    return @client.post(resource_uri, data)
  end

end