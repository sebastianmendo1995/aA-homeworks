class Queue
    attr_reader :ivar

    def initialize(ivar=[])
        @ivar = ivar
    end

    def enqueue(el)
        ivar << el
        el
    end

    def dequeue
        ivar.shift
    end

    def peek
        ivar[0]
    end
end