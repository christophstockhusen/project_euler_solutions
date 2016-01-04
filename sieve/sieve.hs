primes :: (Integral a) => a -> [a]
primes x = sieve [2..x] 
  where
    sieve [] = []
    sieve (p:xs) = p : sieve (xs `minus` [p*p, p*p+p..x])
      where 
        minus (x:xs) (y:ys) 
          | x == y = minus xs ys
          | x <  y = x : minus xs (y:ys)
          | x >  y = minus (x:xs) ys
        minus xs _  = xs

main = 
  print $ sum $ primes 1000000
