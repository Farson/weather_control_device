require 'ffi/wiring_pi'

class Heater
  # heater = Heater.new(pin: 1, target_temp: 28, :threshold_above, :threshold_underneath)
  def initialize(options)
    FFI::WiringPi::GPIO.setup
    FFI::WiringPi::GPIO.set_pin_mode(options[:pin], FFI::WiringPi::GPIO::OUTPUT)
    @pin = FFI::WiringPi::GPIO.get(options[:pin])
    @target_temp = options[:target_temp]
    @threshold_above = options[:threshold_up] || 1
    @threshold_underneath = options[:threshold_down] || 1
  end

  def adjust_temp(current_temp)
    if current_temp < @target_temp - @threshold_underneath
      self.up
    elsif current_temp > @target_temp + @threshold_underneath
      self.down
    end
  end

  def up
    pin.up!
  end

  def down
    pin.down!
  end
end
