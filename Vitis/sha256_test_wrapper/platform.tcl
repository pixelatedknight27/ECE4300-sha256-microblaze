# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\maxgr\Projects\Classes\ECE4300\ECE4300-sha256-microblaze\Vitis\sha256_test_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\maxgr\Projects\Classes\ECE4300\ECE4300-sha256-microblaze\Vitis\sha256_test_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {sha256_test_wrapper}\
-hw {C:\Users\maxgr\Projects\Classes\ECE4300\ECE4300-sha256-microblaze\Vivado\ECE4300_sha256\sha256_test_wrapper.xsa}\
-out {C:/Users/maxgr/Projects/Classes/ECE4300/ECE4300-sha256-microblaze/Vitis}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {peripheral_tests}
platform generate -domains 
platform active {sha256_test_wrapper}
platform generate -quick
platform generate
platform generate -domains 
platform generate -domains 
platform generate -domains standalone_microblaze_0 
