#code to generate ramp function plot

tau  <-3
ramp <- function(t){(t > tau)*(t - tau)}
t    <- seq(-1, tau + 2, 0.05)
phi  <- ramp(t)
ylimit = c(-1, max(phi) + 1)

pdf(file = "ramp_function.pdf")
plot(y = phi, x = t, ylim = ylimit, ylab = expression(phi[2]), xlab = 't', type = 'l')
dev.off()
