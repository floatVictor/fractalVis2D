import controlP5.*;

ControlP5 cp5;
PGraphics pg;

int sliderLength = 200;

float cX = -0.7;
float cY = 0.27015;
float warpX = 2;
float warpY = 0.94;
float zx, zy;
float maxIter = 45;

int ite = 0;
int size = 2;

float c_noiseX = 0.19;
float c_noiseY = 0.39;
float c_noiseZ = 0.14;
float c_noiseAmp = 2;

float p_noiseX = 0.14;
float p_noiseY = 0.09;
float p_noiseZ = 1.07;
float p_noiseAmp = 34.5;

int opacity = 30;
boolean back = false;
boolean play = true;
boolean visible = true;

//color
int h = 189;
int hRange = 150;
int sat = 156;
int val = 114;
int valRange = 255;

void setup() {
  
  //fullScreen();
  size(1920, 1080);
  colorMode(HSB); 
  
  pg = createGraphics(width, height);
  pg.beginDraw();
  pg.background(220);
  pg.endDraw();
  setUi();
}

void draw() {
  
  pg.beginDraw();
  if(play) {
    
    if(back) pg.background(220);
    cX = map(noise(cX * c_noiseX * 0.01, ite * c_noiseZ * 0.01), 0, 1, -c_noiseAmp, c_noiseAmp);
    cY = map(noise(cY * c_noiseY * 0.01, ite * c_noiseZ * 0.01 + 1000), 0, 1, -c_noiseAmp, c_noiseAmp);
    for (int x = 0; x < width; x++) {
      
      for (int y = 0; y < height; y++) {
        
        zx = warpX * (x - width / 2) / (0.5 * width);
        zy = (y - height / 2) / (0.5 * height);
        float i = maxIter;
        while (zx * zx + zy * zy < 4 && i > 0) {
          
          float tmp = zx * zx - zy * zy + cX;
          zy = warpY * zx * zy + cY;
          zx = tmp;
          i -= 1;
        }
       color c = color(
           map(map(noise(ite * 0.003), 0, 1, 0, 10 ) * i, 0, 255, int(h - hRange/2) + 255, int(h + hRange/2) + 255)%255, 
           sat,
           map(i, 0, maxIter, int(val - valRange/2), int(val + valRange/2))%255);
       pg.noStroke();
       pg.fill(c, opacity);
       if (i > 1 && i < maxIter - 10){
         
         pg.square(
             round(x + map(noise(x * p_noiseX * 0.01, ite * p_noiseZ * 0.01), 0, 1, -p_noiseAmp, p_noiseAmp)), 
             round(y + map(noise(y * p_noiseY * 0.01, ite * p_noiseZ * 0.01), 0, 1, -p_noiseAmp, p_noiseAmp)),
             size);
         /*pg.square(
             (int)(map(noise(x * p_noiseX * 0.01, ite * p_noiseZ * 0.01), 0, 1, 0, width)), 
             (int)(map(noise(y * p_noiseY * 0.01, ite * p_noiseZ * 0.01), 0, 1, 0, height)),
             size);*/
         
         //point(x, y);
       }
      }
    }
   
  ite++;
  }
  pg.endDraw(); 
  image(pg, 0, 0);
  if(!visible) cp5.hide();
  else  cp5.show();
  cp5.draw();
}

void keyPressed() {
  if (key == 's') saveFrame("saveFrame/fract2D-#####.png");
  if (key == 'b') back = !back;
  if (key == ' ') play = !play;
  if (key == 'h') visible = !visible;
  if (key == 'x') ite = (int)random(100000);
  if (key == 'j') ite += 10;
}
