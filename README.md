# "Ruby Springs"

A "Tech Talk" presentation that adapts a blog post I wrote years ago called "Don't Desiccate your Tests" at the Pivotal Labs blog. 

The idea is that by over DRY'ing your specs, you will add indirection that slows you down in the future. Duplication in tests is fine. Moving tests around so that you are not over-testing is a way to have fewer tests and a faster test suite without sacrificing coverage.

This is a toy project. YMMV. _YMwillV_. But I hope this gives you some ideas on how to improve your suite.

## Installation & Setup

- Have Ruby 2.7.x+ installed
- clone this repo
- `> bundle install && bundle exec rake`

## Presentation

The deck lives in `./doc/bdd_presentation.md`. No PDF, sorry. 

## Code

The code is organized in 8 iterative steps. Each spec and implementation is scoped to its step so they do not collide.

```shell
# runs the entire suite
> bundle exec rake                       


> bundle exec rake step_1 # runs the specs for step 1; (1..8).include?(step)

```

## Step 1 - Implicit Subject

A simple spec with an implicit `subject`.

Implicit `subject` allows you to have simple, one-line specs. Rspec gives you wordy, but generated spec names.

Notice the nesting of contexts, and the use of `before` blocks. This encourages one-line specs and re-use of the `before` blocks when appropriate.

### Negatives

- _"What am I testing again?"_ ...which can be hard with complex codebases.
- Terse specs
- Wordy spec names in output
- Risk of method naming gymnastics to get nicely read specs

## Step 2 - Explicit Subject

This is the same implementation, but the specs have moved to an explicit, or named, `subject`. This reads nicely, allowing for more explicit use of the name when wanting to call methods.

`ball.kick` is more descriptive than `subject.kick`

### Negatives

- Terse specs
- Wordy spec names in output
- Risk of method naming gymnastics to get nicely read specs

## Step 3 - Let "Subject"

Again, the same implementation. This moves to just using `let` for consistency & simplicity. Which leads to more explicit specs. 

### Negatives

- Have to write your own specs
- Longer/taller files

## Step 4 - Another Ball

Adds another, very similar class, `PlaygroundBall` that has a little specialization. Playground balls have a nostalgic smell, and there is now a sound when the balls are kicked.

The only changes that are needed is the beginning call to `RSpec.describe` to call out the new class and some constants.

### Negatives

- A lot of duplication in our spec files
- MORE Longer/taller files

## Step 5 - One Shared Context

No implementation change. We've added a shared context around inflation. Files are shorter.

### Negatives

- Where is "a ball that can be inflated" defined?
- What does that mean again?

## Step 6 - More Shared Contexts

No implementation change. We've added another shared context, this time for kicking/deflation. Files is nice and short. Very DRY.

### Negatives

- Where did we define these examples?
- What interfaces do these examples test?
- Lots of indirection

## Step 7 - Extract a Subclass

No _test_ changes. We've extracted some common functionality into a super/base class `InflatableBall`.

This is a great example of tests helping with your refactoring. All the tests from Step 6 are green, so great, right?

### Negatives

- Where did we define these examples?
- What interfaces do these examples test?
- Lots of indirection
- Lots of re-testing. Has it bought us anything?

## Step 8 - More Explicit Testing

- Adds unit tests for `InflatableBall`
- Adds `Game` as integration specs for child classes (`SoccerBall` & `PlaygroundBall`)
- Removes super class unit re-testing from child classes 
- Adds wiring test of hierarchy to child classes

Deleting tests that are green may feel weird, but this just moves them so you're testing as little as possible, while still being very explicit. There are more, shorter files.

### Negatives & Compromises

- More files (but they are shorter)
- Indirection to implementation is explicit in the tests
- Some "unit" testing (kick counts) are only tested in integration spec






