### the results of a people pose estimation

# static value: the value of "person_name" when no recognition was made
# (for instance, a simple face detection, but no face recognition)
string NO_RECOGNITION_MADE=NOREC

# static value: the value of "person_name" when the recognition of the person failed
# (for instance, the face recogntion could not load the model)
string RECOGNITION_FAILED=RECFAIL

# the header, useful for the stamp and the frame
Header header

# the estimated position and orientation for the head of this person
geometry_msgs/Pose head_pose

# the standard deviation of the estimated pose
float32 std_dev

# the supposed name of recognized people (for instance, "Bob").
# Only filled by user recognition methods, such as ARToolkit or multimodal fusion.
string person_name

# the confidence (between 0=really unsure and 1=very sur)
float32 confidence

# the color mask of the user. 
# Most of the time, it does not correspond to the full RGB input image,
# but a tight crop that only keeps the region of interest of that image.
sensor_msgs/Image rgb
# the depth mask of the user
sensor_msgs/Image depth
# the binary mask of the user. 
# The image pixels are = 0 where the user is not, and >0 where he is
# (that is, any point of her body).
sensor_msgs/Image user

# the offset of the rgb, depth, user images in the original input image
# can be used for correct 3D reprojection for instance
int16 images_offsetx
int16 images_offsety

# a list of attributes of this person, for instance its height, its preferences...
string[] attributes_names

# the values of the attributes definited in attributes_names
string[] attributes_values
