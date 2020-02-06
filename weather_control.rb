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
  puts "#{current_time} - #{sensor.name} - #{sensor.cached_temperature}°C"
end

while true
  sensor_1.read
  sensor_2.read
  sensor_3.read

  heater_1.adjust_temp(sensor_1.cached_temperature)

  print_log(sensor_1)
  print_log(sensor_2)
  print_log(sensor_3)

end
