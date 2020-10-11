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


# Unix Commands for Manipulating With The Data

We found the following commands quite useful when managing the video frames of the dataset. You may find some of them useful too, if you work on a UNIX based machine.

Creating Video From Images: To quickly navigate through images, you may find it easy to first create a video out of images and then flick through the frames of the video. Alternatively you can use gthumb to have a thumbnail view of all the images. Gthumb also lets to edit images. In case you chose the former and want to convert the images to a video, you may find the following command useful.

> mencoder mf://@list.txt -mf w=640:h=480:fps=20:type=png -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell -oac copy -o output.avi

The list.txt is a file containing the list of all images you want to make a video out of. More information about mencoder usage can be found online.


Batch Removal Of Symbolic Links: We have links in directory for images that are common among different frame-rates. In case you want to remove links in batch, you may find the following command useful. You may need this when you create your own renderings and copy common files and later feel the need to remove the wrong ones copied.

> find . -lname '\*' -exec rm {} \;

Batch Renaming Files: For batch renaming files, you may find the tool, gprename quite useful. It is a simple GUI interface and lets you select files and rename them in batch very quickly.

> gprename: http://gprename.sourceforge.net/


Appending String At The End of Lines In A File: In case you want to add the same string at the end of all the lines in a file, you may find the following command useful. This needs vim in escape (ESC) mode.

> %norm A \_string_you_want_to_append\_

Batch Conversion File Format: If you are looking to batch convert images from one format to other, the following command let us you convert (as an example) all ppm files to png format in batch.

> mogrify -format png \*.ppm

Averaging Images: At times, you may feel the need to average images. ImageMagick's convert command lets you easily do that on your shell as shown in the following.

> convert -average scene\_??\_0000.png scene_avg_0000.png

Creating Symbolic Links With Shell For Loop: To create symbolic links of files for different frame-rates, you may want to use the shell for loop for that on your command prompt.

> for i in {20..200..20}; do `ln -s /vol/robotvision/ahanda/DatasetOnline/$i\fps/$i\fps_perfect_images_format.tgz $i\fps_perfect_images_format.tgz`; done

Replacing a text in multiple files of directory: To replace a given string in multiple files in a directory on your command prompt.

> sed -i 's/text to replace/new text/g' \*.sh

Deleting line containing a particular text/string in vim :

> :g/text_string/d

