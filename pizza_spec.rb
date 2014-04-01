require_relative 'pizza'

describe Pizza do
  before :each do
    @pizza = Pizza.new("name", "description", 0)
  end

  describe "#new" do
    it "takes three parameters and returns a Pizza object" do
        @pizza.should be_an_instance_of Pizza
    end
  end



end

