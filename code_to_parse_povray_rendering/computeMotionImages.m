function gtflow = computeMotionImages
            
 K1 = getcamK('scene_00_0000.txt');
 
 [x2,y2,z2] = compute3Dpositions('scene_00_0001.txt','scene_00_0001.depth');
 
 [R1, T1] = computeRT('scene_00_0000.txt');
 [R2, T2] = computeRT('scene_00_0001.txt');
 
 [Mx, My] = computeMotionField(x2,y2,z2,K1,R1,T1,R2,T2);
  
 gtflow = zeros(480,640,2);
 gtflow(:,:,1) = Mx;
 gtflow(:,:,2) = My;

 x = repmat([1:640],480,1);
 y = repmat([1:480]',1,640);
 
 xplusMx = x+Mx;
 yplusMy = y+My;
 
 I = imread('scene_00_0000.png');
 
 I_warp = interp2(double(rgb2gray(I)),xplusMx,yplusMy);
 imwrite(uint8(I_warp),'I_warped.png','png');
 
  
end
