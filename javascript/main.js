// this is a comment

/*

console.log("Hello World");
var name = prompt("What is your name")
alert("Hello, " + name )

document.write(name);
console.log(name);


var a = 5;
if (a > 3) {
  console.log("Big")
  else  {
    console.console.log("Small");
  }
}



var age  = prompt("What's your age?");

if (age >= 50) {
  console.log("You are a wise");
  else {
    console.log("You are so youthful")
  }
}
*/

/*
var yes = confirm("Do you want to enter the secret key?");

if  var pass = prompt("Enter the Password");

  if (pass === "opensesame") {
    alert("The Password is 714");
  }
    else {
      alert("Wrong Password");
  } else {
    alert("Ok GoodBye")
  }

*/

/*
var pass = prompt("Enter the Password");

if (pass.length > 12) {
  alert("Too long!")
} else if (pass.length < 8){
    alert("Too short")
} else {
    alert("Just right!")
}

/*
var counter = 0;

while (counter <= 100) {
  console.log(counter);

}
*/
/*
var number  = 0;

while (number <= 100) {
    if (number% 2 === 0) {
    console.log(number);
  }
  number += 1
}


*/
/*

for (var i = 0; i <= 100; i++) {
  console.log(i);
}
*/
/*
for (var beers = 100; beers > 0 ; beers--) {
  console.log(beers + " bottles of beer on the wall");
  console.log(beers + " bottles of beer");
  console.log("Take one down, pass it around," + (beers-1) + "bottles of beer on the wall");
}

*/

/*
for (var i = 100; i >= 0; i--) {
  console.log(i);
}
*/
/*
var result = 0

for (var i = 0; i < 100; i++) {
  result += result;
  console.log(result);
}
*/
/*
var correctNum = 50;
//var guess = ""
while (guess !== correctNum  ) {
   var guess = parseInt(prompt("Please guess a number .."));
    if (guess === correctNum ) {
      alert("You guessed the right number");
    } else if (guess < correctNum) {
      alert("The number you guessed is lass then the right number");
    }
}
alert("The number you guessed is greater then the right number");
*/
/*
var first = ["hello", 5, 'a'];
first[1] = 6;

console.log(first);


var second = []

for (var i = 0; i < 101; i++) {
  second.push(i)
}

console.log(second);
console.log(second.length);


var myArray = [1,2,3,4,5];

for (var i = 0; i < myArray.length; i++) {
  console.log(myArray[i]);
}

*/
/*
var myArray = [0, 5, 6, -12];
var sum = 0;
for (var i = 0; i < myArray.length; i++) {
  sum += myArray[i]
}
console.log(sum);

var words = ["apple", "dog", "computer", "cup"];

for (var i = 0; i < words.length; i++) {
  console.log(words[i] + " has " + words[i].length + " character");
}
*/
// var greeting = "Hello";
//
// console.log(greeting.split(""));
//
//
// var input = prompt("give me a sentence");
//
// console.log(input.split(" ").length);


// var doubleIn = function(a) {
//   console.log(a * 2);
// }
// var reverseArray = function(array) {
//   return array.reverse();
// }
// console.log(reverseArray([1,2,3]));
//
// var insultArray = function(name){
//   return name + " You are funny!";
//
// }
// console.log(insultArray(prompt("What's your name?")));
//
//
// var incrementNum = function(number){
//   return number + 1;
// }
// console.log(incrementNum(4));
//
//
// var doubleArray = function(array){
//   for (var i = 0; i < array.length; i++) {
//   console.log(array[i] = array[i] * 2);
//   }
//   return array
// }
// console.log(doubleArray([1,2,3]));

// or we could use .map
// return array.map(function(x) {return x * 2;});
//
// var myObject = {a: 1, b: 2, c: 3};
//   console.log(myObject.a);
//
//
// var car = {model: "Camry", brand: ""}
//   console.log(car.);

var me = {name: "Ali", age: 2328, occupation: "Job seeker"}
  console.log(me);
  console.log(me.occupation = "javascript expert");
  console.log(me.skills = ['javascript', 'Ruby' , 'Html']);
  console.log(me);
