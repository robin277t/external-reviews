class StringConv

    def string_to_array(arg)
        demo = arg.split('-')
    end

    def arrayCountOne(arrayArg)
        arrayArg.filter{|grade| grade == "Green"}.length
    end

    def arrayCountAll(arrayArg)
        newArray = []
        newArray.push(arrayArg.filter{|grade| grade == "Green"}.length)
        newArray.push(arrayArg.filter{|grade| grade == "Amber"}.length)
        p newArray
    end

end