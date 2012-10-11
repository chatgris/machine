# machine

Machine collects some informations about cpu, memory, processes.

# Usage

``` ruby
Machine::Info::Cpu.cores_size
Machine::Info::Memory.mem_total
Machine::Info::Memory.mem_free
Machine::ProcessStatus.new(pid).pctcpu
Machine::ProcessStatus.new(pid).pctmem
```

Check out the [sys-proctable](https://github.com/djberg96/sys-proctable) from
documentation about ProcessStatus.

## Copyright

MIT. See LICENSE for further details.
