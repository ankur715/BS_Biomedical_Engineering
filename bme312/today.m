







while f(x(n))=0
    f(x(n)) = x*x-1
    x(n) = x(n-1) - f(x(n-1))*(x(n-1) - x(n-2))/(f(x(n-1)) - f(x(n-2)))
    n = n+1
    
    