var colors = ["Metallic Sunburst","Alien Armpit","Medium Tuscan Red","Sapphire"];

var horse_names = ["Adios","Bullseye","Eclipse","Hurricane_Fly"];

colors.push("Spanish Orange");

horse_names.push("Lottery");

var horse_hash = {};

for (i=0; i < horse_names.length; i++) {
  horse_hash[horse_names[i]] = colors[i];
};

console.log(horse_hash);