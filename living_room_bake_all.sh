#!/bin/bash

# POV-Ray lightmapping helper - Jaime Vives Piqueres, 2011
# --
# File generated by prepare_baking.jar

# living_room_room_molding_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K1 +Olightmaps/room_molding_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K1 +Olightmaps/room_molding_.exr +FE -d -p

# living_room_wall_pic3_frame_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K2 +Olightmaps/wall_pic3_frame_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K2 +Olightmaps/wall_pic3_frame_.exr +FE -d -p

# living_room_wall_pic2_frame_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K3 +Olightmaps/wall_pic2_frame_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K3 +Olightmaps/wall_pic2_frame_.exr +FE -d -p

# living_room_door_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K4 +Olightmaps/door_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K4 +Olightmaps/door_.exr +FE -d -p

# living_room_chair2_seat_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K5 +Olightmaps/chair2_seat_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K5 +Olightmaps/chair2_seat_.exr +FE -d -p

# living_room_chair2_legs_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K6 +Olightmaps/chair2_legs_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K6 +Olightmaps/chair2_legs_.exr +FE -d -p

# living_room_wall_pic3_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K7 +Olightmaps/wall_pic3_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K7 +Olightmaps/wall_pic3_.exr +FE -d -p

# living_room_wall_pic2_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K8 +Olightmaps/wall_pic2_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K8 +Olightmaps/wall_pic2_.exr +FE -d -p

# living_room_spots_light_  
"/usr/local/bin/povray" +Iliving_room.pov +w64 +h64 +UA +K9 +Olightmaps/spots_light_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w64 +h64 +UA +K9 +Olightmaps/spots_light_.exr +FE -d -p

# living_room_spots_metal_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K10 +Olightmaps/spots_metal_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K10 +Olightmaps/spots_metal_.exr +FE -d -p

# living_room_balcony_ceiling_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K11 +Olightmaps/balcony_ceiling_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K11 +Olightmaps/balcony_ceiling_.exr +FE -d -p

# living_room_balcony_floor_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K12 +Olightmaps/balcony_floor_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K12 +Olightmaps/balcony_floor_.exr +FE -d -p

# living_room_balcony_wall_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K13 +Olightmaps/balcony_wall_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K13 +Olightmaps/balcony_wall_.exr +FE -d -p

# living_room_room_ceiling_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K15 +Olightmaps/room_ceiling_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K15 +Olightmaps/room_ceiling_.exr +FE -d -p

# living_room_room_floor_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K16 +Olightmaps/room_floor_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K16 +Olightmaps/room_floor_.exr +FE -d -p

# living_room_room_wall1_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K17 +Olightmaps/room_wall1_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K17 +Olightmaps/room_wall1_.exr +FE -d -p

# living_room_room_walls_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K18 +Olightmaps/room_walls_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K18 +Olightmaps/room_walls_.exr +FE -d -p

# living_room_curtains_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K19 +Olightmaps/curtains_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K19 +Olightmaps/curtains_.exr +FE -d -p

# living_room_wall_pic1_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K20 +Olightmaps/wall_pic1_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K20 +Olightmaps/wall_pic1_.exr +FE -d -p

# living_room_wall_pic1_frame_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K21 +Olightmaps/wall_pic1_frame_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K21 +Olightmaps/wall_pic1_frame_.exr +FE -d -p

# living_room_curtain_rail_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K22 +Olightmaps/curtain_rail_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K22 +Olightmaps/curtain_rail_.exr +FE -d -p

# living_room_foot_lamp1_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K23 +Olightmaps/foot_lamp1_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K23 +Olightmaps/foot_lamp1_.exr +FE -d -p

# living_room_windows_frames_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K24 +Olightmaps/windows_frames_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K24 +Olightmaps/windows_frames_.exr +FE -d -p

# living_room_stand_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K25 +Olightmaps/stand_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K25 +Olightmaps/stand_.exr +FE -d -p

# living_room_chair1_legs_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K26 +Olightmaps/chair1_legs_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K26 +Olightmaps/chair1_legs_.exr +FE -d -p

# living_room_chair1_seat_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K27 +Olightmaps/chair1_seat_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K27 +Olightmaps/chair1_seat_.exr +FE -d -p

# living_room_sofa1_legs_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K28 +Olightmaps/sofa1_legs_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K28 +Olightmaps/sofa1_legs_.exr +FE -d -p

# living_room_sofa1_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K29 +Olightmaps/sofa1_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K29 +Olightmaps/sofa1_.exr +FE -d -p

# living_room_sofa2_legs_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K30 +Olightmaps/sofa2_legs_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K30 +Olightmaps/sofa2_legs_.exr +FE -d -p

# living_room_sofa2_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K31 +Olightmaps/sofa2_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K31 +Olightmaps/sofa2_.exr +FE -d -p

# living_room_table_board_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K32 +Olightmaps/table_board_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K32 +Olightmaps/table_board_.exr +FE -d -p

# living_room_foot_lamp_shade1_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K33 +Olightmaps/foot_lamp_shade1_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K33 +Olightmaps/foot_lamp_shade1_.exr +FE -d -p

# living_room_palm_pot_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K34 +Olightmaps/palm_pot_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K34 +Olightmaps/palm_pot_.exr +FE -d -p

# living_room_palm1_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K35 +Olightmaps/palm1_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K35 +Olightmaps/palm1_.exr +FE -d -p

# living_room_foot_lamp2_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K36 +Olightmaps/foot_lamp2_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K36 +Olightmaps/foot_lamp2_.exr +FE -d -p

# living_room_foot_lamp_shade2_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K37 +Olightmaps/foot_lamp_shade2_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K37 +Olightmaps/foot_lamp_shade2_.exr +FE -d -p

# living_room_vase1_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K38 +Olightmaps/vase1_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K38 +Olightmaps/vase1_.exr +FE -d -p

# living_room_cushion_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K39 +Olightmaps/cushion_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K39 +Olightmaps/cushion_.exr +FE -d -p

# living_room_cushion2_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K40 +Olightmaps/cushion2_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K40 +Olightmaps/cushion2_.exr +FE -d -p

# living_room_cushion3_  
"/usr/local/bin/povray" +Iliving_room.pov +w128 +h128 +UA +K41 +Olightmaps/cushion3_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w128 +h128 +UA +K41 +Olightmaps/cushion3_.exr +FE -d -p

# living_room_rug_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K42 +Olightmaps/rug_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K42 +Olightmaps/rug_.exr +FE -d -p

# living_room_plate_  
"/usr/local/bin/povray" +Iliving_room.pov +w256 +h256 +UA +K43 +Olightmaps/plate_.exr +FE -d -p Declare=use_baking=1
"/usr/local/bin/povray" +Iliving_room_repair_seams +w256 +h256 +UA +K43 +Olightmaps/plate_.exr +FE -d -p

