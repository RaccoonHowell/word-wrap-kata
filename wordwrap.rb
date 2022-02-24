class Wrapper
    def wrap (string, num)
        new_string = ""
        string_array = string.split("")

        new_string += 

        string_array.each do |char|
            new_string += char
            break if new_string.length == num
        end

        new_string
    end
end