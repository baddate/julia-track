function is_equilateral(sides)
    !is_triangle(sides) && return false
    a, b, c = sides
    return a == b == c
end

function is_isosceles(sides)
    !is_triangle(sides) && return false
    a, b, c = sides
    return a == c || a == b || b == c
end

function is_scalene(sides)
    !is_triangle(sides) && return false
    a, b, c = sides
    return a != b && b != c && a != c
end

function is_triangle(sides)
    a, b, c = sides
    return a > 0 && b > 0 && c > 0 && a + b >= c && a + c >= b && c + b >= a
end
