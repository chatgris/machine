# encoding: utf-8
require 'sys/proctable'
require 'delegate'

module Machine
  class NullObject
    def method_missing(name, *args, &block)
      nil
    end

    def respond_to?(name)
      true
    end
  end
  class ProcessStatus < SimpleDelegator
    include Sys
    include Helpers

    attr_reader :pid

    def initialize(pid)
      super ProcTable.ps(@pid = pid) || NullObject.new
    end

  end
end
