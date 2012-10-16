# encoding: utf-8
module Machine
  class Info
    class CpuDefault
      class << self
        def cores_size
          1
        end
      end
    end

    class Memory
      class << self
        def mem_total
          1024 * 1024
        end

        def mem_free
          512 * 1024
        end
      end
    end
  end
end

