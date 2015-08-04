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

describe UsersProfilesResource, "initialize" do
   before(:all) do
        # alias the base class in order to avoid issue with unit testing"super"
        class RestService
            alias :initialize :test_initialize
        end
    end

    it "should initialize with config" do
        resource = UsersProfilesResource.allocate
        mocked_uri = double("resource_uri")
        mocked_config = double("config")

        resource.should_receive(:puts).with("dummy").ordered
        resource.should_receive(:puts).with("dummy config").ordered

        resource.send(:initialize, mocked_uri, mocked_config)
        resource.resource_uri.should == mocked_uri
        UsersProfilesResource.superclass.should == RestService
    end
end

describe UsersProfilesResource, "index" do
    it "should perform index, utilizing rest get" do
        resource = UsersProfilesResource.allocate
        mocked_parameters = double("query string")
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        mocked_uri = double("uri")
        resource.should_receive(:add_parameters_to_uri).with(resource.instance_variable_get(:@resource_uri), mocked_parameters).ordered.and_return(mocked_uri)
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with(mocked_uri).ordered.and_return(mocked_response)

        resource.index(mocked_parameters).should == mocked_response
    end

    it "should perform index, utilizing rest get, default parameters" do
        resource = UsersProfilesResource.allocate
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        mocked_uri = double("uri")
        resource.should_receive(:add_parameters_to_uri).with(resource.instance_variable_get(:@resource_uri), nil).ordered.and_return(mocked_uri)
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with(mocked_uri).ordered.and_return(mocked_response)

        resource.index.should == mocked_response
    end
end

describe UsersProfilesResource, "create" do
    it "should perform index, utilizing rest post" do
        resource = UsersProfilesResource.allocate
        mocked_data = double("data")
        mocked_parameters = double("query string")
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        mocked_uri = double("uri")
        resource.should_receive(:add_parameters_to_uri).with(resource.instance_variable_get(:@resource_uri), mocked_parameters).ordered.and_return(mocked_uri)
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:post).with(mocked_uri, mocked_data).ordered.and_return(mocked_response)

        resource.create(mocked_data, mocked_parameters).should == mocked_response
    end

    it "should perform index, utilizing rest post, default query string" do
        resource = UsersProfilesResource.allocate
        mocked_data = double("data")
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        mocked_uri = double("uri")
        resource.should_receive(:add_parameters_to_uri).with(resource.instance_variable_get(:@resource_uri), nil).ordered.and_return(mocked_uri)
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:post).with(mocked_uri, mocked_data).ordered.and_return(mocked_response)

        resource.create(mocked_data).should == mocked_response
    end
end

describe UsersProfilesResource, "update" do
    it "should perform index, utilizing rest put" do
        resource = UsersProfilesResource.allocate
        mocked_full_uri = double("full_uri")
        mocked_data = double("data")
        mocked_parameters = double("query string")
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        mocked_uri = double("uri")
        resource.should_receive(:add_parameters_to_uri).with(mocked_full_uri, mocked_parameters).ordered.and_return(mocked_uri)
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with(mocked_uri, mocked_data).ordered.and_return(mocked_response)

        resource.update(mocked_full_uri, mocked_data, mocked_parameters).should == mocked_response
    end

    it "should perform index, utilizing rest put, default query string" do
        resource = UsersProfilesResource.allocate
        mocked_full_uri = double("full_uri")
        mocked_data = double("data")
        mocked_client = double("client")
        mocked_resource_uri = double("resource_uri")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, mocked_resource_uri)

        mocked_uri = double("uri")
        resource.should_receive(:add_parameters_to_uri).with(mocked_full_uri, nil).ordered.and_return(mocked_uri)
        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with(mocked_uri, mocked_data).ordered.and_return(mocked_response)

        resource.update(mocked_full_uri, mocked_data).should == mocked_response
    end
end

describe UsersProfilesResource, "show" do
    it "should perform show, utilizing get" do
        resource = UsersProfilesResource.allocate
        mocked_full_uri = double("full_uri")
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)

        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with(mocked_full_uri).ordered.and_return(mocked_response)

        resource.show(mocked_full_uri).should == mocked_response
    end
end

describe UsersProfilesResource, "show" do
    it "should perform search, utilizing post" do
        resource = UsersProfilesResource.allocate
        mocked_data = double("data")
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        resource.instance_variable_set(:@resource_uri, "http://some_site/service/resource")

        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:post).with("http://some_site/service/resource/search", mocked_data).ordered.and_return(mocked_response)

        resource.search(mocked_data).should == mocked_response
    end
end

describe UsersProfilesResource, "show_property" do
    it "should perform show property, utilizing get" do
        resource = UsersProfilesResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)

        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:get).with("http://some_site/service/resource/uri/some_property_name").ordered.and_return(mocked_response)

        resource.show_property("http://some_site/service/resource/uri", "some_property_name").should == mocked_response
    end
end

describe UsersProfilesResource, "put_property" do
    it "should perform put property, utilizing put" do
        resource = UsersProfilesResource.allocate
        mocked_client = double("client")
        resource.instance_variable_set(:@client, mocked_client)
        mocked_data = double("json or xml data")

        mocked_response = double("response")
        resource.instance_variable_get(:@client).should_receive(:put).with("http://some_site/service/resource/uri/some_property_name", mocked_data).ordered.and_return(mocked_response)

        resource.put_property("http://some_site/service/resource/uri", "some_property_name", mocked_data).should == mocked_response
    end
end
