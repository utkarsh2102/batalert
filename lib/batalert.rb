# frozen_string_literal: true

require_relative 'batalert/version'
require 'espeak'
require 'libnotify'
require 'volumerb'

module Batalert # :nodoc:
  # This is the main Runner class, inside which is the driving code.
  class Runner
    # This is the main and the only method which will drive the
    # entire application and the binary.
    # rubocop:disable Metrics/AbcSize,Metrics/MethodLength,Style/GuardClause
    def main
      capacity = File.open('/sys/class/power_supply/BAT0/capacity', &:readline)
      capacity = capacity.to_i

      status = File.open('/sys/class/power_supply/BAT0/status', &:readline)
      status = status.chomp

      volume = Volumerb.value

      if capacity < 10 && status == 'Discharging'
        notify = Libnotify.new(summary: 'PUT ON CHARGING, YOUR BATTERY IS AT ' \
                                        "#{capacity}%.", timeout: 3, urgency: :critical)
        notify.update
        speech = ESpeak::Speech.new("put on charging, your battery is at #{capacity}%.", amplitude: volume)
        speech.speak
      end

      if capacity > 90 && status == 'Charging'
        notify = Libnotify.new(summary: 'REMOVE CHARGING, YOUR BATTERY IS AT ' \
                                        "#{capacity}%.", timeout: 3, urgency: :critical)
        notify.update
        speech = ESpeak::Speech.new("remove charging, your battery is at #{capacity}%.", amplitude: volume)
        speech.speak
      end
    end
    # rubocop:enable Metrics/AbcSize,Metrics/MethodLength,Style/GuardClause
  end
end
