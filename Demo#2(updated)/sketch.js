var ship;
var flowers=[];
var drops=[];

function setup() {
createCanvas(600,400);  
ship= new Ship();
drop= new Drop(width/2,height/2);
flower= new Flower();
for (var i=0; i< 6; i++){
 flowers[i]=new Flower(i*60+60,20);
}
}

function draw() {
  background(255);
  ship.show();
  drop.show();
  drop.move();
  for (var i=0; i< drops.length; i++){
    drops[i].show();
    drops[i].move();
    var edge=false;
    for (var j=0; j< flowers.length; j++){
      flowers[j].show();
      flowers[j].move();
      if (flowers[j].x> width || flowers[j].x < 0){
        edge=true;
      }
  if (drops[i].hits(flowers[j])){
    flowers[j].grow();
    drops[i].evaporate();
     console.log("NITAI");
  }
}  
  }
  if (edge) {
    for (var n=0; n< flowers.length; n++){
      flowers[n].shiftDown();
     
}  
  }
    
  }
  for (var a=drops.length-1; a >=0; a--){
    if (drops[a].toDelete) {
      drops.splice(a,1);
    }
    
  }
  


    
function keyPressed(){
  if (key ==' '){
    var drop= new Drop(ship.x,height);
    drops.push(drop);
  }
  if(keyCode===RIGHT_ARROW){
    ship.move(1);
    console.log("right");
  }
  else if(keyCode===LEFT_ARROW) {ship.move(-1);
    console.log("left");
  }
}