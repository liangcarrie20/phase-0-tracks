// declare array for horse names and horse colors
var colors = ["Metallic Sunburst","Alien Armpit","Medium Tuscan Red","Sapphire"];

var horse_names = ["Adios","Bullseye","Eclipse","Hurricane_Fly"];

//add new value to both arrays
colors.push("Spanish Orange");

horse_names.push("Lottery");

// create empty object for horses object
var horse_hash = {};

// set i = 0
// as long as i is < names.length, increment i by 1
// assign horse_names[i] = colors[i]
for (i=0; i < horse_names.length; i++) {
  horse_hash[horse_names[i]] = colors[i];
};
// test loop
console.log(horse_hash);

// constructor function for Car
// give Car properties, one being a function
function Car(type, topSpeed, color, functioning) { 
  this.type = type;
  this.topSpeed = topSpeed;
  this.color = color;
  this.functioning = functioning;
  this.beep = function() {console.log("Beep!"); };
}

// create a few cars
var carOne = new Car("Prius", 110, "black", true);
console.log(carOne);
carOne.beep();

var carTwo = new Car("Tesla", 180, "red", true);
console.log(carTwo);
carTwo.beep();

var carThree = new Car("Ford", 160, "blue", true);
console.log(carThree);
carThree.beep();
