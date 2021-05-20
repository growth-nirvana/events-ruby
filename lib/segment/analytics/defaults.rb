module Segment
  class Analytics
    module Defaults
      module Request
        HOST = 'gn-analytics-engine.herokuapp.com'
        PORT = 443
        PATH = '/app_events'
        SSL = true
        HEADERS = { 'Accept' => 'application/json',
                    'Content-Type' => 'application/json',
                    'User-Agent' => "analytics-ruby/#{Analytics::VERSION}" }
        RETRIES = 0 
      end

      module Queue
        BATCH_SIZE = 100
        MAX_SIZE = 10000
      end

      module BackoffPolicy
        MIN_TIMEOUT_MS = 100
        MAX_TIMEOUT_MS = 10000
        MULTIPLIER = 1.5
        RANDOMIZATION_FACTOR = 0.5
      end
    end
  end
end
