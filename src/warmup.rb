def fib(n)
    result = Array.new()
    if n > 0
        result.push(0)
        if n > 1
          result.push(1)
          i = 2
          while i < n 
            result.push(result[i-1]+result[i-2])
            i += 1
          end
        end
    end
    return result
end

def isPalindrome(n)
    p = n.to_s()
    q = p.reverse()
    if (p <=> q) == 0 then return true else return false end
end

def nthmax(n, a)
    if a.length() <= n then return nil end
    return a.sort().reverse()[n]
end

def freq(s)
    ar = s.chars
    if ar.empty? then return "" end
    hash = ar.to_h { |char| [char, 0] }
    ar.each { |char| hash[char] += 1 }
    maxk = nil
    maxv = 0
    hash.each_key { |key| if hash[key] > maxv then maxv = hash[key]; maxk = key end }
    return maxk
end

def zipHash(arr1, arr2)
    if arr1.length != arr2.length then return nil end
    i = -1
    return arr1.to_h { |key| [key, arr2[i += 1]] }
end

def hashToArray(hash)
    arr = Array.new
    hash.each_key { |key| arr.push([key, hash[key]])}
    return arr
end
