#coffee script basics

myFunction = (num) -> 
  console.log("yo dude")
  console.log("two") unless num == 1

console.log("im here")

# objects as hashes
myObj = {}

myObj.count = (num) -> 
  console.log("number " + num)
  console.log("...") unless num == 5

numbers = [1..5]

for number in numbers
  myObj.count(number)

#prototypes (capitalize by convention)

Boy = -> # by convention, constructor names are capitalized
Boy::sing = -> console.log "It ain't easy being a boy named Sue"
sue = new Boy()
sue.sing()


#class Boy
class Person
  constructor: (@name) ->
    this.number = Person.count++
    this.name = @name

  #method
  list: ->
    console.log("Person number #{this.number} is called #{this.name}")

#set the count variable
Person.count = 1

boy1 = new Person("Fred").list()
boy2 = new Person("Joe").list()

class Girl extends Person
  list: ->
    super
    console.log("#{this.name} is a girl")

girl1 = new Girl("Jane").list()

class Baby extends Person
  cry: (num) ->
    console.log("maaaa") if num < 5

baby1 = new Baby("Jack")
for num in [0..10]
  baby1.cry(num)






