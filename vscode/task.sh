cd ~/workspace/autoware.auto
#PACKAGE=scenario_test_utility
PACKAGE=awapi_awauto_adapter
colcon build --symlink-install # --packages-up-to $PACKAGE
#colcon build --symlink-install
#colcon test --packages-select $PACKAGE
#colcon test-result --verbose
