class Stack
    attr_reader :ivar

    def initialize(ivar=[])
        @ivar = ivar
    end

    def push(el)
        ivar << el
        el
    end

    def pop
        ivar.pop
    end

    def peek
        ivar[-1]
    end

end
