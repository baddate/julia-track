"""Calculate the number of grains on square `square`."""
function on_square(square)
    (square <= 0 || square > 64) && throw(DomainError("invalid input"))
    return big(2)^(square-1)
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)
    (square <= 0 || square > 64) && throw(DomainError("invalid input"))
    # using the formula of summation for geometric sequence, more refer: https://en.wikipedia.org/wiki/Geometric_progression#Related_formulas
    return big(2)^square-1
end
