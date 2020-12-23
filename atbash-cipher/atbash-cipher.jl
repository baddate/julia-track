function encode(input)
    table = "abcdefghijklmnopqrstuvwxyz"
    cipher = ""
    for c in input
        if (length(cipher)-5)%6 == 0
            cipher *= " "
        end
        if c > '0' && c < '9'
            cipher *= c
            continue
        end
        if findfirst(c, table) === nothing && findfirst(c, uppercase(table)) === nothing
            continue
        end
        pos = 27 - findfirst(lowercase(c), table)
        cipher *= table[pos]
    end
    return cipher[end] == ' ' ? cipher[begin:end-1] : cipher
end

function decode(input)
    cipher = encode(input)
    plain = ""
    for c in cipher
        if c == ' '
            continue
        end
        plain *= c
    end
    return plain
end
