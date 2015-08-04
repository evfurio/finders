qaautomation_finders_dir = ENV["QAAUTOMATION_FINDERS"]
require "#{qaautomation_finders_dir}/Common/Services/src/SOAP/services_requires"

# Used to avoid actual initializing base class, through super.
class SoapService
    def test_initialize(wsdl_uri, config = nil)
        puts "dummy"

        unless config.nil?
            puts "dummy config"
        end
    end
end

describe CommerceServerDataService, "initialize" do
    before(:all) do
        # alias the base class in order to avoid issue with unit testing"super"
        class SoapService
            alias :initialize :test_initialize
        end
    end

    it "should initialize without config" do
        service = CommerceServerDataService.allocate
        mocked_wsdl = double("wsdl")

        service.should_receive(:puts).with("dummy").ordered
        service.should_not_receive(:puts).with("dummy config").ordered

        service.send(:initialize, mocked_wsdl)
        CommerceServerDataService.superclass.should == SoapService
    end

    it "should initialize with config" do
        service = CommerceServerDataService.allocate
        mocked_wsdl = double("wsdl")
        mocked_config = double("config")

        service.should_receive(:puts).with("dummy").ordered
        service.should_receive(:puts).with("dummy config").ordered

        service.send(:initialize, mocked_wsdl, mocked_config)
        CommerceServerDataService.superclass.should == SoapService
    end
end
