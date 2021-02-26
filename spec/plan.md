# Rules

- Great Names
- Limit Indirection
- Test extractions differently


## Great Names

- Step 1
  - SoccerBall with subject
- Step 2
  - SoccerBall with let
- Step 3 
  - Context for pulling out of storage
  - Context for playing
  - Context for inflating    

## Limit Indirection 

- Step 4
  - Add Playground Ball
- Step 5
  - Add shared example group
    - but is this indirect worth it?
    - would not over-parameterize, though you COULD
- Step 6
  - Fully parameterized shared context
  
## Test extractions differently

- Step 7
  - Extract Inflatable Ball class
  - Keep shared examples
    
- Step 8
  - Test base class in isolation (mention module)
  - minimal testing of child classes
  - Add Game specs as integration, test whole interface with each    

Re-write this somewhat narratively and put in README.md

---

1. Tell a story

- Name your variables
    - (RSpec? `let` > `subject`)
- Nesting
    - describe methods
    - specialize with context
    - Duplication is _fine_
- Do you know how let works
- Don't write methods, declare variables that do their own setup
    - RSpec? Remember the trick
- Renaming & Refactoring!

---

2. Limit indirection

- Shared examples are cool; use them sparingly
    - Duplication is _fine_. It's encouraged. Fewer clicks to understand!
- If you must...
    - several small ones
    - and all declarative (not functions that parameters)
- Useful to make sure you've extracted well
    - Best to remove these and test minimally at unit level because...

---

3. Test the "right" amount

- Yes, it feels right to test EVERYTHING at unit level
- Integrations / high level behaviors are probably enough for extractions
- BUT Extractions!
    - An extraction is an implementation detail
    - test extractions in isolation with dummy class
    - test a small amount at the unit level
    - treat the users of the extractions as an integration test
- ELSE
    - you are over-testing, which impacts performance
    - you can re-enable later if scared, or if you want additional coverage for refactoring code around
- It's OK TO DELETE CODE, YES, EVEN TESTS

---
