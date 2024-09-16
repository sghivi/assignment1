class PhoneBook
    def initialize
        @list = Hash.new
    end

    def add(name, number, is_listed)
        if !@list[name].nil? then return false end
        if is_listed
            @list.each_value { |entry| 
                if number.eql?(entry[0]) && entry[1] 
                    return false 
                end 
            }
        end
        @list[name] = [number, is_listed]
        return true
    end

    def lookup(name)
        if (entry = @list[name]).nil? then return nil end
        if entry[1] then return entry[0] end
    end

    def lookupByNum(number)
        @list.each_key { |key|
            if (entry = @list[key])[1] && number.eql?(entry[0]) then return key end
        }
    end

    def namesByAc(areacode)
        arr = Array.new
        @list.each_key { |key|
            if areacode.eql?(@list[key][0].split("-")[0]) then arr.push(key) end
        }
        return arr
    end
end
