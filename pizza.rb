class Pizza

  attr_reader :name, :description, :bake_time

  def initialize(name,description,bake_time)
    @name = name
    @description = description
    @bake_time = bake_time
  end

end
