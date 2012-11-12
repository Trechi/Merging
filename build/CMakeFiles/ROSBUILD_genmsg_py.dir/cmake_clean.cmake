FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/RCcontroller/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/RCcontroller/msg/__init__.py"
  "../src/RCcontroller/msg/_waypoint.py"
  "../src/RCcontroller/msg/_channel_values.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
