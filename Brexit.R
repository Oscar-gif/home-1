X <-replicate(10000, {
  new_p <- p + sample(seq(-0.01, 0.01, length=100), 1)
  y <- sample(c(x,l), n, replace =TRUE, prob = c(new_p, 1 - new_p))
  sum(Y)
})
sum(X)/10000

june_polls <- brexit_polls %>% filter(enddate >= "2016-06-01") %>% mutate(se_x_hat = sqrt(x_hat * (1 - x_hat )/samplesize),
                                                                          spread_sd = 2 * se_x_hat, lower = spread - qnorm(.975)*spread_sd, upper = spread + qnorm(.975) * spread_sd, hit = (spread > lower & spread < upper))