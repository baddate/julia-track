function spiral_matrix(n::Int64)
    res = zeros(Int, n, n)
    num = 1
    left = 1
    right = n
    bottom = n
    top = 1
    while left <= right && top <= bottom
        for col = left:right 
            res[top, col] = num
            num += 1
        end
        for row = top+1:bottom
            res[row, right] = num
            num += 1
        end
        if left < right && top < bottom
            col = right-1
            while col > left
                res[bottom, col] = num
                num += 1
                col -= 1
            end
            row = bottom
            while row > top
                res[row, left] = num
                num += 1
                row -= 1
            end
        end
        left += 1
        top += 1
        right -= 1
        bottom -= 1
    end
    return res
end
