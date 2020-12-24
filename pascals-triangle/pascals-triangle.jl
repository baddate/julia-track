"""
recursive version
"""
function triangle(n)
    n < 0 && return throw(DomainError(""))
    ans = Vector{Vector{Int64}}()
    row = Vector{Int64}()
    n == 0 && return ans
    return generate(n, row, ans)
end

function generate(n_row::Int64, row::Vector{Int64}, ans::Vector{Vector{Int64}})
    if n_row == 1
        push!(row, 1)
        tmp = Vector{Int64}()
        push!(tmp, 1)
        push!(ans, tmp)
        return ans
    end
    generate(n_row - 1, row, ans)
    if length(row) == 1
        push!(row, 1)
    else
        for i in 1:length(row)-1
            row[i] += row[i+1]
        end
        pushfirst!(row, 1)
    end
    tmp = Vector{Int64}()
    map(row[1:end]) do x
        push!(tmp, x)
    end
    push!(ans, tmp)
    return ans
end

"""
iterative version
"""

function triangle(n)
    n < 0 && return throw(DomainError(""))
    ans = Vector{Vector{Int64}}()
    row = Vector{Int64}()
    tmp = Vector{Int64}()
    n == 0 && return ans
    if n == 1
        push!(row, 1)
        push!(ans, row)
        return ans
    end
    for i in 1:n
        if i == 1
            push!(row, 1)
            push!(ans, row)
            continue
        end
        if i == 2
            push!(tmp, 1)
            push!(tmp, 1)
            push!(ans, tmp)
            row = tmp
            tmp = Vector{Int64}()
            continue
        end
        tmp = map(+, row[begin+1:end], row[begin:end-1])
        pushfirst!(tmp, 1)
        push!(tmp, 1)
        push!(ans, tmp)
        row = tmp
        tmp = Vector{Int64}()
    end
    return ans
end
