# $ ruby -I lib bin/mything


require "batalert/version"
require "espeak"
require "libnotify"

module Batalert
  class Runner
    def run
      capacity = File.open('/sys/class/power_supply/BAT0/capacity', &:readline)
      capacity = capacity.to_i

      status = File.open('/sys/class/power_supply/BAT0/status', &:readline)
      status = status.chomp

      if capacity < 10 && status == 'Discharging'
        notify = Libnotify.new(summary: "PUT ON CHARGING, YOUR BATTERY IS AT #{capacity}%.", timeout: 3, urgency: :critical)
        notify.update
        speech = ESpeak::Speech.new("put on charging, your battery is at #{capacity}%.")
        speech.speak
      end

      if capacity > 90 && status == 'Charging'
        notify = Libnotify.new(summary: "REMOVE CHARGING, YOUR BATTERY IS AT #{capacity}%.", timeout: 3, urgency: :critical)
        notify.update
        speech = ESpeak::Speech.new("remove charging, your battery is at #{capacity}%.")
        speech.speak
      end
    end
  end
end

######## vv exe/batalert vv
#!/usr/bin/env ruby
require 'batalert'
Batalert::Runner.new.run
######## ^^ exe/batalert ^^
