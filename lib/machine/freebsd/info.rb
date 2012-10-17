# encoding: UTF-8
module Machine
  class Info
    class Cpu < CpuDefault
      class << self
        def cores_size
          `sysctl -n hw.ncpu`.to_i
        end
      end
    end

    class Memory
      class << self
        def mem_total
          `sysctl -n hw.realmem`.to_i
        end
      end
    end
  end
end
