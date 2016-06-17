 /*
   POV-Ray lightmapping helper - Jaime Vives Piqueres, 2011
   --
   Lights for the test scene
*/

// ===========================================================
// sunlight
// ===========================================================
#declare Az=-50; 
#declare Al=35;
light_source{
  vrotate(10e5*z,<-Al,Az,0>)
  White*3
  #if (use_area)
  area_light 8000*x,8000*z,8,8 jitter adaptive 1 orient circular
  #end
  fade_power 0
}

// ===========================================================
// artificial lights
// ===========================================================
// footlamps
#declare footlamp_instensity=5;
#declare spot_instensity=10;
light_source { 
  <-2.0349,1.5626+.05,2.6081>, 
  Gold*footlamp_instensity
  #if (use_area) 
  area_light .05*x,.05*z,4,4 jitter adaptive 1
  #end 
  fade_power 2 fade_distance .1
}
light_source { 
  <2.0892,1.5626+.05,-1.5125>, 
  Gold*footlamp_instensity
  #if (use_area) 
  area_light .05*x,.05*z,4,4 jitter adaptive 1
  #end 
  fade_power 2 fade_distance .1
}
// spotlights
light_source { 
  <0.223,2.49,-1.649>, 
  (Gold*.5+Pink*.5)*spot_instensity
  spotlight radius 60 falloff 90 tightness 1 point_at <0.223,0,-1.649>
  #if (use_area) 
  area_light .05*x,.05*z,4,4 jitter adaptive 1
  #end 
  fade_power 2 fade_distance .1
}
light_source { 
  <-2.254,2.49,0.802>, 
  (Gold*.5+Pink*.5)*spot_instensity
  spotlight radius 60 falloff 90 tightness 1 point_at <-2.254,0,0.802>
  #if (use_area) 
  area_light .05*x,.05*z,4,4 jitter adaptive 1
  #end 
  fade_power 2 fade_distance .1
}
light_source { 
  <-0.010,2.49,0.802>, 
  (Gold*.5+Pink*.5)*spot_instensity
  spotlight radius 60 falloff 90 tightness 1 point_at <-0.010,0,0.802>
  #if (use_area) 
  area_light .05*x,.05*z,4,4 jitter adaptive 1
  #end 
  fade_power 2 fade_distance .1
}
light_source { 
  <2.161,2.49,0.801>, 
  (Gold*.5+Pink*.5)*spot_instensity
  spotlight radius 60 falloff 90 tightness 1 point_at <2.161,0,0.801>
  #if (use_area) 
  area_light .05*x,.05*z,4,4 jitter adaptive 1
  #end 
  fade_power 2 fade_distance .1
}
