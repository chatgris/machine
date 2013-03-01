# encoding: utf-8
module Machine
  module Helpers
  end
end
require_relative 'machine/default/info'
case RbConfig::CONFIG['host_os']
when /linux/
  require_relative 'machine/linux/info'
when /darwin/
  require_relative 'machine/darwin/info'
when /freebsd/
  require_relative 'machine/freebsd/info'
end
require_relative 'machine/process_status'
