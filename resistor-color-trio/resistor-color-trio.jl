cv_dict = Dict(
    "black" => "0",
    "brown" => "1",
    "red" => "2",
    "orange" => "3",
    "yellow" => "4",
    "green" => "5",
    "blue" => "6",
    "violet" => "7",
    "grey" => "8",
    "white" => "9"
)
function label(colors)
    length(colors) != 3 && throw(ErrorException("invalid input."))
    val = ""
    cnt = 0
    haskey(cv_dict, colors[1]) && (val *= cv_dict[colors[1]])
    haskey(cv_dict, colors[2]) && (val *= cv_dict[colors[2]])
    haskey(cv_dict, colors[3]) && (cnt = parse(Int, cv_dict[colors[3]]))
    
    val *= "0"^cnt
    if parse(Int64, val)%1000 == 0
        val = val[1:end-3]
        val *= " kiloohms"
    else
        val *= " ohms"
    end
    return val
end
