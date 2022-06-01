def checkIfNegative(num)
    if num < 0
        return true
    end

    return false
end

def toBinaryAndAddToStack(number, stack)
    while number != 0
        stack.add((number % 2).to_s)
        number /= 2
    end
end