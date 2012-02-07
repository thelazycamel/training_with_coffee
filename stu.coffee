#coffee script basics

console.log("**** Functions *****")

myFunction = (num) -> 
  console.log("hello world")
  console.log(num + " = one") if num == 1
  console.log(num + " = two") unless num == 1

myFunction(1)
myFunction(2)

console.log("**** Objects and Iteration *****")

myObj = {}

myObj.count = (num) -> 
  console.log("number " + num)

numbers = [1..5]

for number in numbers
  myObj.count(number)

console.log("**** Prototypes *****")

Boy = -> # by convention, constructor names are capitalized
Boy::sing = -> console.log "It ain't easy being a boy named Sue"
sue = new Boy()
sue.sing()

console.log("**** Classes *****")
#class Boy
class Person
  constructor: (name) ->
    @number = Person.count++
    @name = name

  #method
  list: ->
    console.log("Person number #{@number} is called #{@name}")

#set the count variable
Person.count = 1

boy1 = new Person("Fred").list()
boy2 = new Person("Joe").list()

class Girl extends Person
  list: ->
    super
    console.log("#{@name} is a girl")

girl1 = new Girl("Jane").list()

class Baby extends Person
  cry: (num) ->
    console.log("maaaa") if num < 3

baby1 = new Baby("Jack")
for num in [0..10]
  baby1.cry(num)






