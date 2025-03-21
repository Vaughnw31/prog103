
# Conditions in R ---------------------------------------------------------

# Create the following variables.

w <- 10.2
x <- 1.3
y <- 2.8
z <- 17.5
colors <- c("red", "blue", "green")
masses <- c(45.2, 36.1, 27.8, 81.6, 42.4)
dna1 <- "attattaggaccaca"
dna2 <- "attattaggaacaca"

# Use them to print whether or not the following statements are TRUE or FALSE.
#
# w is greater than 10
if (w > 10) {
  print("w is greater than 10")
} else if (w < 10) {
  print("w is less than 10")
}
#TRUE

# "green" is in colors
if ("green" %in% colors) {
  print("green is in colors")
} else if ("green" %notin% colors) {
  print("green is not in colors")
}
#TRUE

# x is greater than y
if (x > y) {
  print("x is greater than y")
} else if (x < y) {
  print("x is less than y")
}
#FALSE

# Each value in masses is greater than 40.
if(masses > 40) {
  print(Each mass greater than 40)
} if else (masses < 40) {
  print(masses less than 40)
}

# 2 * x + 0.2 is equal to y
if ((2 * x +0.2) == y) {

}
# dna1 is the same as dna2

# dna1 is not the same as dna2

# w is greater than x, or y is greater than z

# x times w is between 13.2 and 13.5

# Each mass in masses is between 30 and 50.


# Making choices with if, else, and else if -------------------------------

# 1. Complete the following if statement so that if age_class is equal to “egg”
# it sets y <- 10.

age_class = "egg"
if (age_class == "egg") {
  y <- 10
}
y

# 2. Complete the following if statement so that if age_class is equal to “egg”
# it sets y <- 10 and if age_class is equal to “larva” it sets y <- 5.

age_class = "larva"
if (age_class == "egg") {
print(y <- 10)
} else if (age_class == "larva") {
  print(y <- 5)
}
y

# 3. Complete the following if statement so that if age_class is equal to “egg”
# it sets y <- 10 and if age_class is equal to “larva” it sets y <- 5 and if
# age_class is something else then it sets the value of y <- 0.

age_class = "adult"
if (age_class == "egg") {
  y <- 10
} else if (age_class == "larva") {
  y <- 5
} else {
  y <- 0
}
y

# 4. Convert your if/else if/ else statement from (3) into a function that takes
# age_class as an argument and returns y. Call this function 4 times, once with
# each of the following values for age_class: “egg”, “larva”, “adult”,
# “senescent”.

stage_value <- function(x) {
  values <- c(
    "egg" = 10,
    "larva" = 5,
    "adult" = 0,
    "senescent" = 0
  )
  return(values[x])
}
stage_value("egg")
stage_value("larva")
stage_value("adult")
stage_value("senescent")

# Repeating yourself with vectorized functions ----------------------------

# 1. Fill in the blanks to write a vectorized function that shortens strings to
# just their first and last characters. Verify it works on the names of sharks
# below.
sharks <- c("thresher", "mako", "tiger", "hammerhead")
shorten_string <- function(x) {
  first_letter <- substr(x, 1, 1)

  last_letter <- substr(x, nchar(x), nchar(x))
  result <- paste(first_letter, last_letter, sep = "")
  return(result)
}
shorten_string(sharks)

# Fisheries scientists frequently need to estimate the mass of a fish from a
# different body dimension that's easier to measure. Commonly, they use the
# "fork length" of the fish, which extends to where the tail forks in two. The
# formula usually takes the form M = aL^b, where M and L are mass and fork
# length, respectively, and a and b are species-specific constants.

# 2. a and b for a shortfin mako are estimated to be 5.243e-6 and 3.141. What
# are the estimated masses of sharks that are 100, 200, and 300 cm long?
a <- 5.243e-6
b <- 3.141
a * c(100, 200, 300)^b
# 10.03644  88.53502 316.38634

# 3. Write a function called shortfin_mako_mass_kg that takes a parameter L_cm
# and returns the estimated masses of shortfin makos with fork lengths L_cm. Use
# your function to answer question 2.

shortfin_mako_mass_kg <- function(L_cm) {
  result <- a*(L_cm)^b
  return(result)
}
shortfin_mako_mass_kg(100)
shortfin_mako_mass_kg(200)
shortfin_mako_mass_kg(300)

# Repeating yourself with for loops ---------------------------------------

# 1. The code below prints the numbers 1 through 5 one line at a time. Modify it
# to print each of these numbers multiplied by 3.

numbers <- c(1, 2, 3, 4, 5)
for (number in numbers) {
  print(number*3)
}

# 2. Write a for loop that loops over the following vector and prints out the
# mass in kilograms (mass_kg = 2.2 * mass_lb)

mass_lbs <- c(2.2, 3.5, 9.6, 1.2)
for (mass in mass_lbs) {
  print(mass*2.2)
}


# 3. Complete the code below so that it prints out the name of each bird one
# line at a time.

birds = c("albatross", "puffin", "pelican", "penguin")
for (i in 1:length(birds)) {
  print(birds[i])
}

# 4. Complete the code below so that it stores one area for each radius.

radius <- c(1.3, 2.1, 3.5)
areas <- rep(0, length(radius))
for (i in 1:length(radius)) {
  areas[i] <- pi * radius[i] ^ 2
}
areas

# 5. Write a for loop that loops over the following vector and stores the height
# in meters (height_m = height_ft / 3.28) in a new vector. After the for loop
# make sure to display the vector to the console by running the vectors name on
# its own line.

height_ft <- c(5.1, 6.3, 5.7, 5.4)
height_m <- rep(0, length(height_ft))
for (i in 1:length(height_ft)) {
  height_m[i] <- height_ft[i] / 3.28
}
height_m
# 6. Complete the code below to calculate an area for each pair of lengths and
# widths, store the areas in a vector, and after they are all calculated print
# them out:

lengths = c(1.1, 2.2, 1.6)
widths = c(3.5, 2.4, 2.8)
areas <- rep(0, length(widths))
for (i in length(widths)) {
  areas[i] <- lengths[i] * widths[i]
}
areas
