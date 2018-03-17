# CMake generated Testfile for 
# Source directory: /home/colby/Documents/Programming/hello-vscode/test
# Build directory: /home/colby/Documents/Programming/hello-vscode/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmt.lint.tslint "/usr/local/bin/node" "/home/colby/Documents/Programming/hello-vscode/node_modules/tslint/bin/tslint" "-p" "/home/colby/Documents/Programming/hello-vscode")
set_tests_properties(cmt.lint.tslint PROPERTIES  WORKING_DIRECTORY "/home/colby/Documents/Programming/hello-vscode")
add_test(cmt.test.unit.all "/usr/local/bin/node" "/home/colby/Documents/Programming/hello-vscode/node_modules/vscode/bin/test")
set_tests_properties(cmt.test.unit.all PROPERTIES  ENVIRONMENT "CMT_TESTING=1;CODE_TESTS_PATH=/home/colby/Documents/Programming/hello-vscode/out/test/unit-tests;CODE_TESTS_WORKSPACE=/home/colby/Documents/Programming/hello-vscode/test/unit-tests/test-project-without-cmakelists" RESOURCE_LOCK "vscode.runlock" WORKING_DIRECTORY "/home/colby/Documents/Programming/hello-vscode")
add_test(cmt.test.smoke.vs-preferred-gen "/usr/local/bin/node" "/home/colby/Documents/Programming/hello-vscode/node_modules/vscode/bin/test")
set_tests_properties(cmt.test.smoke.vs-preferred-gen PROPERTIES  ENVIRONMENT "CMT_TESTING=1;CODE_TESTS_PATH=/home/colby/Documents/Programming/hello-vscode/out/test/extension-tests/vs-preferred-gen;CODE_TESTS_WORKSPACE=/home/colby/Documents/Programming/hello-vscode/test/extension-tests/vs-preferred-gen/project-folder" RESOURCE_LOCK "vscode.runlock" WORKING_DIRECTORY "/home/colby/Documents/Programming/hello-vscode")
add_test(cmt.test.smoke.successful-build "/usr/local/bin/node" "/home/colby/Documents/Programming/hello-vscode/node_modules/vscode/bin/test")
set_tests_properties(cmt.test.smoke.successful-build PROPERTIES  ENVIRONMENT "CMT_TESTING=1;CODE_TESTS_PATH=/home/colby/Documents/Programming/hello-vscode/out/test/extension-tests/successful-build;CODE_TESTS_WORKSPACE=/home/colby/Documents/Programming/hello-vscode/test/extension-tests/successful-build/project-folder" RESOURCE_LOCK "vscode.runlock" WORKING_DIRECTORY "/home/colby/Documents/Programming/hello-vscode")
add_test(cmt.test.smoke.without-cmakelist-file "/usr/local/bin/node" "/home/colby/Documents/Programming/hello-vscode/node_modules/vscode/bin/test")
set_tests_properties(cmt.test.smoke.without-cmakelist-file PROPERTIES  ENVIRONMENT "CMT_TESTING=1;CODE_TESTS_PATH=/home/colby/Documents/Programming/hello-vscode/out/test/extension-tests/without-cmakelist-file;CODE_TESTS_WORKSPACE=/home/colby/Documents/Programming/hello-vscode/test/extension-tests/without-cmakelist-file/project-folder" RESOURCE_LOCK "vscode.runlock" WORKING_DIRECTORY "/home/colby/Documents/Programming/hello-vscode")
