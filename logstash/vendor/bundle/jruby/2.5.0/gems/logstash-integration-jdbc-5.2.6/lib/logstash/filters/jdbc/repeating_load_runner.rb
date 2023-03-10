# encoding: utf-8
require_relative "single_load_runner"

module LogStash module Filters module Jdbc
  class RepeatingLoadRunner < SingleLoadRunner
    def repeated_load
      local.repopulate_all(loaders)
      @reload_counter.increment
    end
  end
end end end
