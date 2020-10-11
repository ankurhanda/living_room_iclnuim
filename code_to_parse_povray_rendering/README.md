# Reading POVRay Native Format

We provide source files for parsing the ICL-NUIM format data uploaded on the website, specifically the depth files and camera pose files that are stored both in POVRay native format as well as TUM RGB-D format. The ICL-NUIM format depth files and camera poses are stored in PNG images and txt files containing the 3x4 ground truth pose. The POVRay native format has the euclidean distances of 3D points from the camera stored in a file with .depth extension. These euclidean values have to be converted to z-coordinate to be used as depth in the image alignment algorithms. The image below explains the conversion of euclidean distance to depth values.

![image](./images_for_github/POVRayCameraDistance.png)

Use the following camera calibration matrix, K

$\begin{matrix} 481.20 & 0 & 319.50 \\\\ 0 & -480.00 & 239.50 \\\\ 0 & 0 & 1 \end{matrix}$

Note that the focal length on the y-axis is negative. Your projections will not work properly if you do not use the negative focal length.

# MATLAB codes 

getcamK.m file reads the camera file (e.g. scene_00_0231.txt) and gives out the K matrix.

computeRT.m file accepts again the camera file and gives the camera pose [R | t]. The poses are represented with respect to POVRay world frame of reference, i.e. Tpov_cam and it reads as pose of camera with respect to POVRay world.

compute3Dpositions.m file accepts camera file as well as the depth file (e.g. scene_00_0231.depth) and gives the 3D positions in camera reference frame.

computeMotionField.m needs the 3D positions of points in the refernce frame and the poses of current frame and reference frame and gives the optical flow in return.

computeMotionImages.m is a sample program that takes reference image, depth-map, pose file and gives a warped image obtained using optical flow.



