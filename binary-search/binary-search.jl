"bonus tasks are done"
function binarysearch(lst::Array, s_key; by = identity, rev = false, lt = <)
    isempty(lst) && return 1:0
    lst = by.(lst)
    s_key = by.(s_key)
    left, right = 1, length(lst)
    mid = left + (right - left) ÷ 2
    while left <= right
        mid = left + (right - left) ÷ 2
        if s_key < lst[mid]
            rev || lt == (>) ? left = mid + 1 : right = mid - 1
            continue
        elseif s_key > lst[mid]
            rev || lt == (>) ? right = mid - 1 : left = mid + 1
            continue
        elseif s_key == lst[mid]
            return mid:mid
        end
    end
    return left:right
end
