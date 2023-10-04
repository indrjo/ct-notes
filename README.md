# Notes about Category Theory


## Build

A compiled pdf encompassing the whole work is already provided in this repo. If you want to build it by yourself, there is a `Makefile`, thus that you can simply run:

```sh
$ make
```

For I want to make my work easier, there are also the pdfs of the single chapters with the cross-references handled by the package `xr`. A distinguished script is for that task and it sleeps in this repo as well:

```sh
$ ./make-articles.sh
```


## TODO-s
 
### Ch 0 | Preamble

* Write a short intro for NBG? (Could a *short* intro for NBG even exist?)

### Ch 1 | Basic vocabulary

* Talk about commutative diagrams in a separate section? 

* A propos of commutative diagrams, free categories can be readily introduced there and return to them when we deal with limits. This may be the occasion in which some sort graphs appear, in fact categories *are* some kind of graphs.

* Reorg the section of foundational issues. It is a quite poorly mantained part of the work. The idea is that in some sense things are to be stated for later scopes.

* The sections about iso-, mono- and epimorphisms need a rewrite. Put all in a single section? As for monos and epis, they can be introduced when it comes to talk about the hom functor. Consider that.

* On the section "Basic constructions", prepare more examples for (co)comma categories: there are field extensions and covering spaces, for example. But let us start with simple examples. Have we mentioned subcategories before?

* The section about the functor *hom* is just a stub. I am thinking of talking about monos and epis for the first time here.

* More examples about natural transformations. Talk about natural isomorphisms.

* Rethink the section *Equivalent categories*. A section about *representable functors* and and after that one dedicated to *Yoneda Lemma* follow. Cool examples here involving *natural transformations*, the first examples about *universal properties*.

### Ch 2 | Limits and colimits

* The section *Definition* needs some refinement. There are some examples that can be made without anticipating the coming attractions.

* Write about the *evaluation homomorphism* for polynomials in any commutative ring.

* There is a certain example about the *universal covering space*. This will require some time, but it could be nicely delineated and some nice bibliography entry could be added for the topic.

* Extend comments following some examples: invest more time in explaining *what is the point of the things we are doing*. For... there is a point, isn't it?

### Ch 3 | Adjointness

* More examples and more names.



## About the TeX behind

* Use `tcolorbox`. At the current state, the are some nuisances, like *underfull `\vbox`* through the book.

