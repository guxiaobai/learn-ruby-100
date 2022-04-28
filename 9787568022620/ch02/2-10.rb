
puts RubyVM::InstructionSequence.compile("10.times{|n| puts n}").disasm
