using Dates, Printf

struct Clock
    h::Int64
    m::Int64
    # v1
    # function Clock(h, m)
    #     if m ≥ 60
    #         h += m ÷ 60
    #         m = m % 60
    #     elseif m < 0
    #         h += m ÷ 60
    #         h -= m % 60 == 0 ? 0 : 1
    #         m = (m % 60 + 60) % 60
    #     end
    #     h = h ≥ 0 ? h%24 : (h % 24 + 24) % 24
    #     new(h, m)
    # end
    #
    # v2
    # function Clock(h, m)
    #     h += m ≥ 0 ? m ÷ 60 : m ÷ 60 - (m % 60 == 0 ? 0 : 1)
    #     h = (h % 24 + 24) % 24
    #     m = (m % 60 + 60) % 60
    #     new(h, m)
    # end
    # v3
    Clock(h, m) = new(
        ((h + m ÷ 60 - (m ≥ 0 ? 0 : (m % 60 == 0 ? 0 : 1))) % 24 + 24) % 24,
        (m % 60 + 60) % 60
    )
end

function Base.:(+)(a::Clock, b::Dates.Minute)
    m = a.m + b.value
    Clock(a.h, m)
end

function Base.:(-)(a::Clock, b::Dates.Minute)
    m = a.m - b.value
    Clock(a.h, m)
end

function Base.:(==)(a::Clock, b::Clock)
    return a.h == b.h && a.m == b.m
end

function Base.:show(io::IO, t::Clock)
    @printf(io, "\"%02i:%02i\"", t.h, t.m)
end
