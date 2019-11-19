# 1
plot(cars$speed, cars$dist,
           ylab = "dist", xlab = "speed",
           main = "cars")

# 2
car.lm = lm(dist ~ speed, data=cars)
coeffs = coefficients(car.lm)
print(coeffs)

# 3
print(summary(car.lm)$r.squared)

# 4
print(summary(car.lm))

# 5 
newdata = data.frame(speed=19.5)
print(predict(car.lm, newdata, interval = "confidence"))
print(predict(car.lm, newdata, interval = "prediction"))

# 6
abline(a=coeffs[1], b=coeffs[2])
