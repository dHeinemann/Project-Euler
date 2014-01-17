def fib(x):
    fib = []
    back1 = 1
    back2 = 0

    for i in range(0, x):
        if i == back1 + back2:
            fib.append(i)
            back2 = back1
            back1 = i
    return fib

def get_primes(ceiling):
    # Sieve of Eratosthenes
    primes = range(1, ceiling + 1)
    p = 2

    while p < ceiling:
        # Remove multiples of current prime
        primes = filter(lambda x: not (x > p and x % p == 0), primes)

        # Select next prime
        if max(primes) > p:
            p = min([x for x in primes if x > p])
        else:
            p = ceiling

    return primes
