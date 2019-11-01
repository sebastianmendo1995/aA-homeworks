class Stack

    def initialize
        @ivar = []
    end

    def push(el)
        ivar << el
        el
    end

    def pop
        ivar.pop
    end

    def peek
        ivar.last
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
