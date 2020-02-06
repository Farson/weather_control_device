class Thermometer
  attr_accessor :name, :cached_temperature
	def initialize(sensor)
    @sensor = sensor
    @name = sensor[:name]
    @address = sensor[:address]
    read
	end

  def read
    path = "/sys/bus/w1/devices/#{@address}/w1_slave"
    file_content = File.read(path)
    @cached_temperature = file_content.split(" ").last.gsub('t=', '').to_f / 1000
  end

end
