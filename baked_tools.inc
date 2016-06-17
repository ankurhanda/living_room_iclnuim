/*
   POV-Ray lightmapping helper - Jaime Vives Piqueres, 2011
   --
   Generic tools
*/   

// macro baked_texture()
//
// params:
//
// * p_lightmap: lightmap pigment
// * t_pigment: pigment to combine with the lightmap
// * t_finish: finish for the resulting texture
// * t_normal: normal for the resulting texture
// 
// description:
//
// creates an uv mapped texture by multiplying the specified pigments
// and adding the specified finish and normal statements
//
// uv_mapping is added to pigment and normal individually to allow
// for texture layering over the resulting texture
//
// as we are using OpenEXR lightmaps, which can have values way outside
// the 0-1 range, the range is raised to an arbitrary value (exr_max) which
// should be enough for .exr files generated with POV-Ray 
//
#ifndef (lightmap_exposure) 
  #declare lightmap_exposure=1.0; 
#end

#macro baked_texture(p_lightmap,t_pigment,t_finish,t_normal)

  #local exr_max=65000; // maxium possible value on a OpenEXR file (?)

  #local ft_pigment = function { pigment { t_pigment } };
  #local fp_lightmap = function { pigment { p_lightmap } };
  #local RED = pigment {
    function { ft_pigment(x,y,z).red * (fp_lightmap(x,y,z).red/exr_max)*lightmap_exposure } 
    color_map { [0 rgb 0][1 rgb <exr_max,0,0>] }
  }
  #local GREEN = pigment {
    function { ft_pigment(x,y,z).green * (fp_lightmap(x,y,z).green/exr_max)*lightmap_exposure } 
    color_map { [0 rgb 0][1 rgb <0,exr_max,0>] }
  }
  #local BLUE = pigment {
    function { ft_pigment(x,y,z).blue * (fp_lightmap(x,y,z).blue/exr_max)*lightmap_exposure }  
    color_map { [0 rgb 0][1 rgb <0,0,exr_max>] }
  }
  #local TC = pigment {
    function { ft_pigment(x,y,z).transmit }
    color_map { [0 rgb 0][1 rgb 0 transmit 1] }
  }
  #local FC = pigment {
    function { ft_pigment(x,y,z).filter }
    color_map { [0 rgb 0][1 rgb 0 filter 1] }
  }

  texture{
    pigment{
      uv_mapping
      average
      pigment_map{
        [1 RED]
        [1 GREEN]
        [1 BLUE]
        [1 TC]
        [1 FC]
      }
    }
    finish{
      t_finish
      emission 5
    }
    normal{
      uv_mapping
      t_normal
    }
  }

#end

