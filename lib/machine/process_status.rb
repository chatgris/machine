# encoding: utf-8
require 'sys/proctable'
require 'delegate'

module Machine
  class ProcessStatus < SimpleDelegator
    include Sys
    include Helpers

    attr_reader :pid

    def initialize(pid)
      super ProcTable.ps(@pid = pid)
    end

  end
end
