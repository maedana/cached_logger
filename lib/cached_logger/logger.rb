# -*- coding: utf-8 -*-
require 'logger'
module CachedLogger
  class Logger < ::Logger
    attr_reader :caches

    # Override
    def initialize(logdev, shift_age = 0, shift_size = 1048576)
      @caches = []
      super
    end

    # Override
    def add(severity, message = nil, progname = nil, &block)
      severity ||= UNKNOWN
      if @logdev.nil? or severity < @level
        return true
      end
      progname ||= @progname
      if message.nil?
        if block_given?
          message = yield
        else
          message = progname
          progname = @progname
        end
      end
      @logdev.write(
        format_message(format_severity(severity), Time.now, progname, message))
      @caches << message
      message
    end

    def clear!
      @caches.clear
    end
  end
end
