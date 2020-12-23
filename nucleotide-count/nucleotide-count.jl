"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    ans = Dict('A'=>0, 'C'=>0, 'G'=>0, 'T'=>0)
    for s in strand
        if haskey(ans, s)
            ans[s] += 1
        else
            return sqrt(-1)
        end
    end
    return ans
end
