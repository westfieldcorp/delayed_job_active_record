# frozen_string_literal: true

module Delayed
  module Plugins
    class Fifo < Plugin
      callbacks do |lifecycle|
        lifecycle.before(:error) do |_, job|
          # for fifo queue
          # change priority of a failed job to `-1`
          if Delayed::Backend::ActiveRecord.configuration.fifo_queues?(job.queue)
            if job.priority != -1
              job.priority = -1
              job.save!
            end
          end
        end
      end
    end
  end
end
