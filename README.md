# Guix Bioconductor channel

This channel complements GNU Guix’ collection of R packages and contains
all Bioconductor packages not available in Guix yet. The import is [fully
automated](https://github.com/guix-science/guix-cran-scripts) and thus
no quality control exists. Packages may or may not build, they may or
may not work. Pull requests are not accepted.

You can use this channel by adding the following snippet to your
`~/.config/guix/channels.scm` and then running `guix pull`:

```scheme
(cons
  (channel
    (name 'guix-bioc)
    (url "https://github.com/guix-science/guix-bioc.git"))
  %default-channels)
```

Binary substitutes for `x86_64-linux` are soon available
from https://guix.bordeaux.inria.fr, see [Getting Substitutes from Other
Servers](https://guix.gnu.org/manual/en/guix.html#Getting-Substitutes-from-Other-Servers)
in the official manual.

