require_relative 'pizza'

describe Pizza do
  before :each do
    @pizza = Pizza.new("name", "description")
  end

  describe "#new" do
    it "takes three parameters and returns a Pizza object" do
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

  describe '#bake_time' do
    it "bake_time is a integer" do
      @pizza.bake_time.should be_a_kind_of Integer
    end

    it "should default to 0" do
      @pizza.bake_time.should eql 0
    end

    it "returns the correct bake_time" do
      @pizza.bake_time = 350
      @pizza.bake_time.should eql 350
    end


  end



end

