# encoding: utf-8
module Machine
  class Info
    class Cpu < CpuDefault
      class << self
        def cores_size
          `grep -c processor /proc/cpuinfo`.to_i
        end
      end
    end

    class Memory
      class << self
        def mem_total
          `grep MemTotal /proc/meminfo`.split(' ')[1].to_i
        end

        def mem_free
          `grep MemFree /proc/meminfo`.split(' ')[1].to_i
        end
      end
    end
  end

  module Helpers
    def created_at
      @created_at ||= begin
                        File.ctime("/proc/#{pid}")
                      rescue Errno::ENOENT => exception
                        nil
                      end
    end
  end
end
