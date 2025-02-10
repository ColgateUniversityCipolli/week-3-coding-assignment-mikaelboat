#set of prime numbers
prime.nums <- c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 39, 41, 43, 47)

#create a set of products of unique primes
unique.products = c()
i <- 1
j <- 2
#unique.products
index <- 1
for (i in 1:length(prime.nums)){
  for (j in (i+1):length(prime.nums)){
    product <- prime.nums[i] * prime.nums[j]
    unique.products <- c(unique.products, product)
  }
}

nums.to.check  <- c( 6, 10, 14, 15, 21,
                    22, 26, 33, 34, 35,
                    38, 39, 46, 51, 55,
                    57, 58, 62, 65, 69,
                    75, 77, 82, 85, 86,
                    87, 91, 93, 94, 95)


unique.products <- sort(unique.products)
unique.products <- unique.products[unique.products <= 95]
(setdiff(nums.to.check, unique.products))

(nums.to.check[which(!(nums.to.check %in% unique.products))])
(unique.products)

