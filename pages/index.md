# Learn a useful language

> It's a joke! Don't take it seriously ;) I just want to yap about why I dislike
> Racket.

[Download the poster here](/poster.pdf).

I bought this domain on Nov. 19, 2024, give me a couple of days to cook up some
examples.

Khoury is known for pumping top-notch engineers into the industry. Having
students learn something that's practically nowhere to be found (see poster)
feels a bit off-brand for our co-op program right?

## The syntax

Racket syntax — where parentheses are on a mission to outnumber the atoms in our
universe. If any control flow is needed in your logic, and soon enough you will
be lost in a sea of brackets, it's almost poetic, in a tragic kind of way.

Let's say we have this problem (from some random
[GitHub repo](https://github.com/MarkHarrison03/Racket/blob/a54b94ec9d6bfe21657afbddb85aa692e98ec039/Palindrome%20Checker#L9-L15)):

> Write a function that returns whether the input is a palindrome or not,
> regardless of if the input value was a list, an integer, a floating point
> number or a string.

Look at this insanity:

```rkt
(define Palindrome (lambda (x) (if ( list? x) (listPalindromeChecker x)
                                   (if (exact-integer? x) (integerPalindromeChecker  x)
                                       (if (boolean? x) '(invalid input)
                                           (if (flonum? x) (floatPalindromeChecker x)
                                               (if (string? x) (stringPalindromeChecker x) (error '(whoops)))))))))
```

## Typed Racket

Add something more here...

## Common unjustifiable justifications

"Racket is great for teaching the fundamentals of FP"

If the fundamentals include a side lesson in how to fear parentheses forever.
There are plenty of functional languages that won't leave you feeling like you
need therapy after debugging a simple script.

"Racket is used for academic research"

Absolutely. It's great for the kind of projects that are destined to never leave
the lab. If your goal is to create something that lives exclusively in PDF
papers and never hits the real world, Racket is perfect. But for practical use?
Well, maybe stick to a language that actually has some friends outside academia.

Add something more here...

## It's not just me

- 2024 -
  [Racket frustrates me](https://web.archive.org/web/20240110183908/https://blog.winny.tech/posts/racket-frustrates-me)
  by [Winston Weinert](https://winny.tech),
  [HN discussion](https://news.ycombinator.com/item?id=36541758)
- 2019 -
  [Re: Thoughts on Racket2](https://news.ycombinator.com/item?id=20734389) by
  [Nicholas Yang](https://nicholasyang.com)
- 2019 -
  [Post on r/uwaterloo](https://www.reddit.com/r/uwaterloo/comments/dkb55e/i_hate_racket)
- 2016 -
  [Racket Sucks, Don’t Try It](https://www.brinckerhoff.org/blog/2016/04/25/racket-sucks-don-t-try-it)
  by [John Clements](https://www.brinckerhoff.org/index.html)

## You should know

This site is built with:

- [Soupault](https://github.com/pataphysicalsociety/soupault): static site
  generator (OCaml)
- [Pandoc](https://github.com/jgm/pandoc): universal markup converter (Haskell)
- [Nix](https://github.com/nixos/nix): purely functional package manager

Don't say it's a good language for teaching functional programming paradigm,
there are plenty good alternatives.

There’s exactly 0 production-ready and widely-used software written in Racket
that I know of since the beginning of my programming journey (~9 years ago).
Happy to be proven wrong.

## Thoughts?

Comrades? Say hi or send me more examples of Racket confusion!

Racket lovers? Opinion rejected.

```shell
echo -n 'YnJhY2tldHNAcmt0LmxvbAo=' | base64 --decode
```

## Spread the word

Don't worry, it's a self-hosted instance of
[Plausible Analytics](https://github.com/plausible/analytics) (written in Elixir
btw, not Racket).

<iframe
    plausible-embed
    src="https://stats.rkt.lol/share/rkt.lol?auth=Hdi1lJ1AZvsf8XzrOvcf6&embed=true&theme=dark&background=%232E3440"
    frameborder="0"
    loading="lazy"
    scrolling="no"
    style="width: 100%; min-width: 100%; height: 1600px;"
    title="Plausible Analytics"
>
</iframe>
<script async src="https://stats.rkt.lol/js/embed.host.js"></script>
