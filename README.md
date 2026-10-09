# bashtester
Minimal test framework for bash

# Usage
Standing in the test dir:
``` shell
bashtester # starting all tests from current dir
bashtester <"path to test dir"> # starting all tests from provided dir
bashtester <"path to test file"> # start a single test
```
# Writing tests

``` shell
#!/bin/bash

before_all() { # A reserved function that is executed before all tests (For example to copy testfiles)
    echo "before_all"
}

after_all() { # A reserved function that is executed after all tests (For creating a report or delete testfiles)
    echo "after_all"
}

test_example1() {
    result=`run_script parameter parameter2`
    expected_result="YES IT WORKED"
    assert_equal "test 1 returns exit 0" 0 $?
    assert_equal "test_example1" $expected_result $result
}

test_example12() {   
    result=`run_not_working_script some thing`
    expected_result="Something fishy going on"
    assert_equal "test_example1" $expected_result $result
}

_private_function() { # function with a _prefix is not executed as a test. Can be used to make whatever...
    echo "private_function"
}
```


## Help functions
### assert_equal
``` shell
assert_equal <"description of test"> <"expected_result"> <"result">
```
Output:

<green>Assertion passed: dummy_test result</green>

### assert_not_equal
### color_block
``` shell
color_block blue "a block of text"
```
generates an output like:

<blue>---------------------------------------------------</blue><br>
<blue>a block of text</blue><br>
<blue>---------------------------------------------------</blue>


| Defined colors| Standard impl|
|-----|---|
| black ||
| red | for failing assertions |
| light_red ||
| green | for passed assertions |
| light_green ||
| brown_/_orange ||
| yellow | file info|
| blue | standard messages|
| light_blue ||
| purple ||
| light_purple ||
| cyan ||
| light_cyan ||
| light_gray ||
| white ||

# Build

# Install



<style>
    black { color: #000000; }
    red { color: #800000; }
    light red { color: #FF0000; }
    green { color: #008000; }
    light green { color: #00FF00; }
    brown/orange { color: #808000; }
    yellow { color: #FFFF00; }
    blue { color: #2270a0; }
    light blue { color: #0000FF; }
    purple { color: #800080; }
    light purple { color: #FF00FF; }
    cyan { color: #008080; }
    light cyan { color: #00FFFF; }
    light gray { color: #C0C0C0; }
    white { color: #FFFFFF; }
</style>