class Robot
  attr_reader :name

  def initialize
    reset
  end

  def reset
    robot_name = (0...2).map { (65 + rand(26)).chr }.join
    robot_name << (0...3).map { rand(10) }.join
    @name = robot_name
  end
end
