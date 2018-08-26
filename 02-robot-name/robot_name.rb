class Robot
  attr_accessor :name

  def initialize
    @name = generate_name
  end

  def reset
    @name = generate_name
  end

  def generate_name
    robot_name = (0...2).map { (65 + rand(26)).chr }.join
    robot_name << (0...3).map { rand(10) }.join
    return robot_name
  end
end
