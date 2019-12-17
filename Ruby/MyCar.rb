# frozen_string_literal : true

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    self.color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    @speed += number
    puts "Pedal to the metal! You're now cruising at #{number} mph!"
  end

  def slow_down(number)
    @speed -= number
    puts "Better safe than sorry! You're now travelling at #{number} mph."
  end

  def speed
    puts "You are travelling at #{@speed} mph."
  end

  def shutdown
    @speed = 0
    puts "Time to bring it in. You come to rest at #{@speed} and shut the engine down."
  end

  def color_select(new_color)
    color = new_color
    puts "Time for a fresh coat of paint! Your #{@color} is now #{new_color}"
  end

  def what_year
    puts "This car was manufactured in #{@year}."
  end

  def spray_paint
    puts "What color do you want to paint your car?"
    new_color = gets.chomp.to_s.downcase
    case new_color
      when new_color = "red" || "flame red" || "cherry red" || "hot red"
        color = new_color
        puts "Red Hot! Your #{@color} is now #{new_color}."
      when new_color = "blue" || "midnight blue" || "baby blue" || "bright blue" || "dark blue" || "navy blue"
        color = new_color
        puts "Keeping it cool! Your #{@color} is now #{new_color}."
      when new_color = "green" || "racing green" || "dark green" || "flourescent green" || "bright green"
        color = new_color
        puts "An effective color choice to protect you from predators in thick undergrowth. Your #{@color} is now #{new_color}."
      when new_color = "yellow" || "bumblebee yellow" || "bright yellow"
        puts "Keeping it retro like Bumblebee. Your #{@color} is now #{new_color}."
        color = new_color
      when new_color = "orange" || "burnt orange" || "flourescent orange"
        puts "Red and Yellow are old hat. Your #{@color} is now #{new_color}."
        color = new_color
      when new_color = "purple" || "deep purple" || "bright purple" || "flourescent purple" || "light purple" || "royal purple"
        puts "Smoooooke ooon the waaaater. Your #{@color} is now #{new_color}."
        color = new_color
      else
        puts "That's a.... very specific color. We didn't have that one in the database. Your #{@color} is now #{new_color}."
      end
end
end


Jaguar = MyCar.new("2016", "F-Type", "Midnight Blue")
Jaguar.spray_paint