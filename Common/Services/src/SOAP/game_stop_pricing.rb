# == Overview
# This class is used to simplify d-con script writers interaction with the SOAP Agent.  This class may be
# instantiated directory, or be instantiated through one of the sub classes.
#
# # Service operations methods are dynamically generated.  You will NOT find these located in the rdocs because of this.  Each operation
# method call is created directly from the wsdl. For example:
#
# Querying the wsdl, you will see operations, such as:
#   <wsdl:operation name="GetAdjustedLineItemPrices"></wsdl:operation>
#
# This will be translated to a ruby underscore style method call named "get_adjusted_line_item_prices".  This can then be used as a client method call,
# as shown below in the Usage.  Currently, the GET_ADJUSTED_LINE_ITEM_PRICES_XML xml request string will need to be provided by the user.
#
# Refer to the parent base class (SoapService) for more information.
#
# == Usage
#      @client = PricingService.new("http://qa.services.gamestop.com/Ecom/Merchandising/Pricing/v1/PricingService.svc?wsdl")
#
class PricingService < SoapService
    # Initializes Service using user specified wsdl.  Also dynamically generates soap
    # operation method calls.
    # === Parameters:
    # _wsdl_uri_:: URI of user specified wsdl
    # _config_::user provided config, if non-default configuration is needed.  Default configuration
    #           is soap 2 (1.2) WSA.
    def initialize(wsdl_uri, config = nil)
        if config.nil?
            super(wsdl_uri)
        else
            super(wsdl_uri, config)
        end
    end
end
