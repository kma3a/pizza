class Pizza

  attr_reader :name, :description
  attr_accessor :bake_time

  def initialize(name,description,bake_time = 0)
    @name = name
    @description = description
    @bake_time = bake_time
  end

end
