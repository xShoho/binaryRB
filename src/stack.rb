class StackElement
    attr_reader :value, :previous

    def initialize(value, previous)
        @value = value
        @previous = previous
    end
end

class Stack
    attr_reader :top, :elements

    def initialize()
        @top = nil
        @elements = 0
    end

    def add(value)
        if @top == nil
            @top = StackElement.new(value, nil)
        else
            @top = StackElement.new(value, @top)
        end

        @elements += 1
    end

    def release()
        if @top == nil
            raise StandardError.new "This Stack is empty"
        end
    
        @top = @top.previous
        @elements -= 1
    end
end