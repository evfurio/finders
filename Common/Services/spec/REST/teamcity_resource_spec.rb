qaautomation_finders_dir = ENV["QAAUTOMATION_FINDERS"]
require "#{qaautomation_finders_dir}/Common/Services/src/REST/services_requires"

# Used to avoid actual initializing base class, through super.
class RestService
    def test_initialize(config = nil)
        puts "dummy"

        unless config.nil?
            puts "dummy config"
        end
    end
end

describe TeamCityResource, "initialize" do
   before(:all) do
        # alias the base class in order to avoid issue with unit testing"super"
        class RestService
            alias :initialize :test_initialize
        end
    end

    it "should initialize with config" do
        resource = TeamCityResource.allocate
        mocked_uri = double("resource_uri")
        mocked_config = double("config")

        resource.should_receive(:puts).with("dummy").ordered
        resource.should_receive(:puts).with("dummy config").ordered

        resource.send(:initialize, mocked_uri, mocked_config)
        resource.resource_uri.should == mocked_uri
        TeamCityResource.superclass.should == RestService
    end
end

describe TeamCityResource, "builds" do
    it "should perform builds" do
        resource = TeamCityResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "a_resource_uri")

        mocked_data = double("data")
        resource.instance_variable_get(:@client).should_receive(:get).with("a_resource_uri/builds").ordered.and_return(mocked_data)

        resource.builds.should == mocked_data
    end
end

