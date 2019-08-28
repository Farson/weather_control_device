class Thermometer
	def initialize(sensor)
		@sensor = sensor
	end
	
  def read
    path = "/sys/bus/w1/devices/#{@sensor}/w1_slave"
    file_content = File.read(path)
    file_content.split(" ").last.gsub('t=', '').to_f / 1000
  end
end
