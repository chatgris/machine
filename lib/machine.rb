# encoding: utf-8
module Machine
end
case RbConfig::CONFIG['host_os']
when /linux/
  require_relative 'machine/linux/info'
end
