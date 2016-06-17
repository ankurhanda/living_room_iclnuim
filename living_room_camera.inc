/*
   POV-Ray lightmapping helper - Jaime Vives Piqueres, 2011
   --
   Camera for the test scene

   It uses two splines to define a path for animation
*/
#declare sp_clo=
spline {
  cubic_spline
   -1/8, <-1.710,1.3,-1.084>
    0.0, < 0.008,1.3,-1.779>
    1/8, < 1.779,1.3,-1.304>
    2/8, < 2.240,1.3, 0.778>
    3/8, < 1.504,1.3, 2.513>
    4/8, < 0.108,1.3, 2.814>
    5/8, <-1.265,1.3, 2.526>
    6/8, <-1.831,1.3, 0.709>
    7/8, <-1.710,1.3,-1.084>    
    1.0, < 0.008,1.3,-1.779>
  1+1/8, < 1.779,1.3,-1.304>
}
#declare sp_cla=
spline {
  cubic_spline
   -1/8, < 1.504,1.3, 2.513>
    0.0, < 0.108,1.3, 2.814>
    1/8, <-1.265,1.3, 2.526>
    2/8, <-1.831,1.3, 0.709>
    3/8, <-1.710,1.3,-1.084>
    4/8, < 0.008,1.3,-1.779>
    5/8, < 1.779,1.3,-1.304>
    6/8, < 2.240,1.3, 0.778>
    7/8, < 1.504,1.3, 2.513>
    1.0, < 0.108,1.3, 2.814>
  1+1/8, <-1.265,1.3, 2.526>
}
camera {

  perspective
  /*location   < 0.108+ val01,1.3, 2.814> //<-1.710, 1.3, -1.084> 
  up <0, 1, 0> right <image_width/image_height, 0, 0>
  look_at  < 0.008+val01,1.3,-1.779>  //<1.504, 1.3, 2.513>
  angle 65*/

//   right -x*image_width/image_height
   //sky <0,0,1>// right handed !

  	transform {
   /*matrix<-0.9998,         0,   0.0218,
         0,    1.0000,         0,
    -0.0218,         0,   -0.9998,
    0.108+0.125,1.3,2.814>*/
matrix <    val00,    val01,  val02,
   val10,   val11,    val12,
   val20,   val21,    val22,
   val30,   val31, val32>
}

  aperture 0.0035 blur_samples 5*10
  /*perspective
  location sp_clo(clock)
  up <0, 1, 0> right <image_width/image_height, 0, 0>
  look_at sp_cla(clock)
  angle 65
  #if (use_fblur)
  aperture .035 blur_samples 7*10 focal_point sp_cla(clock)
  #end*/
}
