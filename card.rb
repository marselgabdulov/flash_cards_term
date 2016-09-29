require 'rainbow/ext/string'

# CARD
class Card
  attr_accessor :front, :back, :point

  def initialize(front, back, point = 0)
    @front = front
    @back = back
    @point = point
  end

  def line_to_file
    "#{@front}, #{@back}, #{@point}"
  end

  def print_card
    "front: #{@front}, back: #{@back}"
  end

  def set_point(point)
    point = point.to_i
    if (0..3).include?(point)
      @point = point
      puts "set point #{point}".color(:mintcream)
    else
      puts 'Point should be 1, 2 or 3'
    end
  end
end
