# Exercise 1: creating and accessing lists

# Create a vector `my.breakfast` of everything you ate for breakfast

my.breakfast <- c("egg benedict", "potatos", "blueberries", "frenchtoast", "bananas", "peach", "pears", "butter")


# Create a vector `my.lunch` of everything you ate (or will eat) for lunch
my.lunch <- c("coffee", "cream")

# Create a list "meals" that has contains your breakfast and lunch
meals <- list(breakfast = my.breakfast, lunch = my.lunch)

# Add a "dinner" element to your "meals" list that has what you plan to eat 
# for dinner
meals$dinner <- c("kale salamon salad")
# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$dinner
# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
meals[[5]] <- meals[["lunch"]]
# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`
early.meals <- meals[1:2]


### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item

list <- lapply(meals, length)
# Write a function `AddPizza` that adds pizza to a given `meal` vector

AddPizza <- function(meal) {
  meal <- c(meal, "pizza") #adds new vector into the list
}

# Create a vector `bette.meals` that is all your meals, but with pizza!

battle.meals <- lapply(meals, AddPizza)

