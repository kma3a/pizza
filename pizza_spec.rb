require_relative 'pizza'

describe Pizza do
  before :each do
    @pizza = Pizza.new("name", "description")
  end

  describe "#new" do
    it "can take 2 parameters and returns a Pizza object" do
        @pizza.should be_an_instance_of Pizza
    end

  end

  describe '#name' do
    it "name is a string" do
      @pizza.name.should be_a_kind_of String
    end

    it "returns the correct name" do
      @pizza.name.should eql "name"
    end
  end

  describe '#description' do
    it "description is a string" do
      @pizza.description.should be_a_kind_of String
    end

    it "returns the correct description" do
      @pizza.description.should eql "description"
    end
  end

  describe '#time_baked' do
    it "time_baked is a integer" do
      @pizza.time_baked.should be_a_kind_of Integer
    end

    it "should default to 0" do
      @pizza.time_baked.should eql 0
    end

  end

  describe '#toppings' do
    it "should be an array" do
      @pizza.toppings.should be_a_kind_of Array
    end

    it "should have many toppings" do
      @pizza.toppings.concat(["Pepperoni","cheese","sausage"])
      @pizza.toppings.count.should > 1
    end
  end

end

