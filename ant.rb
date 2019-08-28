#ruby
require "yaml"
require './lib/thermometer'
require './lib/heater'

conf = YAML.load_file("./config.rb")

sensor_1 = Thermometer.new(conf[:sensor_1])
sensor_2 = Thermometer.new(conf[:sensor_2])
sensor_3 = Thermometer.new(conf[:sensor_3])

heater_1 = Heater.new(conf[:heater_1])


def current_time
  Time.now.strftime("%d.%m.%Y %H:%m:%S")
end

def print_log(sensor)
  puts "#{current_time} - #{sensor.read}°C"
end

while true
  puts "--- #{current_time} ---"

  heater_1.adjust_temp(sensor_1.read)
  puts "1: #{sensor_1.read}°C"

  puts "2: #{sensor_2.read}°C"
  puts "3: #{sensor_3.read}°C"

end
