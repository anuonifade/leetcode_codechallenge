def is_palindrome(x)
    if x.to_s === x.to_s.reverse
        true
    else
        false
    end
end
