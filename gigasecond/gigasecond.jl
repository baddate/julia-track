function add_gigasecond(date::DateTime)
    # return date + Second(10^9)
    return unix2datetime(datetime2unix(date) + 10^9)
end
