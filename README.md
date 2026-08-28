# bashtester
Minimal test framework for bash

# Usage

source bashtester
source ../av-plugin/clamdscanner
start_test "Running ClamdScanner tests..."

#setup test files
mkdir -p ./tmp_test_files/infected
mkdir -p ./tmp_test_files/uninfected
./create_eicar.sh ./tmp_test_files/infected/eicar.txt
echo "healthy" >> ./tmp_test_files/infected/healthy.txt
echo "healthy" >> ./tmp_test_files/uninfected/healthy.txt


# Run tests
check_for_virus "./tmp_test_files/infected"
assertEqual "Finding infected files" 1 $?

check_for_virus "./tmp_test_files/uninfected"
assertEqual "No infected files" 0 $?
rm -rf ./tmp_test_files

#finish up
finish_test "Running ClamdScanner tests..."


# Build

# Install

