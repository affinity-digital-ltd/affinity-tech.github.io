---
layout: post
title:  "Version one of eBook Gem goes live!"
date:   2014-08-31 12:08:00
categories: [affinity-tech, ebook-gem]
author: Kris Quigley
comments: true
---

We are proud to announce a much needed update to our eBook Gem.  The version number has been
bumped up to 1.0 to signify that the codebase is a lot more mature, and also brings in
incompatibilities over previous versions due to the changes in codebase.

The codebase is now covered by a test suite which should mean that it is stable enough to use
in a production environment.

Amongst the changes, the gem now takes an `Ebook Object` rather than an id to generate the file.
It also returns the path of the file generated for your convenience.

`EbookGenerator.generate_ebook(ebook_object)`

There is now support to generate Kindle .mobi eBooks, but this requires the
[Kindlegen](http://www.amazon.com/gp/feature.html?docId=1000765211) command line tool
to be placed in the Rails app `/bin` folder first.  To generate a Kindle .mobi file instead of an .ePub
requires the passing of `kindle` as a second argument:

`EbookGenerator.generate_ebook(ebook_object, 'kindle')`

The Gem has also been completely reorganised so that it is now a Rails plugin with built in
 generators to generate the Ebook and Section models and relevant migrations:

`$ rails g ebook_generator`

Additionally, the models have been redesigned so as not to rely on Postgres or Friendly_id, this
is to give you the freedom to choose your flavour of database and how to generate your own
slugs.

We would love to hear your thoughts on the gem and can even [fork us on github](https://github.com/krisquigley/ebook_generator).

We will also be updating our eBook generator frontend to use the new features introduced in this version.
 Expect an update in the following days.
