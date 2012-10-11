# encoding: utf-8
require 'sys/proctable'
require 'delegate'

module Machine
  class ProcessStatus < SimpleDelegator
    include Sys

    def initialize(pid)
      super ProcTable.ps(pid)
    end

  end
end
