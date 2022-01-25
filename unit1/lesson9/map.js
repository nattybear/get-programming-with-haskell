var animals = ["dog", "cat", "moose"]

// with a for loops
for (i = 0; i < animals.length; i++)
  animals[i] = "a " + animals[i]

// with map
var addAnA = function(s) { return "a " + s }
animals = animals.map(addAnA)
