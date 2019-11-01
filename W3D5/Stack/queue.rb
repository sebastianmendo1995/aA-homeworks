class Queue
    
    def initialize
        @ivar = []
    end

    def enqueue(el)
        ivar << el
        el
    end

    def dequeue
        ivar.shift
    end

    def peek
        ivar.first
    end

    def show
        ivar.dup
    end

    def empty?
        ivar.empty?
    end

    private
    attr_reader :ivar
end