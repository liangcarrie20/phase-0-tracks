var colors = ["Metallic Sunburst","Alien Armpit","Medium Tuscan Red","Sapphire"];

var horse_names = ["Adios","Bullseye","Eclipse","Hurricane_Fly"];

colors.push("Spanish Orange");

horse_names.push("Lottery");

var horse_hash = {};

for (i=0; i < horse_names.length; i++) {
  horse_hash[horse_names[i]] = colors[i];
};

console.log(horse_hash);

function Car(type, topSpeed, color, functioning) { 
  this.type = type;
  this.topSpeed = topSpeed;
  this.color = color;
  this.functioning = functioning;
  this.beep = function() {console.log("Beep!"); };
}

var carOne = new Car("Prius", 110, "black", true);
console.log(carOne);
carOne.beep();

var carTwo = new Car("Tesla", 180, "red", true);
console.log(carTwo);
carTwo.beep();

var carThree = new Car("Ford", 160, "blue", true);
console.log(carThree);
carThree.beep();
