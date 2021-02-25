
# [fit] BDD Best
or
## [fit] Don't Desiccate Your Tests, Ruby Edition

Davis W. Frank

---

[.header-strong: Font Awesome 5 Brands]

# ____ _@dwfrank_
# ____ _@infews_
# __Blogs__ _@ [dwf.bigpencil.net](https://dwf.bigpencil.net)_

Always a pivot.

^ I'm Davis. I'll be your blatherer today. You can find my ravings here.

^ I met JR at Pivotal and we worked on some fun projects together. I'm thrilled to help you all out today.

^ I have a little bit of intro, some toy examples, and then I'm happy to take ?'s

---

> The Good News

^ We'll start with the good news 

---

# [fit] You have tests...

![original](img/tc1.jpg)

^ You have tests. Not every project does. Or has enough.

--- 

> The Bad News

^ But there is always bad news.

---

> CI is __Red__

![original](img/tc2.jpg)

^ Maybe it worked on your machine.

---

> Slow _refactoring_

![original](img/tc3.jpg)

^ Or you were supposed to be done with this days ago.

---

> A __production__ issue

![original](img/tc4.jpg)

^ Or the poop has hit the fan.

---

> You open a spec you've not seen in weeks... 

^ And you're digging around in code you've not seen...

---

# [fit] Or __months__

^ in a very long time

---

```ruby
🗣 Cow do
  🗣 '🔪' do
    🙏 '🥩' do
      🐄 = Cow.new
      ☮️ '🥩', 🐄.🔪
    end

    🙏 '🐖' do
      🐄 = Cow.new
      ❗️'🐖', 🐄.🔪
    end
  end
end
```

(_Adapted from [Emoji Driven Development][edd] by Tom Lord_) 

^ When you see that old test code, it's not awful. But it's weird.

^ How does your brain process this.

---

## 1st Reaction

![original](img/tenet.jpg)

^ It's like watching the 2nd half of Tenet. You know you've done this already, but it looked like _that_?

---

## 2nd Reaction  

![original](img/pines.png)

^ Then it's all, "Oh, right." and "I hope I don't screw this up!"

--- 

## 3rd Reaction

![original](img/looper.jpg)

^ Then it's "I did this to myself."

---

# [fit] The Big Question

---

> _How do you write BDD specs that make revisiting the past easy?_

---

# What does _future_ you need?

![original](img/bt_keys.png)

---

> Future you is a valid persona

---

> _Design for Future You_

---

# [fit] Future you wants

- To _understand_ quickly
- To _remember_ context
- To _decide_ where to make changes/additions

# [fit]  So you can __work__

---

# [fit] Guidelines

1. Tell a _story_
1. _Limit Indirection_
1. Test the _right_ amount

^ To break the theme a little bit, "There are like, my opinions, man."

---
[.background-color: #ddd]
[.header: #000, Varela Round]
[.header-emphasis: #ad0024, Varela Round]

# [fit] AND NOW,
### [fit] _SOME CODE._

^ And now I've totally lost the theme.

---

# [fit] Guidelines

1. Tell a _story_
1. _Limit Indirection_
1. Test the _right_ amount

---

# [fit] Restated:

1. Name things well and maintain them
1. Few, simple shared examples
1. Don't unit test extractions in place n-times

---

> _Thanks!_

![original](img/bt_typewriter.jpg)

---

Citations

[edd]: https://medium.com/carwow-product-engineering/emoji-driven-development-in-ruby-2d54264f7b08

