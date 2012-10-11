# encoding: utf-8
module Machine
  class Info
    class Cpu
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
end
