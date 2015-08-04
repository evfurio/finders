# == Overview
# This calss is used to simplify d-con script writers interaction with the Rest Agent
#
# Refer to the parent base class (RestService) for more information.
#
# == Usage
# config = RestAgentConfig.new
# config.set_user_agent('iPhone')
# config.set_option("accept", 'application/json; charset = utf-8')
# config.set_option("content-type", 'application/json; charset = utf-8')
#
# client = CybersourceTokenizationResource.new("http://qa.gamestop.com/Checkout/en/Cybersource", config)
#
# Example:
# request = client.get_request_from_template(GET_SIGNATURE_FROM_CYBERSOURCE)
# response = client.sign(request.json)
#
# NOTE: Please see online service resource help documents for more detailed information.

class CybersourceTokenizationResource < RestService

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

  def sign(data)
    resource_uri = "#{@resource_uri}"
    $tracer.report("THIS IS THE SIGN METHOD DATA: \n #{data.inspect}")
    return @client.post(resource_uri, data)
  end

end