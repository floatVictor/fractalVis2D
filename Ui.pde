void setUi() {
  
  
  //UI
  cp5 = new ControlP5(this);
  
  //global control
  
  Group GLOBAL = cp5.addGroup("GLOBAL")
             .setPosition(20, 20);
             
   /*cp5.addSlider("cX", -2, 1, cX, 0, 5, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(GLOBAL)
             .setColorLabel(255);
             
   cp5.addSlider("cY", -2, 1, cY, 0, 20, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(GLOBAL)
             .setColorLabel(255);*/
             
   cp5.addSlider("maxIter", 20, 60, maxIter, 0, 5, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(GLOBAL)
             .setColorLabel(255);
             
   cp5.addSlider("warpX", -5, 5, warpX, 0, 20, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(GLOBAL)
             .setColorLabel(255);
             
   cp5.addSlider("warpY", -5, 5, warpY, 0, 35, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(GLOBAL)
             .setColorLabel(255);
             
   cp5.addSlider("opacity", 0, 255, opacity, 0, 50, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(GLOBAL)
             .setColorLabel(255);
             
    cp5.addSlider("size", 1, 10, size, 0, 65, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(GLOBAL)
             .setColorLabel(255);
             
  //c_noise control
  
  Group C_NOISE = cp5.addGroup("C_NOISE")
             .setPosition(300, 20);
             
   cp5.addSlider("c_noiseX", 0, 0.5, c_noiseX, 0, 5, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(C_NOISE)
             .setColorLabel(255);
             
   cp5.addSlider("c_noiseY", 0, 0.5, c_noiseY, 0, 20, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(C_NOISE)
             .setColorLabel(255);
             
  cp5.addSlider("c_noiseZ", 0, 0.3, c_noiseZ, 0, 35, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(C_NOISE)
             .setColorLabel(255);
             
   cp5.addSlider("c_noiseAmp", 0, 4, c_noiseAmp, 0, 50, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(C_NOISE)
             .setColorLabel(255);
             
  //p_noise control
  
  Group P_NOISE = cp5.addGroup("P_NOISE")
             .setPosition(580, 20);
             
   cp5.addSlider("p_noiseX", 0, 2, p_noiseX, 0, 5, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(P_NOISE)
             .setColorLabel(255);
             
   cp5.addSlider("p_noiseY", 0, 2, p_noiseY, 0, 20, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(P_NOISE)
             .setColorLabel(255);
             
  cp5.addSlider("p_noiseZ", 0, 5, p_noiseZ, 0, 35, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(P_NOISE)
             .setColorLabel(255);
             
   cp5.addSlider("p_noiseAmp", 0, 550, p_noiseAmp, 0, 50, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(P_NOISE)
             .setColorLabel(255);
             
  //color
  
  Group COLOR = cp5.addGroup("COLOR")
             .setPosition(20, 130);
             
   cp5.addSlider("h", 0, 255, h, 0, 5, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(COLOR)
             .setColorLabel(255);
             
   cp5.addSlider("hRange", 0, 255, hRange, 0, 20, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(COLOR)
             .setColorLabel(255);
             
  cp5.addSlider("sat", 0, 255, sat, 0, 35, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(COLOR)
             .setColorLabel(255);
             
   cp5.addSlider("val", 0, 255, val, 0, 50, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(COLOR)
             .setColorLabel(255);
             
   cp5.addSlider("valRange", 0, 255, valRange, 0, 65, sliderLength, 10)
             .setColorCaptionLabel(255)
             .setGroup(COLOR)
             .setColorLabel(255);
}
