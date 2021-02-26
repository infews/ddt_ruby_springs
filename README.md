# "Ruby Springs"

A "Tech Talk" presentation that adapts a blog post I wrote years ago called "Don't Desiccate your Tests" at the Pivotal Labs blog. 

The idea is that by over DRY'ing your specs, you will add indirection that slows you down. Duplication in tests is fine. Moving tests around so that you are not over-testing is a way to have fewer tests and a faster test suite without sacrificing coverage.

This is a toy project. YMMV. _YMwillV_. But I hope this gives you some ideas on how to improve your suite.

## Installation & Setup

- Have Ruby 2.7.x+ installed
- clone this repo
- `> bundle install && bundle exec rake`

## Presentation

The deck lives in `./doc/bdd_presentation.md`. I generated a PDF for the talk, but I've removed any copyrighted images from the repo. 

## Code

The code is organized in 8 iterative steps. Each spec and implementation is scoped to its step so they do not collide.

```shell
# runs the entire suite
> bundle exec rake                       

# bash (MacOS <= 10.14)
> bundle exec rake step[1] # runs the specs for step 1; (1..8).include?(step)

# zsh (MacOS >= 10.15) 
> noglob bundle exec rake step[1] # runs the specs for step 1; (1..8).include?(step)
```

## Step 1

A simple spec with an implicit `subject`.

Implicit `subject` allows you to have simple, one-line specs that read nicely. But it is a bit of indirection, which in complicated code bases can be challenging.

Notice the nesting of contexts, and the use of `before` blocks. This encourages one-line specs and re-use of the `before` blocks when appropriate.

## Step 2

This is the same implementation, but the specs have moved to an explicit, or named, `subject`. This reads nicely, allowing for more explicit use of the name when wanting to call methods.

`ball.kick` is more descriptive than `subject.kick`

## Step 3

Again, the same implementation. This moves to just using `let` for consistency. This is a tradeoff, for sure. Files will be "taller" with more indentation. But this favors being explicit in naming, nesting, and testing.

## Step 4

Adds another, very similar class, `PlaygroundBall` that has a little specialization. 

The only changes that are needed is the beginning call to `RSpec.describe` to call out the new class and some constants.

Note that playground balls have a nostalgic smell, and there is now a sound when the balls are kicked.

## Step 5

- No implementation change.
- Adds a shared context around inflation. 
  
File is getting shorter. But where is that context defined? You have to figure that out.

## Step 6

- No implementation change.
- Adds a shared context around kicking & deflation. 
  
File is nice and short. Very DRY. But what is the interface supposed to be again? And where are these examples defined?

This is where you might start to wonder about this being too much indirection.

## Step 7

- No _test_ changes.
- Common functionality pulled into a super/base class `InflatableBall`.

This is a great example of tests helping with your refactoring. All the tests from Step 6 are green, so great, right?

## Step 8

- Adds unit tests for `InflatableBall`
- Adds `Game` as integration specs for leaf classes
- Removes super class unit re-testing from leaf classes
- Adds wiring test of hierarchy to leaf classes

Deleting tests that are green may feel weird, but this just moves them so you're testing as little as possible, while still being very explicit. 

Some "unit" values are only being testing in integration specs, but so what? This should keep the test suites faster while not limiting coverage.





