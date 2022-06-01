require './src/stack.rb'
require './src/utils.rb'

STACK = Stack.new()

# Selection menu
while true
    puts "Give fixed decimal number:"
    decValue = gets.chomp
    begin
        decValue = Integer(decValue)
        isNegative = checkIfNegative(decValue)

        if isNegative
            decValue *= -1
        end

        STACK.add("[MSB]")

        toBinaryAndAddToStack(decValue, STACK)

        if isNegative
            STACK.add("1")
        else
            STACK.add("0")
        end

        binValue = ""
        while STACK.elements != 0
            binValue += STACK.top.value
            STACK.release()
        end

        puts "Result: #{ binValue }"

        puts "\nContinue? [Y/N]"
        res = gets.chomp.downcase

        if res.eql?('n')
            break
        end
    rescue
        puts "It has to be a number!!!\n\n"
    end
end