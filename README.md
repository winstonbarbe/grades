# Making The Grade

## Exercise Overview

In this exercise, you will be writing Ruby code to help calculate a student's final grade for a school semester.

Specifically, you'll be writing the code for a single Ruby method that makes this calculation. The method will receive an array containing all the test scores that the student earned during the semester. These tests will have scores ranging from 0 to 100.

The gist of the calculation is that you'll take the average of all the student's test scores, and compute a final letter grade, such as "A", "B", "C", "D", or "F" (*gulp!*).

## Exercise Details

As we mentioned, you'll be writing code that computes a student's final letter grade for the semester. Here's the nitty gritty of how this works.

For example, if a student took five tests throughout the semester, their array of test scores may look like this:

```
[95.0, 92.0, 99.0, 88.0, 96.0]
```

Wow, this student seems really on top of their game. Almost all of their scores were above a 90!

Note that all of the test scores have a decimal point. That's how the school system records test scores, so you can expect all test scores to look like this.

### The Calculation

The first thing you'll need to do is get the *mean average* of these test scores.

The mean average - in this context - is the sum of all the numbers divided by the number of test scores. In the case of our stellar student, the sum of the test scores is:

```
95.0 + 92.0 + 99.0 + 88.0 + 96.0 = 470.0
```

We then divide `470.0` by `5` (the number of test scores) to get the average: `94.0`.

Once the average has been calculated, we now need to determine what the student's final letter grade is. 

> NOTE: *Our method will be returning a string representing a final letter grade*, not the average. The average is simply a step in helping us determine the student's final letter grade.

The final letter grade will be a string from the following list:

* `"A"`
* `"B"`
* `"C"`
* `"D"`
* `"F"`

Our method must only return one of these strings. (There is one exception to this, where a student may recieve an `"I"` for "Incomplete", but we'll address that later.)

The determination of the student's letter grade will be based on the following table:

* 90 or above: `A`
* 80 to 89: `B`
* 70 to 79: `C`
* 60 to 69: `D`
* Below 60: `F`

### Incomplete Grade

The one exception to all of the above is where a student did not complete any tests. This will be indicated if the array your method receives is empty.

In such a case, your method should return `"I"` for "Incomplete".

## Writing The Code

You will be writing your code inside the file called `grades.rb`. 

Right now, the file contains a `final_grade` method, but this method is empty! Your job is to fill in the code to make this method work.

If you look at the `final_grade` method (yes, do that now), you'll see that it expects to receive an `array` as an argument. This array will be the list of test scores.

Here's an example of how the method is supposed to work. If you call the method like so:

```
final_grade([95.0, 92.0, 99.0, 88.0, 96.0])
```

the method should return the string `"A"`.

The easiest way to test your code out is to *print* the result of the `final_grade` method to the terminal. For example, you can write the following code at the end of the file (after your method definition):

```
puts final_grade([95.0, 92.0, 99.0, 88.0, 96.0])
```

If your code works correctly, an `A` should be printed to the terminal. 

Of course, you'll want to run your code using multiple examples to ensure that it works for all cases.

## Unit Tests

This exercise comes with **unit tests** in a separate file, `test_grades.rb`. To avoid confusion, let's clarify that *unit* tests have nothing to do with the *student's* test score from the context of this exercise. Instead, unit tests are specialized bits of code, and we'll describe them shortly.

For the record, we may use the term *unit test* and just plain *test* interchangeably. 

### Too Long; PLEASE Read

It is technically possible to complete this exercise without getting involved with unit tests. However, tests are a valuable tool, and will provide immediate feedback as to whether you've developed a correct solution to the exercise. Even though the following  explanation of tests is lengthy, it will apply to many exercises going forward. This extensive documenation on how testing works won't be repeated again in future exercises, so you'll only have to encounter this learning curve once. 

### What is a Unit Test?

To help provide additional feedback as to whether your code works correctly, we've provided a series of unit tests which you can run from your terminal. Simply put, a **unit test** is a piece of code that runs *another* piece of code to ensure that the other pice of code works correctly.

### The Tests File

In this repository, there's another file called `test_grades.rb`. This file contains all the unit tests for the `final_grade` method you'll be working on. Basically, these unit tests will run your `final_grade` method to make sure it's working properly.

Open this file now and take a look at its contents. By looking at it along with this documentation, everything will make more sense.

> Pro Tip: Clone this repo onto your computer, and open this README in your text editor. You can then open the `test_grades.rb` file in your editor too, and read the two files side by side.

### Require Relative

The first line of code (not including the comments) is:

```
require_relative 'grades.rb'
```

This line tells the computer to find a file called `grades.rb`, and run all of its code before running the rest of the code from *our* file. It's sort of like merging the two files, taking all the code from `grades.rb` and dumping it at the top of our `test_grades.rb` file.

The point of all this is to allow our `test_grades.rb` file to access and run all the code from from the `grades.rb` file. 

### The First Unit Test

If you skim through the `test_grades.rb` file, you'll see that most of the code is commented out. However, the first section is not. This is our first unit test. As you can see, here's what it looks like:

```
# Test 1
puts "TEST #1: Typical A grade"
if final_grade([100.0, 90.0, 80.0, 90.0]) == "A"
	puts "TEST #1 passed"
else
	puts "TEST #1 failed"
end
```

While this code has the fancy name "unit test", we can see that it's really just a bit of plain, straightforward code.

The first line, `puts "TEST #1: Typical A grade"`, merely prints some text to the terminal to indicate to us that it's now running the first test.

Then, we have a basic conditional statement:

```
if final_grade([100.0, 90.0, 80.0, 90.0]) == "A"
```

This statement runs the `final_grade` method with the input array of `[100.0, 90.0, 80.0, 90.0]` and checks whether the result is the string `"A"`. 

If the result is `"A"` (which it's supposed to be, given that the average test score is 90), the code prints out `"TEST #1 passed"`. If the code *doesn't* work as expected and yields some other result, the code prints out `"TEST #1 failed"`.

To run this test, we run the `test_grades.rb` in the terminal like any other Ruby file:

```
ruby test_grades.rb
```

Try this out now. You should see in the terminal:

```
TEST #1: Typical A grade
TEST #1 failed
```
The test "failed" because you haven't written the code to make the `final_grade` work properly yet.

### Errors

Note that sometimes a test won't fail with a graceful `"TEST #1: failed"` message, but with a Ruby error message. You can try this out now by putting the following nonsensical code inside the `final_grade` method:

```
def final_grade(array)
  this isnt real code
end
```

As you'll see, you'll get a syntax-based error message in your terminal, and your program just crashes.

This is a good time to point out that there are *two* kinds of bugs in software: A program-crashing bug, and a don't-get-what-you-want bug.

A program-crashing bug is one where your code can't get executed properly and the program crashes. This can happen due to a host of reasons, including syntax errors or referencing a variable that doesn't exist.

The other kind of bug (a don't-get-what-you-want bug) is where your code can actually be executed by the computer, but the result isn't what you had expected. 

For example, here's a method that is supposed to compute the sum of 1 + 1:

```
def add_one_plus_one
  return 3
end
```

This code will *run* all right, but won't return the desired result.

The failure messages that our tests supply are for cases where the code runs but doesn't return the desired result.

Finally, note that a single program-crashing error can often cause *all* of the tests to not work, even if a lot of your code is technically correct.

### The Remaining Tests

To start, we've commented out all the tests but the first one. To "activate" a new test, you can simply uncomment it.

> Pro Tip: You can comment/uncomment entire blocks of code by highlighting one or multiple lines, and use the keyboard shortcut: Cmd + /. (That means the Command key and forward-slash key together.)

If you have multiple tests activated, they will all get executed when you run the test file. 

You may choose to uncomment all the tests at once, or you may wish to get each test to pass before you uncomment the next one. It's all a matter of personal preference.

You'll see that in this example, there's a test for each letter grade. Additionally, there are tests for what are known as *edge cases* - which are unusual cases that you may have not considered. 

What's great about the tests is that once you get all of them to pass, you know that you've officially completed the exercise correctly.

### You Can Run Either File

Finally, it's important to note that you can still run the original `grades.rb` file as well.

This is useful for testing out your code as you write it. For example, if you want to make sure that your method successfully computes an `A` grade, you can place the following code after your `final_grade` method:

```
puts final_grade([95.0, 92.0, 99.0, 88.0, 96.0])
```

When you then run:

```
ruby grades.rb
```

you will see the result in the terminal.

So, you can run the original `grades.rb` file to test drive your code on your own, and you can run the `test_grades.rb` file to run the unit tests we've provided to get our feedback as to whether your code works correctly.

Okay, that's it on tests! As stated above, many of the future exercises will contain test files as well. Again, this will allow you to gain immediate feedback on the accuracy of your code.

## Committing to Github

We recommend that you commit your code to Github.

The obvious time to commit your code is when you've completed the exercise. But it's also good to commit your code at any stopping point, even if you're not completely finished.

In real life, software developers commit their code to Github even before they've completed their project. Among other benefits, this allows them to save their work to the cloud. It would be a shame for your computer to crash and you lose your work before you had a chance to complete the exercise. 

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```

## Good Luck

Yep, that's right. Good luck!