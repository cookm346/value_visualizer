PImage img, img_grey;
String file;

void setup() {
  size(1000, 500);
  file = "checker.jpg";
  img = loadImage(file);
  img_grey = loadImage(file);
  img_grey.filter(GRAY);
  img.resize(500, 1000);
  img_grey.resize(500, 500);
}

void draw() {

  loadPixels(); 
  img.loadPixels(); 
  
  for (int y = 0; y < height*2; y++) {
    for (int x = 0; x < width/2; x++) {
      
      int loc = x + y*(width/2);
         
        float r = red(img.pixels[loc]);
        float g = green(img.pixels[loc]);
        float b = blue(img.pixels[loc]);
        
        if (r > 225){
          r = 255;
          g = 255; 
          b = 255;
        } else if (r > 200) {
          r = 140;
          g = 80; 
          b = 30;
        } else if (r > 175) {
          r = 20;
          g = 20; 
          b = 240;
        } else if (r > 150) {
          r = 20;
          g = 200; 
          b = 20;
        } else if (r > 125) {
          r = 220;
          g = 20; 
          b = 20;
        } else if (r > 100) {
          r = 0;
          g = 0; 
          b = 130;
        } else if (r > 75) {
          r = 0;
          g = 100; 
          b = 0;
        } else if (r > 50) {
          r = 100;
          g = 0; 
          b = 0;
        } else if (r > 25) {
          r = 70;
          g = 40; 
          b = 13;
        } else {
          r = 0;
          g = 0; 
          b = 0;
        }
        pixels[loc] =  color(r,g,b);          
    }
  
  }
  updatePixels();
  image(img_grey, 500, 0);
}
