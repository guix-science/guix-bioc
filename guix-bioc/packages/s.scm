(define-module (guix-bioc packages s)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages gcc)
  #:use-module (guix-cran packages k)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages r)
  #:use-module (gnu packages compression)
  #:use-module (guix-cran packages t)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages python)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages v)
  #:use-module (guix-cran packages o)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages i)
  #:use-module (gnu packages graph)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
  #:use-module (guix-bioc packages v)
  #:use-module (guix-bioc packages u)
  #:use-module (guix-bioc packages t)
  #:use-module (guix-bioc packages r)
  #:use-module (guix-bioc packages q)
  #:use-module (guix-bioc packages p)
  #:use-module (guix-bioc packages o)
  #:use-module (guix-bioc packages n)
  #:use-module (guix-bioc packages m)
  #:use-module (guix-bioc packages l)
  #:use-module (guix-bioc packages k)
  #:use-module (guix-bioc packages j)
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-systempipetools
  (package
    (name "r-systempipetools")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "systemPipeTools" version))
       (sha256
        (base32 "1r1h14v9wrdxq7vnjhss7zax5hxygv215hp2y7r5lgzjfsh349ff"))))
    (properties `((upstream-name . "systemPipeTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-rtsne
                             r-plotly
                             r-pheatmap
                             r-magrittr
                             r-glmpca
                             r-ggtree
                             r-ggrepel
                             r-ggplot2
                             r-ggally
                             r-dt
                             r-dplyr
                             r-deseq2
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/systemPipeTools")
    (synopsis "Tools for data visualization")
    (description
     "@code{systemPipeTools} package extends the widely used @code{systemPipeR} (SPR)
workflow environment with an enhanced toolkit for data visualization, including
utilities to automate the data visualizaton for analysis of differentially
expressed genes (DEGs). @code{systemPipeTools} provides data transformation and
data exploration functions via scatterplots, hierarchical clustering
@code{heatMaps}, principal component analysis, multidimensional scaling,
generalized principal components, t-Distributed Stochastic Neighbor embedding
(t-SNE), and MA and volcano plots.  All these utilities can be integrated with
the modular design of the @code{systemPipeR} environment that allows users to
easily substitute any of these features and/or custom with alternatives.")
    (license license:artistic2.0)))

(define-public r-systempipeshiny
  (package
    (name "r-systempipeshiny")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "systemPipeShiny" version))
       (sha256
        (base32 "13a19n35gavrrnm8r0p7snl4cfjsb6nwhidyd5vv97bsj53dmvqw"))))
    (properties `((upstream-name . "systemPipeShiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '()))))
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-yaml
                             r-vroom
                             r-tibble
                             r-styler
                             r-stringr
                             r-spsutil
                             r-spscomps
                             r-shinywidgets
                             r-shinytoastr
                             r-shinyjs
                             r-shinyjqui
                             r-shinyfiles
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinyace
                             r-shiny
                             r-rstudioapi
                             r-rsqlite
                             r-rlang
                             r-r6
                             r-plotly
                             r-openssl
                             r-magrittr
                             r-htmltools
                             r-glue
                             r-ggplot2
                             r-dt
                             r-drawer
                             r-dplyr
                             r-crayon
                             r-bsplus
                             r-assertthat))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://systempipe.org/sps")
    (synopsis
     "systemPipeShiny: An Interactive Framework for Workflow Management and Visualization")
    (description
     "@code{systemPipeShiny} (SPS) extends the widely used @code{systemPipeR} (SPR)
workflow environment with a versatile graphical user interface provided by a
Shiny App.  This allows non-R users, such as experimentalists, to run many
@code{systemPipeR’s} workflow designs, control, and visualization
functionalities interactively without requiring knowledge of R. Most
importantly, SPS has been designed as a general purpose framework for
interacting with other R packages in an intuitive manner.  Like most Shiny Apps,
SPS can be used on both local computers as well as centralized server-based
deployments that can be accessed remotely as a public web service for using
SPR’s functionalities with community and/or private data.  The framework can
integrate many core packages from the R/Bioconductor ecosystem.  Examples of
SPS’ current functionalities include: (a) interactive creation of experimental
designs and metadata using an easy to use tabular editor or file uploader; (b)
visualization of workflow topologies combined with auto-generation of R Markdown
preview for interactively designed workflows; (d) access to a wide range of data
processing routines; (e) and an extendable set of visualization functionalities.
 Complex visual results can be managed on a Canvas Workbench’ allowing users to
organize and to compare plots in an efficient manner combined with a session
snapshot feature to continue work at a later time.  The present suite of
pre-configured visualization examples.  The modular design of SPR makes it easy
to design custom functions without any knowledge of Shiny, as well as extending
the environment in the future with contributions from the community.")
    (license license:gpl3+)))

(define-public r-syntenet
  (package
    (name "r-syntenet")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "syntenet" version))
       (sha256
        (base32 "0znmvqxy70yypfpm3bfhz9jdrw1ihr8vlim8mh19cwpkmlm87rd2"))))
    (properties `((upstream-name . "syntenet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-testthat
                             r-rlang
                             r-rcpp
                             r-rcolorbrewer
                             r-pheatmap
                             r-intergraph
                             r-igraph
                             r-ggplot2
                             r-ggnetwork
                             r-genomicranges
                             r-biostrings
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/almeidasilvaf/syntenet")
    (synopsis "Inference And Analysis Of Synteny Networks")
    (description
     "syntenet can be used to infer synteny networks from whole-genome protein
sequences and analyze them.  Anchor pairs are detected with the MC@code{ScanX}
algorithm, which was ported to this package with the Rcpp framework for R and
C++ integration.  Anchor pairs from synteny analyses are treated as an
undirected unweighted graph (i.e., a synteny network), and users can perform: i.
 network clustering; ii.  phylogenomic profiling (by identifying which species
contain which clusters) and; iii.  microsynteny-based phylogeny reconstruction
with maximum likelihood.")
    (license license:gpl3)))

(define-public r-synmut
  (package
    (name "r-synmut")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SynMut" version))
       (sha256
        (base32 "0zi4zlnnayb026rfra2d5lw5l1slp70s6lblvwsj3gszivgcvc7b"))))
    (properties `((upstream-name . "SynMut")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-seqinr r-biostrings r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Koohoko/SynMut")
    (synopsis
     "SynMut: Designing Synonymously Mutated Sequences with Different Genomic Signatures")
    (description
     "There are increasing demands on designing virus mutants with specific
dinucleotide or codon composition.  This tool can take both dinucleotide
preference and/or codon usage bias into account while designing mutants.  It is
a powerful tool for in silico designs of DNA sequence mutants.")
    (license license:gpl2)))

(define-public r-synlet
  (package
    (name "r-synlet")
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "synlet" version))
       (sha256
        (base32 "12l0g6684rjm8vrw1l5gzcdsp4217h68m5b6jjq8wpbzk89m1fif"))))
    (properties `((upstream-name . "synlet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer
                             r-rankprod
                             r-patchwork
                             r-magrittr
                             r-ggplot2
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/synlet")
    (synopsis "Hits Selection for Synthetic Lethal RNAi Screen Data")
    (description
     "Select hits from synthetic lethal RNAi screen data.  For example, there are two
identical celllines except one gene is knocked-down in one cellline.  The
interest is to find genes that lead to stronger lethal effect when they are
knocked-down further by @code{siRNA}.  Quality control and various visualisation
tools are implemented.  Four different algorithms could be used to pick up the
interesting hits.  This package is designed based on 384 wells plates, but may
apply to other platforms with proper configuration.")
    (license license:gpl3)))

(define-public r-synextend
  (package
    (name "r-synextend")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SynExtend" version))
       (sha256
        (base32 "14j98vhbm3hh2d995za5mkjrr37gwfvrigwyj1ybg9bvvqfkf6mq"))))
    (properties `((upstream-name . "SynExtend")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-iranges
                             r-decipher
                             r-dbi
                             r-biostrings))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/npcooley/SynExtend")
    (synopsis "Tools for Comparative Genomics")
    (description
     "This package provides a multitude of tools for comparative genomics, focused on
large-scale analyses of biological data. @code{SynExtend} includes tools for
working with syntenic data, clustering massive network structures, and
estimating functional relationships among genes.")
    (license license:gpl3)))

(define-public r-synergyfinder
  (package
    (name "r-synergyfinder")
    (version "3.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "synergyfinder" version))
       (sha256
        (base32 "1mdaksmhdq96bf64lq2jg7n94mgh5iaa071cx2wmf9iq0pamnzy9"))))
    (properties `((upstream-name . "synergyfinder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-tidyverse
                             r-tidyr
                             r-stringr
                             r-spatialextremes
                             r-sp
                             r-reshape2
                             r-purrr
                             r-plotly
                             r-pbapply
                             r-nleqslv
                             r-mice
                             r-metr
                             r-magrittr
                             r-lattice
                             r-kriging
                             r-gstat
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-future
                             r-furrr
                             r-drc
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "http://www.synergyfinder.org")
    (synopsis "Calculate and Visualize Synergy Scores for Drug Combinations")
    (description
     "Efficient implementations for analyzing pre-clinical multiple drug combination
datasets.  It provides efficient implementations for 1.the popular synergy
scoring models, including HSA, Loewe, Bliss, and ZIP to quantify the degree of
drug combination synergy; 2.  higher order drug combination data analysis and
synergy landscape visualization for unlimited number of drugs in a combination;
3.  statistical analysis of drug combination synergy and sensitivity with
confidence intervals and p-values; 4.  synergy barometer for harmonizing
multiple synergy scoring methods to provide a consensus metric of synergy; 5.
evaluation of synergy and sensitivity simultaneously to provide an unbiased
interpretation of the clinical potential of the drug combinations.  Based on
this package, we also provide a web application (http://www.synergyfinder.org)
for users who prefer graphical user interface.")
    (license (license:fsdg-compatible "Mozilla Public License 2.0"))))

(define-public r-synaptome-db
  (package
    (name "r-synaptome-db")
    (version "0.99.17")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "synaptome.db" version
                              'annotation))
       (sha256
        (base32 "112m6ajmi2kpbpwkmnka65hfiz4lvl78p5d9al8qk4hw4srb3mh0"))))
    (properties `((upstream-name . "synaptome.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-synaptome-data
                             r-rsqlite
                             r-rdpack
                             r-igraph
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/synaptome.db")
    (synopsis "Synamptosome Proteome Database")
    (description
     "The package contains local copy of the Synaptic proteome database.  On top of
this it provide a set of utility R functions to query and analyse its content.
It allows extraction of information for specific genes and building the
protein-protein interaction graph for gene sets, synaptic compartments, and
brain regions.")
    (license license:artistic2.0)))

(define-public r-synaptome-data
  (package
    (name "r-synaptome-data")
    (version "0.99.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "synaptome.data" version
                              'annotation))
       (sha256
        (base32 "00cqgx06wysz0qyicwnxlc8hpqkj5rwqlyfzsvy7agvcjjkarwg5"))))
    (properties `((upstream-name . "synaptome.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/synaptome.data")
    (synopsis "AnnotationData for Synaptome.DB package")
    (description
     "The package provides access to the copy of the Synaptic proteome database.  It
was designed as an accompaniment for Synaptome.DB package.  Database provides
information for specific synaptic genes and allows building the protein-protein
interaction graph for gene sets, synaptic compartments, and brain regions.  In
the current update we added 6 more synaptic proteome studies, which resulted in
total of 64 studies.  We introduced Synaptic Vesicle as a separate compartment.
We also added coding mutations for Autistic Spectral disorder and Epilepsy
collected from publicly available databases.")
    (license license:artistic2.0)))

(define-public r-synapsis
  (package
    (name "r-synapsis")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "synapsis" version))
       (sha256
        (base32 "1b5shghlsiiga8vng4ijw3w0jbmnyx5bhk6rbf099h1603v9dyp7"))))
    (properties `((upstream-name . "synapsis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ebimage))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/synapsis")
    (synopsis
     "An R package to automate the analysis of double-strand break repair during meiosis")
    (description
     "Synapsis is a Bioconductor software package for automated (unbiased and
reproducible) analysis of meiotic immunofluorescence datasets.  The primary
functions of the software can i) identify cells in meiotic prophase that are
labelled by a synaptonemal complex axis or central element protein, ii) isolate
individual synaptonemal complexes and measure their physical length, iii)
quantify foci and co-localise them with synaptonemal complexes, iv) measure
interference between synaptonemal complex-associated foci.  The software has
applications that extend to multiple species and to the analysis of other
proteins that label meiotic prophase chromosomes.  The software converts meiotic
immunofluorescence images into R data frames that are compatible with machine
learning methods.  Given a set of microscopy images of meiotic spread slides,
synapsis crops images around individual single cells, counts colocalising foci
on strands on a per cell basis, and measures the distance between foci on any
given strand.")
    (license license:expat)))

(define-public r-switchde
  (package
    (name "r-switchde")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "switchde" version))
       (sha256
        (base32 "0174ajkl30fkp9f85vbk7crfigaq0gcqwqykd2rz6cxg83znvpx6"))))
    (properties `((upstream-name . "switchde")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-singlecellexperiment
                             r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kieranrcampbell/switchde")
    (synopsis
     "Switch-like differential expression across single-cell trajectories")
    (description
     "Inference and detection of switch-like differential expression across
single-cell RNA-seq trajectories.")
    (license license:gpl2+)))

(define-public r-switchbox
  (package
    (name "r-switchbox")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "switchBox" version))
       (sha256
        (base32 "1das904wcjx90spw7rzj0w2w8i070gf18150wliw61s0901yljba"))))
    (properties `((upstream-name . "switchBox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-proc r-gplots))
    (home-page "https://bioconductor.org/packages/switchBox")
    (synopsis
     "Utilities to train and validate classifiers based on pair switching using the K-Top-Scoring-Pair (KTSP) algorithm")
    (description
     "The package offer different classifiers based on comparisons of pair of features
(TSP), using various decision rules (e.g., majority wins principle).")
    (license license:gpl2)))

(define-public r-swfdr
  (package
    (name "r-swfdr")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "swfdr" version))
       (sha256
        (base32 "132fdhnp78ns5d7g2q60lvax098bamnv2kz7rw5s2dk06fj2gdhi"))))
    (properties `((upstream-name . "swfdr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leekgroup/swfdr")
    (synopsis
     "Estimation of the science-wise false discovery rate and the false discovery rate conditional on covariates")
    (description
     "This package allows users to estimate the science-wise false discovery rate from
Jager and Leek, \"Empirical estimates suggest most published medical research is
true,\" 2013, Biostatistics, using an EM approach due to the presence of rounding
and censoring.  It also allows users to estimate the false discovery rate
conditional on covariates, using a regression framework, as per Boca and Leek,
\"A direct approach to estimating false discovery rates conditional on
covariates,\" 2018, @code{PeerJ}.")
    (license license:gpl3+)))

(define-public r-swathxtend
  (package
    (name "r-swathxtend")
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SwathXtend" version))
       (sha256
        (base32 "1149rnh1h71afza6a0xjjgjgn10afdsc6vsqsvj7n6pb8lannzxy"))))
    (properties `((upstream-name . "SwathXtend")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venndiagram r-openxlsx r-lattice r-e1071))
    (home-page "https://bioconductor.org/packages/SwathXtend")
    (synopsis
     "SWATH extended library generation and statistical data analysis")
    (description
     "This package contains utility functions for integrating spectral libraries for
SWATH and statistical data analysis for SWATH generated data.")
    (license license:gpl2)))

(define-public r-swath2stats
  (package
    (name "r-swath2stats")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SWATH2stats" version))
       (sha256
        (base32 "1ds8ra2jr31hdp2ym65vgqsp79ipgv01q6qrhx4rnsn2jh95gvlq"))))
    (properties `((upstream-name . "SWATH2stats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2 r-ggplot2 r-data-table r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://peterblattmann.github.io/SWATH2stats/")
    (synopsis "Transform and Filter SWATH Data for Statistical Packages")
    (description
     "This package is intended to transform SWATH data from the @code{OpenSWATH}
software into a format readable by other statistics packages while performing
filtering, annotation and FDR estimation.")
    (license license:gpl3)))

(define-public r-svp
  (package
    (name "r-svp")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SVP" version))
       (sha256
        (base32 "0klgs9287d21la9j61mnbnc1c757k0j9ilm03f0y3a3x47crwxmg"))))
    (properties `((upstream-name . "SVP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-pracma
                             r-matrix
                             r-ggtree
                             r-ggstar
                             r-ggplot2
                             r-ggfun
                             r-fastmatch
                             r-dqrng
                             r-dplyr
                             r-deldir
                             r-delayedmatrixstats
                             r-cli
                             r-biocparallel
                             r-biocneighbors
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/YuLab-SMU/SVP")
    (synopsis
     "Predicting cell states and their variability in single-cell or spatial omics data")
    (description
     "SVP uses the distance between cells and cells, features and features, cells and
features in the space of MCA to build nearest neighbor graph, then uses random
walk with restart algorithm to calculate the activity score of gene sets (such
as cell marker genes, kegg pathway, go ontology, gene modules, transcription
factor or @code{miRNA} target sets, reactome pathway, ...), which is then
further weighted using the hypergeometric test results from the original
expression matrix.  To detect the spatially or single cell variable gene sets or
(other features) and the spatial colocalization between the features accurately,
SVP provides some global and local spatial autocorrelation method to identify
the spatial variable features.  SVP is developed based on
@code{SingleCellExperiment} class, which can be interoperable with the existing
computing ecosystem.")
    (license license:gpl3)))

(define-public r-svmdo
  (package
    (name "r-svmdo")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SVMDO" version))
       (sha256
        (base32 "0yjsn8ipz9fq6cy8z1f9yxd6zdha6zj4b6db2kms5cjrclggy98y"))))
    (properties `((upstream-name . "SVMDO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-summarizedexperiment
                             r-sjmisc
                             r-shinytitle
                             r-shinyfiles
                             r-shiny
                             r-org-hs-eg-db
                             r-nortest
                             r-klar
                             r-golem
                             r-e1071
                             r-dt
                             r-dplyr
                             r-dose
                             r-data-table
                             r-catools
                             r-caret
                             r-bsda
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SVMDO")
    (synopsis
     "Identification of Tumor-Discriminating mRNA Signatures via Support Vector Machines Supported by Disease Ontology")
    (description
     "It is an easy-to-use GUI using disease information for detecting tumor/normal
sample discriminating gene sets from differentially expressed genes.  Our
approach is based on an iterative algorithm filtering genes with disease
ontology enrichment analysis and wilk and wilks lambda criterion connected to
SVM classification model construction.  Along with gene set extraction, SVMDO
also provides individual prognostic marker detection.  The algorithm is designed
for FPKM and RPKM normalized RNA-Seq transcriptome datasets.")
    (license license:gpl3)))

(define-public r-svm2crmdata
  (package
    (name "r-svm2crmdata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SVM2CRMdata" version
                              'experiment))
       (sha256
        (base32 "0qfavad398hi0kb2f4gb47vk2cmyf3g9sdcpjglq1zh1g5pd74xp"))))
    (properties `((upstream-name . "SVM2CRMdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/SVM2CRMdata")
    (synopsis "An example dataset for use with the SVM2CRM package")
    (description "An example dataset for use with the SVM2CRM package.")
    (license license:lgpl2.0+)))

(define-public r-svaretro
  (package
    (name "r-svaretro")
    (version "1.15.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "svaRetro" version))
       (sha256
        (base32 "0cb1d9h35q72058if30k1fixairvrvra0k9lcarg8kalav5x7467"))))
    (properties `((upstream-name . "svaRetro")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-structuralvariantannotation
                             r-stringr
                             r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dplyr
                             r-biostrings
                             r-biocgenerics
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/svaRetro")
    (synopsis "Retrotransposed transcript detection from structural variants")
    (description
     "@code{svaRetro} contains functions for detecting retrotransposed transcripts
(RTs) from structural variant calls.  It takes structural variant calls in
GRanges of breakend notation and identifies RTs by exon-exon junctions and
insertion sites.  The candidate RTs are reported by events and annotated with
information of the inserted transcripts.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-svanumt
  (package
    (name "r-svanumt")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "svaNUMT" version))
       (sha256
        (base32 "00kxwi11s84sx7dfrsc40s52jg9izsyrxvl9x94qd4fdfxlg78as"))))
    (properties `((upstream-name . "svaNUMT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-structuralvariantannotation
                             r-stringr
                             r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-pwalign
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dplyr
                             r-biostrings
                             r-biocgenerics
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/svaNUMT")
    (synopsis "NUMT detection from structural variant calls")
    (description
     "@code{svaNUMT} contains functions for detecting NUMT events from structural
variant calls.  It takes structural variant calls in GRanges of breakend
notation and identifies NUMTs by nuclear-mitochondrial breakend junctions.  The
main function reports candidate NUMTs if there is a pair of valid insertion
sites found on the nuclear genome within a certain distance threshold.  The
candidate NUMTs are reported by events.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-survtype
  (package
    (name "r-survtype")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "survtype" version))
       (sha256
        (base32 "1c63fn4m7cg0vgj1rxxgrfxx002m331dprzv2zkfpg0ip1k5dmkm"))))
    (properties `((upstream-name . "survtype")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survminer r-survival r-summarizedexperiment
                             r-pheatmap r-clustvarsel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/survtype")
    (synopsis "Subtype Identification with Survival Data")
    (description
     "Subtypes are defined as groups of samples that have distinct molecular and
clinical features.  Genomic data can be analyzed for discovering patient
subtypes, associated with clinical data, especially for survival information.
This package is aimed to identify subtypes that are both clinically relevant and
biologically meaningful.")
    (license license:artistic2.0)))

(define-public r-survclust
  (package
    (name "r-survclust")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "survClust" version))
       (sha256
        (base32 "0462yjzrdwlm4bvxyh2vpijjrphkva36v4mhv5014ifrgdvg7i6k"))))
    (properties `((upstream-name . "survClust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-rcpp r-pdist r-multiassayexperiment))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arorarshi/survClust")
    (synopsis
     "Identification Of Clinically Relevant Genomic Subtypes Using Outcome Weighted Learning")
    (description
     "@code{survClust} is an outcome weighted integrative clustering algorithm used to
classify multi-omic samples on their available time to event information.  The
resulting clusters are cross-validated to avoid over overfitting and output
classification of samples that are molecularly distinct and clinically
meaningful.  It takes in binary (mutation) as well as continuous data (other
omic types).")
    (license license:expat)))

(define-public r-surfr
  (package
    (name "r-surfr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SurfR" version))
       (sha256
        (base32 "19kzdq6h56wmc1fryb7zhsa14d9cyqlhf5pgk653jz69iy0z72m1"))))
    (properties `((upstream-name . "SurfR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venn
                             r-tidyr
                             r-tcgabiolinks
                             r-summarizedexperiment
                             r-stringr
                             r-spsimseq
                             r-scales
                             r-rjson
                             r-rhdf5
                             r-openxlsx
                             r-metarnaseq
                             r-magrittr
                             r-knitr
                             r-httr
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-deseq2
                             r-curl
                             r-biomart
                             r-biocfilecache
                             r-assertr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/auroramaurizio/SurfR")
    (synopsis "Surface Protein Prediction and Identification")
    (description
     "Identify Surface Protein coding genes from a list of candidates.  Systematically
download data from GEO and TCGA or use your own data.  Perform DGE on bulk
RNAseq data.  Perform Meta-analysis.  Descriptive enrichment analysis and plots.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-surfaltr
  (package
    (name "r-surfaltr")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "surfaltr" version))
       (sha256
        (base32 "0cx7qh51n57d6zwc4s589c3jc51l7rzrw8qhjhm197w9yyvsz0p1"))))
    (properties `((upstream-name . "surfaltr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-testthat
                             r-stringr
                             r-seqinr
                             r-readr
                             r-protr
                             r-msa
                             r-httr
                             r-ggplot2
                             r-dplyr
                             r-biostrings
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/surfaltr")
    (synopsis
     "Rapid Comparison of Surface Protein Isoform Membrane Topologies Through surfaltr")
    (description
     "Cell surface proteins form a major fraction of the druggable proteome and can be
used for tissue-specific delivery of oligonucleotide/cell-based therapeutics.
Alternatively spliced surface protein isoforms have been shown to differ in
their subcellular localization and/or their transmembrane (TM) topology.
Surface proteins are hydrophobic and remain difficult to study thereby
necessitating the use of TM topology prediction methods such as TMHMM and
Phobius.  However, there exists a need for bioinformatic approaches to
streamline batch processing of isoforms for comparing and visualizing
topologies.  To address this gap, we have developed an R package, surfaltr.  It
pairs inputted isoforms, either known alternatively spliced or novel, with their
APPRIS annotated principal counterparts, predicts their TM topologies using
TMHMM or Phobius, and generates a customizable graphical output.  Further,
surfaltr facilitates the prioritization of biologically diverse isoform pairs
through the incorporation of three different ranking metrics and through protein
alignment functions.  Citations for programs mentioned here can be found in the
vignette.")
    (license license:expat)))

(define-public r-supersigs
  (package
    (name "r-supersigs")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "supersigs" version))
       (sha256
        (base32 "01iq5xss5xyj88bkpf3vhcb8rh55bkcgm388055wc9kqyh2c0qvv"))))
    (properties `((upstream-name . "supersigs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-rsample
                             r-rlang
                             r-dplyr
                             r-caret
                             r-biostrings
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://tomasettilab.github.io/supersigs/")
    (synopsis "Supervised mutational signatures")
    (description
     "Generate @code{SuperSigs} (supervised mutational signatures) from single
nucleotide variants in the cancer genome.  Functions included in the package
allow the user to learn supervised mutational signatures from their data and
apply them to new data.  The methodology is based on the one described in Afsari
(2021, ELife).")
    (license license:gpl3)))

(define-public r-supercellcyto
  (package
    (name "r-supercellcyto")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SuperCellCyto" version))
       (sha256
        (base32 "0l4ajfp4gjfkpry31aiwsy1x8wwg87aq5zj52szhn982xfrzjya1"))))
    (properties `((upstream-name . "SuperCellCyto")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-supercell r-matrix r-data-table r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://phipsonlab.github.io/SuperCellCyto/")
    (synopsis "SuperCell For Cytometry Data")
    (description
     "@code{SuperCellCyto} provides the ability to summarise cytometry data into
supercells by merging together cells that are similar in their marker
expressions using the @code{SuperCell} package.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-summix
  (package
    (name "r-summix")
    (version "2.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Summix" version))
       (sha256
        (base32 "1sy7gi33zzd1wv5ql16r6qjmqlhxgkdkbbvjzkxdxpr0dq8k18l6"))))
    (properties `((upstream-name . "Summix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-tidyselect
                             r-tibble
                             r-scales
                             r-randomcolor
                             r-nloptr
                             r-magrittr
                             r-dplyr
                             r-bedassle))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Summix")
    (synopsis
     "Summix2: A suite of methods to estimate, adjust, and leverage substructure in genetic summary data")
    (description
     "This package contains the Summix2 method for estimating and adjusting for
substructure in genetic summary allele frequency data.  The function
@code{summix()} estimates reference group proportions using a mixture model.
The @code{adjAF()} function produces adjusted allele frequencies for an observed
group with reference group proportions matching a target individual or sample.
The @code{summix_local()} function estimates local ancestry mixture proportions
and performs selection scans in genetic summary data.")
    (license license:expat)))

(define-public r-suitor
  (package
    (name "r-suitor")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SUITOR" version))
       (sha256
        (base32 "161dvlf9jsa1334dbs71ddy6bk4yiwhx47c5yhb6xkswjl6zm0q3"))))
    (properties `((upstream-name . "SUITOR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SUITOR")
    (synopsis
     "Selecting the number of mutational signatures through cross-validation")
    (description
     "An unsupervised cross-validation method to select the optimal number of
mutational signatures.  A data set of mutational counts is split into training
and validation data.Signatures are estimated in the training data and then used
to predict the mutations in the validation data.")
    (license license:gpl2)))

(define-public r-sugarcaneprobe
  (package
    (name "r-sugarcaneprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sugarcaneprobe" version
                              'annotation))
       (sha256
        (base32 "17zrydd8xd7m61bp750xlpcak0m3zgl0mvknz9s7mv2a35kp02ih"))))
    (properties `((upstream-name . "sugarcaneprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/sugarcaneprobe")
    (synopsis "Probe sequence data for microarrays of type sugarcane")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Sugar\\_Cane\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-sugarcanecdf
  (package
    (name "r-sugarcanecdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sugarcanecdf" version
                              'annotation))
       (sha256
        (base32 "0wghc6wr7iwkql63m3wibjjdcdpqd53z0g5rxdh553sjb0ca2n7z"))))
    (properties `((upstream-name . "sugarcanecdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/sugarcanecdf")
    (synopsis "sugarcanecdf")
    (description
     "This package provides a package containing an environment representing the
Sugar_Cane.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-subseq
  (package
    (name "r-subseq")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "subSeq" version))
       (sha256
        (base32 "1cyvjbhis1fc0qb9iskjggmik76bmjizb1mn7b3dkiqkdkhns96p"))))
    (properties `((upstream-name . "subSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-qvalue
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-digest
                             r-data-table
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/StoreyLab/subSeq")
    (synopsis "Subsampling of high-throughput sequencing count data")
    (description
     "Subsampling of high throughput sequencing count data for use in experiment
design and analysis.")
    (license license:expat)))

(define-public r-subcellularspatialdata
  (package
    (name "r-subcellularspatialdata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SubcellularSpatialData" version
                              'experiment))
       (sha256
        (base32 "1w2lq33h3ajg3isjgy79vgq8rxpbyhrbdc899yadigdvzq6v8181"))))
    (properties `((upstream-name . "SubcellularSpatialData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatialexperiment r-matrix r-hexbin r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://davislaboratory.github.io/SubcellularSpatialData")
    (synopsis
     "Annotated spatial transcriptomics datasets from 10x Xenium, NanoString CosMx and BGI STOmics")
    (description
     "This is a data package that hosts annotated sub-cellular localised datasets from
the STOmics, Xenium and @code{CosMx} platforms.  Specifically, it hosts datasets
analysed in the publication Bhuva et.  al, 2024 titled \"Library size confounds
biology in spatial transcriptomics data\".  Raw transcript detections are hosted
and functions to convert them to @code{SpatialExperiment} objects have been
implemented.")
    (license license:gpl3+)))

(define-public r-subcellbarcode
  (package
    (name "r-subcellbarcode")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SubCellBarCode" version))
       (sha256
        (base32 "1c20fnjzqfsbj2ay6cm0401yv4v0a7s61cvzl1y95drh5r6g0y5h"))))
    (properties `((upstream-name . "SubCellBarCode")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scatterplot3d
                             r-rtsne
                             r-org-hs-eg-db
                             r-networkd3
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-e1071
                             r-caret
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SubCellBarCode")
    (synopsis
     "SubCellBarCode: Integrated workflow for robust mapping and visualizing whole human spatial proteome")
    (description
     "Mass-Spectrometry based spatial proteomics have enabled the proteome-wide
mapping of protein subcellular localization (Orre et al.  2019, Molecular Cell).
@code{SubCellBarCode} R package robustly classifies proteins into corresponding
subcellular localization.")
    (license license:gpl2)))

(define-public r-streamer
  (package
    (name "r-streamer")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Streamer" version))
       (sha256
        (base32 "0sg7as0b12d0lwh2wavvb036v55dzf8y8xixa6q75hrs2zw0x47w"))))
    (properties `((upstream-name . "Streamer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rbgl r-graph r-biocgenerics))
    (home-page "https://bioconductor.org/packages/Streamer")
    (synopsis "Enabling stream processing of large files")
    (description
     "Large data files can be difficult to work with in R, where data generally
resides in memory.  This package encourages a style of programming where data is
streamed from disk into R via a `producer and through a series of `consumers
that, typically reduce the original data to a manageable size.  The package
provides useful Producer and Consumer stream components for operations such as
data input, sampling, indexing, and transformation; see package?Streamer for
details.")
    (license license:artistic2.0)))

(define-public r-strandcheckr
  (package
    (name "r-strandcheckr")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "strandCheckR" version))
       (sha256
        (base32 "1djwigg75shja0nrkh63pwaaigpawwisywzyk5wfrkv1g30jr8a4"))))
    (properties `((upstream-name . "strandCheckR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-tidyselect
                             r-stringr
                             r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-reshape2
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments
                             r-dplyr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/UofABioinformaticsHub/strandCheckR")
    (synopsis "Calculate strandness information of a bam file")
    (description
     "This package aims to quantify and remove putative double strand DNA from a
strand-specific RNA sample.  There are also options and methods to plot the
positive/negative proportions of all sliding windows, which allow users to have
an idea of how much the sample was contaminated and the appropriate threshold to
be used for filtering.")
    (license license:gpl2+)))

(define-public r-stpipe
  (package
    (name "r-stpipe")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "stPipe" version))
       (sha256
        (base32 "0hzhkcld5qkfq00rb01w57kgik1f5xmbm9ccc3i09xqiyh29llh4"))))
    (properties `((upstream-name . "stPipe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-yaml
                             r-umap
                             r-testthat
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-seuratobject
                             r-seurat
                             r-scpipe
                             r-rtsne
                             r-rsubread
                             r-rmarkdown
                             r-rhtslib
                             r-rhdf5lib
                             r-reticulate
                             r-rcpp
                             r-pbmcapply
                             r-ggplot2
                             r-dropletutils
                             r-dplyr
                             r-data-table
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mritchielab/stPipe")
    (synopsis
     "Upstream pre-processing for Sequencing-Based Spatial Transcriptomics")
    (description
     "This package serves as an upstream pipeline for pre-processing sequencing-based
spatial transcriptomics data.  Functions includes FASTQ trimming, BAM file
reformatting, index building, spatial barcode detection, demultiplexing, gene
count matrix generation with UMI deduplication, QC, and revelant visualization.
Config is an essential input for most of the functions which aims to improve
reproducibility.")
    (license license:gpl3)))

(define-public r-stjoincount
  (package
    (name "r-stjoincount")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "stJoincount" version))
       (sha256
        (base32 "1m2crwvr5nca9358q8mwj2i53lci7lyn553kbj9c1wj4f5wwi9jy"))))
    (properties `((upstream-name . "stJoincount")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spdep
                             r-spatialexperiment
                             r-sp
                             r-seurat
                             r-raster
                             r-pheatmap
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Nina-Song/stJoincount")
    (synopsis
     "stJoincount - Join count statistic for quantifying spatial correlation between clusters")
    (description
     "@code{stJoincount} facilitates the application of join count analysis to spatial
transcriptomic data generated from the 10x Genomics Visium platform.  This tool
first converts a labeled spatial tissue map into a raster object, in which each
spatial feature is represented by a pixel coded by label assignment.  This
process includes automatic calculation of optimal raster resolution and extent
for the sample.  A neighbors list is then created from the rasterized sample, in
which adjacent and diagonal neighbors for each pixel are identified.  After
adding binary spatial weights to the neighbors list, a multi-categorical join
count analysis is performed to tabulate \"joins\" between all possible
combinations of label pairs.  The function returns the observed join counts, the
expected count under conditions of spatial randomness, and the variance
calculated under non-free sampling.  The z-score is then calculated as the
difference between observed and expected counts, divided by the square root of
the variance.")
    (license license:expat)))

(define-public r-stexampledata
  (package
    (name "r-stexampledata")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "STexampleData" version
                              'experiment))
       (sha256
        (base32 "126payb07zhikv681zcprhi17syx8d3kfa8b6kvncxal87bmjlmj"))))
    (properties `((upstream-name . "STexampleData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-spatialexperiment r-singlecellexperiment
                             r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lmweber/STexampleData")
    (synopsis
     "Collection of spatial transcriptomics datasets in SpatialExperiment Bioconductor format")
    (description
     "Collection of spatial transcriptomics datasets stored in
@code{SpatialExperiment} Bioconductor format, for use in examples,
demonstrations, and tutorials.  The datasets are from several different
platforms and have been sourced from various publicly available sources.
Several datasets include images and/or reference annotation labels.")
    (license license:expat)))

(define-public r-stepnorm
  (package
    (name "r-stepnorm")
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "stepNorm" version))
       (sha256
        (base32 "1pab1ppdx3zj8s4j19yk54nmify91191q4mqf9b7y3kdv6m4kkhf"))))
    (properties `((upstream-name . "stepNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-marray))
    (home-page "http://www.biostat.ucsf.edu/jean/")
    (synopsis "Stepwise normalization functions for cDNA microarrays")
    (description
     "Stepwise normalization functions for @code{cDNA} microarray data.")
    (license license:lgpl2.0+)))

(define-public r-stemhypoxia
  (package
    (name "r-stemhypoxia")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "stemHypoxia" version
                              'experiment))
       (sha256
        (base32 "03xca5y9lh6dwvgd69kh0dkq6isiql99knfky8p8n549lgqac5d3"))))
    (properties `((upstream-name . "stemHypoxia")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE37761")
    (synopsis
     "Differentiation of Human Embryonic Stem Cells under Hypoxia gene expression dataset by Prado-Lopez et al. (2010)")
    (description
     "Expression profiling using microarray technology to prove if Hypoxia Promotes
Efficient Differentiation of Human Embryonic Stem Cells to Functional
Endothelium by Prado-Lopez et al. (2010) Stem Cells 28:407-418.  Full data
available at Gene Expression Omnibus series GSE37761.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-stattarget
  (package
    (name "r-stattarget")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "statTarget" version))
       (sha256
        (base32 "1ch2gah8bivamm78d3gqa9abr91290nb45d1gl84l82hi00lin7b"))))
    (properties `((upstream-name . "statTarget")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rrcov
                             r-roc
                             r-randomforest
                             r-plyr
                             r-pls
                             r-pdist
                             r-impute))
    (native-inputs (list r-knitr))
    (home-page "https://stattarget.github.io")
    (synopsis "Statistical Analysis of Molecular Profiles")
    (description
     "This package provides a streamlined tool provides a graphical user interface for
quality control based signal drift correction (QC-RFSC), integration of data
from multi-batch MS-based experiments, and the comprehensive statistical
analysis in metabolomics and proteomics.")
    (license license:lgpl3+)))

(define-public r-statial
  (package
    (name "r-statial")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Statial" version))
       (sha256
        (base32 "10apydvjfj7jlg5ns55rfy4zsy99lzwzc7bxjn8h3aygs9nwnv60"))))
    (properties `((upstream-name . "Statial")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-treekor
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-ranger
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-limma
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-data-table
                             r-concaveman
                             r-cluster
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Statial")
    (synopsis
     "package to identify changes in cell state relative to spatial associations")
    (description
     "Statial is a suite of functions for identifying changes in cell state.  The
functionality provided by Statial provides robust quantification of cell type
localisation which are invariant to changes in tissue structure.  In addition to
this Statial uncovers changes in marker expression associated with varying
levels of localisation.  These features can be used to explore how the structure
and function of different cell types may be altered by the agents they are
surrounded with.")
    (license license:gpl3)))

(define-public r-stategra
  (package
    (name "r-stategra")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "STATegRa" version))
       (sha256
        (base32 "010ik7iv37dcasbz75j9150l2vkxcwzkhrvf9r0if8wrg1n26m81"))))
    (properties `((upstream-name . "STATegRa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass
                             r-limma
                             r-gridextra
                             r-gplots
                             r-ggplot2
                             r-foreach
                             r-edger
                             r-calibrate
                             r-biobase
                             r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/STATegRa")
    (synopsis "Classes and methods for multi-omics data integration")
    (description
     "This package provides classes and tools for multi-omics data integration.")
    (license license:gpl2)))

(define-public r-standr
  (package
    (name "r-standr")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "standR" version))
       (sha256
        (base32 "0w9p8lndd5daadw7q4yr812ww3npvmb9awjxwwkdjpy0qrkvm5ck"))))
    (properties `((upstream-name . "standR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-ruvseq
                             r-ruv
                             r-rlang
                             r-readr
                             r-patchwork
                             r-mclustcomp
                             r-limma
                             r-ggplot2
                             r-ggalluvial
                             r-edger
                             r-dplyr
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DavisLaboratory/standR")
    (synopsis "Spatial transcriptome analyses of Nanostring's DSP data in R")
    (description
     "@code{standR} is an user-friendly R package providing functions to assist
conducting good-practice analysis of Nanostring's @code{GeoMX} DSP data.  All
functions in the package are built based on the @code{SpatialExperiment} object,
allowing integration into various spatial transcriptomics-related packages from
Bioconductor. @code{standR} allows data inspection, quality control,
normalization, batch correction and evaluation with informative visualizations.")
    (license license:expat)))

(define-public r-stadyum
  (package
    (name "r-stadyum")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "STADyUM" version))
       (sha256
        (base32 "0yl4dnwl8qgmyinqin6dqiagldhjq5bild8qkw6s9sl28992xfqq"))))
    (properties `((upstream-name . "STADyUM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-progress
                             r-mass
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhassett-cshl/STADyUM")
    (synopsis
     "Statistical Transcriptome Analysis under a Dynamic Unified Model")
    (description
     "STA@code{DyUM} is a package with functionality for analyzing nascent RNA read
counts to infer transcription rates.  This includes utilities for processing
experimental nascent RNA read counts as well as for simulating PRO-seq data.
Rates such as initiation, pause release and landing pad occupancy are estimated
from either synthetic or experimental data.  There are also options for varying
pause sites and including steric hindrance of initiation in the model.")
    (license license:expat)))

(define-public r-stabmap
  (package
    (name "r-stabmap")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "StabMap" version))
       (sha256
        (base32 "0pqk8i63w1x3ksjfygyf819gr93yb3jl5kpdvwz04r16n3n3sxaq"))))
    (properties `((upstream-name . "StabMap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-slam
                             r-matrixgenerics
                             r-matrix
                             r-mass
                             r-igraph
                             r-biocsingular
                             r-biocparallel
                             r-biocneighbors
                             r-biocgenerics
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://sydneybiox.github.io/StabMap")
    (synopsis
     "Stabilised mosaic single cell data integration using unshared features")
    (description
     "@code{StabMap} performs single cell mosaic data integration by first building a
mosaic data topology, and for each reference dataset, traverses the topology to
project and predict data onto a common embedding.  Mosaic data should be
provided in a list format, with all relevant features included in the data
matrices within each list object.  The output of @code{stabMap} is a joint
low-dimensional embedding taking into account all available relevant features.
Expression imputation can also be performed using the @code{StabMap} embedding
and any of the original data matrices for given reference and query cell lists.")
    (license license:gpl2)))

(define-public r-ssviz
  (package
    (name "r-ssviz")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ssviz" version))
       (sha256
        (base32 "0q029f4cgwa0jc0dcpz8v10779gwnz0c4ps6fls6miyxay5lkizw"))))
    (properties `((upstream-name . "ssviz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsamtools r-reshape r-rcolorbrewer r-ggplot2
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ssviz")
    (synopsis "small RNA-seq visualizer and analysis toolkit")
    (description "Small RNA sequencing viewer.")
    (license license:gpl2)))

(define-public r-ssrch
  (package
    (name "r-ssrch")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ssrch" version))
       (sha256
        (base32 "1z94gq0d706c372zd7kmakwzxzjkdzdf7a4sjdd08q8yds973vrb"))))
    (properties `((upstream-name . "ssrch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-dt))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ssrch")
    (synopsis "a simple search engine")
    (description
     "Demonstrate tokenization and a search gadget for collections of CSV files.")
    (license license:artistic2.0)))

(define-public r-sspaths
  (package
    (name "r-sspaths")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ssPATHS" version))
       (sha256
        (base32 "1gn7j7hb030w9w0aqg9kd8i3dcanag73jjxvjm04ql4v0cvvclz2"))))
    (properties `((upstream-name . "ssPATHS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-rocr r-mess r-dml))
    (home-page "https://bioconductor.org/packages/ssPATHS")
    (synopsis "ssPATHS: Single Sample PATHway Score")
    (description
     "This package generates pathway scores from expression data for single samples
after training on a reference cohort.  The score is generated by taking the
expression of a gene set (pathway) from a reference cohort and performing linear
discriminant analysis to distinguish samples in the cohort that have the pathway
augmented and not.  The separating hyperplane is then used to score new samples.")
    (license license:expat)))

(define-public r-ssnappy
  (package
    (name "r-ssnappy")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sSNAPPY" version))
       (sha256
        (base32 "0jlg8apky668mqgf2xzqxd0555xhfbj8lhdvjp12rc7pfq3ylnks"))))
    (properties `((upstream-name . "sSNAPPY")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-rlang
                             r-reshape2
                             r-pheatmap
                             r-org-hs-eg-db
                             r-magrittr
                             r-igraph
                             r-gtools
                             r-graphite
                             r-ggraph
                             r-ggplot2
                             r-ggforce
                             r-edger
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://wenjun-liu.github.io/sSNAPPY/")
    (synopsis "Single Sample directioNAl Pathway Perturbation analYsis")
    (description
     "This package provides a single sample pathway perturbation testing method for
RNA-seq data.  The method propagates changes in gene expression down gene-set
topologies to compute single-sample directional pathway perturbation scores that
reflect potential direction of change.  Perturbation scores can be used to test
significance of pathway perturbation at both individual-sample and treatment
levels.")
    (license license:gpl3)))

(define-public r-ssize
  (package
    (name "r-ssize")
    (version "1.84.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ssize" version))
       (sha256
        (base32 "1z7yw4apg4j8as6ygf9dm8rgvjfvp67awks03hjw8a5x0ym7gv5j"))))
    (properties `((upstream-name . "ssize")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable r-gdata))
    (home-page "https://bioconductor.org/packages/ssize")
    (synopsis "Estimate Microarray Sample Size")
    (description
     "This package provides functions for computing and displaying sample size
information for gene expression arrays.")
    (license license:lgpl2.0+)))

(define-public r-sseq
  (package
    (name "r-sseq")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sSeq" version))
       (sha256
        (base32 "1icbgrck6v8mwmmbbrc2qqgk15dmjzbp40nr03jc5v3rlh6m42r1"))))
    (properties `((upstream-name . "sSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-catools))
    (home-page "https://bioconductor.org/packages/sSeq")
    (synopsis
     "Shrinkage estimation of dispersion in Negative Binomial models for RNA-seq experiments with small sample size")
    (description
     "The purpose of this package is to discover the genes that are differentially
expressed between two conditions in RNA-seq experiments.  Gene expression is
measured in counts of transcripts and modeled with the Negative Binomial (NB)
distribution using a shrinkage approach for dispersion estimation.  The method
of moment (MM) estimates for dispersion are shrunk towards an estimated target,
which minimizes the average squared difference between the shrinkage estimates
and the initial estimates.  The exact per-gene probability under the NB model is
calculated, and used to test the hypothesis that the expected expression of a
gene in two conditions identically follow a NB distribution.")
    (license license:gpl3+)))

(define-public r-sscu
  (package
    (name "r-sscu")
    (version "2.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sscu" version))
       (sha256
        (base32 "0p12i809pxvikddpamr8a8ri765aw8w76q98wd0f0c8x44xdy46r"))))
    (properties `((upstream-name . "sscu")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinr r-biostrings r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/sscu")
    (synopsis "Strength of Selected Codon Usage")
    (description
     "The package calculates the indexes for selective stength in codon usage in
bacteria species. (1) The package can calculate the strength of selected codon
usage bias (sscu, also named as s_index) based on Paul Sharp's method.  The
method take into account of background mutation rate, and focus only on four
pairs of codons with universal translational advantages in all bacterial
species.  Thus the sscu index is comparable among different species. (2) The
package can detect the strength of translational accuracy selection by Akashi's
test.  The test tabulating all codons into four categories with the feature as
conserved/variable amino acids and optimal/non-optimal codons. (3) Optimal codon
lists (selected codons) can be calculated by either op_highly function (by using
the highly expressed genes compared with all genes to identify optimal codons),
or op_corre_@code{CodonW/op_corre_NCprime} function (by correlative method
developed by Hershberg & Petrov).  Users will have a list of optimal codons for
further analysis, such as input to the Akashi's test. (4) The detailed codon
usage information, such as RSCU value, number of optimal codons in the
highly/all gene set, as well as the genomic gc3 value, can be calculate by the
optimal_codon_statistics and genomic_gc3 function. (5) Furthermore, we added one
test function low_frequency_op in the package.  The function try to find the low
frequency optimal codons, among all the optimal codons identified by the
op_highly function.")
    (license license:gpl2+)))

(define-public r-srnadiff
  (package
    (name "r-srnadiff")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "srnadiff" version))
       (sha256
        (base32 "1b2xg8xmh00zsbnrhpl5mak52w3pmw67jnx57hkdm55kxdzhdjq3"))))
    (properties `((upstream-name . "srnadiff")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rcpp
                             r-iranges
                             r-gviz
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-edger
                             r-deseq2
                             r-biocstyle
                             r-biocparallel
                             r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/srnadiff")
    (synopsis
     "Finding differentially expressed unannotated genomic regions from RNA-seq data")
    (description
     "srnadiff is a package that finds differently expressed regions from RNA-seq data
at base-resolution level without relying on existing annotation.  To do so, the
package implements the identify-then-annotate methodology that builds on the
idea of combining two pipelines approachs differential expressed regions
detection and differential expression quantification.  It reads BAM files as
input, and outputs a list differentially regions, together with the adjusted
p-values.")
    (license license:gpl3)))

(define-public r-sradb
  (package
    (name "r-sradb")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SRAdb" version))
       (sha256
        (base32 "0wkma09cj3x4wwk7847ka2g0gqpch8dg0hqcs63p58wx2wmprfq4"))))
    (properties `((upstream-name . "SRAdb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite r-rcurl r-r-utils r-graph))
    (home-page "https://bioconductor.org/packages/SRAdb")
    (synopsis "compilation of metadata from NCBI SRA and tools")
    (description
     "The Sequence Read Archive (SRA) is the largest public repository of sequencing
data from the next generation of sequencing platforms including Roche 454 GS
System, Illumina Genome Analyzer, Applied Biosystems SO@code{LiD} System,
Helicos Heliscope, and others.  However, finding data of interest can be
challenging using current tools.  SRAdb is an attempt to make access to the
metadata associated with submission, study, sample, experiment and run much more
feasible.  This is accomplished by parsing all the NCBI SRA metadata into a
SQLite database that can be stored and queried locally.  Fulltext search in the
package make querying metadata very flexible and powerful.  fastq and sra files
can be downloaded for doing alignment locally.  Beside ftp protocol, the SRAdb
has funcitons supporting fastp protocol (ascp from Aspera Connect) for faster
downloading large data files over long distance.  The SQLite database is updated
regularly as new data is added to SRA and can be downloaded at will for the most
up-to-date metadata.")
    (license license:artistic2.0)))

(define-public r-sracipe
  (package
    (name "r-sracipe")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sRACIPE" version))
       (sha256
        (base32 "1hkb3k4snawgfj68d2cx5320dgl6grdpd5rvxcjf8gaxmyl3vj4k"))))
    (properties `((upstream-name . "sRACIPE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-umap
                             r-summarizedexperiment
                             r-s4vectors
                             r-reshape2
                             r-rcpp
                             r-rcolorbrewer
                             r-mass
                             r-htmlwidgets
                             r-gridextra
                             r-gplots
                             r-ggplot2
                             r-future
                             r-foreach
                             r-dorng
                             r-dofuture
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lusystemsbio/sRACIPE")
    (synopsis "Systems biology tool to simulate gene regulatory circuits")
    (description
     "@code{sRACIPE} implements a randomization-based method for gene circuit
modeling.  It allows us to study the effect of both the gene expression noise
and the parametric variation on any gene regulatory circuit (GRC) using only its
topology, and simulates an ensemble of models with random kinetic parameters at
multiple noise levels.  Statistical analysis of the generated gene expressions
reveals the basin of attraction and stability of various phenotypic states and
their changes associated with intrinsic and extrinsic noises. @code{sRACIPE}
provides a holistic picture to evaluate the effects of both the stochastic
nature of cellular processes and the parametric variation.")
    (license license:expat)))

(define-public r-squallms
  (package
    (name "r-squallms")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "squallms" version))
       (sha256
        (base32 "13v0cwxjrspfhpcnm3v99kfa99vpdxkyy2045k9rrig5xjszwvzy"))))
    (properties `((upstream-name . "squallms")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xcms
                             r-tidyr
                             r-tibble
                             r-shiny
                             r-rams
                             r-plotly
                             r-msnbase
                             r-msexperiment
                             r-keys
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wkumler/squallms")
    (synopsis "Speedy quality assurance via lasso labeling for LC-MS data")
    (description
     "squallms is a Bioconductor R package that implements a \"semi-labeled\" approach
to untargeted mass spectrometry data.  It pulls in raw data from mass-spec files
to calculate several metrics that are then used to label MS features in bulk as
high or low quality.  These metrics of peak quality are then passed to a simple
logistic model that produces a fully-labeled dataset suitable for downstream
analysis.")
    (license license:expat)))

(define-public r-spsimseq
  (package
    (name "r-spsimseq")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SPsimSeq" version))
       (sha256
        (base32 "106apmdmd8cclfdfbx8n9mkniwvaz3h7psjryylbsxr1cqbxac1a"))))
    (properties `((upstream-name . "SPsimSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wgcna
                             r-singlecellexperiment
                             r-phyloseq
                             r-mvtnorm
                             r-limma
                             r-hmisc
                             r-fitdistrplus
                             r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CenterForStatistics-UGent/SPsimSeq")
    (synopsis
     "Semi-parametric simulation tool for bulk and single-cell RNA sequencing data")
    (description
     "S@code{PsimSeq} uses a specially designed exponential family for density
estimation to constructs the distribution of gene expression levels from a given
real RNA sequencing data (single-cell or bulk), and subsequently simulates a new
dataset from the estimated marginal distributions using Gaussian-copulas to
retain the dependence between genes.  It allows simulation of multiple groups
and batches with any required sample size and library size.")
    (license license:gpl2)))

(define-public r-spqndata
  (package
    (name "r-spqndata")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spqnData" version
                              'experiment))
       (sha256
        (base32 "0q9svnb7z7x9mx1pnz6gf1lsbsrf4sxanrk2352spr44vlmy45l3"))))
    (properties `((upstream-name . "spqnData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment))
    (home-page "https://bioconductor.org/packages/spqnData")
    (synopsis "Data for the spqn package")
    (description
     "Bulk RNA-seq from GTEx on 4,000 randomly selected, expressed genes.  Data has
been processed for co-expression analysis.")
    (license license:artistic2.0)))

(define-public r-spqn
  (package
    (name "r-spqn")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spqn" version))
       (sha256
        (base32 "1cj1b5zx5mb1mwi1apk8655hh76xjm6cr2wwrdn1df68z08pnspc"))))
    (properties `((upstream-name . "spqn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-matrixstats r-ggridges
                             r-ggplot2 r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hansenlab/spqn")
    (synopsis "Spatial quantile normalization")
    (description
     "The spqn package implements spatial quantile normalization (@code{SpQN}).  This
method was developed to remove a mean-correlation relationship in correlation
matrices built from gene expression data.  It can serve as pre-processing step
prior to a co-expression analysis.")
    (license license:artistic2.0)))

(define-public r-spotsweeper
  (package
    (name "r-spotsweeper")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpotSweeper" version))
       (sha256
        (base32 "16f6dqafv7lps5k5lnjzd612fcgkhlpl13l89p5036qxmfhwxvmi"))))
    (properties `((upstream-name . "SpotSweeper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-spatialeco
                             r-singlecellexperiment
                             r-mass
                             r-ggplot2
                             r-escher
                             r-biocparallel
                             r-biocneighbors))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MicTott/SpotSweeper")
    (synopsis "Spatially-aware quality control for spatial transcriptomics")
    (description
     "Spatially-aware quality control (QC) software for both spot-level and
artifact-level QC in spot-based spatial transcripomics, such as 10x Visium.
These methods calculate local (nearest-neighbors) mean and variance of standard
QC metrics (library size, unique genes, and mitochondrial percentage) to
identify outliers spot and large technical artifacts.")
    (license license:expat)))

(define-public r-spotlight
  (package
    (name "r-spotlight")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SPOTlight" version))
       (sha256
        (base32 "1bnwss0rk2psy0l0imlgvvb6vq76f0kjzsr9nc5g9x001k7ic5n8"))))
    (properties `((upstream-name . "SPOTlight")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsematrixstats
                             r-singlecellexperiment
                             r-rcppeigen
                             r-rcpp
                             r-matrix
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MarcElosua/SPOTlight")
    (synopsis "`SPOTlight`: Spatial Transcriptomics Deconvolution")
    (description
     "`SPOTlight` provides a method to deconvolute spatial transcriptomics spots using
a seeded NMF approach along with visualization tools to assess the results.
Spatially resolved gene expression profiles are key to understand tissue
organization and function.  However, novel spatial transcriptomics (ST)
profiling techniques lack single-cell resolution and require a combination with
single-cell RNA sequencing (@code{scRNA-seq}) information to deconvolute the
spatially indexed datasets.  Leveraging the strengths of both data types, we
developed SPOTlight, a computational tool that enables the integration of ST
with @code{scRNA-seq} data to infer the location of cell types and states within
a complex tissue.  SPOTlight is centered around a seeded non-negative matrix
factorization (NMF) regression, initialized using cell-type marker genes and
non-negative least squares (NNLS) to subsequently deconvolute ST capture
locations (spots).")
    (license license:gpl3)))

(define-public r-spotclean
  (package
    (name "r-spotclean")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpotClean" version))
       (sha256
        (base32 "0y4cbv5hcz9q4wcgx4hr66998bpzxlsdlgski2wca6ag604ryxjy"))))
    (properties `((upstream-name . "SpotClean")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-tibble
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-seurat
                             r-s4vectors
                             r-rlang
                             r-rjson
                             r-rhdf5
                             r-readbitmap
                             r-rcolorbrewer
                             r-matrix
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zijianni/SpotClean")
    (synopsis
     "SpotClean adjusts for spot swapping in spatial transcriptomics data")
    (description
     "@code{SpotClean} is a computational method to adjust for spot swapping in
spatial transcriptomics data.  Recent spatial transcriptomics experiments
utilize slides containing thousands of spots with spot-specific barcodes that
bind @code{mRNA}.  Ideally, unique molecular identifiers at a spot measure
spot-specific expression, but this is often not the case due to bleed from
nearby spots, an artifact we refer to as spot swapping. @code{SpotClean} is able
to estimate the contamination rate in observed data and decontaminate the spot
swapping effect, thus increase the sensitivity and precision of downstream
analyses.")
    (license license:gpl3)))

(define-public r-spoon
  (package
    (name "r-spoon")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spoon" version))
       (sha256
        (base32 "145h823ax4hc8a9y8vsd1s4gli47kcb6hcxffa0wk989yb249zj9"))))
    (properties `((upstream-name . "spoon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-scuttle
                             r-nnsvg
                             r-matrix
                             r-brisc
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kinnaryshah/spoon")
    (synopsis
     "Address the Mean-variance Relationship in Spatial Transcriptomics Data")
    (description
     "This package addresses the mean-variance relationship in spatially resolved
transcriptomics data.  Precision weights are generated for individual
observations using Empirical Bayes techniques.  These weights are used to
rescale the data and covariates, which are then used as input in spatially
variable gene detection tools.")
    (license license:expat)))

(define-public r-sponge
  (package
    (name "r-sponge")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SPONGE" version))
       (sha256
        (base32 "1xqynqv006jz4kdz5iq9hmpqdrc32zi2lk50gmyw0ckgixapyxp4"))))
    (properties `((upstream-name . "SPONGE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tnet
                             r-tidyverse
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-randomforest
                             r-ppcor
                             r-metbrewer
                             r-mass
                             r-logging
                             r-iterators
                             r-igraph
                             r-grbase
                             r-glmnet
                             r-ggridges
                             r-ggpubr
                             r-ggplot2
                             r-foreach
                             r-expm
                             r-dplyr
                             r-dorng
                             r-data-table
                             r-cvms
                             r-complexheatmap
                             r-caret
                             r-biomart
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SPONGE")
    (synopsis "Sparse Partial Correlations On Gene Expression")
    (description
     "This package provides methods to efficiently detect competitive endogeneous RNA
interactions between two genes.  Such interactions are mediated by one or
several @code{miRNAs} such that both gene and @code{miRNA} expression data for a
larger number of samples is needed as input.  The SPONGE package now also
includes @code{spongEffects}: @code{ceRNA} modules offer patient-specific
insights into the @code{miRNA} regulatory landscape.")
    (license license:gpl3+)))

(define-public r-splots
  (package
    (name "r-splots")
    (version "1.76.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "splots" version))
       (sha256
        (base32 "0b5n6gy87q1yg29a594avq2d7qssk0s3b33qd0ky62lb8innra4r"))))
    (properties `((upstream-name . "splots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/splots")
    (synopsis
     "Visualization of high-throughput assays in microtitre plate or slide format")
    (description
     "This package is here to support legacy usages of it, but it should not be used
for new code development.  It provides a single function, @code{plotScreen}, for
visualising data in microtitre plate or slide format.  As a better alternative
for such functionality, please consider the platetools package on CRAN
(https://cran.r-project.org/package=platetools and
https://github.com/Swarchal/platetools), or ggplot2 (geom_raster, facet_wrap) as
exemplified in the vignette of this package.")
    (license license:lgpl2.0+)))

(define-public r-splinter
  (package
    (name "r-splinter")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SPLINTER" version))
       (sha256
        (base32 "05iikzwbk7qaw37p1kg18shwk6p84rvhxdnjrvi30bla20abgh2w"))))
    (properties `((upstream-name . "SPLINTER")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-seqlogo
                             r-seqinfo
                             r-s4vectors
                             r-pwalign
                             r-plyr
                             r-iranges
                             r-gviz
                             r-googlevis
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-bsgenome-mmusculus-ucsc-mm9
                             r-biostrings
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dianalow/SPLINTER/")
    (synopsis "Splice Interpreter of Transcripts")
    (description
     "This package provides tools to analyze alternative splicing sites, interpret
outcomes based on sequence information, select and design primers for site
validiation and give visual representation of the event to guide downstream
experiments.")
    (license license:gpl2)))

(define-public r-splinetimer
  (package
    (name "r-splinetimer")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "splineTimeR" version))
       (sha256
        (base32 "11yqzli5v6vgkwxj5m6aw4h5m3p3x65nzyn90rhyxfsly46zldkr"))))
    (properties `((upstream-name . "splineTimeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-longitudinal
                             r-limma
                             r-igraph
                             r-gtools
                             r-gseabase
                             r-genenet
                             r-fis
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/splineTimeR")
    (synopsis
     "Time-course differential gene expression data analysis using spline regression models followed by gene association network reconstruction")
    (description
     "This package provides functions for differential gene expression analysis of
gene expression time-course data.  Natural cubic spline regression models are
used.  Identified genes may further be used for pathway enrichment analysis
and/or the reconstruction of time dependent gene regulatory association
networks.")
    (license license:gpl3)))

(define-public r-splinedv
  (package
    (name "r-splinedv")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SplineDV" version))
       (sha256
        (base32 "0nf35ljh2hrh05x3a5fj273ibd7knm390li6na5maq763vyvx4zb"))))
    (properties `((upstream-name . "SplineDV")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-sparsematrixstats
                             r-singlecellexperiment
                             r-scuttle
                             r-s4vectors
                             r-plotly
                             r-matrix
                             r-dplyr
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Xenon8778/SplineDV")
    (synopsis
     "Differential Variability (DV) analysis for single-cell RNA sequencing data. (e.g. Identify Differentially Variable Genes across two experimental conditions)")
    (description
     "This package provides a spline based @code{scRNA-seq} method for identifying
differentially variable (DV) genes across two experimental conditions.
Spline-DV constructs a 3D spline from 3 key gene statistics: mean expression,
coefficient of variance, and dropout rate.  This is done for both conditions.
The 3D spline provides the “expected” behavior of genes in each condition.  The
distance of the observed mean, CV and dropout rate of each gene from the
expected 3D spline is used to measure variability.  As the final step, the
spline-DV method compares the variabilities of each condition to identify
differentially variable (DV) genes.")
    (license license:gpl2)))

(define-public r-splicinggraphs
  (package
    (name "r-splicinggraphs")
    (version "1.50.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SplicingGraphs" version))
       (sha256
        (base32 "1nfizsgjqadpjmj3lqyb1716za19f0by9c1myhabxqb8m7p6f48j"))))
    (properties `((upstream-name . "SplicingGraphs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-rgraphviz
                             r-iranges
                             r-igraph
                             r-graph
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-biocparallel
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/SplicingGraphs")
    (synopsis
     "Create, manipulate, visualize splicing graphs, and assign RNA-seq reads to them")
    (description
     "This package allows the user to create, manipulate, and visualize splicing
graphs and their bubbles based on a gene model for a given organism.
Additionally it allows the user to assign RNA-seq reads to the edges of a set of
splicing graphs, and to summarize them in different ways.")
    (license license:artistic2.0)))

(define-public r-splicingfactory
  (package
    (name "r-splicingfactory")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SplicingFactory" version))
       (sha256
        (base32 "12iswmi8mzz3kbbjr2lf02p35gvbzds588i59msyw4803vravdlh"))))
    (properties `((upstream-name . "SplicingFactory")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/esebesty/SplicingFactory")
    (synopsis "Splicing Diversity Analysis for Transcriptome Data")
    (description
     "The @code{SplicingFactory} R package uses transcript-level expression values to
analyze splicing diversity based on various statistical measures, like Shannon
entropy or the Gini index.  These measures can quantify transcript isoform
diversity within samples or between conditions.  Additionally, the package
analyzes the isoform diversity data, looking for significant changes between
conditions.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-splicewiz
  (package
    (name "r-splicewiz")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpliceWiz" version))
       (sha256
        (base32 "02g7h7yaqkallwalx57w9hli02xzar2bcvqv06sx63jpfaar34xv"))))
    (properties `((upstream-name . "SpliceWiz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringi
                             r-shinywidgets
                             r-shinyfiles
                             r-shinydashboard
                             r-shiny
                             r-scales
                             r-s4vectors
                             r-rvest
                             r-rtracklayer
                             r-rsqlite
                             r-rhdf5
                             r-rhandsontable
                             r-rcppprogress
                             r-rcpp
                             r-rcolorbrewer
                             r-r-utils
                             r-progress
                             r-plotly
                             r-pheatmap
                             r-patchwork
                             r-ompbam
                             r-nxtirfdata
                             r-matrixstats
                             r-magrittr
                             r-iranges
                             r-httr
                             r-htmltools
                             r-heatmaply
                             r-hdf5array
                             r-h5mread
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-genefilter
                             r-fst
                             r-dt
                             r-delayedmatrixstats
                             r-delayedarray
                             r-data-table
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-biocfilecache
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexchwong/SpliceWiz")
    (synopsis
     "interactive analysis and visualization of alternative splicing in R")
    (description
     "The analysis and visualization of alternative splicing (AS) events from RNA
sequencing data remains challenging. @code{SpliceWiz} is a user-friendly and
performance-optimized R package for AS analysis, by processing alignment BAM
files to quantify read counts across splice junctions, IRFinder-based intron
retention quantitation, and supports novel splicing event identification.  We
introduce a novel visualization for AS using normalized coverage, thereby
allowing visualization of differential AS across conditions. @code{SpliceWiz}
features a shiny-based GUI facilitating interactive data exploration of results
including gene ontology enrichment.  It is performance optimized with
multi-threaded processing of BAM files and a new COV file format for fast recall
of sequencing coverage.  Overall, @code{SpliceWiz} streamlines AS analysis,
enabling reliable identification of functionally relevant AS events for further
characterization.")
    (license license:expat)))

(define-public r-splatter
  (package
    (name "r-splatter")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "splatter" version))
       (sha256
        (base32 "0p9hr9p8b6n2q0mm1ihxydv53i5hn48pw03z4b50gz4d4w5nsqkv"))))
    (properties `((upstream-name . "splatter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-scuttle
                             r-s4vectors
                             r-rlang
                             r-matrixstats
                             r-locfit
                             r-fitdistrplus
                             r-edger
                             r-crayon
                             r-checkmate
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/splatter/")
    (synopsis "Simple Simulation of Single-cell RNA Sequencing Data")
    (description
     "Splatter is a package for the simulation of single-cell RNA sequencing count
data.  It provides a simple interface for creating complex simulations that are
reproducible and well-documented.  Parameters can be estimated from real data
and functions are provided for comparing real and simulated datasets.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-spktools
  (package
    (name "r-spktools")
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spkTools" version))
       (sha256
        (base32 "1rgqfnicbv7sf5fggpdchkqq0x3z08qhrcrl469182dcmz09m966"))))
    (properties `((upstream-name . "spkTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-gtools r-biobase))
    (home-page "http://bioconductor.org")
    (synopsis "Methods for Spike-in Arrays")
    (description
     "The package contains functions that can be used to compare expression measures
on different array platforms.")
    (license license:gpl2+)))

(define-public r-spillr
  (package
    (name "r-spillr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spillR" version))
       (sha256
        (base32 "1ac72p03xlzr4kg2wny7p17smrvprs6b5ng483x7369rsx7xf3di"))))
    (properties `((upstream-name . "spillR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-spatstat-univar
                             r-s4vectors
                             r-ggplot2
                             r-dplyr
                             r-catalyst))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/spillR")
    (synopsis "Spillover Compensation in Mass Cytometry Data")
    (description
     "Channel interference in mass cytometry can cause spillover and may result in
miscounting of protein markers.  We develop a nonparametric finite mixture model
and use the mixture components to estimate the probability of spillover.  We
implement our method using expectation-maximization to fit the mixture model.")
    (license license:lgpl3)))

(define-public r-spiky
  (package
    (name "r-spiky")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spiky" version))
       (sha256
        (base32 "02n2k80n6pwgdzllhf7kf38hb99hb43p2hbzw5k479brhjv72ayb"))))
    (properties `((upstream-name . "spiky")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-s4vectors
                             r-rsamtools
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-bsgenome
                             r-blandaltmanleh
                             r-biostrings
                             r-bamlss))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/trichelab/spiky")
    (synopsis "Spike-in calibration for cell-free MeDIP")
    (description
     "spiky implements methods and model generation for @code{cfMeDIP} (cell-free
methylated DNA immunoprecipitation) with spike-in controls. @code{CfMeDIP} is an
enrichment protocol which avoids destructive conversion of scarce template,
making it ideal as a \"liquid biopsy,\" but creating certain challenges in
comparing results across specimens, subjects, and experiments.  The use of
synthetic spike-in standard oligos allows diagnostics performed with
@code{cfMeDIP} to quantitatively compare samples across subjects, experiments,
and time points in both relative and absolute terms.")
    (license license:gpl2)))

(define-public r-spikeli
  (package
    (name "r-spikeli")
    (version "2.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spikeLI" version))
       (sha256
        (base32 "09jbaxyx98haazh8hag0l2s8dzmn9djixvk4dvfs3ld9p80wknhg"))))
    (properties `((upstream-name . "spikeLI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/spikeLI")
    (synopsis "Affymetrix Spike-in Langmuir Isotherm Data Analysis Tool")
    (description
     "@code{SpikeLI} is a package that performs the analysis of the Affymetrix
spike-in data using the Langmuir Isotherm.  The aim of this package is to show
the advantages of a physical-chemistry based analysis of the Affymetrix
microarray data compared to the traditional methods.  The spike-in (or Latin
square) data for the HGU95 and HGU133 chipsets have been downloaded from the
Affymetrix web site.  The model used in the @code{spikeLI} package is described
in details in E. Carlon and T. Heim, Physica A 362, 433 (2006).")
    (license license:gpl2)))

(define-public r-spikeinsubset
  (package
    (name "r-spikeinsubset")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpikeInSubset" version
                              'experiment))
       (sha256
        (base32 "0kjx1rrvsyd12lh5qbwpnqdd1z9k3157vc9gvw06mfqdp56sqclr"))))
    (properties `((upstream-name . "SpikeInSubset")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/SpikeInSubset")
    (synopsis "Part of Affymetrix's Spike-In Experiment Data")
    (description
     "Includes probe-level and expression data for the HGU133 and HGU95 spike-in
experiments.")
    (license license:lgpl2.0+)))

(define-public r-spikein
  (package
    (name "r-spikein")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpikeIn" version
                              'experiment))
       (sha256
        (base32 "18p3j8gq480p5yrjhxnmdcrg9w6z1p2dr8v6zpm85gdlyadimns2"))))
    (properties `((upstream-name . "SpikeIn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-affy))
    (home-page "https://bioconductor.org/packages/SpikeIn")
    (synopsis "Affymetrix Spike-In Experiment Data")
    (description
     "This package contains the HGU133 and HGU95 spikein experiment data.")
    (license license:artistic2.0)))

(define-public r-spicyr
  (package
    (name "r-spicyr")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spicyR" version))
       (sha256
        (base32 "00ljikrz4w3drqsfm8krm72nc1sg8wm0h18kfrifvfa6b9baydv0"))))
    (properties `((upstream-name . "spicyR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-survival
                             r-summarizedexperiment
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-simpleseg
                             r-scam
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-pheatmap
                             r-magrittr
                             r-lmertest
                             r-lifecycle
                             r-ggthemes
                             r-ggplot2
                             r-ggnewscale
                             r-ggh4x
                             r-ggforce
                             r-dplyr
                             r-data-table
                             r-coxme
                             r-concaveman
                             r-cli
                             r-classifyr
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://sydneybiox.github.io/spicyR/")
    (synopsis "Spatial analysis of in situ cytometry data")
    (description
     "The @code{spicyR} package provides a framework for performing inference on
changes in spatial relationships between pairs of cell types for cell-resolution
spatial omics technologies. @code{spicyR} consists of three primary steps: (i)
summarizing the degree of spatial localization between pairs of cell types for
each image; (ii) modelling the variability in localization summary statistics as
a function of cell counts and (iii) testing for changes in spatial localizations
associated with a response variable.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-spicey
  (package
    (name "r-spicey")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SPICEY" version))
       (sha256
        (base32 "1qvwn27dnvyal8kjk5aj619ln4p64jnpi8b73cp4jjad67cibzlw"))))
    (properties `((upstream-name . "SPICEY")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-scales
                             r-s4vectors
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dplyr
                             r-cowplot
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://georginafp.github.io/SPICEY")
    (synopsis "Calculates cell type specificity from single cell data")
    (description
     "SPICEY (SPecificity Index for Coding and Epigenetic @code{activitY}) is an R
package designed to quantify cell-type specificity in single-cell transcriptomic
and epigenomic data, particularly @code{scRNA-seq} and @code{scATAC-seq}.  It
introduces two complementary indices: the Gene Expression Tissue Specificity
Index (GETSI) and the Regulatory Element Tissue Specificity Index (RETSI), both
based on entropy to provide continuous, interpretable measures of specificity.
By integrating gene expression and chromatin accessibility, SPICEY enables
standardized analysis of cell-type-specific regulatory programs across diverse
tissues and conditions.")
    (license license:artistic2.0)))

(define-public r-spiat
  (package
    (name "r-spiat")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SPIAT" version))
       (sha256
        (base32 "1y5j6sh5ls10w491sjrb99m80mwh29bdwkg97r3ykyh09wk2w5dq"))))
    (properties `((upstream-name . "SPIAT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vroom
                             r-tibble
                             r-summarizedexperiment
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatialexperiment
                             r-sp
                             r-rlang
                             r-reshape2
                             r-raster
                             r-rann
                             r-pracma
                             r-mmand
                             r-gtools
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-dittoseq
                             r-dbscan
                             r-apcluster))
    (native-inputs (list r-knitr))
    (home-page "https://trigosteam.github.io/SPIAT/")
    (synopsis "Spatial Image Analysis of Tissues")
    (description
     "SPIAT (**Sp**atial **I**mage **A**nalysis of **T**issues) is an R package with a
suite of data processing, quality control, visualization and data analysis
tools.  SPIAT is compatible with data generated from single-cell spatial
proteomics platforms (e.g. OPAL, CODEX, MIBI, cellprofiler).  SPIAT reads
spatial data in the form of X and Y coordinates of cells, marker intensities and
cell phenotypes.  SPIAT includes six analysis modules that allow visualization,
calculation of cell colocalization, categorization of the immune
microenvironment relative to tumor areas, analysis of cellular neighborhoods,
and the quantification of spatial heterogeneity, providing a comprehensive
toolkit for spatial data analysis.")
    (license (license:fsdg-compatible "Artistic-2.0 + file LICENSE"))))

(define-public r-spia
  (package
    (name "r-spia")
    (version "2.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SPIA" version))
       (sha256
        (base32 "0dl139352p1xl72i7189y40hfk2i6q4nf2s01rwdjgris9sihc2a"))))
    (properties `((upstream-name . "SPIA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-kegggraph))
    (home-page "http://bioinformatics.oxfordjournals.org/cgi/reprint/btn577v1")
    (synopsis
     "Signaling Pathway Impact Analysis (SPIA) using combined evidence of pathway over-representation and unusual signaling perturbations")
    (description
     "This package implements the Signaling Pathway Impact Analysis (SPIA) which uses
the information form a list of differentially expressed genes and their log fold
changes together with signaling pathways topology, in order to identify the
pathways most relevant to the condition under the study.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-spem
  (package
    (name "r-spem")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SPEM" version))
       (sha256
        (base32 "0js9l4rgqbbd95hn872mfz27hag5yg5jp58rbvydxjz4w9x8883b"))))
    (properties `((upstream-name . "SPEM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsolnp r-biobase))
    (home-page "https://bioconductor.org/packages/SPEM")
    (synopsis "S-system parameter estimation method")
    (description
     "This package can optimize the parameter in S-system models given time series
data.")
    (license license:gpl2)))

(define-public r-spectripy
  (package
    (name "r-spectripy")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpectriPy" version))
       (sha256
        (base32 "0k96x0nijgw01d0x0irbnj1ia0i046zbndf4j7fhk4fqpc79qakl"))))
    (properties `((upstream-name . "SpectriPy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list python pandoc))
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-reticulate
                             r-protgenerics
                             r-mscoreutils
                             r-iranges))
    (native-inputs (list r-quarto))
    (home-page "https://github.com/RforMassSpectrometry/SpectriPy")
    (synopsis
     "Enhancing Cross-Language Mass Spectrometry Data Analysis with R and Python")
    (description
     "The @code{SpectriPy} package allows integration of Python-based MS analysis code
with the Spectra package.  Spectra objects can be converted into Python MS data
structures.  In addition, @code{SpectriPy} integrates and wraps the similarity
scoring and processing/filtering functions from the Python matchms package into
R.")
    (license license:artistic2.0)))

(define-public r-spectraql
  (package
    (name "r-spectraql")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpectraQL" version))
       (sha256
        (base32 "1md9sdqh9f5wca54a47nfj7lhcv6gf0z0g5xhfchqrzb88ldr5g1"))))
    (properties `((upstream-name . "SpectraQL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spectra r-protgenerics r-mscoreutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RforMassSpectrometry/SpectraQL")
    (synopsis "MassQL support for Spectra")
    (description
     "The Mass Spec Query Language (@code{MassQL}) is a domain-specific language
enabling to express a query and retrieve mass spectrometry (MS) data in a more
natural and understandable way for MS users.  It is inspired by SQL and is by
design programming language agnostic.  The @code{SpectraQL} package adds support
for the @code{MassQL} query language to R, in particular to MS data represented
by Spectra objects.  Users can thus apply @code{MassQL} expressions to analyze
and retrieve specific data from Spectra objects.")
    (license license:artistic2.0)))

(define-public r-spectraltad
  (package
    (name "r-spectraltad")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpectralTAD" version))
       (sha256
        (base32 "0l07d7hyamcjias3gcgb0gkgbrf8ha7d7lmzp3k121vydsg1drqa"))))
    (properties `((upstream-name . "SpectralTAD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-primme
                             r-matrix
                             r-magrittr
                             r-hiccompare
                             r-genomicranges
                             r-dplyr
                             r-cluster
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/SpectralTAD")
    (synopsis
     "SpectralTAD: Hierarchical TAD detection using spectral clustering")
    (description
     "@code{SpectralTAD} is an R package designed to identify Topologically Associated
Domains (TADs) from Hi-C contact matrices.  It uses a modified version of
spectral clustering that uses a sliding window to quickly detect TADs.  The
function works on a range of different formats of contact matrices and returns a
bed file of TAD coordinates.  The method does not require users to adjust any
parameters to work and gives them control over the number of hierarchical levels
to be returned.")
    (license license:expat)))

(define-public r-specond
  (package
    (name "r-specond")
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpeCond" version))
       (sha256
        (base32 "088lwcy7qgbsr311r31fqyhvx13y7x2kr416z6c7kylh1l3qlbfb"))))
    (properties `((upstream-name . "SpeCond")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-mclust r-hwriter r-fields
                             r-biobase))
    (home-page "https://bioconductor.org/packages/SpeCond")
    (synopsis "Condition specific detection from expression data")
    (description
     "This package performs a gene expression data analysis to detect
condition-specific genes.  Such genes are significantly up- or down-regulated in
a small number of conditions.  It does so by fitting a mixture of normal
distributions to the expression values.  Conditions can be environmental
conditions, different tissues, organs or any other sources that you wish to
compare in terms of gene expression.")
    (license (license:fsdg-compatible "LGPL (>=2)"))))

(define-public r-specl
  (package
    (name "r-specl")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "specL" version))
       (sha256
        (base32 "1bdsardyjf0gywjfgcrk2m3fmak5bd9brysn9cz7i7d9720xqs3y"))))
    (properties `((upstream-name . "specL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinr r-rsqlite r-protviz r-dbi))
    (native-inputs (list r-knitr))
    (home-page "http://bioconductor.org/packages/specL/")
    (synopsis
     "specL - Prepare Peptide Spectrum Matches for Use in Targeted Proteomics")
    (description
     "provides a functions for generating spectra libraries that can be used for MRM
SRM MS workflows in proteomics.  The package provides a @code{BiblioSpec}
reader, a function which can add the protein information using a FASTA formatted
amino acid file, and an export method for using the created library in the
Spectronaut software.  The package is developed, tested and used at the
Functional Genomics Center Zurich <https://fgcz.ch>.")
    (license license:gpl3)))

(define-public r-speckle
  (package
    (name "r-speckle")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "speckle" version))
       (sha256
        (base32 "0wn4myrbxamy7qqwzvfq8lb24ayxs1y6hh865v4rrjqdx6flww74"))))
    (properties `((upstream-name . "speckle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-singlecellexperiment r-seurat r-limma r-ggplot2
                             r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/speckle")
    (synopsis "Statistical methods for analysing single cell RNA-seq data")
    (description
     "The speckle package contains functions for the analysis of single cell RNA-seq
data.  The speckle package currently contains functions to analyse differences
in cell type proportions.  There are also functions to estimate the parameters
of the Beta distribution based on a given counts matrix, and a function to
normalise a counts matrix to the median library size.  There are plotting
functions to visualise cell type proportions and the mean-variance relationship
in cell type proportions and counts.  As our research into specialised analyses
of single cell data continues we anticipate that the package will be updated
with new functions.")
    (license license:gpl3)))

(define-public r-spatialsimgp
  (package
    (name "r-spatialsimgp")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spatialSimGP" version))
       (sha256
        (base32 "1xixl5ih67lkr254mdmc22qp5x6q6qm4krdpcxxjbljzfqw4yksd"))))
    (properties `((upstream-name . "spatialSimGP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-spatialexperiment r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kinnaryshah/spatialSimGP")
    (synopsis
     "Simulate Spatial Transcriptomics Data with the Mean-variance Relationship")
    (description
     "This packages simulates spatial transcriptomics data with the mean- variance
relationship using a Gaussian Process model per gene.")
    (license license:expat)))

(define-public r-spatialomicsoverlay
  (package
    (name "r-spatialomicsoverlay")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpatialOmicsOverlay" version))
       (sha256
        (base32 "0bqgyfq67d87zdrplgqjzk9dj33ha3g6hzhar7g031wqxgas38r2"))))
    (properties `((upstream-name . "SpatialOmicsOverlay")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-stringr
                             r-scattermore
                             r-s4vectors
                             r-readxl
                             r-rbioformats
                             r-plotrix
                             r-pbapply
                             r-magick
                             r-ggtext
                             r-ggplot2
                             r-geomxtools
                             r-ebimage
                             r-dplyr
                             r-data-table
                             r-biocfilecache
                             r-biobase
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SpatialOmicsOverlay")
    (synopsis "Spatial Overlay for Omic Data from Nanostring GeoMx Data")
    (description
     "This package provides tools for @code{NanoString} Technologies @code{GeoMx}
Technology.  Package to easily graph on top of an OME-TIFF image.  Plotting
annotations can range from tissue segment to gene expression.")
    (license license:expat)))

(define-public r-spatiallibd
  (package
    (name "r-spatiallibd")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spatialLIBD" version
                              'experiment))
       (sha256
        (base32 "02hmqwa78had3lf6214a6wav6y50wxy3ysnk80krzixr4girb9jz"))))
    (properties `((upstream-name . "spatialLIBD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-viridislite
                             r-tibble
                             r-summarizedexperiment
                             r-statmod
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-shinywidgets
                             r-shiny
                             r-sessioninfo
                             r-scuttle
                             r-scater
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-png
                             r-plotly
                             r-paletteer
                             r-matrixgenerics
                             r-matrix
                             r-magick
                             r-limma
                             r-jsonlite
                             r-iranges
                             r-golem
                             r-ggplot2
                             r-genomicranges
                             r-experimenthub
                             r-edger
                             r-dt
                             r-dplyr
                             r-cowplot
                             r-complexheatmap
                             r-circlize
                             r-biocgenerics
                             r-biocfilecache
                             r-benchmarkme
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LieberInstitute/spatialLIBD")
    (synopsis
     "spatialLIBD: an R/Bioconductor package to visualize spatially-resolved transcriptomics data")
    (description
     "Inspect interactively the spatially-resolved transcriptomics data from the 10x
Genomics Visium platform as well as data from the Maynard, Collado-Torres et al,
Nature Neuroscience, 2021 project analyzed by Lieber Institute for Brain
Development (LIBD) researchers and collaborators.")
    (license license:artistic2.0)))

(define-public r-spatialfeatureexperiment
  (package
    (name "r-spatialfeatureexperiment")
    (version "1.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpatialFeatureExperiment" version))
       (sha256
        (base32 "0ixjz32ksirpwp2rx422k2g7m3sqziwfg7dhxzdysar2gxyxcniz"))))
    (properties `((upstream-name . "SpatialFeatureExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zeallot
                             r-terra
                             r-summarizedexperiment
                             r-spdep
                             r-spatialreg
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-sfheaders
                             r-sf
                             r-s4vectors
                             r-rlang
                             r-rjson
                             r-matrix
                             r-lifecycle
                             r-ebimage
                             r-dropletutils
                             r-data-table
                             r-biocparallel
                             r-biocneighbors
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pachterlab/SpatialFeatureExperiment")
    (synopsis "Integrating SpatialExperiment with Simple Features in sf")
    (description
     "This package provides a new S4 class integrating Simple Features with the R
package sf to bring geospatial data analysis methods based on vector data to
spatial transcriptomics.  Also implements management of spatial neighborhood
graphs and geometric operations.  This pakage builds upon
@code{SpatialExperiment} and @code{SingleCellExperiment}, hence methods for
these parent classes can still be used.")
    (license license:artistic2.0)))

(define-public r-spatialfda
  (package
    (name "r-spatialfda")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spatialFDA" version))
       (sha256
        (base32 "1ddz26xncw3wmdy0jjxkaymrxgwd3i3rdcygq867zijrqqz7m0w1"))))
    (properties `((upstream-name . "spatialFDA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatialexperiment
                             r-scales
                             r-s4vectors
                             r-refund
                             r-purrr
                             r-patchwork
                             r-ggplot2
                             r-fda
                             r-experimenthub
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mjemons/spatialFDA")
    (synopsis "Tool for Spatial Multi-sample Comparisons")
    (description
     "@code{spatialFDA} is a package to calculate spatial statistics metrics.  The
package takes a @code{SpatialExperiment} object and calculates spatial
statistics metrics using the package spatstat.  Then it compares the resulting
functions across samples/conditions using functional additive models as
implemented in the package refund.  Furthermore, it provides exploratory
visualisations using functional principal component analysis, as well
implemented in refund.")
    (license (license:fsdg-compatible "GPL (>= 3) + file LICENSE"))))

(define-public r-spatialexperimentio
  (package
    (name "r-spatialexperimentio")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpatialExperimentIO" version))
       (sha256
        (base32 "1gffisk37lr1awxymjwa6k0wcsd6clfpnkswrgsr2z5j2ifw04ky"))))
    (properties `((upstream-name . "SpatialExperimentIO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-purrr
                             r-dropletutils
                             r-data-table
                             r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/estellad/SpatialExperimentIO")
    (synopsis
     "Read in Xenium, CosMx, MERSCOPE or STARmapPLUS data as SpatialExperiment object")
    (description
     "Read in imaging-based spatial transcriptomics technology data.  Current
available modules are for Xenium by 10X Genomics, @code{CosMx} by Nanostring,
MERSCOPE by Vizgen, or STA@code{RmapPLUS} from Broad Institute.  You can choose
to read the data in as a @code{SpatialExperiment} or a
@code{SingleCellExperiment} object.")
    (license license:artistic2.0)))

(define-public r-spatialdmelxsim
  (package
    (name "r-spatialdmelxsim")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spatialDmelxsim" version
                              'experiment))
       (sha256
        (base32 "1r53gi64qyvghnh948s2v4mc73y3hjq62j2bm34wycdk03n6q53w"))))
    (properties `((upstream-name . "spatialDmelxsim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mikelove/spatialDmelxsim")
    (synopsis "Spatial allelic expression counts for fly cross embryo")
    (description
     "Spatial allelic expression counts from Combs & Fraser (2018), compiled into a
@code{SummarizedExperiment} object.  This package contains data of allelic
expression counts of spatial slices of a fly embryo, a Drosophila melanogaster x
Drosophila simulans cross.  See the CITATION file for the data source, and the
associated script for how the object was constructed from publicly available
data.")
    (license license:gpl3)))

(define-public r-spatialdecon
  (package
    (name "r-spatialdecon")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpatialDecon" version))
       (sha256
        (base32 "0y5wn3vi5a50c3745qxspxq89xj4j3bb0f2sj193j5qnyycli4px"))))
    (properties `((upstream-name . "SpatialDecon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seuratobject
                             r-repmis
                             r-matrix
                             r-lognormreg
                             r-geomxtools
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SpatialDecon")
    (synopsis
     "Deconvolution of mixed cells from spatial and/or bulk gene expression data")
    (description
     "Using spatial or bulk gene expression data, estimates abundance of mixed cell
types within each observation.  Based on \"Advances in mixed cell deconvolution
enable quantification of cell types in spatial transcriptomic data\", Danaher
(2022).  Designed for use with the @code{NanoString} @code{GeoMx} platform, but
applicable to any gene expression data.")
    (license license:expat)))

(define-public r-spatialde
  (package
    (name "r-spatialde")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spatialDE" version))
       (sha256
        (base32 "1v9kp5qd99zm5zmf18xinki9jjc5xk3b741x2fz3vbc5dv3gxzaz"))))
    (properties `((upstream-name . "spatialDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-scales
                             r-reticulate
                             r-matrix
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-checkmate
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sales-lab/spatialDE")
    (synopsis "R wrapper for SpatialDE")
    (description
     "@code{SpatialDE} is a method to find spatially variable genes (SVG) from spatial
transcriptomics data.  This package provides wrappers to use the Python
@code{SpatialDE} library in R, using reticulate and basilisk.")
    (license license:expat)))

(define-public r-spatialdatasets
  (package
    (name "r-spatialdatasets")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpatialDatasets" version
                              'experiment))
       (sha256
        (base32 "1dyll6yn5lwy1shqvgrblam345ra98vap3j8pp291h04k01gxgli"))))
    (properties `((upstream-name . "SpatialDatasets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-spatialexperiment r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SydneyBioX/SpatialDatasets")
    (synopsis "Collection of spatial omics datasets")
    (description
     "This is a collection of publically available spatial omics datasets.  Where
possible we have curated these datasets as either @code{SpatialExperiments},
@code{MoleculeExperiments} or @code{CytoImageLists} and included annotations of
the sample characteristics.")
    (license license:gpl3)))

(define-public r-spatialcpie
  (package
    (name "r-spatialcpie")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpatialCPie" version))
       (sha256
        (base32 "08lyfgvdm585c2xc0k5mlfpmf2zndrvjs6im277zf7nl5rcg2mly"))))
    (properties `((upstream-name . "SpatialCPie")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zeallot
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-shinywidgets
                             r-shinyjs
                             r-shinycssloaders
                             r-shiny
                             r-rlang
                             r-readr
                             r-purrr
                             r-lpsolve
                             r-igraph
                             r-ggrepel
                             r-ggplot2
                             r-ggiraph
                             r-ggforce
                             r-dplyr
                             r-digest
                             r-data-table
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SpatialCPie")
    (synopsis "Cluster analysis of Spatial Transcriptomics data")
    (description
     "@code{SpatialCPie} is an R package designed to facilitate cluster evaluation for
spatial transcriptomics data by providing intuitive visualizations that display
the relationships between clusters in order to guide the user during cluster
identification and other downstream applications.  The package is built around a
shiny \"gadget\" to allow the exploration of the data with multiple plots in
parallel and an interactive UI. The user can easily toggle between different
cluster resolutions in order to choose the most appropriate visual cues.")
    (license license:expat)))

(define-public r-spasim
  (package
    (name "r-spasim")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spaSim" version))
       (sha256
        (base32 "1a5fb8d0yplg3chs9k4zrk12cdpzras37xnwv8372vzh75g2r1bc"))))
    (properties `((upstream-name . "spaSim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatstat-random
                             r-spatstat-geom
                             r-spatialexperiment
                             r-rann
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://trigosteam.github.io/spaSim/")
    (synopsis "Spatial point data simulator for tissue images")
    (description
     "This package provides a suite of functions for simulating spatial patterns of
cells in tissue images.  Output images are multitype point data in
@code{SingleCellExperiment} format.  Each point represents a cell, with its 2D
locations and cell type.  Potential cell patterns include background cells,
tumour/immune cell clusters, immune rings, and blood/lymphatic vessels.")
    (license license:artistic2.0)))

(define-public r-sparsesignatures
  (package
    (name "r-sparsesignatures")
    (version "2.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SparseSignatures" version))
       (sha256
        (base32 "1vy8gj0walh890rxj0hi84331i7gzkvk5dhafdg5mk7czmx4r80l"))))
    (properties `((upstream-name . "SparseSignatures")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rhpcblasctl
                             r-reshape2
                             r-nnls
                             r-nnlasso
                             r-nmf
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/danro9685/SparseSignatures")
    (synopsis "SparseSignatures")
    (description
     "Point mutations occurring in a genome can be divided into 96 categories based on
the base being mutated, the base it is mutated into and its two flanking bases.
Therefore, for any patient, it is possible to represent all the point mutations
occurring in that patient's tumor as a vector of length 96, where each element
represents the count of mutations for a given category in the patient.  A
mutational signature represents the pattern of mutations produced by a mutagen
or mutagenic process inside the cell.  Each signature can also be represented by
a vector of length 96, where each element represents the probability that this
particular mutagenic process generates a mutation of the 96 above mentioned
categories.  In this R package, we provide a set of functions to extract and
visualize the mutational signatures that best explain the mutation counts of a
large number of patients.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-sparsenetgls
  (package
    (name "r-sparsenetgls")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sparsenetgls" version))
       (sha256
        (base32 "1bx8ypv17paz5kvbqmk2vd5cy1iciqmhprlrkhvl7v0shw61kcgc"))))
    (properties `((upstream-name . "sparsenetgls")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-mass r-huge r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/sparsenetgls")
    (synopsis
     "Using Gaussian graphical structue learning estimation in generalized least squared regression for multivariate normal regression")
    (description
     "The package provides methods of combining the graph structure learning and
generalized least squares regression to improve the regression estimation.  The
main function @code{sparsenetgls()} provides solutions for multivariate
regression with Gaussian distributed dependant variables and explanatory
variables utlizing multiple well-known graph structure learning approaches to
estimating the precision matrix, and uses a penalized variance covariance matrix
with a distance tuning parameter of the graph structure in deriving the sandwich
estimators in generalized least squares (gls) regression.  This package also
provides functions for assessing a Gaussian graphical model which uses
the	penalized approach.  It uses Receiver Operative Characteristics curve as a
visualization tool in the assessment.")
    (license license:gpl3)))

(define-public r-sparrow
  (package
    (name "r-sparrow")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sparrow" version))
       (sha256
        (base32 "0zv0sccv0rm6jdyvzy4dgi3gir0zxb7r2pdl4g7qfms62ipim3bm"))))
    (properties `((upstream-name . "sparrow")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-plotly
                             r-matrix
                             r-limma
                             r-irlba
                             r-gseabase
                             r-ggplot2
                             r-edger
                             r-delayedmatrixstats
                             r-data-table
                             r-complexheatmap
                             r-circlize
                             r-checkmate
                             r-biocset
                             r-biocparallel
                             r-biocgenerics
                             r-babelgene))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lianos/sparrow")
    (synopsis
     "Take command of set enrichment analyses through a unified interface")
    (description
     "This package provides a unified interface to a variety of GSEA techniques from
different bioconductor packages.  Results are harmonized into a single object
and can be interrogated uniformly for quick exploration and interpretation of
results.  Interactive exploration of GSEA results is enabled through a shiny app
provided by a sparrow.shiny sibling package.")
    (license license:expat)))

(define-public r-spari
  (package
    (name "r-spari")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "spARI" version))
       (sha256
        (base32 "10vspwy7882wlmlsm873sz8rah4zlm5mzwzz6y2cihry342hyqkp"))))
    (properties `((upstream-name . "spARI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-spatialexperiment r-rcpp
                             r-matrix r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/spARI")
    (synopsis
     "Spatially Aware Adjusted Rand Index for Evaluating Spatial Transcritpomics Clustering")
    (description
     "The R package used in the manuscript \"Spatially Aware Adjusted Rand Index for
Evaluating Spatial Transcritpomics Clustering\".")
    (license license:gpl2+)))

(define-public r-spanorm
  (package
    (name "r-spanorm")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpaNorm" version))
       (sha256
        (base32 "0g4899p805scvgjqar5fyqrxc0ysah83gi6waaz482hdlcdxkyp7"))))
    (properties `((upstream-name . "SpaNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-seuratobject
                             r-scran
                             r-s4vectors
                             r-rlang
                             r-matrixstats
                             r-matrix
                             r-ggplot2
                             r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://bhuvad.github.io/SpaNorm")
    (synopsis "Spatially-aware normalisation for spatial transcriptomics data")
    (description
     "This package implements the spatially aware library size normalisation
algorithm, @code{SpaNorm}. @code{SpaNorm} normalises out library size effects
while retaining biology through the modelling of smooth functions for each
effect.  Normalisation is performed in a gene- and cell-/spot- specific manner,
yielding library size adjusted data.")
    (license license:gpl3+)))

(define-public r-spaniel
  (package
    (name "r-spaniel")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Spaniel" version))
       (sha256
        (base32 "0vrhfmfgqs3am9d1c9mnl1nprpg25pgv5g54whpf11zd16vy9p0c"))))
    (properties `((upstream-name . "Spaniel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-seurat
                             r-scran
                             r-scater
                             r-s4vectors
                             r-png
                             r-magrittr
                             r-jsonlite
                             r-jpeg
                             r-igraph
                             r-ggplot2
                             r-dropletutils
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Spaniel")
    (synopsis "Spatial Transcriptomics Analysis")
    (description
     "Spaniel includes a series of tools to aid the quality control and analysis of
Spatial Transcriptomics data.  Spaniel can import data from either the original
Spatial Transcriptomics system or 10X Visium technology.  The package contains
functions to create a @code{SingleCellExperiment} Seurat object and provides a
method of loading a histologial image into R. The @code{spanielPlot} function
allows visualisation of metrics contained within the S4 object overlaid onto the
image of the tissue.")
    (license license:expat)))

(define-public r-spacetrooper
  (package
    (name "r-spacetrooper")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpaceTrooper" version))
       (sha256
        (base32 "1xi8vzy975j6m7vgh9hxc5ifl6sj5m39fnaj4l8hxxqwxac7gkl5"))))
    (properties `((upstream-name . "SpaceTrooper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperimentio
                             r-spatialexperiment
                             r-sfheaders
                             r-sf
                             r-scuttle
                             r-scater
                             r-s4vectors
                             r-robustbase
                             r-rlang
                             r-rhdf5
                             r-glmnet
                             r-ggpubr
                             r-ggplot2
                             r-e1071
                             r-dropletutils
                             r-dplyr
                             r-data-table
                             r-cowplot
                             r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/drighelli/SpaceTrooper")
    (synopsis
     "SpaceTrooper performs Quality Control analysis of Image-Based spatial")
    (description
     "@code{SpaceTrooper} performs Quality Control analysis using data driven GLM
models of Image-Based spatial data, providing exploration plots, QC metrics
computation, outlier detection.  It implements a GLM strategy for the detection
of low quality cells in imaging-based spatial data (Transcriptomics and
Proteomics).  It additionally implements several plots for the visualization of
imaging based polygons through the ggplot2 package.")
    (license license:expat)))

(define-public r-spacemarkers
  (package
    (name "r-spacemarkers")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SpaceMarkers" version))
       (sha256
        (base32 "0xq2scbk6xb87r7zl93f62rl90f9wvypn9mda2c88qkzlv76m20i"))))
    (properties `((upstream-name . "SpaceMarkers")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-spatstat-geom
                             r-spatstat-explore
                             r-rstatix
                             r-rlang
                             r-reshape2
                             r-readbitmap
                             r-rcolorbrewer
                             r-qvalue
                             r-nanoparquet
                             r-mixtools
                             r-matrixtests
                             r-matrixstats
                             r-matrix
                             r-jsonlite
                             r-hdf5r
                             r-ggplot2
                             r-effsize
                             r-dplyr
                             r-circlize
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DeshpandeLab/SpaceMarkers")
    (synopsis "Spatial Interaction Markers")
    (description
     "Spatial transcriptomic technologies have helped to resolve the connection
between gene expression and the 2D orientation of tissues relative to each
other.  However, the limited single-cell resolution makes it difficult to
highlight the most important molecular interactions in these tissues.
@code{SpaceMarkers}, R/Bioconductor software, can help to find molecular
interactions, by identifying genes associated with latent space interactions in
spatial transcriptomics.")
    (license license:expat)))

(define-public r-soybeanprobe
  (package
    (name "r-soybeanprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "soybeanprobe" version
                              'annotation))
       (sha256
        (base32 "06dpwqad7q3wyq0bsgpwkw8kx1gq5fy1s1lw632xrvgcid2fsmf8"))))
    (properties `((upstream-name . "soybeanprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/soybeanprobe")
    (synopsis "Probe sequence data for microarrays of type soybean")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Soybean\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-soybeancdf
  (package
    (name "r-soybeancdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "soybeancdf" version
                              'annotation))
       (sha256
        (base32 "1dlwxdslm827661z6f4z2hwr7wpwqfzvizhvv63p86ll7l6gs3s8"))))
    (properties `((upstream-name . "soybeancdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/soybeancdf")
    (synopsis "soybeancdf")
    (description
     "This package provides a package containing an environment representing the
Soybean.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-sosta
  (package
    (name "r-sosta")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sosta" version))
       (sha256
        (base32 "12hf6hyvip9ll2ipzhc9xs2s3y97gzwr55n6f23hhysd0n4qn9ds"))))
    (properties `((upstream-name . "sosta")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra
                             r-summarizedexperiment
                             r-spatstat-random
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatialexperiment
                             r-smoothr
                             r-singlecellexperiment
                             r-sf
                             r-s4vectors
                             r-rlang
                             r-patchwork
                             r-ggplot2
                             r-ebimage
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sgunz/sosta")
    (synopsis
     "package for the analysis of anatomical tissue structures in spatial omics data")
    (description
     "sosta (Spatial Omics STructure Analysis) is a package for analyzing spatial
omics data to explore tissue organization at the anatomical structure level.  It
reconstructs anatomically relevant structures based on molecular features or
cell types.  It further calculates a range of metrics at the structure level to
quantitatively describe tissue architecture.  The package is designed to
integrate with other packages for the analysis of spatial omics data.")
    (license (license:fsdg-compatible "GPL (>= 3) + file LICENSE"))))

(define-public r-somnibus
  (package
    (name "r-somnibus")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SOMNiBUS" version))
       (sha256
        (base32 "1ccskmmrcpl28amnh7nj2pkpa00vahrhg7c61vdgrl7mrym1kd9c"))))
    (properties `((upstream-name . "SOMNiBUS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-vgam
                             r-tidyr
                             r-s4vectors
                             r-rtracklayer
                             r-reshape2
                             r-mgcv
                             r-matrix
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-bsseq
                             r-biocmanager
                             r-annotatr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kaiqiong/SOMNiBUS")
    (synopsis "Smooth modeling of bisulfite sequencing")
    (description
     "This package aims to analyse count-based methylation data on predefined genomic
regions, such as those obtained by targeted sequencing, and thus to identify
differentially methylated regions (DMRs) that are associated with phenotypes or
traits.  The method is built a rich flexible model that allows for the effects,
on the methylation levels, of multiple covariates to vary smoothly along genomic
regions.  At the same time, this method also allows for sequencing errors and
can adjust for variability in cell type mixture.")
    (license license:expat)))

(define-public r-somaticcanceralterations
  (package
    (name "r-somaticcanceralterations")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SomaticCancerAlterations" version
                              'experiment))
       (sha256
        (base32 "1rcwa33grss5mfwskbrjcnsygmxfzw138919xz740aywpywk1arc"))))
    (properties `((upstream-name . "SomaticCancerAlterations")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-iranges r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SomaticCancerAlterations")
    (synopsis "Somatic Cancer Alterations")
    (description "Collection of somatic cancer alteration datasets.")
    (license license:gpl3)))

(define-public r-somaticadata
  (package
    (name "r-somaticadata")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SomatiCAData" version
                              'experiment))
       (sha256
        (base32 "1y42zpfxi7saq01004xhs0r1z7gh1nv79i1clbljm7nzfvhdcy0x"))))
    (properties `((upstream-name . "SomatiCAData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/SomatiCAData")
    (synopsis
     "An example cancer whole genome sequencing data for the SomatiCA package")
    (description
     "An example cancer whole genome sequencing data for the @code{SomatiCA} package.")
    (license license:artistic2.0)))

(define-public r-somascan-db
  (package
    (name "r-somascan-db")
    (version "0.99.10")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SomaScan.db" version
                              'annotation))
       (sha256
        (base32 "1qk4frv4hn3pfwbhqd92r8d59ksvgzs9399w4ca7knmij6zzl73p"))))
    (properties `((upstream-name . "SomaScan.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-dbi r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://somalogic.com")
    (synopsis "Somalogic SomaScan Annotation Data")
    (description
     "An R package providing extended biological annotations for the @code{SomaScan}
Assay, a proteomics platform developed by @code{SomaLogic} Operating Co., Inc.
The annotations in this package were assembled using data from public
repositories.  For more information about the @code{SomaScan} assay and its
data, please reference the @code{SomaLogic/SomaLogic-Data} @code{GitHub}
repository.")
    (license license:expat)))

(define-public r-snplocs-hsapiens-dbsnp149-grch38
  (package
    (name "r-snplocs-hsapiens-dbsnp149-grch38")
    (version "0.99.21")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNPlocs.Hsapiens.dbSNP149.GRCh38" version
                              'annotation))
       (sha256
        (base32 "03qjbsazd9i804z5lg3ywkm2gj5md8qjflz72yqb7xvwjnn3l3x2"))))
    (properties `((upstream-name . "SNPlocs.Hsapiens.dbSNP149.GRCh38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biocgenerics))
    (home-page
     "https://bioconductor.org/packages/SNPlocs.Hsapiens.dbSNP149.GRCh38")
    (synopsis "SNP locations for Homo sapiens (dbSNP Build 149)")
    (description
     "SNP locations and alleles for Homo sapiens extracted from NCBI @code{dbSNP}
Build 149.  The source data files used for this package were created by NCBI
between November 8-12, 2016, and contain SNPs mapped to reference genome
GRCh38.p7 (a patched version of GRCh38 that doesn't alter chromosomes 1-22, X,
Y, MT).  Note that these SNPs can be \"injected\" in BSgenome.Hsapiens.NCBI.GRCh38
or in BSgenome.Hsapiens.UCSC.hg38.")
    (license license:artistic2.0)))

(define-public r-snplocs-hsapiens-dbsnp144-grch38
  (package
    (name "r-snplocs-hsapiens-dbsnp144-grch38")
    (version "0.99.20")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNPlocs.Hsapiens.dbSNP144.GRCh38" version
                              'annotation))
       (sha256
        (base32 "0yxmsnxncr7w30r0d7bg5i96pclm2vf40p9jdqa02rc67a6sximn"))))
    (properties `((upstream-name . "SNPlocs.Hsapiens.dbSNP144.GRCh38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biocgenerics))
    (home-page
     "https://bioconductor.org/packages/SNPlocs.Hsapiens.dbSNP144.GRCh38")
    (synopsis "SNP locations for Homo sapiens (dbSNP Build 144)")
    (description
     "SNP locations and alleles for Homo sapiens extracted from NCBI @code{dbSNP}
Build 144.  The source data files used for this package were created by NCBI on
May 30, 2015, and contain SNPs mapped to reference genome GRCh38.p2 (a patched
version of GRCh38 that doesn't alter chromosomes 1-22, X, Y, MT).  Note that
these SNPs can be \"injected\" in BSgenome.Hsapiens.NCBI.GRCh38 or in
BSgenome.Hsapiens.UCSC.hg38.")
    (license license:artistic2.0)))

(define-public r-snplocs-hsapiens-dbsnp144-grch37
  (package
    (name "r-snplocs-hsapiens-dbsnp144-grch37")
    (version "0.99.20")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNPlocs.Hsapiens.dbSNP144.GRCh37" version
                              'annotation))
       (sha256
        (base32 "1z8kx43ki1jvj7ms7pcybakcdimfwr6zpjvspkjmma97bdz093iz"))))
    (properties `((upstream-name . "SNPlocs.Hsapiens.dbSNP144.GRCh37")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biocgenerics))
    (home-page
     "https://bioconductor.org/packages/SNPlocs.Hsapiens.dbSNP144.GRCh37")
    (synopsis "SNP locations for Homo sapiens (dbSNP Build 144)")
    (description
     "SNP locations and alleles for Homo sapiens extracted from NCBI @code{dbSNP}
Build 144.  The source data files used for this package were created by NCBI on
May 29-30, 2015, and contain SNPs mapped to reference genome GRCh37.p13.
WARNING: Note that the GRCh37.p13 genome is a patched version of GRCh37.
However the patch doesn't alter chromosomes 1-22, X, Y, MT. GRCh37 itself is the
same as the hg19 genome from UCSC *except* for the mitochondrion chromosome.
Therefore, the SNPs in this package can be \"injected\" in
BSgenome.Hsapiens.UCSC.hg19 and they will land at the correct position but this
injection will exclude @code{chrM} (i.e.  nothing will be injected in that
sequence).")
    (license license:artistic2.0)))

(define-public r-snphooddata
  (package
    (name "r-snphooddata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNPhoodData" version
                              'experiment))
       (sha256
        (base32 "17697pw5yfj91kybbw21fxn2ay73m1xchspsndj6zdldiq3x3bjr"))))
    (properties `((upstream-name . "SNPhoodData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SNPhoodData")
    (synopsis
     "Additional and more complex example data for the SNPhood package")
    (description
     "This companion package for SNPhood provides some example datasets of a larger
size than allowed for the SNPhood package.  They include full and real-world
examples for performing analyses with the SNPhood package.")
    (license license:lgpl3+)))

(define-public r-snphood
  (package
    (name "r-snphood")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNPhood" version))
       (sha256
        (base32 "1fy444c7qp1d47321jc4q5mzki53angwrxp2j0b9bswpi7aw79vj"))))
    (properties `((upstream-name . "SNPhood")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rsamtools
                             r-reshape2
                             r-rcolorbrewer
                             r-lattice
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-deseq2
                             r-data-table
                             r-cluster
                             r-checkmate
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SNPhood")
    (synopsis
     "SNPhood: Investigate, quantify and visualise the epigenomic neighbourhood of SNPs using NGS data")
    (description
     "To date, thousands of single nucleotide polymorphisms (SNPs) have been found to
be associated with complex traits and diseases.  However, the vast majority of
these disease-associated SNPs lie in the non-coding part of the genome, and are
likely to affect regulatory elements, such as enhancers and promoters, rather
than function of a protein.  Thus, to understand the molecular mechanisms
underlying genetic traits and diseases, it becomes increasingly important to
study the effect of a SNP on nearby molecular traits such as chromatin
environment or transcription factor (TF) binding.  Towards this aim, we
developed SNPhood, a user-friendly *Bioconductor* R package to investigate and
visualize the local neighborhood of a set of SNPs of interest for NGS data such
as chromatin marks or transcription factor binding sites from @code{ChIP-Seq} or
RNA- Seq experiments.  SNPhood comprises a set of easy-to-use functions to
extract, normalize and summarize reads for a genomic region, perform various
data quality checks, normalize read counts using additional input files, and to
cluster and visualize the regions according to the binding pattern.  The regions
around each SNP can be binned in a user-defined fashion to allow for analysis of
very broad patterns as well as a detailed investigation of specific binding
shapes.  Furthermore, SNPhood supports the integration with genotype information
to investigate and visualize genotype-specific binding patterns.  Finally,
SNPhood can be employed for determining, investigating, and visualizing
allele-specific binding patterns around the SNPs of interest.")
    (license license:lgpl3+)))

(define-public r-snpediar
  (package
    (name "r-snpediar")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNPediaR" version))
       (sha256
        (base32 "1kis54hb6nm2hbyrpxf5cr02a1iq2bdgnxx7zak389mrsy54gv1n"))))
    (properties `((upstream-name . "SNPediaR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcurl r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/genometra/SNPediaR")
    (synopsis "Query data from SNPedia")
    (description
     "SN@code{PediaR} provides some tools for downloading and parsing data from the
SNPedia web site <http://www.snpedia.com>.  The implemented functions allow
users to import the wiki text available in SNPedia pages and to extract the most
relevant information out of them.  If some information in the downloaded pages
is not automatically processed by the library functions, users can easily
implement their own parsers to access it in an efficient way.")
    (license license:gpl2)))

(define-public r-snm
  (package
    (name "r-snm")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "snm" version))
       (sha256
        (base32 "06lx70dw0iyqkvq1ps5hign6nldc88krxgx66xkvr7sk7v7fy3n9"))))
    (properties `((upstream-name . "snm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lme4 r-corpcor))
    (home-page "https://bioconductor.org/packages/snm")
    (synopsis "Supervised Normalization of Microarrays")
    (description
     "SNM is a modeling strategy especially designed for normalizing high-throughput
genomic data.  The underlying premise of our approach is that your data is a
function of what we refer to as study-specific variables.  These variables are
either biological variables that represent the target of the statistical
analysis, or adjustment variables that represent factors arising from the
experimental or biological setting the data is drawn from.  The SNM approach
aims to simultaneously model all study-specific variables in order to more
accurately characterize the biological or clinical variables of interest.")
    (license license:lgpl2.0+)))

(define-public r-snifter
  (package
    (name "r-snifter")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "snifter" version))
       (sha256
        (base32 "04ln62j4pa8fb3b46vbnrx729j05agak7n6zgalbdbwwyjs6r6sn"))))
    (properties `((upstream-name . "snifter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reticulate r-irlba r-basilisk r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/snifter")
    (synopsis "R wrapper for the python openTSNE library")
    (description
     "This package provides an R wrapper for the implementation of FI-@code{tSNE} from
the python package @code{openTNSE}.  See Poličar et al. (2019)
<doi:10.1101/731877> and the algorithm described by Linderman et al. (2018)
<doi:10.1038/s41592-018-0308-4>.")
    (license license:gpl3)))

(define-public r-snapcount
  (package
    (name "r-snapcount")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "snapcount" version))
       (sha256
        (base32 "1v47chrbwghyxjmwp5jbzgjkgvrbj3ccy3kzwrqx1cv1sf0n5xgj"))))
    (properties `((upstream-name . "snapcount")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-rlang
                             r-r6
                             r-purrr
                             r-matrix
                             r-magrittr
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-genomicranges
                             r-data-table
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/langmead-lab/snapcount")
    (synopsis
     "R/Bioconductor Package for interfacing with Snaptron for rapid querying of expression counts")
    (description
     "snapcount is a client interface to the Snaptron webservices which support
querying by gene name or genomic region.  Results include raw expression counts
derived from alignment of RNA-seq samples and/or various summarized measures of
expression across one or more regions/genes per-sample (e.g. percent spliced
in).")
    (license license:expat)))

(define-public r-snageedata
  (package
    (name "r-snageedata")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNAGEEdata" version
                              'experiment))
       (sha256
        (base32 "0yca7a18l73jbd52b1pj2xkvfq586xxvcannsdfi45vqss6ysrgc"))))
    (properties `((upstream-name . "SNAGEEdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://fleming.ulb.ac.be/SNAGEE")
    (synopsis "SNAGEE data")
    (description "SNAGEE data - gene list and correlation matrix.")
    (license license:artistic2.0)))

(define-public r-snagee
  (package
    (name "r-snagee")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNAGEE" version))
       (sha256
        (base32 "1zpk0nklf83vjr1wganx0qzkz0ypkd485zffgpr726zcz14bixjl"))))
    (properties `((upstream-name . "SNAGEE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snageedata))
    (home-page "http://bioconductor.org/")
    (synopsis "Signal-to-Noise applied to Gene Expression Experiments")
    (description
     "Signal-to-Noise applied to Gene Expression Experiments.  Signal-to-noise ratios
can be used as a proxy for quality of gene expression studies and samples.  The
SNRs can be calculated on any gene expression data set as long as gene IDs are
available, no access to the raw data files is necessary.  This allows to flag
problematic studies and samples in any public data set.")
    (license license:artistic2.0)))

(define-public r-snadata
  (package
    (name "r-snadata")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SNAData" version
                              'experiment))
       (sha256
        (base32 "184fin4nmsx5dahygzxa1g8k1q91x5c20whxwrac40vm5i4jynlp"))))
    (properties `((upstream-name . "SNAData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-graph))
    (home-page "https://bioconductor.org/packages/SNAData")
    (synopsis "Social Networks Analysis Data Examples")
    (description
     "Data from Wasserman & Faust (1999) \"Social Network Analysis\".")
    (license license:lgpl2.0+)))

(define-public r-smoppix
  (package
    (name "r-smoppix")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "smoppix" version))
       (sha256
        (base32 "0w4hvvarmiwrpgh0gcvxnpkq4l5wpjjldnhyyzxiabqw009wl70r"))))
    (properties `((upstream-name . "smoppix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatstat-random
                             r-spatstat-model
                             r-spatstat-geom
                             r-spatialexperiment
                             r-scam
                             r-rfast
                             r-rdpack
                             r-rcpp
                             r-openxlsx
                             r-lmertest
                             r-lme4
                             r-ggplot2
                             r-extradistr
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sthawinke/smoppix")
    (synopsis
     "Analyze Single Molecule Spatial Omics Data Using the Probabilistic Index")
    (description
     "Test for univariate and bivariate spatial patterns in spatial omics data with
single-molecule resolution.  The tests implemented allow for analysis of nested
designs and are automatically calibrated to different biological specimens.
Tests for aggregation, colocalization, gradients and vicinity to cell edge or
centroid are provided.")
    (license license:gpl2)))

(define-public r-smoothclust
  (package
    (name "r-smoothclust")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "smoothclust" version))
       (sha256
        (base32 "1mrz1z0ah33jksrhiyww9xwlk50sgb57hlqhbffi455lkjs4vj2i"))))
    (properties `((upstream-name . "smoothclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-spatialexperiment
                             r-matrix r-biocneighbors))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lmweber/smoothclust")
    (synopsis "smoothclust")
    (description
     "Method for identification of spatial domains and spatially-aware clustering in
spatial transcriptomics data.  The method generates spatial domains with smooth
boundaries by smoothing gene expression profiles across neighboring spatial
locations, followed by unsupervised clustering.  Spatial domains consisting of
consistent mixtures of cell types may then be further investigated by applying
cell type compositional analyses or differential analyses.")
    (license license:expat)))

(define-public r-smokingmouse
  (package
    (name "r-smokingmouse")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "smokingMouse" version
                              'experiment))
       (sha256
        (base32 "1zvkavy9my7h29zx3izah6vrwjixyrmddmjqfw8d269qh6qyx71i"))))
    (properties `((upstream-name . "smokingMouse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LieberInstitute/smokingMouse")
    (synopsis "Provides access to smokingMouse project data")
    (description
     "This is an @code{ExperimentHub} package that provides access to the data
generated and analyzed in the
[smoking-nicotine-mouse](https://github.com/@code{LieberInstitute/smoking-nicotine-mouse}/)
LIBD project.  The datasets contain the expression data of mouse genes,
transcripts, exons, and exon-exon junctions across 208 samples from pup and
adult mouse brain, and adult blood, that were exposed to nicotine, cigarette
smoke, or controls.  They also contain relevant metadata of these samples and
gene expression features, such QC metrics, if they were used after filtering
steps and also if the features were differently expressed in the different
experiments.")
    (license license:artistic2.0)))

(define-public r-smite
  (package
    (name "r-smite")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SMITE" version))
       (sha256
        (base32 "01x1wla1pqb361c75fjm4c5k7aajlw3l82ln5bbv9b8zmyjj54sv"))))
    (properties `((upstream-name . "SMITE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-s4vectors
                             r-reactome-db
                             r-plyr
                             r-org-hs-eg-db
                             r-keggrest
                             r-iranges
                             r-igraph
                             r-hmisc
                             r-goseq
                             r-ggplot2
                             r-genomicranges
                             r-genelendatabase
                             r-bionet
                             r-biobase
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GreallyLab/SMITE")
    (synopsis
     "Significance-based Modules Integrating the Transcriptome and Epigenome")
    (description
     "This package builds on the Epimods framework which facilitates finding weighted
subnetworks (\"modules\") on Illumina Infinium 27k arrays using the
@code{SpinGlass} algorithm, as implemented in the @code{iGraph} package.  We
have created a class of gene centric annotations associated with p-values and
effect sizes and scores from any researchers prior statistical results to find
functional modules.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-smartphos
  (package
    (name "r-smartphos")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SmartPhos" version))
       (sha256
        (base32 "15ixzx0ps69wnyz51d492lyxca5rklrp82l8g0wf7k72h3jah8kj"))))
    (properties `((upstream-name . "SmartPhos")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-vsn
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-shinywidgets
                             r-shinythemes
                             r-shinyjs
                             r-shinybs
                             r-shiny
                             r-rlang
                             r-proda
                             r-plotly
                             r-piano
                             r-pheatmap
                             r-multiassayexperiment
                             r-mscoreutils
                             r-missforest
                             r-matrixstats
                             r-magrittr
                             r-limma
                             r-imputelcmd
                             r-ggplot2
                             r-ggbeeswarm
                             r-factoextra
                             r-e1071
                             r-dt
                             r-dplyr
                             r-dorng
                             r-doparallel
                             r-decoupler
                             r-data-table
                             r-cowplot
                             r-biocparallel
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://lu-group-ukhd.github.io/SmartPhos/")
    (synopsis
     "phosphoproteomics data analysis package with an interactive ShinyApp")
    (description
     "To facilitate and streamline phosphoproteomics data analysis, we developed
@code{SmartPhos}, an R package for the pre-processing, quality control, and
exploratory analysis of phosphoproteomics data generated by @code{MaxQuant} and
Spectronaut.  The package can be used either through the R command line or
through an interactive @code{ShinyApp} called @code{SmartPhos} Explorer.  The
package contains methods such as normalization and normalization correction,
transformation, imputation, batch effect correction, PCA, heatmap, differential
expression, time-series clustering, gene set enrichment analysis, and kinase
activity inference.")
    (license license:gpl3)))

(define-public r-smartid
  (package
    (name "r-smartid")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "smartid" version))
       (sha256
        (base32 "0iqnk5hpin79l43gzr6s29y7y79cd0w88lggrxsb2612nygpadd5"))))
    (properties `((upstream-name . "smartid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-sparsematrixstats
                             r-mixtools
                             r-mclust
                             r-matrix
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://davislaboratory.github.io/smartid")
    (synopsis "Scoring and Marker Selection Method Based on Modified TF-IDF")
    (description
     "This package enables automated selection of group specific signature, especially
for rare population.  The package is developed for generating specifc lists of
signature genes based on Term Frequency-Inverse Document Frequency (TF-IDF)
modified methods.  It can also be used as a new gene-set scoring method or data
transformation method.  Multiple visualization functions are implemented in this
package.")
    (license license:expat)))

(define-public r-smad
  (package
    (name "r-smad")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SMAD" version))
       (sha256
        (base32 "0hh4lxrylmrn50211n3ggc2n4qgbcwh1qxrqbj7xwr2ficxym28b"))))
    (properties `((upstream-name . "SMAD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-rcppalgos r-rcpp r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SMAD")
    (synopsis "Statistical Modelling of AP-MS Data (SMAD)")
    (description
     "Assigning probability scores to protein interactions captured in affinity
purification mass spectrometry (AP-MS) expriments to infer protein-protein
interactions.  The output would facilitate non-specific background removal as
contaminants are commonly found in AP-MS data.")
    (license license:expat)))

(define-public r-slqpcr
  (package
    (name "r-slqpcr")
    (version "1.76.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SLqPCR" version))
       (sha256
        (base32 "0861cnnq1yybmq7gac2n2q6gfap3sfadacpdxzc73iqx54a6p2gf"))))
    (properties `((upstream-name . "SLqPCR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/SLqPCR")
    (synopsis
     "Functions for analysis of real-time quantitative PCR data at SIRS-Lab GmbH")
    (description
     "This package provides functions for analysis of real-time quantitative PCR data
at SIRS-Lab @code{GmbH}.")
    (license license:gpl2+)))

(define-public r-slalom
  (package
    (name "r-slalom")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "slalom" version))
       (sha256
        (base32 "04l0pw0nm1s6j5s8jh577nzhsm38y7a4rvalplzcy8g9ppj64p5l"))))
    (properties `((upstream-name . "slalom")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-rsvd
                             r-rcpparmadillo
                             r-rcpp
                             r-gseabase
                             r-ggplot2
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/slalom")
    (synopsis "Factorial Latent Variable Modeling of Single-Cell RNA-Seq Data")
    (description
     "slalom is a scalable modelling framework for single-cell RNA-seq data that uses
gene set annotations to dissect single-cell transcriptome heterogeneity, thereby
allowing to identify biological drivers of cell-to-cell variability and model
confounding factors.  The method uses Bayesian factor analysis with a latent
variable model to identify active pathways (selected by the user, e.g. KEGG
pathways) that explain variation in a single-cell RNA-seq dataset.  This an
R/C++ implementation of the f-@code{scLVM} Python package.  See the publication
describing the method at https://doi.org/10.1186/s13059-017-1334-8.")
    (license license:gpl2)))

(define-public r-skewr
  (package
    (name "r-skewr")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "skewr" version))
       (sha256
        (base32 "1fp9r69nnr6zn2awbqx9gyrlyg1i4v91yg1087pd49i33zs9nsdv"))))
    (properties `((upstream-name . "skewr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-watermelon
                             r-s4vectors
                             r-rcolorbrewer
                             r-mixsmsn
                             r-minfi
                             r-methylumi
                             r-illuminahumanmethylation450kmanifest))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/skewr")
    (synopsis
     "Visualize Intensities Produced by Illumina's Human Methylation 450k BeadChip")
    (description
     "The skewr package is a tool for visualizing the output of the Illumina Human
Methylation 450k @code{BeadChip} to aid in quality control.  It creates a panel
of nine plots.  Six of the plots represent the density of either the methylated
intensity or the unmethylated intensity given by one of three subsets of the
485,577 total probes.  These subsets include Type I-red, Type I-green, and Type
II.The remaining three distributions give the density of the Beta-values for
these same three subsets.  Each of the nine plots optionally displays the
distributions of the \"rs\" SNP probes and the probes associated with imprinted
genes as series of tick marks located above the x-axis.")
    (license license:gpl2)))

(define-public r-sketchr
  (package
    (name "r-sketchr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sketchR" version))
       (sha256
        (base32 "1hpnpspq9hiyx9yphcbz0z7ziq5fcj3nbci5zp3dnpiszpm7ahan"))))
    (properties `((upstream-name . "sketchR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-rlang
                             r-reticulate
                             r-ggplot2
                             r-dplyr
                             r-delayedarray
                             r-biobase
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fmicompbio/sketchR")
    (synopsis "An R interface for python subsampling/sketching algorithms")
    (description
     "This package provides an R interface for various subsampling algorithms
implemented in python packages.  Currently, interfaces to the geosketch and
@code{scSampler} python packages are implemented.  In addition it also provides
diagnostic plots to evaluate the subsampling.")
    (license license:expat)))

(define-public r-sizepower
  (package
    (name "r-sizepower")
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sizepower" version))
       (sha256
        (base32 "054qgchvy9arxvdl3bwqiasn9x9p5cf9q79h5y95m06v82yp0iva"))))
    (properties `((upstream-name . "sizepower")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/sizepower")
    (synopsis "Sample Size and Power Calculation in Micorarray Studies")
    (description
     "This package has been prepared to assist users in computing either a sample size
or power value for a microarray experimental study.  The user is referred to the
cited references for technical background on the methodology underpinning these
calculations.  This package provides support for five types of sample size and
power calculations.  These five types can be adapted in various ways to
encompass many of the standard designs encountered in practice.")
    (license license:lgpl2.0+)))

(define-public r-sitepath
  (package
    (name "r-sitepath")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sitePath" version))
       (sha256
        (base32 "1bldgb3jxx5jbk9fl0mc7hhdxscs73rbclchjj6695jl9rf267g4"))))
    (properties `((upstream-name . "sitePath")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidytree
                             r-seqinr
                             r-rcpp
                             r-rcolorbrewer
                             r-gridextra
                             r-ggtree
                             r-ggrepel
                             r-ggplot2
                             r-aplot
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://wuaipinglab.github.io/sitePath/")
    (synopsis "Phylogeny-based sequence clustering with site polymorphism")
    (description
     "Using site polymorphism is one of the ways to cluster DNA/protein sequences but
it is possible for the sequences with the same polymorphism on a single site to
be genetically distant.  This package is aimed at clustering sequences using
site polymorphism and their corresponding phylogenetic trees.  By considering
their location on the tree, only the structurally adjacent sequences will be
clustered.  However, the adjacent sequences may not necessarily have the same
polymorphism.  So a branch-and-bound like algorithm is used to minimize the
entropy representing the purity of site polymorphism of each cluster.")
    (license license:expat)))

(define-public r-site2target
  (package
    (name "r-site2target")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Site2Target" version))
       (sha256
        (base32 "06nyf7vg22nhw2qk65ywl2za1850kjh1w7d9s55j7zk91fgfy93d"))))
    (properties `((upstream-name . "Site2Target")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-mass
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Site2Target")
    (synopsis "An R package to associate peaks and target genes")
    (description
     "Statistics implemented for both peak-wise and gene-wise associations.  In
peak-wise associations, the p-value of the target genes of a given set of peaks
are calculated.  Negative binomial or Poisson distributions can be used for
modeling the unweighted peaks targets and log-nromal can be used to model the
weighted peaks.  In gene-wise associations a table consisting of a set of genes,
mapped to specific peaks, is generated using the given rules.")
    (license license:gpl2)))

(define-public r-sitadela
  (package
    (name "r-sitadela")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sitadela" version))
       (sha256
        (base32 "118hxyj6m2j5c3vz8c00nf2lh7hyz39vvmm0zpnsmnp84g5dlwmz"))))
    (properties `((upstream-name . "sitadela")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-rsqlite
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-biostrings
                             r-biomart
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pmoulos/sitadela")
    (synopsis
     "An R package for the easy provision of simple but complete tab-delimited genomic annotation from a variety of sources and organisms")
    (description
     "This package provides an interface to build a unified database of genomic
annotations and their coordinates (gene, transcript and exon levels).  It is
aimed to be used when simple tab-delimited annotations (or simple GRanges
objects) are required instead of the more complex annotation Bioconductor
packages.  Also useful when combinatorial annotation elements are reuired, such
as @code{RefSeq} coordinates with Ensembl biotypes.  Finally, it can download,
construct and handle annotations with versioned genes and transcripts (where
available, e.g. @code{RefSeq} and latest Ensembl).  This is particularly useful
in precision medicine applications where the latter must be reported.")
    (license license:artistic2.0)))

(define-public r-sipsic
  (package
    (name "r-sipsic")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SiPSiC" version))
       (sha256
        (base32 "1mm1a65vb51fzfziyia8dijlrinhlf8p1mvk0cvjh8pvdd6rjcm3"))))
    (properties `((upstream-name . "SiPSiC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-singlecellexperiment r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://www.genome.org/cgi/doi/10.1101/gr.278431.123")
    (synopsis "Calculate Pathway Scores for Each Cell in scRNA-Seq Data")
    (description
     "Infer biological pathway activity of cells from single-cell RNA-sequencing data
by calculating a pathway score for each cell (pathway genes are specified by the
user).  It is recommended to have the data in Transcripts-Per-Million (TPM) or
Counts-Per-Million (CPM) units for best results.  Scores may change when adding
cells to or removing cells off the data. @code{SiPSiC} stands for Single Pathway
analysis in Single Cells.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-singlemoleculefootprintingdata
  (package
    (name "r-singlemoleculefootprintingdata")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SingleMoleculeFootprintingData" version
                              'experiment))
       (sha256
        (base32 "1lhjh8l009b3lzxvgi948s9aq73zp29z2nfal76n32hl9yhhb6cr"))))
    (properties `((upstream-name . "SingleMoleculeFootprintingData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page
     "https://bioconductor.org/packages/SingleMoleculeFootprintingData")
    (synopsis "Data supporting the SingleMoleculeFootprinting pkg")
    (description
     "This Data package contains data objcets relevanat for the
@code{SingleMoleculeFootprinting} package.  More specifically, it contains one
example of aligned sequencing data (.bam & .bai) necessary to run the
@code{SingleMoleculeFootprinting} vignette.  Additionally, we provide data that
are essential for some functions to work correctly such as @code{BaitCapture()}
and @code{SampleCorrelation()}.")
    (license license:gpl3)))

(define-public r-singlemoleculefootprinting
  (package
    (name "r-singlemoleculefootprinting")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SingleMoleculeFootprinting" version))
       (sha256
        (base32 "1gxk7msqac2qq0m9p4hr9gvxvz8gilz1cn3g4vca49mslxcjlhpy"))))
    (properties `((upstream-name . "SingleMoleculeFootprinting")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-seqinfo
                             r-s4vectors
                             r-rlang
                             r-rcolorbrewer
                             r-quasr
                             r-qs
                             r-plyranges
                             r-patchwork
                             r-paralleldist
                             r-misctools
                             r-matrix
                             r-magrittr
                             r-iranges
                             r-ggrepel
                             r-ggpointdensity
                             r-ggplot2
                             r-genomicranges
                             r-dplyr
                             r-cluster
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page
     "https://www.bioconductor.org/packages/release/bioc/html/SingleMoleculeFootprinting.html")
    (synopsis "Analysis tools for Single Molecule Footprinting (SMF) data")
    (description
     "@code{SingleMoleculeFootprinting} provides functions to analyze Single Molecule
Footprinting (SMF) data.  Following the workflow exemplified in its vignette,
the user will be able to perform basic data analysis of SMF data with minimal
coding effort.  Starting from an aligned bam file, we show how to perform
quality controls over sequencing libraries, extract methylation information at
the single molecule level accounting for the two possible kind of SMF
experiments (single enzyme or double enzyme), classify single molecules based on
their patterns of molecular occupancy, plot SMF information at a given genomic
location.")
    (license license:gpl3)))

(define-public r-singlecelltk
  (package
    (name "r-singlecelltk")
    (version "2.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "singleCellTK" version))
       (sha256
        (base32 "17my62dn584mvzzsnzv1m4h95lj22bsp280pypxab6f2g7achs5a"))))
    (properties `((upstream-name . "singleCellTK")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-zinbwave
                             r-zellkonverter
                             r-yaml
                             r-withr
                             r-vam
                             r-tximport
                             r-tscan
                             r-trajectoryutils
                             r-tidyr
                             r-tibble
                             r-tenxpbmcdata
                             r-sva
                             r-summarizedexperiment
                             r-stringr
                             r-soupx
                             r-singler
                             r-singlecellexperiment
                             r-shinyjs
                             r-shinycssloaders
                             r-shinyalert
                             r-shiny
                             r-seurat
                             r-scuttle
                             r-scrnaseq
                             r-scran
                             r-scmerge
                             r-scds
                             r-scdblfinder
                             r-scater
                             r-s4vectors
                             r-rtsne
                             r-rocr
                             r-rmarkdown
                             r-rlang
                             r-reticulate
                             r-reshape2
                             r-r-utils
                             r-plyr
                             r-plotly
                             r-multtest
                             r-msigdbr
                             r-metap
                             r-matrixstats
                             r-matrix
                             r-mast
                             r-magrittr
                             r-limma
                             r-lifecycle
                             r-kernsmooth
                             r-igraph
                             r-gsvadata
                             r-gsva
                             r-gseabase
                             r-gridextra
                             r-ggtree
                             r-ggrepel
                             r-ggplotify
                             r-ggplot2
                             r-fields
                             r-experimenthub
                             r-ensembldb
                             r-enrichr
                             r-eds
                             r-dt
                             r-dropletutils
                             r-dplyr
                             r-deseq2
                             r-delayedmatrixstats
                             r-delayedarray
                             r-data-table
                             r-cowplot
                             r-complexheatmap
                             r-colourpicker
                             r-colorspace
                             r-cluster
                             r-circlize
                             r-celldex
                             r-celda
                             r-biocparallel
                             r-biobase
                             r-batchelor
                             r-ape
                             r-annotationhub
                             r-anndata))
    (native-inputs (list r-knitr))
    (home-page "https://www.camplab.net/sctk/")
    (synopsis
     "Comprehensive and Interactive Analysis of Single Cell RNA-Seq Data")
    (description
     "The Single Cell Toolkit (SCTK) in the @code{singleCellTK} package provides an
interface to popular tools for importing, quality control, analysis, and
visualization of single cell RNA-seq data.  SCTK allows users to seamlessly
integrate tools from various packages at different stages of the analysis
workflow.  A general \"a la carte\" workflow gives users the ability access to
multiple methods for data importing, calculation of general QC metrics, doublet
detection, ambient RNA estimation and removal, filtering, normalization, batch
correction or integration, dimensionality reduction, 2-D embedding, clustering,
marker detection, differential expression, cell type labeling, pathway analysis,
and data exporting.  Curated workflows can be used to run Seurat and Celda.
Streamlined quality control can be performed on the command line using the
SCTK-QC pipeline.  Users can analyze their data using commands in the R console
or by using an interactive Shiny Graphical User Interface (GUI).  Specific
analyses or entire workflows can be summarized and shared with comprehensive
HTML reports generated by Rmarkdown.  Additional documentation and vignettes can
be found at camplab.net/sctk.")
    (license license:expat)))

(define-public r-singlecellsignalr
  (package
    (name "r-singlecellsignalr")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SingleCellSignalR" version))
       (sha256
        (base32 "1wsggx6y36vrkj8s4rfbwill3pfdghnyr52f8rrs2by5ar1knrlr"))))
    (properties `((upstream-name . "SingleCellSignalR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrixtests r-matrixstats r-ggplot2 r-foreach
                             r-bulksignalr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jcolinge/SingleCellSignalR")
    (synopsis "Cell Signalling Using Single-Cell RNA-seq or Proteomics Data")
    (description
     "Inference of ligand-receptor (L-R) interactions from single-cell expression
(transcriptomics/proteomics) data. @code{SingleCellSignalR} v2 inferences rely
on the statistical model we introduced in the @code{BulkSignalR} package as well
as the original @code{SingleCellSignalR} LR-score (both are available).
@code{SingleCellSignalR} v2 can be regarded as a wrapper to @code{BulkSignalR}
fundamental classes.  This also enables v2 users to work with any species,
whereas only Mus musculus & Homo sapiens were available before in
@code{SingleCellSignalR} v1.")
    (license (list license:cecill
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-singlecellmultimodal
  (package
    (name "r-singlecellmultimodal")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SingleCellMultiModal" version
                              'experiment))
       (sha256
        (base32 "0asc4cskfalp1dmcv8h5zd9ml7jbcrmsbiz8xchziq4ypbhfsmq8"))))
    (properties `((upstream-name . "SingleCellMultiModal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-multiassayexperiment
                             r-matrix
                             r-hdf5array
                             r-experimenthub
                             r-biocfilecache
                             r-biocbaseutils
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SingleCellMultiModal")
    (synopsis "Integrating Multi-modal Single Cell Experiment datasets")
    (description
     "@code{SingleCellMultiModal} is an @code{ExperimentHub} package that serves
multiple datasets obtained from GEO and other sources and represents them as
@code{MultiAssayExperiment} objects.  We provide several multi-modal datasets
including @code{scNMT}, 10X Multiome, @code{seqFISH}, CITEseq, S@code{CoPE2},
and others.  The scope of the package is is to provide data for benchmarking and
analysis.  To cite, use the citation function and see
<https://doi.org/10.1371/journal.pcbi.1011324>.")
    (license license:artistic2.0)))

(define-public r-singlecellalleleexperiment
  (package
    (name "r-singlecellalleleexperiment")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SingleCellAlleleExperiment" version))
       (sha256
        (base32 "1il9xdp8vv0sa9cdssv8n34knpiyqbixcmxnf048c576z9pyvzjb"))))
    (properties `((upstream-name . "SingleCellAlleleExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-matrix
                             r-delayedarray
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AGImkeller/SingleCellAlleleExperiment")
    (synopsis
     "S4 Class for Single Cell Data with Allele and Functional Levels for Immune Genes")
    (description
     "Defines a S4 class that is based on @code{SingleCellExperiment}.  In addition to
the usual gene layer the object can also store data for immune genes such as
HLAs, Igs and KIRs at allele and functional level.  The package is part of a
workflow named single-cell @code{ImmunoGenomic} Diversity (@code{scIGD}), that
firstly incorporates allele-aware quantification data for immune genes.  This
new data can then be used with the here implemented data structure and
functionalities for further data handling and data analysis.")
    (license license:expat)))

(define-public r-single-mtec-transcriptomes
  (package
    (name "r-single-mtec-transcriptomes")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Single.mTEC.Transcriptomes" version
                              'experiment))
       (sha256
        (base32 "1hjyad7ink2sbb7maf5gp3fwhf83cfk9a20acpf05xlb570iyf07"))))
    (properties `((upstream-name . "Single.mTEC.Transcriptomes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Single.mTEC.Transcriptomes")
    (synopsis
     "Single Cell Transcriptome Data and Analysis of Mouse mTEC cells")
    (description
     "This data package contains the code used to analyse the single-cell RNA-seq and
the bulk ATAC-seq data from the manuscript titled: Single-cell transcriptome
analysis reveals coordinated ectopic-gene expression patterns in medullary
thymic epithelial cells.  This paper was published in Nature Immunology
16,933-941(2015).  The data objects provided in this package has been
pre-processed: the raw data files can be downloaded from @code{ArrayExpress}
under the accession identifiers E-MTAB-3346 and E-MTAB-3624.  The vignette of
this data package provides a documented and reproducible workflow that includes
the code that was used to generate each statistic and figure from the
manuscript.")
    (license license:lgpl2.0+)))

(define-public r-sincell
  (package
    (name "r-sincell")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sincell" version))
       (sha256
        (base32 "1bnlw74nsi4as0x7azcjz52p9f3dw9zlhmc6iz37lvjkw75yany9"))))
    (properties `((upstream-name . "sincell")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tsp
                             r-statmod
                             r-scatterplot3d
                             r-rtsne
                             r-reshape2
                             r-rcpp
                             r-proxy
                             r-mass
                             r-igraph
                             r-ggplot2
                             r-fields
                             r-fastica
                             r-entropy
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "http://bioconductor.org/")
    (synopsis
     "R package for the statistical assessment of cell state hierarchies from single-cell RNA-seq data")
    (description
     "Cell differentiation processes are achieved through a continuum of hierarchical
intermediate cell-states that might be captured by single-cell RNA seq.
Existing computational approaches for the assessment of cell-state hierarchies
from single-cell data might be formalized under a general workflow composed of
i) a metric to assess cell-to-cell similarities (combined or not with a
dimensionality reduction step), and ii) a graph-building algorithm (optionally
making use of a cells-clustering step).  Sincell R package implements a
methodological toolbox allowing flexible workflows under such framework.
Furthermore, Sincell contributes new algorithms to provide cell-state
hierarchies with statistical support while accounting for stochastic factors in
single-cell RNA seq.  Graphical representations and functional association tests
are provided to interpret hierarchies.")
    (license license:gpl2+)))

(define-public r-simpleseg
  (package
    (name "r-simpleseg")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "simpleSeg" version))
       (sha256
        (base32 "1g0x3qc5ys0clwqw7vny7ld42n894xwpabxxnkyln610z30ifb6q"))))
    (properties `((upstream-name . "simpleSeg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra
                             r-summarizedexperiment
                             r-spatstat-geom
                             r-s4vectors
                             r-ebimage
                             r-cytomapper
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/simpleSeg")
    (synopsis "package to perform simple cell segmentation")
    (description
     "Image segmentation is the process of identifying the borders of individual
objects (in this case cells) within an image.  This allows for the features of
cells such as marker expression and morphology to be extracted, stored and
analysed. @code{simpleSeg} provides functionality for user friendly, watershed
based segmentation on multiplexed cellular images in R based on the intensity of
user specified protein marker channels. @code{simpleSeg} can also be used for
the normalization of single cell data obtained from multiple images.")
    (license license:gpl3)))

(define-public r-simpintlists
  (package
    (name "r-simpintlists")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "simpIntLists" version
                              'experiment))
       (sha256
        (base32 "09f24md2rj3xwi8szlc3ibdjiqfr50mrjm5ia8mhnm9mf9df1svq"))))
    (properties `((upstream-name . "simpIntLists")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/simpIntLists")
    (synopsis
     "The package contains BioGRID interactions for various organisms in a simple format")
    (description
     "The package contains @code{BioGRID} interactions for arabidopsis(thale cress),
c.elegans, fruit fly, human, mouse, yeast( budding yeast ) and S.pombe (fission
yeast) .  Entrez ids, official names and unique ids can be used to find
proteins.  The format of interactions are lists.  For each gene/protein, there
is an entry in the list with \"name\" containing name of the gene/protein and
\"interactors\" containing the list of genes/proteins interacting with it.")
    (license license:gpl2+)))

(define-public r-simpic
  (package
    (name "r-simpic")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "simPIC" version))
       (sha256
        (base32 "1qr70cz04grmawsz3ir5ycaj74782c66mf2ing5zlndh3z3vv696"))))
    (properties `((upstream-name . "simPIC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-scuttle
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-matrixstats
                             r-matrix
                             r-fitdistrplus
                             r-edger
                             r-checkmate
                             r-biocgenerics
                             r-actuar))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sagrikachugh/simPIC")
    (synopsis
     "Flexible simulation of paired-insertion counts for single-cell ATAC-sequencing data")
    (description
     "@code{simPIC} is a package for simulating single-cell ATAC-seq count data.  It
provides a user-friendly, well documented interface for data simulation.
Functions are provided for parameter estimation, realistic @code{scATAC-seq}
data simulation, and comparing real and simulated datasets.")
    (license license:gpl3)))

(define-public r-simlr
  (package
    (name "r-simlr")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SIMLR" version))
       (sha256
        (base32 "1fxd14kf4ai2hm9nxragqisckca5spkk8slc4biy2viqj90nvvy2"))))
    (properties `((upstream-name . "SIMLR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rspectra r-rcppannoy r-rcpp r-pracma r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BatzoglouLabSU/SIMLR")
    (synopsis "Single-cell Interpretation via Multi-kernel LeaRning (SIMLR)")
    (description
     "Single-cell RNA-seq technologies enable high throughput gene expression
measurement of individual cells, and allow the discovery of heterogeneity within
cell populations.  Measurement of cell-to-cell gene expression similarity is
critical for the identification, visualization and analysis of cell populations.
 However, single-cell data introduce challenges to conventional measures of gene
expression similarity because of the high level of noise, outliers and dropouts.
 We develop a novel similarity-learning framework, SIMLR (Single-cell
Interpretation via Multi-kernel @code{LeaRning}), which learns an appropriate
distance metric from the data for dimension reduction, clustering and
visualization.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-similarpeak
  (package
    (name "r-similarpeak")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "similaRpeak" version))
       (sha256
        (base32 "0s6602qzk8m9rnmifg17hpxj9f9i77lasg77ls7595n8ykb1l2kc"))))
    (properties `((upstream-name . "similaRpeak")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/adeschen/similaRpeak")
    (synopsis
     "Metrics to estimate a level of similarity between two ChIP-Seq profiles")
    (description
     "This package calculates metrics which quantify the level of similarity between
@code{ChIP-Seq} profiles.  More specifically, the package implements six
pseudometrics specialized in pattern similarity detection in @code{ChIP-Seq}
profiles.")
    (license license:artistic2.0)))

(define-public r-simffpe
  (package
    (name "r-simffpe")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SimFFPE" version))
       (sha256
        (base32 "139vs9n9ybps7i2gcs5q5vh18njifaz2xc50nrj30s7pspxyiib5"))))
    (properties `((upstream-name . "SimFFPE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncnorm
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/SimFFPE")
    (synopsis "NGS Read Simulator for FFPE Tissue")
    (description
     "The NGS (Next-Generation Sequencing) reads from FFPE (Formalin-Fixed
Paraffin-Embedded) samples contain numerous artifact chimeric reads (ACRS),
which can lead to false positive structural variant calls.  These ACRs are
derived from the combination of two single-stranded DNA (ss-DNA) fragments with
short reverse complementary regions (SRCRs).  This package simulates these
artifact chimeric reads as well as normal reads for FFPE samples on the whole
genome / several chromosomes / large regions.")
    (license license:lgpl3)))

(define-public r-simd
  (package
    (name "r-simd")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SIMD" version))
       (sha256
        (base32 "100z1ib7s739piwazppjrg7jpxfmqwd2kwahwxkjxj14pbc5gfhq"))))
    (properties `((upstream-name . "SIMD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statmod r-methylmnm r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SIMD")
    (synopsis
     "Statistical Inferences with MeDIP-seq Data (SIMD) to infer the methylation level for each CpG site")
    (description
     "This package provides a inferential analysis method for detecting differentially
expressed @code{CpG} sites in @code{MeDIP-seq} data.  It uses statistical
framework and EM algorithm, to identify differentially expressed @code{CpG}
sites.  The methods on this package are described in the article
Methylation-level Inferences and Detection of Differential Methylation with
Medip-seq Data by Yan Zhou, Jiadi Zhu, Mingtao Zhao, Baoxue Zhang, Chunfu Jiang
and Xiyan Yang (2018, pending publication).")
    (license license:gpl3)))

(define-public r-simbu
  (package
    (name "r-simbu")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SimBu" version))
       (sha256
        (base32 "1cp4w554pmlq4kgbpaimdgk7gg7qwwfkcihawg1lg2nyb7l00sfj"))))
    (properties `((upstream-name . "SimBu")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-sparsematrixstats
                             r-reticulate
                             r-rcurl
                             r-rcolorbrewer
                             r-proxyc
                             r-phyloseq
                             r-matrix
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-biocparallel
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/omnideconv/SimBu")
    (synopsis "Simulate Bulk RNA-seq Datasets from Single-Cell Datasets")
    (description
     "@code{SimBu} can be used to simulate bulk RNA-seq datasets with known cell type
fractions.  You can either use your own single-cell study for the simulation or
the sfaira database.  Different pre-defined simulation scenarios exist, as are
options to run custom simulations.  Additionally, expression values can be
adapted by adding an @code{mRNA} bias, which produces more biologically relevant
simulations.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-simbenchdata
  (package
    (name "r-simbenchdata")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SimBenchData" version
                              'experiment))
       (sha256
        (base32 "13lx1cd6mqf71k8n5p586a0gmd918jp2iqv9imxp8kckran09wgc"))))
    (properties `((upstream-name . "SimBenchData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-s4vectors r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SimBenchData")
    (synopsis
     "SimBenchData: a collection of 35 single-cell RNA-seq data covering a wide range of data characteristics")
    (description
     "The @code{SimBenchData} package contains a total of 35 single-cell RNA-seq
datasets covering a wide range of data characteristics, including major
sequencing protocols, multiple tissue types, and both human and mouse sources.")
    (license license:gpl3)))

(define-public r-simat
  (package
    (name "r-simat")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SIMAT" version))
       (sha256
        (base32 "1bwwip4wszs39yhdpwl14vcfrlq1aav1gmiijwnx5fl77vcfais5"))))
    (properties `((upstream-name . "SIMAT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2 r-rcpp r-mzr r-ggplot2))
    (home-page "http://omics.georgetown.edu/SIMAT.html")
    (synopsis "GC-SIM-MS data processing and alaysis tool")
    (description
     "This package provides a pipeline for analysis of GC-MS data acquired in selected
ion monitoring (SIM) mode.  The tool also provides a guidance in choosing
appropriate fragments for the targets of interest by using an optimization
algorithm.  This is done by considering overlapping peaks from a provided
library by the user.")
    (license license:gpl2)))

(define-public r-sim
  (package
    (name "r-sim")
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SIM" version))
       (sha256
        (base32 "1hy4ik6mac7rqchcr3pssj41lsgkfcw0mifkgkhw3sw43bfnh611"))))
    (properties `((upstream-name . "SIM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantsmooth r-quantreg r-globaltest))
    (home-page "https://bioconductor.org/packages/SIM")
    (synopsis "Integrated Analysis on two human genomic datasets")
    (description "Finds associations between two human genomic datasets.")
    (license license:gpl2+)))

(define-public r-sigsquared
  (package
    (name "r-sigsquared")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sigsquared" version))
       (sha256
        (base32 "1qm25yx8ykf35alqz8z0ky7akhc2zyzm568kfms6ravd0p41nyrk"))))
    (properties `((upstream-name . "sigsquared")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-biobase))
    (home-page "https://bioconductor.org/packages/sigsquared")
    (synopsis
     "Gene signature generation for functionally validated signaling pathways")
    (description
     "By leveraging statistical properties (log-rank test for survival) of patient
cohorts defined by binary thresholds, poor-prognosis patients are identified by
the sigsquared package via optimization over a cost function reducing type I and
II error.")
    (license (license:fsdg-compatible "GPL version 3"))))

(define-public r-sigspack
  (package
    (name "r-sigspack")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SigsPack" version))
       (sha256
        (base32 "0j6lxlrvphhhm05dh1h7b48dqjrshalf81icdb3b0ggdqvymkrxz"))))
    (properties `((upstream-name . "SigsPack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-rtracklayer
                             r-quadprog
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bihealth/SigsPack")
    (synopsis "Mutational Signature Estimation for Single Samples")
    (description
     "Single sample estimation of exposure to mutational signatures.  Exposures to
known mutational signatures are estimated for single samples, based on quadratic
programming algorithms.  Bootstrapping the input mutational catalogues provides
estimations on the stability of these exposures.  The effect of the sequence
composition of mutational context can be taken into account by normalising the
catalogues.")
    (license license:gpl3)))

(define-public r-signifinder
  (package
    (name "r-signifinder")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "signifinder" version))
       (sha256
        (base32 "0apncbw90r1svawz7g76w13ai7djf04709mmr0anb27m1i74aa34"))))
    (properties `((upstream-name . "signifinder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-survminer
                             r-survival
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-scales
                             r-rcolorbrewer
                             r-patchwork
                             r-org-hs-eg-db
                             r-openair
                             r-maxstat
                             r-matrixstats
                             r-magrittr
                             r-iranges
                             r-gsva
                             r-ggridges
                             r-ggplot2
                             r-ensembldb
                             r-dplyr
                             r-dgeobj-utils
                             r-cowplot
                             r-consensusov
                             r-complexheatmap
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CaluraLab/signifinder")
    (synopsis
     "Collection and implementation of public transcriptional cancer signatures")
    (description
     "signifinder is an R package for computing and exploring a compendium of tumor
signatures.  It allows to compute a variety of signatures coming from public
literature, based on gene expression values, and return single-sample
(-cell/-spot) scores.  Currently, signifinder collects more than 70 distinct
signatures, relating to multiple tumors and multiple cancer processes.")
    (license license:agpl3)))

(define-public r-signer
  (package
    (name "r-signer")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "signeR" version))
       (sha256
        (base32 "1nlhxsq6v6nyadmfkyvibvgc9zg0r0s6lr5h60kvc1337ar8qzd4"))))
    (properties `((upstream-name . "signeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-variantannotation
                             r-tidyr
                             r-tibble
                             r-survminer
                             r-survival
                             r-shinywidgets
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-scales
                             r-rtracklayer
                             r-reshape2
                             r-readr
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-randomforest
                             r-pvclust
                             r-proxy
                             r-proc
                             r-ppclust
                             r-pmcmrplus
                             r-pheatmap
                             r-nmf
                             r-nloptr
                             r-maxstat
                             r-mass
                             r-magrittr
                             r-listenv
                             r-kknn
                             r-iranges
                             r-glmnet
                             r-ggpubr
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-future-apply
                             r-future
                             r-e1071
                             r-dt
                             r-dplyr
                             r-cowplot
                             r-clue
                             r-class
                             r-bsplus
                             r-bsgenome
                             r-broom
                             r-biostrings
                             r-biocgenerics
                             r-biocfilecache
                             r-ada))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/TojalLab/signeR")
    (synopsis "Empirical Bayesian approach to mutational signature discovery")
    (description
     "The @code{signeR} package provides an empirical Bayesian approach to mutational
signature discovery.  It is designed to analyze single nucleotide variation
(SNV) counts in cancer genomes, but can also be applied to other features as
well.  Functionalities to characterize signatures or genome samples according to
exposure patterns are also provided.")
    (license license:gpl3)))

(define-public r-signaturesearchdata
  (package
    (name "r-signaturesearchdata")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "signatureSearchData" version
                              'experiment))
       (sha256
        (base32 "0i7fc8d4c8npa5wh6kiwv6jy4js97wiryjnyjlds43zdpkm75gjm"))))
    (properties `((upstream-name . "signatureSearchData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-rhdf5
                             r-r-utils
                             r-magrittr
                             r-limma
                             r-experimenthub
                             r-dplyr
                             r-biobase
                             r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/signatureSearchData")
    (synopsis "Datasets for signatureSearch package")
    (description
     "CMAP/LINCS hdf5 databases and other annotations used for @code{signatureSearch}
software package.")
    (license license:artistic2.0)))

(define-public r-signaturesearch
  (package
    (name "r-signaturesearch")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "signatureSearch" version))
       (sha256
        (base32 "1c8jykqfsbpmpn52svaqkg2da2gzdyyfd96hm1sfwx15z02sg9cw"))))
    (properties `((upstream-name . "signatureSearch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-visnetwork
                             r-tibble
                             r-summarizedexperiment
                             r-scales
                             r-rsqlite
                             r-rhdf5
                             r-reshape2
                             r-readr
                             r-reactome-db
                             r-rcpp
                             r-qvalue
                             r-org-hs-eg-db
                             r-matrix
                             r-magrittr
                             r-hdf5array
                             r-gseabase
                             r-ggplot2
                             r-fgsea
                             r-fastmatch
                             r-experimenthub
                             r-dplyr
                             r-dose
                             r-delayedarray
                             r-data-table
                             r-clusterprofiler
                             r-biocparallel
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yduan004/signatureSearch/")
    (synopsis
     "Environment for Gene Expression Searching Combined with Functional Enrichment Analysis")
    (description
     "This package implements algorithms and data structures for performing gene
expression signature (GES) searches, and subsequently interpreting the results
functionally with specialized enrichment methods.")
    (license license:artistic2.0)))

(define-public r-sights
  (package
    (name "r-sights")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sights" version))
       (sha256
        (base32 "0awmi684h1gdv9a1yyz06yrdw6c81af54fw79bddwmf5yxfaxkcs"))))
    (properties `((upstream-name . "sights")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2 r-qvalue r-mass r-lattice r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://eg-r.github.io/sights/")
    (synopsis "Statistics and dIagnostic Graphs for HTS")
    (description
     "SIGHTS is a suite of normalization methods, statistical tests, and diagnostic
graphical tools for high throughput screening (HTS) assays.  HTS assays use
microtitre plates to screen large libraries of compounds for their biological,
chemical, or biochemical activity.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-sigfeature
  (package
    (name "r-sigfeature")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sigFeature" version))
       (sha256
        (base32 "0m0mqrg5hy0r6iaj7swnhb5s8x6j99rpagc38kynh4vahb6picq9"))))
    (properties `((upstream-name . "sigFeature")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-sparsem
                             r-rcolorbrewer
                             r-pheatmap
                             r-openxlsx
                             r-nlme
                             r-matrix
                             r-e1071
                             r-biocviews
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/sigFeature")
    (synopsis
     "sigFeature: Significant feature selection using SVM-RFE & t-statistic")
    (description
     "This package provides a novel feature selection algorithm for binary
classification using support vector machine recursive feature elimination
SVM-RFE and t-statistic.  In this feature selection process, the selected
features are differentially significant between the two classes and also they
are good classifier with higher degree of classification accuracy.")
    (license license:gpl2+)))

(define-public r-sigcheck
  (package
    (name "r-sigcheck")
    (version "2.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SigCheck" version))
       (sha256
        (base32 "01cz1xdb7fmlvky67jj1msmyjphc85qahh29rrai36xckbmy6rka"))))
    (properties `((upstream-name . "SigCheck")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-mlinterfaces r-e1071 r-biocparallel
                             r-biobase))
    (home-page "https://bioconductor.org/packages/SigCheck")
    (synopsis
     "Check a gene signature's prognostic performance against random signatures, known signatures, and permuted data/metadata")
    (description
     "While gene signatures are frequently used to predict phenotypes (e.g. predict
prognosis of cancer patients), it it not always clear how optimal or meaningful
they are (cf David Venet, Jacques E. Dumont, and Vincent Detours paper \"Most
Random Gene Expression Signatures Are Significantly Associated with Breast
Cancer Outcome\").  Based on suggestions in that paper, @code{SigCheck} accepts a
data set (as an @code{ExpressionSet}) and a gene signature, and compares its
performance on survival and/or classification tasks against a) random gene
signatures of the same length; b) known, related and unrelated gene signatures;
and c) permuted data and/or metadata.")
    (license license:artistic2.0)))

(define-public r-siamcat
  (package
    (name "r-siamcat")
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SIAMCAT" version))
       (sha256
        (base32 "0czzgi1kxy4la4kbw7s6px53lp6wzkdmqlpc675q90c1nmqja1y1"))))
    (properties `((upstream-name . "SIAMCAT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-scales
                             r-rcolorbrewer
                             r-prroc
                             r-progress
                             r-proc
                             r-phyloseq
                             r-paradox
                             r-mlr3tuning
                             r-mlr3learners
                             r-mlr3
                             r-matrixstats
                             r-lmertest
                             r-liblinear
                             r-lgr
                             r-infotheo
                             r-gridextra
                             r-gridbase
                             r-glmnet
                             r-corrplot
                             r-beanplot))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SIAMCAT")
    (synopsis
     "Statistical Inference of Associations between Microbial Communities And host phenoTypes")
    (description
     "Pipeline for Statistical Inference of Associations between Microbial Communities
And host @code{phenoTypes} (SIAMCAT).  A primary goal of analyzing microbiome
data is to determine changes in community composition that are associated with
environmental factors.  In particular, linking human microbiome composition to
host phenotypes such as diseases has become an area of intense research.  For
this, robust statistical modeling and biomarker extraction toolkits are
crucially needed.  SIAMCAT provides a full pipeline supporting data
preprocessing, statistical association testing, statistical modeling (LASSO
logistic regression) including tools for evaluation and interpretation of these
models (such as cross validation, parameter selection, ROC analysis and
diagnostic model plots).")
    (license license:gpl3)))

(define-public r-shinymethyldata
  (package
    (name "r-shinymethyldata")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "shinyMethylData" version
                              'experiment))
       (sha256
        (base32 "0m3map34wjvakb5adfkybsrmwm8f2zc2kzq8gxmw411lay2zznz5"))))
    (properties `((upstream-name . "shinyMethylData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/shinyMethylData")
    (synopsis "Example dataset of input data for shinyMethyl")
    (description
     "Extracted data from 369 TCGA Head and Neck Cancer DNA methylation samples.  The
extracted data serve as an example dataset for the package @code{shinyMethyl}.
Original samples are from 450k methylation arrays, and were obtained from The
Cancer Genome Atlas (TCGA).  310 samples are from tumor, 50 are matched normals
and 9 are technical replicates of a control cell line.")
    (license license:artistic2.0)))

(define-public r-shinyepico
  (package
    (name "r-shinyepico")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "shinyepico" version))
       (sha256
        (base32 "0d4v6jir613fmqvmcz9s3y9fpdamj0h8mbdnqkxf60z2k1881vdr"))))
    (properties `((upstream-name . "shinyepico")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zip
                             r-tidyr
                             r-statmod
                             r-shinywidgets
                             r-shinythemes
                             r-shinyjs
                             r-shinycssloaders
                             r-shiny
                             r-rtracklayer
                             r-rmarkdown
                             r-rlang
                             r-reshape2
                             r-plotly
                             r-minfi
                             r-limma
                             r-heatmaply
                             r-gplots
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-dt
                             r-dplyr
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/omorante/shiny_epico")
    (synopsis "ShinyÉPICo")
    (description
     "ShinyÉPICo is a graphical pipeline to analyze Illumina DNA methylation arrays
(450k or EPIC).  It allows to calculate differentially methylated positions and
differentially methylated regions in a user-friendly interface.  Moreover, it
includes several options to export the results and obtain files to perform
downstream analysis.")
    (license (license:fsdg-compatible "AGPL-3 + file LICENSE"))))

(define-public r-shinydsp
  (package
    (name "r-shinydsp")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "shinyDSP" version))
       (sha256
        (base32 "01d2y1knx34zc7afrd18s4macxb3x4vksfrwnd4md9dmfrdayxn3"))))
    (properties `((upstream-name . "shinyDSP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-standr
                             r-singlecellexperiment
                             r-shinywidgets
                             r-shinyvalidate
                             r-shinyjs
                             r-shinycssloaders
                             r-shiny
                             r-scater
                             r-scales
                             r-s4vectors
                             r-readr
                             r-pals
                             r-magrittr
                             r-limma
                             r-htmltools
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-experimenthub
                             r-edger
                             r-dt
                             r-dplyr
                             r-cowplot
                             r-complexheatmap
                             r-circlize
                             r-bslib
                             r-bsicons
                             r-biocgenerics
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kimsjune/shinyDSP")
    (synopsis "Shiny App For Visualizing Nanostring GeoMx DSP Data")
    (description
     "This package is a Shiny app for interactively analyzing and visualizing
Nanostring @code{GeoMX} Whole Transcriptome Atlas data.  Users have the option
of exploring a sample data to explore this app's functionality.  Regions of
interest (ROIs) can be filtered based on any user-provided metadata.  Upon
taking two or more groups of interest, all pairwise and ANOVA-like testing are
automatically performed.  Available ouputs include PCA, Volcano plots, tables
and heatmaps.  Aesthetics of each output are highly customizable.")
    (license license:expat)))

(define-public r-shinybiocloader
  (package
    (name "r-shinybiocloader")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "shinybiocloader" version))
       (sha256
        (base32 "0hzkqbibmv8zsychb09babp4x895smvwfs8dpn75ic3ri7fx806k"))))
    (properties `((upstream-name . "shinybiocloader")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-shiny r-htmltools))
    (native-inputs (list r-quarto))
    (home-page "https://github.com/Bioconductor/shinybiocloader")
    (synopsis "Use a Shiny Bioconductor CSS loader")
    (description
     "Add a Bioconductor themed CSS loader to your shiny app.  It is based on the
shinycustomloader R package.  Use a spinning Bioconductor note loader to enhance
your shiny app loading screen.  This package is intended for developer use.")
    (license license:artistic2.0)))

(define-public r-shdz-db
  (package
    (name "r-shdz-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SHDZ.db" version
                              'annotation))
       (sha256
        (base32 "077xy2zx3f4c01di18ki32xmrwgsc1qjci3wj33nmgsy5925zdxs"))))
    (properties `((upstream-name . "SHDZ.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/SHDZ.db")
    (synopsis "SHDZ http://genome-www5.stanford.edu/ Annotation Data (SHDZ)")
    (description
     "SHDZ http://genome-www5.stanford.edu/ Annotation Data (SHDZ) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-sharedobject
  (package
    (name "r-sharedobject")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SharedObject" version))
       (sha256
        (base32 "0wlhhnvy9hr9z6xsd24pz3y8yw32y4nmv0dn25rfcsai2a2wd7vp"))))
    (properties `((upstream-name . "SharedObject")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-biocgenerics r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SharedObject")
    (synopsis
     "Sharing R objects across multiple R processes without memory duplication")
    (description
     "This package is developed for facilitating parallel computing in R. It is
capable to create an R object in the shared memory space and share the data
across multiple R processes.  It avoids the overhead of memory dulplication and
data transfer, which make sharing big data object across many clusters possible.")
    (license license:gpl3)))

(define-public r-sfedata
  (package
    (name "r-sfedata")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SFEData" version
                              'experiment))
       (sha256
        (base32 "11p8js42b19nnbwc807nj1q48pzyjrf9ikr3npd6a10vsd2bq7p8"))))
    (properties `((upstream-name . "SFEData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub r-biocfilecache r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pachterlab/SFEData")
    (synopsis "Example SpatialFeatureExperiment datasets")
    (description
     "Example spatial transcriptomics datasets with Simple Feature annotations as
@code{SpatialFeatureExperiment} objects.  Technologies include Visium,
slide-seq, Nanostring @code{CoxMX}, Vizgen MERFISH, and 10X Xenium.  Tissues
include mouse skeletal muscle, human melanoma metastasis, human lung, breast
cancer, and mouse liver.")
    (license license:artistic2.0)))

(define-public r-seventygenedata
  (package
    (name "r-seventygenedata")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "seventyGeneData" version
                              'experiment))
       (sha256
        (base32 "18hxf9faz25r72895c03861dpkhphc2018gvvsq07w2cyv0c5hag"))))
    (properties `((upstream-name . "seventyGeneData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page
     "https://bioconductor.org/packages/release/data/experiment/html/seventyGeneData.html")
    (synopsis
     "ExpressionSets from the van't Veer and Van de Vijver breast cancer studies")
    (description
     "Gene expression data for the two breast cancer cohorts published by van't Veer
and Van de Vijver in 2002.")
    (license license:artistic2.0)))

(define-public r-sevenc
  (package
    (name "r-sevenc")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sevenC" version))
       (sha256
        (base32 "1sxydda3czgj2schk2wlpyxcms4p999ywxj1k3rvqb0jssxl8cfi"))))
    (properties `((upstream-name . "sevenC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-readr
                             r-purrr
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-data-table
                             r-boot
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ibn-salem/sevenC")
    (synopsis
     "Computational Chromosome Conformation Capture by Correlation of ChIP-seq at CTCF motifs")
    (description
     "Chromatin looping is an essential feature of eukaryotic genomes and can bring
regulatory sequences, such as enhancers or transcription factor binding sites,
in the close physical proximity of regulated target genes.  Here, we provide
@code{sevenC}, an R package that uses protein binding signals from
@code{ChIP-seq} and sequence motif information to predict chromatin looping
events.  Cross-linking of proteins that bind close to loop anchors result in
@code{ChIP-seq} signals at both anchor loci.  These signals are used at CTCF
motif pairs together with their distance and orientation to each other to
predict whether they interact or not.  The resulting chromatin loops might be
used to associate enhancers or transcription factor binding sites (e.g.,
@code{ChIP-seq} peaks) to regulated target genes.")
    (license license:gpl3)))

(define-public r-sevenbridges
  (package
    (name "r-sevenbridges")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sevenbridges" version))
       (sha256
        (base32 "1kayxyhx3j9ni7cy8lynrnk8s05nckc8cj5x3nzhzqg6i58dddcx"))))
    (properties `((upstream-name . "sevenbridges")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-uuid
                             r-stringr
                             r-s4vectors
                             r-objectproperties
                             r-jsonlite
                             r-httr
                             r-docopt
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://www.sevenbridges.com")
    (synopsis
     "Seven Bridges Platform API Client and Common Workflow Language Tool Builder in R")
    (description
     "R client and utilities for Seven Bridges platform API, from Cancer Genomics
Cloud to other Seven Bridges supported platforms.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-setools
  (package
    (name "r-setools")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SEtools" version))
       (sha256
        (base32 "1j161pgm0gb59hw8x8r60zxh1xn20wp8qkw3ls6pvryjgxiqm1ky"))))
    (properties `((upstream-name . "SEtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-sechm
                             r-s4vectors
                             r-pheatmap
                             r-openxlsx
                             r-matrix
                             r-edger
                             r-deseq2
                             r-data-table
                             r-circlize
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SEtools")
    (synopsis "SEtools: tools for working with SummarizedExperiment")
    (description
     "This includes a set of convenience functions for working with the
@code{SummarizedExperiment} class.  Note that plotting functions historically in
this package have been moved to the sechm package (see vignette for details).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-seta
  (package
    (name "r-seta")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SETA" version))
       (sha256
        (base32 "00i8cg086iv31bri3b3pwiz8ajxyxnnszarinsdcr3kan2gaaxa6"))))
    (properties `((upstream-name . "SETA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidygraph
                             r-singlecellexperiment
                             r-rlang
                             r-matrix
                             r-mass
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kkimler/SETA")
    (synopsis "Single Cell Ecological Taxonomic Analysis")
    (description
     "This package provides tools for compositional and other sample-level ecological
analyses and visualizations tailored for single-cell RNA-seq data.  SETA
includes functions for taxonomizing celltypes, normalizing data, performing
statistical tests, and visualizing results.  Several tutorials are included to
guide users and introduce them to key concepts.  SETA is meant to teach users
about statistical concepts underlying ecological analysis methods so they can
apply them to their own single-cell data.")
    (license license:expat)))

(define-public r-serumstimulation
  (package
    (name "r-serumstimulation")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "serumStimulation" version
                              'experiment))
       (sha256
        (base32 "1bf7cckj7wmkqmmz2zslms70n1ma0z2ffbrvmk8k2qbj01x7y99s"))))
    (properties `((upstream-name . "serumStimulation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/serumStimulation")
    (synopsis
     "serumStimulation is a data package which is used by examples in package pcaGoPromoter")
    (description
     "This package contains 13 micro array data results from a serum stimulation
experiment.")
    (license license:gpl2+)))

(define-public r-seqvartools
  (package
    (name "r-seqvartools")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SeqVarTools" version))
       (sha256
        (base32 "1ldvppx94wvahislg39hc3b4m45qdzpm8nbg2c77iv9w1b3411z8"))))
    (properties `((upstream-name . "SeqVarTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqarray
                             r-s4vectors
                             r-matrix
                             r-logistf
                             r-iranges
                             r-gwasexacthw
                             r-genomicranges
                             r-gdsfmt
                             r-data-table
                             r-biocgenerics
                             r-biobase))
    (home-page "https://github.com/smgogarten/SeqVarTools")
    (synopsis "Tools for variant data")
    (description
     "An interface to the fast-access storage format for VCF data provided in
@code{SeqArray}, with tools for common operations and analysis.")
    (license license:gpl3)))

(define-public r-seqsqc
  (package
    (name "r-seqsqc")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SeqSQC" version))
       (sha256
        (base32 "0vx3xh0hk3yqv1fyimpwq04kvmzw6hqw8879f6ri3019vszl0apa"))))
    (properties `((upstream-name . "SeqSQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-snprelate
                             r-s4vectors
                             r-rmarkdown
                             r-reshape2
                             r-rcolorbrewer
                             r-plotly
                             r-iranges
                             r-ggplot2
                             r-ggally
                             r-genomicranges
                             r-gdsfmt
                             r-experimenthub
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Liubuntu/SeqSQC")
    (synopsis
     "bioconductor package for sample quality check with next generation sequencing data")
    (description
     "The @code{SeqSQC} is designed to identify problematic samples in NGS data,
including samples with gender mismatch, contamination, cryptic relatedness, and
population outlier.")
    (license license:gpl3)))

(define-public r-seqsetvis
  (package
    (name "r-seqsetvis")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "seqsetvis" version))
       (sha256
        (base32 "080njbczm82xy65z3lz1v5fxcvb5l4qamfjnxw73ib3by3wdskzr"))))
    (properties `((upstream-name . "seqsetvis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-upsetr
                             r-seqinfo
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rcolorbrewer
                             r-png
                             r-pbmcapply
                             r-pbapply
                             r-limma
                             r-iranges
                             r-ggplotify
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments
                             r-eulerr
                             r-data-table
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/seqsetvis")
    (synopsis "Set Based Visualizations for Next-Gen Sequencing Data")
    (description
     "seqsetvis enables the visualization and analysis of sets of genomic sites in
next gen sequencing data.  Although seqsetvis was designed for the comparison of
mulitple @code{ChIP-seq} samples, this package is domain-agnostic and allows the
processing of multiple genomic coordinate files (bed-like files) and signal
files (bigwig files pileups from bam file).  seqsetvis has multiple functions
for fetching data from regions into a tidy format for analysis in data.table or
tidyverse and visualization via ggplot2.")
    (license license:expat)))

(define-public r-seqgsea
  (package
    (name "r-seqgsea")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SeqGSEA" version))
       (sha256
        (base32 "02xzwpn95q1dp7a2hd2rhrs7zd8z64d7f6w7ksabxbm3vsmwzrlm"))))
    (properties `((upstream-name . "SeqGSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-doparallel r-deseq2 r-biomart r-biobase))
    (home-page "https://bioconductor.org/packages/SeqGSEA")
    (synopsis
     "Gene Set Enrichment Analysis (GSEA) of RNA-Seq Data: integrating differential expression and splicing")
    (description
     "The package generally provides methods for gene set enrichment analysis of
high-throughput RNA-Seq data by integrating differential expression and
splicing.  It uses negative binomial distribution to model read count data,
which accounts for sequencing biases and biological variation.  Based on
permutation tests, statistical significance can also be achieved regarding each
gene's differential expression and splicing, respectively.")
    (license license:gpl3+)))

(define-public r-seqgate
  (package
    (name "r-seqgate")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SeqGate" version))
       (sha256
        (base32 "1yzq4clc9xvh2zfn1g5jmp19sj7l3na78nzzjgpf6q2q64r93igc"))))
    (properties `((upstream-name . "SeqGate")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-s4vectors
                             r-genomicranges r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SeqGate")
    (synopsis "Filtering of Lowly Expressed Features")
    (description
     "Filtering of lowly expressed features (e.g. genes) is a common step before
performing statistical analysis, but an arbitrary threshold is generally chosen.
@code{SeqGate} implements a method that rationalize this step by the analysis of
the distibution of counts in replicate samples.  The gate is the threshold above
which sequenced features can be considered as confidently quantified.")
    (license license:gpl2+)))

(define-public r-seqcombo
  (package
    (name "r-seqcombo")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "seqcombo" version))
       (sha256
        (base32 "12xf0cyrmbp4ybvc48yw96ggh5f8354ag065qm76g324zfd3c9iy"))))
    (properties `((upstream-name . "seqcombo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yulab-utils r-igraph r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/seqcombo")
    (synopsis "Visualization Tool for Genetic Reassortment")
    (description
     "This package provides useful functions for visualizing virus reassortment
events.")
    (license license:artistic2.0)))

(define-public r-seqcat
  (package
    (name "r-seqcat")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "seqCAT" version))
       (sha256
        (base32 "1di2xcrsqjwcxzw6w93a777vfahnwcqxrfgnav3vagc11bdc99ri"))))
    (properties `((upstream-name . "seqCAT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-tidyr
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/seqCAT")
    (synopsis "High Throughput Sequencing Cell Authentication Toolkit")
    (description
     "The @code{seqCAT} package uses variant calling data (in the form of VCF files)
from high throughput sequencing technologies to authenticate and validate the
source, function and characteristics of biological samples used in scientific
endeavours.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-seqc
  (package
    (name "r-seqc")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "seqc" version
                              'experiment))
       (sha256
        (base32 "0mya6ssiclcf1b82xwib7d4klp5mgg3f7i1jlhdkzpzhmsa7ms8k"))))
    (properties `((upstream-name . "seqc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page
     "http://bioconductor.org/packages/release/data/experiment/html/seqc.html")
    (synopsis "RNA-seq data generated from SEQC (MAQC-III) study")
    (description
     "The SEQC/MAQC-III Consortium has produced benchmark RNA-seq data for the
assessment of RNA sequencing technologies and data analysis methods (Nat
Biotechnol, 2014).  Billions of sequence reads have been generated from ten
different sequencing sites.  This package contains the summarized read count
data for ~2000 sequencing libraries.  It also includes all the exon-exon
junctions discovered from the study. @code{TaqMan} RT-PCR data for ~1000 genes
and ERCC spike-in sequence data are included in this package as well.")
    (license license:gpl3)))

(define-public r-seq2pathway-data
  (package
    (name "r-seq2pathway-data")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "seq2pathway.data" version
                              'experiment))
       (sha256
        (base32 "0w2dwgqsmg70jmrcsm3z5lwmb80j20h232p26b6n0bxpv77a67r5"))))
    (properties `((upstream-name . "seq2pathway.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/seq2pathway.data")
    (synopsis "data set for R package seq2pathway")
    (description
     "Supporting data for the seq2patheway package.  Includes modified gene sets from
@code{MsigDB} and org.Hs.eg.db; gene locus definitions from GENCODE project.")
    (license license:gpl2+)))

(define-public r-seq-hotspot
  (package
    (name "r-seq-hotspot")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "seq.hotSPOT" version))
       (sha256
        (base32 "18a71gzl76wdmzckpvzg131nyxzkwzsdhny5n24ngjwgp6gg9q4k"))))
    (properties `((upstream-name . "seq.hotSPOT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r-utils r-hash))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sydney-grant/seq.hotSPOT")
    (synopsis "Targeted sequencing panel design based on mutation hotspots")
    (description
     "seq.@code{hotSPOT} provides a resource for designing effective sequencing panels
to help improve mutation capture efficacy for ultradeep sequencing projects.
Using SNV datasets, this package designs custom panels for any tissue of
interest and identify the genomic regions likely to contain the most mutations.
Establishing efficient targeted sequencing panels can allow researchers to study
mutation burden in tissues at high depth without the economic burden of
whole-exome or whole-genome sequencing.  This tool was developed to make
high-depth sequencing panels to study low-frequency clonal mutations in
clinically normal and cancerous tissues.")
    (license license:artistic2.0)))

(define-public r-semisup
  (package
    (name "r-semisup")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "semisup" version))
       (sha256
        (base32 "1ppy36h6qrrya4rwa7mz2bmrn1izj1397mrpx151y4vmniijf9v7"))))
    (properties `((upstream-name . "semisup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rauschenberger/semisup")
    (synopsis "Semi-Supervised Mixture Model")
    (description
     "This package implements a parametric semi-supervised mixture model.  The
permutation test detects markers with main or interactive effects, without
distinguishing them.  Possible applications include genome-wide association
analysis and differential expression analysis.")
    (license license:gpl3)))

(define-public r-semdist
  (package
    (name "r-semdist")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SemDist" version))
       (sha256
        (base32 "0hlfyfkiizfyh1fy0b5xy19k3253ib0m1fqb542rdayzfk8qhn48"))))
    (properties `((upstream-name . "SemDist")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-go-db r-annotationdbi r-annotate))
    (home-page "http://github.com/iangonzalez/SemDist")
    (synopsis "Information Accretion-based Function Predictor Evaluation")
    (description
     "This package implements methods to calculate information accretion for a given
version of the gene ontology and uses this data to calculate remaining
uncertainty, misinformation, and semantic similarity for given sets of predicted
annotations and true annotations from a protein function predictor.")
    (license license:gpl2+)))

(define-public r-selex
  (package
    (name "r-selex")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SELEX" version))
       (sha256
        (base32 "0mpggx9dbq16s5c7qpx5rgbjim5a9hs899fmf65v1slgbnikwazq"))))
    (properties `((upstream-name . "SELEX")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-biostrings))
    (home-page "https://bussemakerlab.org/site/software/")
    (synopsis "Functions for analyzing SELEX-seq data")
    (description
     "This package provides tools for quantifying DNA binding specificities based on
SELEX-seq data.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-selectksigs
  (package
    (name "r-selectksigs")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "selectKSigs" version))
       (sha256
        (base32 "12w82vm9ha1rbirwc361w2x719bskn53mrfaarm6ndcr37xz6lzl"))))
    (properties `((upstream-name . "selectKSigs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-magrittr r-hilda r-gtools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USCbiostats/selectKSigs")
    (synopsis
     "Selecting the number of mutational signatures using a perplexity-based measure and cross-validation")
    (description
     "This package provides a package to suggest the number of mutational signatures
in a collection of somatic mutations using calculating the cross-validated
perplexity score.")
    (license license:gpl3)))

(define-public r-segmentseq
  (package
    (name "r-segmentseq")
    (version "2.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "segmentSeq" version))
       (sha256
        (base32 "06wwpk0l3zy2xajagxdhccnynpb8wqsj3ksdf4vm010a41rlqiwm"))))
    (properties `((upstream-name . "segmentSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shortread
                             r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-bayseq
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/samgg/segmentSeq")
    (synopsis
     "Methods for identifying small RNA loci from high-throughput sequencing data")
    (description
     "High-throughput sequencing technologies allow the production of large volumes of
short sequences, which can be aligned to the genome to create a set of matches
to the genome.  By looking for regions of the genome which to which there are
high densities of matches, we can infer a segmentation of the genome into
regions of biological significance.  The methods in this package allow the
simultaneous segmentation of data from multiple samples, taking into account
replicate data, in order to create a consensus segmentation.  This has obvious
applications in a number of classes of sequencing experiments, particularly in
the discovery of small RNA loci and novel @code{mRNA} transcriptome discovery.")
    (license license:gpl3)))

(define-public r-segmenter
  (package
    (name "r-segmenter")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "segmenter" version))
       (sha256
        (base32 "12ss0b59xcv6mhrfiway6k7cvgsgxlh71jjv8mvlv66gd5jxlxvj"))))
    (properties `((upstream-name . "segmenter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-complexheatmap
                             r-chromhmmdata
                             r-chipseeker
                             r-bamsignals))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/segmenter")
    (synopsis
     "Perform Chromatin Segmentation Analysis in R by Calling ChromHMM")
    (description
     "Chromatin segmentation analysis transforms @code{ChIP-seq} data into signals
over the genome.  The latter represents the observed states in a multivariate
Markov model to predict the chromatin's underlying states. @code{ChromHMM},
written in Java, integrates histone modification datasets to learn the chromatin
states de-novo.  The goal of this package is to call @code{chromHMM} from within
R, capture the output files in an S4 object and interface to other relevant
Bioconductor analysis tools.  In addition, segmenter provides functions to test,
select and visualize the output of the segmentation.")
    (license license:gpl3)))

(define-public r-sechm
  (package
    (name "r-sechm")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sechm" version))
       (sha256
        (base32 "0zjmz0s7z5wpfzf2w3rrfh8gq03m3l42kzha7h6x8wv7qx2clzf0"))))
    (properties `((upstream-name . "sechm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seriation
                             r-s4vectors
                             r-randomcolor
                             r-matrixstats
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/sechm")
    (synopsis "sechm: Complex Heatmaps from a SummarizedExperiment")
    (description
     "sechm provides a simple interface between @code{SummarizedExperiment} objects
and the @code{ComplexHeatmap} package.  It enables plotting annotated heatmaps
from SE objects, with easy access to @code{rowData} and @code{colData} columns,
and implements a number of features to make the generation of heatmaps easier
and more flexible.  These functionalities used to be part of the SEtools
package.")
    (license license:gpl3)))

(define-public r-seahtrue
  (package
    (name "r-seahtrue")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "seahtrue" version))
       (sha256
        (base32 "16j5l6gw8m7cwh5hwfmg4cr7qrw4wchpp93pckjgx2wznchkylz6"))))
    (properties `((upstream-name . "seahtrue")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-validate
                             r-tidyxl
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-readxl
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-lubridate
                             r-logger
                             r-janitor
                             r-glue
                             r-ggridges
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-colorspace
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://vcjdeboer.github.io/seahtrue/")
    (synopsis "Seahtrue revives XF data for structured data analysis")
    (description
     "Seahtrue organizes oxygen consumption and extracellular acidification analysis
data from experiments performed on an XF analyzer into structured nested
tibbles.This allows for detailed processing of raw data and advanced data
visualization and statistics.  Seahtrue introduces an open and reproducible way
to analyze these XF experiments.  It uses file paths to .xlsx files.  These
.xlsx files are supplied by the userand are generated by the user in the Wave
software from Agilent from the assay result files (.asyr).  The .xlsx file
contains different sheets of important data for the experiment; 1.  Assay
Information - Details about how the experiment was set up.  2.  Rate Data -
Information about the OCR and ECAR rates.  3.  Raw Data - The original raw data
collected during the experiment.  4.  Calibration Data - Data related to
calibrating the instrument.  Seahtrue focuses on getting the specific data
needed for analysis.  Once this data is extracted, it is prepared for
calculations through preprocessing.  To make sure everything is accurate, both
the initial data and the preprocessed data go through thorough checks.")
    (license license:artistic2.0)))

(define-public r-sdams
  (package
    (name "r-sdams")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SDAMS" version))
       (sha256
        (base32 "1arr0ld2nr6iqqc1h9v35cpn5zllbbqbbhjza6m2jrwgx7b6j973"))))
    (properties `((upstream-name . "SDAMS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-trust r-summarizedexperiment r-qvalue))
    (home-page "https://bioconductor.org/packages/SDAMS")
    (synopsis
     "Differential Abundant/Expression Analysis for Metabolomics, Proteomics and single-cell RNA sequencing Data")
    (description
     "This Package utilizes a Semi-parametric Differential Abundance/expression
analysis (SDA) method for metabolomics and proteomics data from mass
spectrometry as well as single-cell RNA sequencing data.  SDA is able to
robustly handle non-normally distributed data and provides a clear
quantification of the effect size.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-scvir
  (package
    (name "r-scvir")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scviR" version))
       (sha256
        (base32 "047y1drrpn6g5s8li34kcspgmy9pv7l2bclfxhxrrm0f5d6w6avh"))))
    (properties `((upstream-name . "scviR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-scater
                             r-s4vectors
                             r-reticulate
                             r-pheatmap
                             r-matrixgenerics
                             r-limma
                             r-biocfilecache
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjcitn/scviR")
    (synopsis "experimental inferface from R to scvi-tools")
    (description
     "This package defines interfaces from R to scvi-tools.  A vignette works through
the @code{totalVI} tutorial for analyzing CITE-seq data.  Another vignette
compares outputs of Chapter 12 of the OSCA book with analogous outputs based on
@code{totalVI} quantifications.  Future work will address other components of
scvi-tools, with a focus on building understanding of probabilistic methods
based on variational autoencoders.")
    (license license:artistic2.0)))

(define-public r-sctreeviz
  (package
    (name "r-sctreeviz")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scTreeViz" version))
       (sha256
        (base32 "0jm9ymw3vinzrsgn762yzrrvxxvbk4bgswa4hqfs6cacdhnsah0x"))))
    (properties `((upstream-name . "scTreeViz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sys
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-scran
                             r-scater
                             r-s4vectors
                             r-rtsne
                             r-matrix
                             r-igraph
                             r-httr
                             r-ggraph
                             r-ggplot2
                             r-epivizrserver
                             r-epivizrdata
                             r-epivizr
                             r-digest
                             r-data-table
                             r-clustree))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scTreeViz")
    (synopsis
     "R/Bioconductor package to interactively explore and visualize single cell RNA-seq datasets with hierarhical annotations")
    (description
     "@code{scTreeViz} provides classes to support interactive data aggregation and
visualization of single cell RNA-seq datasets with hierarchies for e.g. cell
clusters at different resolutions.  The `@code{TreeIndex`} class provides
methods to manage hierarchy and split the tree at a given resolution or across
resolutions.  The `@code{TreeViz`} class extends `@code{SummarizedExperiment`}
and can performs quick aggregations on the count matrix defined by clusters.")
    (license license:artistic2.0)))

(define-public r-scthi-data
  (package
    (name "r-scthi-data")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scTHI.data" version
                              'experiment))
       (sha256
        (base32 "0nvib6shlxgxk8ca9nwklwaa61rwv9gmg5xpvg6xjzaq6i87bbn2"))))
    (properties `((upstream-name . "scTHI.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/scTHI.data")
    (synopsis
     "The package contains examples of single cell data used in vignettes and examples of the scTHI package; data contain both tumor cells and immune cells from public dataset of glioma")
    (description
     "Data for the vignette and tutorial of the package @code{scTHI}.")
    (license license:gpl2)))

(define-public r-scthi
  (package
    (name "r-scthi")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scTHI" version))
       (sha256
        (base32 "0jk38bqr1x17xkpwgxqpsdh9m4vvsccx1a00abqqs07rzfhacfs1"))))
    (properties `((upstream-name . "scTHI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtsne r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scTHI")
    (synopsis
     "Indentification of significantly activated ligand-receptor interactions across clusters of cells from single-cell RNA sequencing data")
    (description
     "@code{scTHI} is an R package to identify active pairs of ligand-receptors from
single cells in order to study,among others, tumor-host interactions.
@code{scTHI} contains a set of signatures to classify cells from the tumor
microenvironment.")
    (license license:gpl2)))

(define-public r-sctgif
  (package
    (name "r-sctgif")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scTGIF" version))
       (sha256
        (base32 "07fmcgvam3swbg254j9hhyj7x9sjvs9b0mrx60hxfd4rg1d0dsgf"))))
    (properties `((upstream-name . "scTGIF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-tagcloud
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-schex
                             r-scales
                             r-s4vectors
                             r-rmarkdown
                             r-rcpp
                             r-rcolorbrewer
                             r-plotly
                             r-nntensor
                             r-msigdbr
                             r-knitr
                             r-igraph
                             r-gseabase
                             r-ggplot2
                             r-biocstyle
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scTGIF")
    (synopsis "Cell type annotation for unannotated single-cell RNA-Seq data")
    (description
     "@code{scTGIF} connects the cells and the related gene functions without cell
type label.")
    (license license:artistic2.0)))

(define-public r-sctensor
  (package
    (name "r-sctensor")
    (version "2.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scTensor" version))
       (sha256
        (base32 "0alipcy6hchw07rwxqib3w6vy5lycfxqrsbsazqmli1n2qblkjj3"))))
    (properties `((upstream-name . "scTensor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-tagcloud
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-schex
                             r-s4vectors
                             r-rtensor
                             r-rsqlite
                             r-rmarkdown
                             r-reactomepa
                             r-reactome-db
                             r-plotrix
                             r-plotly
                             r-outliers
                             r-nntensor
                             r-meshr
                             r-meshdbi
                             r-knitr
                             r-igraph
                             r-heatmaply
                             r-gostats
                             r-ggplot2
                             r-dose
                             r-crayon
                             r-checkmate
                             r-cctensor
                             r-category
                             r-biocstyle
                             r-biocmanager
                             r-annotationhub
                             r-annotationdbi
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scTensor")
    (synopsis
     "Detection of cell-cell interaction from single-cell RNA-seq dataset by tensor decomposition")
    (description
     "The algorithm is based on the non-negative tucker decomposition (NTD2) of
@code{nnTensor}.")
    (license license:artistic2.0)))

(define-public r-scshapes
  (package
    (name "r-scshapes")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scShapes" version))
       (sha256
        (base32 "1vs0ldcawicby8mbzpxz2szfjljf2pgb6rj231d3bbmn6975822g"))))
    (properties `((upstream-name . "scShapes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-pscl
                             r-matrix
                             r-mass
                             r-magrittr
                             r-emdbook
                             r-dgof
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Malindrie/scShapes")
    (synopsis
     "Statistical Framework for Modeling and Identifying Differential Distributions in Single-cell RNA-sequencing Data")
    (description
     "We present a novel statistical framework for identifying differential
distributions in single-cell RNA-sequencing (@code{scRNA-seq}) data between
treatment conditions by modeling gene expression read counts using generalized
linear models (GLMs).  We model each gene independently under each treatment
condition using error distributions Poisson (P), Negative Binomial (NB),
Zero-inflated Poisson (ZIP) and Zero-inflated Negative Binomial (ZINB) with log
link function and model based normalization for differences in sequencing depth.
 Since all four distributions considered in our framework belong to the same
family of distributions, we first perform a Kolmogorov-Smirnov (KS) test to
select genes belonging to the family of ZINB distributions.  Genes passing the
KS test will be then modeled using GLMs. Model selection is done by calculating
the Bayesian Information Criterion (BIC) and likelihood ratio test (LRT)
statistic.")
    (license license:gpl3)))

(define-public r-scruff
  (package
    (name "r-scruff")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scruff" version))
       (sha256
        (base32 "0qm43s8jk601xl6rqqqsgycilnpk9a45rlwm7qg9fc0729jrwp81"))))
    (properties `((upstream-name . "scruff")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-summarizedexperiment
                             r-stringdist
                             r-singlecellexperiment
                             r-shortread
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rsubread
                             r-rsamtools
                             r-plyr
                             r-patchwork
                             r-parallelly
                             r-ggthemes
                             r-ggplot2
                             r-ggbio
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-data-table
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scruff")
    (synopsis "Single Cell RNA-Seq UMI Filtering Facilitator (scruff)")
    (description
     "This package provides a pipeline which processes single cell RNA-seq
(@code{scRNA-seq}) reads from CEL-seq and CEL-seq2 protocols.  Demultiplex
@code{scRNA-seq} FASTQ files, align reads to reference genome using Rsubread,
and generate UMI filtered count matrix.  Also provide visualizations of read
alignments and pre- and post-alignment QC metrics.")
    (license license:expat)))

(define-public r-scrnaseqapp
  (package
    (name "r-scrnaseqapp")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scRNAseqApp" version))
       (sha256
        (base32 "1z300l667y9pn195rmc92a59v56zxmvjrsxbc073693wbwvwp1yi"))))
    (properties `((upstream-name . "scRNAseqApp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-xfun
                             r-sortable
                             r-slingshot
                             r-singlecellexperiment
                             r-shinymanager
                             r-shinyhelper
                             r-shiny
                             r-seuratobject
                             r-seurat
                             r-scrypt
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rsqlite
                             r-rsamtools
                             r-rhdf5
                             r-reshape2
                             r-refmanager
                             r-rcolorbrewer
                             r-plotly
                             r-patchwork
                             r-matrix
                             r-magrittr
                             r-jsonlite
                             r-iranges
                             r-htmltools
                             r-gridextra
                             r-ggridges
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-ggdendro
                             r-genomicranges
                             r-genomeinfodb
                             r-fs
                             r-dt
                             r-dbi
                             r-data-table
                             r-complexheatmap
                             r-colourpicker
                             r-circlize
                             r-bslib
                             r-bibtex))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jianhong/scRNAseqApp")
    (synopsis "single-cell RNAseq Shiny app-package")
    (description
     "The @code{scRNAseqApp} is a Shiny app package designed for interactive
visualization of single-cell data.  It is an enhanced version derived from the
@code{ShinyCell}, repackaged to accommodate multiple datasets.  The app enables
users to visualize data containing various types of information simultaneously,
facilitating comprehensive analysis.  Additionally, it includes a user
management system to regulate database accessibility for different users.")
    (license license:gpl3)))

(define-public r-screencounter
  (package
    (name "r-screencounter")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "screenCounter" version))
       (sha256
        (base32 "11d17blwgrifq5acj93sd5zy1ri0ygrzja8cw82dwnihrb30zmrq"))))
    (properties `((upstream-name . "screenCounter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-summarizedexperiment r-s4vectors r-rcpp
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/crisprVerse/screenCounter")
    (synopsis "Counting Reads in High-Throughput Sequencing Screens")
    (description
     "This package provides functions for counting reads from high-throughput
sequencing screen data (e.g., CRISPR, @code{shRNA}) to quantify barcode
abundance.  Currently supports single barcodes in single- or paired-end data,
and combinatorial barcodes in paired-end data.")
    (license license:expat)))

(define-public r-screcover
  (package
    (name "r-screcover")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scRecover" version))
       (sha256
        (base32 "1nlzrrn4brf2615qj0ynxfpzddx7238nxhbsxp5c333slvncqy8x"))))
    (properties `((upstream-name . "scRecover")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-saver
                             r-rsvd
                             r-pscl
                             r-preseqr
                             r-penalized
                             r-matrix
                             r-mass
                             r-kernlab
                             r-gamlss
                             r-foreach
                             r-doparallel
                             r-biocparallel
                             r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "https://miaozhun.github.io/scRecover")
    (synopsis "scRecover for imputation of single-cell RNA-seq data")
    (description
     "@code{scRecover} is an R package for imputation of single-cell RNA-seq
(@code{scRNA-seq}) data.  It will detect and impute dropout values in a
@code{scRNA-seq} raw read counts matrix while keeping the real zeros unchanged,
since there are both dropout zeros and real zeros in @code{scRNA-seq} data.  By
combination with @code{scImpute}, SAVER and MAGIC, @code{scRecover} not only
detects dropout and real zeros at higher accuracy, but also improve the
downstream clustering and visualization results.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-screclassify
  (package
    (name "r-screclassify")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scReClassify" version))
       (sha256
        (base32 "1bwbm2la5wcafisj6xprqg5y4yj0gxxhgmqkz9q6cd8ssfnr0bw6"))))
    (properties `((upstream-name . "scReClassify")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-singlecellexperiment
                             r-randomforest r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SydneyBioX/scReClassify")
    (synopsis
     "scReClassify: post hoc cell type classification of single-cell RNA-seq data")
    (description
     "This package provides a post hoc cell type classification tool to fine-tune cell
type annotations generated by any cell type classification procedure with
semi-supervised learning algorithm @code{AdaSampling} technique.  The current
version of @code{scReClassify} supports Support Vector Machine and Random Forest
as a base classifier.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-scpipe
  (package
    (name "r-scpipe")
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scPipe" version))
       (sha256
        (base32 "1y6fmydg0l67v8g830h52pwx9nd2bv5gd15skah1znrjam99vali"))))
    (properties `((upstream-name . "scPipe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-testthat
                             r-summarizedexperiment
                             r-stringr
                             r-singlecellexperiment
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rsubread
                             r-rsamtools
                             r-robustbase
                             r-rlang
                             r-rhtslib
                             r-reticulate
                             r-reshape
                             r-rcpp
                             r-purrr
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-multiassayexperiment
                             r-mclust
                             r-matrix
                             r-mass
                             r-magrittr
                             r-iranges
                             r-hash
                             r-glue
                             r-ggplot2
                             r-ggally
                             r-genomicranges
                             r-genomicalignments
                             r-flexmix
                             r-dropletutils
                             r-dplyr
                             r-data-table
                             r-biostrings
                             r-biomart
                             r-biocgenerics
                             r-basilisk
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LuyiTian/scPipe")
    (synopsis "Pipeline for single cell multi-omic data pre-processing")
    (description
     "This package provides a preprocessing pipeline for single cell RNA-seq/ATAC-seq
data that starts from the fastq files and produces a feature count matrix with
associated quality control information.  It can process fastq data generated by
CEL-seq, MARS-seq, Drop-seq, Chromium 10x and SMART-seq protocols.")
    (license license:gpl2+)))

(define-public r-scpdata
  (package
    (name "r-scpdata")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scpdata" version
                              'experiment))
       (sha256
        (base32 "049qrzjj26s41q0nl3q85bz91lwpd5j3i1c4gxwbavm0izhhk3ym"))))
    (properties `((upstream-name . "scpdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-singlecellexperiment r-s4vectors r-qfeatures
                             r-experimenthub r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scpdata")
    (synopsis "Single-Cell Proteomics Data Package")
    (description
     "The package disseminates mass spectrometry (MS)-based single-cell proteomics
(SCP) datasets.  The data were collected from published work and formatted using
the `scp` data structure.  The data sets contain quantitative information at
spectrum, peptide and/or protein level for single cells or minute sample
amounts.")
    (license license:gpl2)))

(define-public r-scpca
  (package
    (name "r-scpca")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scPCA" version))
       (sha256
        (base32 "0m0qc7i2pqag4r5i9ly35fp7vqnhlfb5jimnk0yfkx5bj0bd9ya8"))))
    (properties `((upstream-name . "scPCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-sparsepca
                             r-scaledmatrix
                             r-rspectra
                             r-rdpack
                             r-purrr
                             r-origami
                             r-matrixstats
                             r-matrixgenerics
                             r-matrix
                             r-kernlab
                             r-elasticnet
                             r-dplyr
                             r-delayedarray
                             r-coop
                             r-cluster
                             r-biocparallel
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PhilBoileau/scPCA")
    (synopsis "Sparse Contrastive Principal Component Analysis")
    (description
     "This package provides a toolbox for sparse contrastive principal component
analysis (@code{scPCA}) of high-dimensional biological data. @code{scPCA}
combines the stability and interpretability of sparse PCA with contrastive PCA's
ability to disentangle biological signal from unwanted variation through the use
of control data.  Also implements and extends @code{cPCA}.")
    (license license:expat)))

(define-public r-scp
  (package
    (name "r-scp")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scp" version))
       (sha256
        (base32 "0ah2zy4mi5h1ihrv02s6z5q814rbyx37zcgj11iy5ss5j9zqhli4"))))
    (properties `((upstream-name . "scp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rcolorbrewer
                             r-qfeatures
                             r-nipals
                             r-multiassayexperiment
                             r-mscoreutils
                             r-metapod
                             r-matrixstats
                             r-ihw
                             r-ggrepel
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://UCLouvain-CBIO.github.io/scp")
    (synopsis "Mass Spectrometry-Based Single-Cell Proteomics Data Analysis")
    (description
     "Utility functions for manipulating, processing, and analyzing mass
spectrometry-based single-cell proteomics data.  The package is an extension to
the QFeatures package and relies on @code{SingleCellExpirement} to enable
single-cell proteomics analyses.  The package offers the user the functionality
to process quantitative table (as generated by @code{MaxQuant}, Proteome
Discoverer, and more) into data tables ready for downstream analysis and data
visualization.")
    (license license:artistic2.0)))

(define-public r-scoup
  (package
    (name "r-scoup")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scoup" version))
       (sha256
        (base32 "03gaggdqxkxxx11lfrv21ransdlkmhwzbrn900sjqwn551maacj5"))))
    (properties `((upstream-name . "scoup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/thsadiq/scoup")
    (synopsis
     "Simulate Codons with Darwinian Selection Modelled as an OU Process")
    (description
     "An elaborate molecular evolutionary framework that facilitates straightforward
simulation of codon genetic sequences subjected to different degrees and/or
patterns of Darwinian selection.  The model is built upon the fitness landscape
paradigm of Sewall Wright, as popularised by the mutation-selection model of
Halpern and Bruno.  This enables realistic evolutionary process of living
organisms to be reproducible seamlessly.  For example, an Ornstein-Uhlenbeck
fitness update algorithm is incorporated herein.  Consequently, otherwise
complex biological processes, such as the effect of the interplay between
genetic drift and fitness landscape fluctuations on the inference of
diversifying selection, may now be investigated with minimal effort.
Frequency-dependent and stochastic fitness landscape update techniques are
available.")
    (license license:gpl2+)))

(define-public r-scoreinvhap
  (package
    (name "r-scoreinvhap")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scoreInvHap" version))
       (sha256
        (base32 "0md5crlf4b62nmphxipai7jnpaz7mn2b8r08xjk31zx7skba266j"))))
    (properties `((upstream-name . "scoreInvHap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-snpstats
                             r-genomicranges
                             r-biostrings
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scoreInvHap")
    (synopsis "Get inversion status in predefined regions")
    (description
     "@code{scoreInvHap} can get the samples inversion status of known inversions.
@code{scoreInvHap} uses SNP data as input and requires the following information
about the inversion: genotype frequencies in the different haplotypes, R2
between the region SNPs and inversion status and heterozygote genotypes in the
reference.  The package include this data for 21 inversions.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-scope
  (package
    (name "r-scope")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCOPE" version))
       (sha256
        (base32 "0jf4xd23cx4xafjzcd7jdlk2m57sa3v62fc3zlh71gpz9vbgc82n"))))
    (properties `((upstream-name . "SCOPE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-rcolorbrewer
                             r-iranges
                             r-gplots
                             r-genomicranges
                             r-genomeinfodb
                             r-foreach
                             r-doparallel
                             r-dnacopy
                             r-desctools
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SCOPE")
    (synopsis
     "normalization and copy number estimation method for single-cell DNA sequencing")
    (description
     "Whole genome single-cell DNA sequencing (@code{scDNA-seq}) enables
characterization of copy number profiles at the cellular level.  This
circumvents the averaging effects associated with bulk-tissue sequencing and has
increased resolution yet decreased ambiguity in deconvolving cancer subclones
and elucidating cancer evolutionary history. @code{ScDNA-seq} data is, however,
sparse, noisy, and highly variable even within a homogeneous cell population,
due to the biases and artifacts that are introduced during the library
preparation and sequencing procedure.  Here, we propose SCOPE, a normalization
and copy number estimation method for @code{scDNA-seq} data.  The distinguishing
features of SCOPE include: (i) utilization of cell-specific Gini coefficients
for quality controls and for identification of normal/diploid cells, which are
further used as negative control samples in a Poisson latent factor model for
normalization; (ii) modeling of GC content bias using an
expectation-maximization algorithm embedded in the Poisson generalized linear
models, which accounts for the different copy number states along the genome;
(iii) a cross-sample iterative segmentation procedure to identify breakpoints
that are shared across cells from the same genetic background.")
    (license license:gpl2)))

(define-public r-sconify
  (package
    (name "r-sconify")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Sconify" version))
       (sha256
        (base32 "1py4q8w8y8f1sr4qrpaknmw52sc8sls5zhm2ycrsdkhfwyswcvvm"))))
    (properties `((upstream-name . "Sconify")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-rtsne
                             r-readr
                             r-magrittr
                             r-ggplot2
                             r-fnn
                             r-flowcore
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Sconify")
    (synopsis
     "toolkit for performing KNN-based statistics for flow and mass cytometry data")
    (description
     "This package does k-nearest neighbor based statistics and visualizations with
flow and mass cytometery data.  This gives @code{tSNE} maps\"fold change\"
functionality and provides a data quality metric by assessing manifold overlap
between fcs files expected to be the same.  Other applications using this
package include imputation, marker redundancy, and testing the relative
information loss of lower dimension embeddings compared to the original
manifold.")
    (license license:artistic2.0)))

(define-public r-scnorm
  (package
    (name "r-scnorm")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCnorm" version))
       (sha256
        (base32 "17shqmq81na16wkd7dfjajrhv0mi8zmb9nf5cjns3s4ja2392pja"))))
    (properties `((upstream-name . "SCnorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-quantreg
                             r-moments
                             r-ggplot2
                             r-forcats
                             r-data-table
                             r-cluster
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhondabacher/SCnorm")
    (synopsis "Normalization of single cell RNA-seq data")
    (description
     "This package implements SCnorm — a method to normalize single-cell RNA-seq data.")
    (license license:gpl2+)))

(define-public r-scmultisim
  (package
    (name "r-scmultisim")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scMultiSim" version))
       (sha256
        (base32 "010gdscjvh49cas4b6n5lnalsasy7864ccvfjvbgm4ywq3y0q5fv"))))
    (properties `((upstream-name . "scMultiSim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zeallot
                             r-summarizedexperiment
                             r-rtsne
                             r-rlang
                             r-phytools
                             r-matrixstats
                             r-mass
                             r-markdown
                             r-kernelknn
                             r-igraph
                             r-gplots
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-crayon
                             r-biocparallel
                             r-assertthat
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://zhanglabgt.github.io/scMultiSim/")
    (synopsis
     "Simulation of Multi-Modality Single Cell Data Guided By Gene Regulatory Networks and Cell-Cell Interactions")
    (description
     "@code{scMultiSim} simulates paired single cell RNA-seq, single cell ATAC-seq and
RNA velocity data, while incorporating mechanisms of gene regulatory networks,
chromatin accessibility and cell-cell interactions.  It allows users to tune
various parameters controlling the amount of each biological factor, variation
of gene-expression levels, the influence of chromatin accessibility on RNA
sequence data, and so on.  It can be used to benchmark various computational
methods for single cell multi-omics data, and to assist in experimental design
of wet-lab experiments.")
    (license license:artistic2.0)))

(define-public r-scmultiome
  (package
    (name "r-scmultiome")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scMultiome" version
                              'experiment))
       (sha256
        (base32 "1xk54r7vs67z1b808hsyxyghrsps7kd9mb7ihm2zac1b4jic7myl"))))
    (properties `((upstream-name . "scMultiome")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rhdf5
                             r-multiassayexperiment
                             r-hdf5array
                             r-genomicranges
                             r-experimenthub
                             r-checkmate
                             r-azurestor
                             r-annotationhub
                             r-alabaster-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scMultiome")
    (synopsis
     "Collection of Public Single-Cell Multiome (scATAC + scRNAseq) Datasets")
    (description
     "Single cell multiome data, containing chromatin accessibility
(@code{scATAC-seq}) and gene expression (@code{scRNA-seq}) information analyzed
with the @code{ArchR} package and presented as @code{MultiAssayExperiment}
objects.")
    (license license:cc-by-sa4.0)))

(define-public r-scmitomut
  (package
    (name "r-scmitomut")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scMitoMut" version))
       (sha256
        (base32 "02443jab6l3760090x3qvi9zhk2d7nmkv1faibp9fgpdqms01aha"))))
    (properties `((upstream-name . "scMitoMut")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-stringr
                             r-rhdf5
                             r-readr
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-plyr
                             r-pheatmap
                             r-magrittr
                             r-ggplot2
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/wenjie1991/scMitoMut")
    (synopsis "Single-cell Mitochondrial Mutation Analysis Tool")
    (description
     "This package is designed for calling lineage-informative mitochondrial mutations
using single-cell sequencing data, such as @code{scRNASeq} and @code{scATACSeq}
(preferably the latter due to RNA editing issues).  It includes functions for
mutation calling and visualization.  Mutation calling is done using
beta-binomial distribution.")
    (license license:artistic2.0)))

(define-public r-scmeth
  (package
    (name "r-scmeth")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scmeth" version))
       (sha256
        (base32 "0j977hw1rfm483rk793ihjw7ijxxvninx2h2i6g9im7v0n499f68"))))
    (properties `((upstream-name . "scmeth")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seqinfo
                             r-reshape2
                             r-hdf5array
                             r-genomicranges
                             r-genomeinfodb
                             r-dt
                             r-delayedarray
                             r-bsseq
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-annotatr
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scmeth")
    (synopsis
     "Functions to conduct quality control analysis in methylation data")
    (description
     "This package provides functions to analyze methylation data can be found here.
Some functions are relevant for single cell methylation data but most other
functions can be used for any methylation data.  Highlight of this workflow is
the comprehensive quality control report.")
    (license license:gpl2)))

(define-public r-scmet
  (package
    (name "r-scmet")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scMET" version))
       (sha256
        (base32 "1r7p3arjqvbxz46hlkh0a5ah3bckg4imxxhqfr8bp8f1i5wv7h6v"))))
    (properties `((upstream-name . "scMET")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-vgam
                             r-summarizedexperiment
                             r-stanheaders
                             r-singlecellexperiment
                             r-s4vectors
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-matrixstats
                             r-matrix
                             r-mass
                             r-logitnorm
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-cowplot
                             r-coda
                             r-biocstyle
                             r-bh
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scMET")
    (synopsis
     "Bayesian modelling of cell-to-cell DNA methylation heterogeneity")
    (description
     "High-throughput single-cell measurements of DNA methylomes can quantify
methylation heterogeneity and uncover its role in gene regulation.  However,
technical limitations and sparse coverage can preclude this task. @code{scMET}
is a hierarchical Bayesian model which overcomes sparsity, sharing information
across cells and genomic features to robustly quantify genuine biological
heterogeneity. @code{scMET} can identify highly variable features that drive
epigenetic heterogeneity, and perform differential methylation and variability
analyses.  We illustrate how @code{scMET} facilitates the characterization of
epigenetically distinct cell populations and how it enables the formulation of
novel hypotheses on the epigenetic regulation of gene expression.")
    (license license:gpl3)))

(define-public r-scmerge
  (package
    (name "r-scmerge")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scMerge" version))
       (sha256
        (base32 "1z9g33sajhbirbafkvzl1cc0cwb6dsy79bmy3dw30z5awyfyjj4m"))))
    (properties `((upstream-name . "scMerge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-scran
                             r-scater
                             r-s4vectors
                             r-ruv
                             r-proxyc
                             r-m3drop
                             r-igraph
                             r-distr
                             r-delayedmatrixstats
                             r-delayedarray
                             r-cvtools
                             r-cluster
                             r-biocsingular
                             r-biocparallel
                             r-biocneighbors
                             r-batchelor))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SydneyBioX/scMerge")
    (synopsis "scMerge: Merging multiple batches of scRNA-seq data")
    (description
     "Like all gene expression data, single-cell data suffers from batch effects and
other unwanted variations that makes accurate biological interpretations
difficult.  The @code{scMerge} method leverages factor analysis, stably
expressed genes (SEGs) and (pseudo-) replicates to remove unwanted variations
and merge multiple single-cell data.  This package contains all the necessary
functions in the @code{scMerge} pipeline, including the identification of SEGs,
replication-identification methods, and merging of single-cell data.")
    (license license:gpl3)))

(define-public r-sclcbam
  (package
    (name "r-sclcbam")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCLCBam" version
                              'experiment))
       (sha256
        (base32 "0snfnascxykwsk4gkz6yka3gk86cb72znfkp924rcadczmq3qnhw"))))
    (properties `((upstream-name . "SCLCBam")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/SCLCBam")
    (synopsis "Sequence data from chromosome 4 of a small-cell lung tumor")
    (description
     "Whole-exome sequencing data from a murine small-cell lung tumor; only contains
data of chromosome 4.")
    (license license:gpl2)))

(define-public r-sclane
  (package
    (name "r-sclane")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scLANE" version))
       (sha256
        (base32 "0g41wzi4jh12l3m85jw3acb92f49gybykjfj7y6s98vpv4ap0vii"))))
    (properties `((upstream-name . "scLANE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tidyselect
                             r-tidyr
                             r-scales
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-mpath
                             r-matrix
                             r-mass
                             r-magrittr
                             r-glmmtmb
                             r-glm2
                             r-ggplot2
                             r-geem
                             r-gamlss
                             r-future
                             r-furrr
                             r-foreach
                             r-dplyr
                             r-dosnow
                             r-broom-mixed
                             r-bigstatsr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jr-leary7/scLANE")
    (synopsis
     "Model Gene Expression Dynamics with Spline-Based NB GLMs, GEEs, & GLMMs")
    (description
     "Our @code{scLANE} model uses truncated power basis spline models to build
flexible, interpretable models of single cell gene expression over pseudotime or
latent time.  The modeling architectures currently supported are
Negative-binomial GLMs, GEEs, & GLMMs. Downstream analysis functionalities
include model comparison, dynamic gene clustering, smoothed counts generation,
gene set enrichment testing, & visualization.")
    (license license:expat)))

(define-public r-scifer
  (package
    (name "r-scifer")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scifer" version))
       (sha256
        (base32 "04sglgwsxnw8h4v03hv9vh7hrr97f83pmvyqy1axz5g37lhgrf49"))))
    (properties `((upstream-name . "scifer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-scales
                             r-sangerseqr
                             r-rmarkdown
                             r-rlang
                             r-reticulate
                             r-pwalign
                             r-plyr
                             r-knitr
                             r-kableextra
                             r-here
                             r-gridextra
                             r-ggplot2
                             r-flowcore
                             r-dplyr
                             r-decipher
                             r-data-table
                             r-biostrings
                             r-basilisk-utils
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rodrigarc/scifer")
    (synopsis
     "Scifer: Single-Cell Immunoglobulin Filtering of Sanger Sequences")
    (description
     "Have you ever index sorted cells in a 96 or 384-well plate and then sequenced
using Sanger sequencing? If so, you probably had some struggles to either check
the electropherogram of each cell sequenced manually, or when you tried to
identify which cell was sorted where after sequencing the plate.  Scifer was
developed to solve this issue by performing basic quality control of Sanger
sequences and merging flow cytometry data from probed single-cell sorted B cells
with sequencing data.  scifer can export summary tables, fasta files,
electropherograms for visual inspection, and generate reports.")
    (license license:expat)))

(define-public r-scider
  (package
    (name "r-scider")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scider" version))
       (sha256
        (base32 "1007qg5rm11mm6ljwn5jyfgiil1byfr69xy5hvvl10wfrvydryjy"))))
    (properties `((upstream-name . "scider")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uwot
                             r-summarizedexperiment
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatialpack
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-sf
                             r-s4vectors
                             r-plotly
                             r-pheatmap
                             r-lwgeom
                             r-knitr
                             r-janitor
                             r-isoband
                             r-irlba
                             r-igraph
                             r-hexdensity
                             r-hexbin
                             r-ggplot2
                             r-dbscan
                             r-biocneighbors))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ChenLaboratory/scider")
    (synopsis "Spatial cell-type inter-correlation by density in R")
    (description
     "scider is an user-friendly R package providing functions to model the global
density of cells in a slide of spatial transcriptomics data.  All functions in
the package are built based on the @code{SpatialExperiment} object, allowing
integration into various spatial transcriptomics-related packages from
Bioconductor.  After modelling density, the package allows for serveral
downstream analysis, including colocalization analysis, boundary detection
analysis and differential density analysis.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-schot
  (package
    (name "r-schot")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scHOT" version))
       (sha256
        (base32 "1191rflc7ilcqnmfsgkh532x7mh5hbkg513aiv1zm24gw630jxjb"))))
    (properties `((upstream-name . "scHOT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-reshape
                             r-matrix
                             r-iranges
                             r-igraph
                             r-ggplot2
                             r-ggforce
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scHOT")
    (synopsis "single-cell higher order testing")
    (description
     "Single cell Higher Order Testing (@code{scHOT}) is an R package that facilitates
testing changes in higher order structure of gene expression along either a
developmental trajectory or across space. @code{scHOT} is general and modular in
nature, can be run in multiple data contexts such as along a continuous
trajectory, between discrete groups, and over spatial orientations; as well as
accommodate any higher order measurement such as variability or correlation.
@code{scHOT} meaningfully adds to first order effect testing, such as
differential expression, and provides a framework for interrogating higher order
interactions from single cell data.")
    (license license:gpl3)))

(define-public r-schiccompare
  (package
    (name "r-schiccompare")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scHiCcompare" version))
       (sha256
        (base32 "17lan37g10hm8r9xn48rw21hyhby42mjfvpj5jj64hh4cjr8n3ky"))))
    (properties `((upstream-name . "scHiCcompare")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rstatix
                             r-rlang
                             r-ranger
                             r-miceadds
                             r-mice
                             r-mclust
                             r-lattice
                             r-hiccompare
                             r-gtools
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/ScHiCcompare")
    (synopsis "Differential Analysis of Single-cell Hi-C Data")
    (description
     "This package provides functions for differential chromatin interaction analysis
between two single-cell Hi-C data groups.  It includes tools for imputation,
normalization, and differential analysis of chromatin interactions.  The package
implements pooling techniques for imputation and offers methods to normalize and
test for differential interactions across single-cell Hi-C datasets.")
    (license license:expat)))

(define-public r-schex
  (package
    (name "r-schex")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "schex" version))
       (sha256
        (base32 "0h3dh3vcdfvyx9rryjzagmgfxqspfz6khjwwficvc80izkbm5kj0"))))
    (properties `((upstream-name . "schex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-singlecellexperiment
                             r-rlang
                             r-hexbin
                             r-ggplot2
                             r-ggforce
                             r-entropy
                             r-dplyr
                             r-concaveman
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SaskiaFreytag/schex")
    (synopsis "Hexbin plots for single cell omics data")
    (description
     "Builds hexbin plots for variables and dimension reduction stored in single cell
omics data such as @code{SingleCellExperiment}.  The ideas used in this package
are based on the excellent work of Dan Carr, Nicholas Lewin-Koh, Martin Maechler
and Thomas Lumley.")
    (license license:gpl3)))

(define-public r-scgraphverse
  (package
    (name "r-scgraphverse")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scGraphVerse" version))
       (sha256
        (base32 "02nzhprhvvqk903cj7ynskz5dwbjsknd05wn2z8pwnx4na4h33hs"))))
    (properties `((upstream-name . "scGraphVerse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-reticulate
                             r-multiassayexperiment
                             r-mpath
                             r-matrix
                             r-mass
                             r-jsonlite
                             r-igraph
                             r-httr
                             r-graph
                             r-glmnet
                             r-genie3
                             r-dplyr
                             r-dorng
                             r-doparallel
                             r-distributions3
                             r-biocparallel
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://ngsFC.github.io/scGraphVerse")
    (synopsis "scGraphVerse: A Gene Network Analysis Package")
    (description
     "This package provides a package for inferring, comparing, and visualizing gene
networks from single-cell RNA sequencing data.  It integrates multiple methods
(GENIE3, GRNBoost2, ZILGM, PCzinb, and JRF) for robust network inference,
supports consensus building across methods or datasets, and provides tools for
evaluating regulatory structure and community similarity.  GRNBoost2 requires
Python package arboreto which can be installed using init_py(install_missing =
TRUE).  This package includes adapted functions from ZILGM (Park et al., 2021),
JRF (Petralia et al., 2015), and learn2count (Nguyen et al.  2023) packages with
proper attribution under GPL-2 license.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-scgps
  (package
    (name "r-scgps")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scGPS" version))
       (sha256
        (base32 "0ck8sjxfmb5ls7192yp82bczwwhgf5kqaqivniikhdbb6gy0ilvy"))))
    (properties `((upstream-name . "scGPS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-locfit
                             r-glmnet
                             r-ggplot2
                             r-fastcluster
                             r-dynamictreecut
                             r-dplyr
                             r-deseq2
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scGPS")
    (synopsis
     "complete analysis of single cell subpopulations, from identifying subpopulations to analysing their relationship (scGPS = single cell Global Predictions of Subpopulation)")
    (description
     "The package implements two main algorithms to answer two key questions: a SCORE
(Stable Clustering at Optimal REsolution) to find subpopulations, followed by
@code{scGPS} to investigate the relationships between subpopulations.")
    (license license:gpl3)))

(define-public r-scfeaturefilter
  (package
    (name "r-scfeaturefilter")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scFeatureFilter" version))
       (sha256
        (base32 "0p3aacnj32nnwn8s7ywngs63gf0cciw517a42b610fzn0nf93b4w"))))
    (properties `((upstream-name . "scFeatureFilter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-rlang r-magrittr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scFeatureFilter")
    (synopsis
     "correlation-based method for quality filtering of single-cell RNAseq data")
    (description
     "An R implementation of the correlation-based method developed in the Joshi
laboratory to analyse and filter processed single-cell RNAseq data.  It returns
a filtered version of the data containing only genes expression values
unaffected by systematic noise.")
    (license license:expat)))

(define-public r-scfa
  (package
    (name "r-scfa")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCFA" version))
       (sha256
        (base32 "0p9i44qbff4xwrr7l1v9p7limwn7ahdx0ca47alqqz6nkig36kbr"))))
    (properties `((upstream-name . "SCFA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-torch
                             r-survival
                             r-rhpcblasctl
                             r-psych
                             r-matrixstats
                             r-matrix
                             r-igraph
                             r-glmnet
                             r-coro
                             r-cluster
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/duct317/SCFA")
    (synopsis "SCFA: Subtyping via Consensus Factor Analysis")
    (description
     "Subtyping via Consensus Factor Analysis (SCFA) can efficiently remove noisy
signals from consistent molecular patterns in multi-omics data.  SCFA first uses
an autoencoder to select only important features and then repeatedly performs
factor analysis to represent the data with different numbers of factors.  Using
these representations, it can reliably identify cancer subtypes and accurately
predict risk scores of patients.")
    (license license:lgpl2.0+)))

(define-public r-scdotplot
  (package
    (name "r-scdotplot")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scDotPlot" version))
       (sha256
        (base32 "07c5sxf9nfk2976zrh1gyz2qhdb6lp65iilyvlw7jzsikyx1hh41"))))
    (properties `((upstream-name . "scDotPlot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-singlecellexperiment
                             r-seurat
                             r-scater
                             r-scales
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-ggtree
                             r-ggsci
                             r-ggplot2
                             r-dplyr
                             r-cli
                             r-biocgenerics
                             r-aplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ben-laufer/scDotPlot")
    (synopsis "Cluster a Single-cell RNA-seq Dot Plot")
    (description
     "Dot plots of single-cell RNA-seq data allow for an examination of the
relationships between cell groupings (e.g. clusters) and marker gene expression.
 The @code{scDotPlot} package offers a unified approach to perform a
hierarchical clustering analysis and add annotations to the columns and/or rows
of a @code{scRNA-seq} dot plot.  It works with @code{SingleCellExperiment} and
Seurat objects as well as data frames.")
    (license license:artistic2.0)))

(define-public r-scdiagnostics
  (package
    (name "r-scdiagnostics")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scDiagnostics" version))
       (sha256
        (base32 "1fgpp6gkgwr0lkkbi88rhxb1jdzcjx5jz94k4jasnxm62wcb7r50"))))
    (properties `((upstream-name . "scDiagnostics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-transport
                             r-summarizedexperiment
                             r-stringr
                             r-singlecellexperiment
                             r-scales
                             r-rlang
                             r-ranger
                             r-matrix
                             r-mass
                             r-isotree
                             r-igraph
                             r-ggridges
                             r-ggplot2
                             r-ggally
                             r-fnn
                             r-cramer
                             r-bluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ccb-hms/scDiagnostics")
    (synopsis "Cell type annotation diagnostics")
    (description
     "The @code{scDiagnostics} package provides diagnostic plots to assess the quality
of cell type assignments from single cell gene expression profiles.  The
implemented functionality allows to assess the reliability of cell type
annotations, investigate gene expression patterns, and explore relationships
between different cell types in query and reference datasets allowing users to
detect potential misalignments between reference and query datasets.  The
package also provides visualization capabilities for diagnostics purposes.")
    (license license:artistic2.0)))

(define-public r-scdesign3
  (package
    (name "r-scdesign3")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scDesign3" version))
       (sha256
        (base32 "0pjd68c25badgw9gz44zfcg6w5m9kbvqffjw2ppvi60y7vz0dal9"))))
    (properties `((upstream-name . "scDesign3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-umap
                             r-tibble
                             r-summarizedexperiment
                             r-sparsemvn
                             r-singlecellexperiment
                             r-pbmcapply
                             r-mvtnorm
                             r-mgcv
                             r-mclust
                             r-matrixstats
                             r-matrix
                             r-irlba
                             r-ggplot2
                             r-gamlss-dist
                             r-gamlss
                             r-dplyr
                             r-coop
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SONGDONGYUAN1994/scDesign3")
    (synopsis
     "unified framework of realistic in silico data generation and statistical model inference for single-cell and spatial omics")
    (description
     "We present a statistical simulator, @code{scDesign3}, to generate realistic
single-cell and spatial omics data, including various cell states, experimental
designs, and feature modalities, by learning interpretable parameters from real
data.  Using a unified probabilistic model for single-cell and spatial omics
data, @code{scDesign3} infers biologically meaningful parameters; assesses the
goodness-of-fit of inferred cell clusters, trajectories, and spatial locations;
and generates in silico negative and positive controls for benchmarking
computational tools.")
    (license license:expat)))

(define-public r-scddboost
  (package
    (name "r-scddboost")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scDDboost" version))
       (sha256
        (base32 "0fzmk0wj7qs7jcdsqd12qmhk9gd23pagimgf1xbn0clasy800zp5"))))
    (properties `((upstream-name . "scDDboost")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-rcppeigen
                             r-rcpp
                             r-oscope
                             r-mclust
                             r-ggplot2
                             r-ebseq
                             r-cluster
                             r-biocparallel
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wiscstatman/scDDboost")
    (synopsis
     "compositional model to assess expression changes from single-cell rna-seq data")
    (description
     "@code{scDDboost} is an R package to analyze changes in the distribution of
single-cell expression data between two experimental conditions.  Compared to
other methods that assess differential expression, @code{scDDboost} benefits
uniquely from information conveyed by the clustering of cells into cellular
subtypes.  Through a novel empirical Bayesian formulation it calculates
gene-specific posterior probabilities that the marginal expression distribution
is the same (or different) between the two conditions.  The implementation in
@code{scDDboost} treats gene-level expression data within each condition as a
mixture of negative binomial distributions.")
    (license license:gpl2+)))

(define-public r-scdataviz
  (package
    (name "r-scdataviz")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scDataviz" version))
       (sha256
        (base32 "1q7hac56lakzs10dr9kzq2m817m4891acgjccfixgcfsvdc72svl"))))
    (properties `((upstream-name . "scDataviz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-umap
                             r-singlecellexperiment
                             r-seurat
                             r-scales
                             r-s4vectors
                             r-reshape2
                             r-rcolorbrewer
                             r-matrixstats
                             r-mass
                             r-ggrepel
                             r-ggplot2
                             r-flowcore
                             r-corrplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kevinblighe/scDataviz")
    (synopsis "scDataviz: single cell dataviz and downstream analyses")
    (description
     "In the single cell World, which includes flow cytometry, mass cytometry,
single-cell RNA-seq (@code{scRNA-seq}), and others, there is a need to improve
data visualisation and to bring analysis capabilities to researchers even from
non-technical backgrounds. @code{scDataviz} attempts to fit into this space,
while also catering for advanced users.  Additonally, due to the way that
@code{scDataviz} is designed, which is based on @code{SingleCellExperiment}, it
has a plug and play feel, and immediately lends itself as flexibile and
compatibile with studies that go beyond @code{scDataviz}.  Finally, the graphics
in @code{scDataviz} are generated via the ggplot engine, which means that users
can add on features to these with ease.")
    (license license:gpl3)))

(define-public r-sccomp
  (package
    (name "r-sccomp")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sccomp" version))
       (sha256
        (base32 "06xnp6f962q6qc4078dcaqsh9cdvxgwlis4sinh90y96fmsph6qi"))))
    (properties `((upstream-name . "sccomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-singlecellexperiment
                             r-scales
                             r-rlang
                             r-readr
                             r-purrr
                             r-patchwork
                             r-magrittr
                             r-lifecycle
                             r-instantiate
                             r-glue
                             r-ggrepel
                             r-ggplot2
                             r-forcats
                             r-fansi
                             r-dplyr
                             r-crayon
                             r-cli
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MangiolaLaboratory/sccomp")
    (synopsis
     "Differential Composition and Variability Analysis for Single-Cell Data")
    (description
     "Comprehensive R package for differential composition and variability analysis in
single-cell RNA sequencing, @code{CyTOF}, and microbiome data.  Provides robust
Bayesian modeling with outlier detection, random effects, and advanced
statistical methods for cell type proportion analysis.  Features include
probabilistic outlier identification, mixed-effect modeling, differential
variability testing, and comprehensive visualization tools.  Perfect for cancer
research, immunology, developmental biology, and single-cell genomics
applications.")
    (license license:gpl3)))

(define-public r-scclassify
  (package
    (name "r-scclassify")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scClassify" version))
       (sha256
        (base32 "1napk4jijjqan6x0y0xxf7lkj1d8h7djala7r5npdn5cj7wjykln"))))
    (properties `((upstream-name . "scClassify")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statmod
                             r-s4vectors
                             r-proxyc
                             r-proxy
                             r-mixtools
                             r-minpack-lm
                             r-mgcv
                             r-matrix
                             r-limma
                             r-igraph
                             r-hopach
                             r-ggraph
                             r-ggplot2
                             r-diptest
                             r-cluster
                             r-cepo
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scClassify")
    (synopsis "scClassify: single-cell Hierarchical Classification")
    (description
     "@code{scClassify} is a multiscale classification framework for single-cell
RNA-seq data based on ensemble learning and cell type hierarchies, enabling
sample size estimation required for accurate cell type classification and joint
classification of cells using multiple references.")
    (license license:gpl3)))

(define-public r-sccb2
  (package
    (name "r-sccb2")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scCB2" version))
       (sha256
        (base32 "0laxia6dkd00iq0ri10v771y6rspa920q78b2ajxq79j4qadn5l9"))))
    (properties `((upstream-name . "scCB2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-rhdf5
                             r-matrix
                             r-iterators
                             r-foreach
                             r-edger
                             r-dropletutils
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zijianni/scCB2")
    (synopsis
     "CB2 improves power of cell detection in droplet-based single-cell RNA sequencing data")
    (description
     "@code{scCB2} is an R package implementing CB2 for distinguishing real cells from
empty droplets in droplet-based single cell RNA-seq experiments (especially for
10x Chromium).  It is based on clustering similar barcodes and calculating
Monte-Carlo p-value for each cluster to test against background distribution.
This cluster-level test outperforms single-barcode-level tests in dealing with
low count barcodes and homogeneous sequencing library, while keeping FDR well
controlled.")
    (license license:gpl3)))

(define-public r-scbubbletree
  (package
    (name "r-scbubbletree")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scBubbletree" version))
       (sha256
        (base32 "1pcpja5x0ax1788csykzr08p0h1c1z6vrv4njvy4f2fdj971czwr"))))
    (properties `((upstream-name . "scBubbletree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list python python-leidenalg))
    (propagated-inputs (list r-seurat
                             r-scales
                             r-reshape2
                             r-proxy
                             r-patchwork
                             r-ggtree
                             r-ggplot2
                             r-dplyr
                             r-biocparallel
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/snaketron/scBubbletree")
    (synopsis "Quantitative visual exploration of scRNA-seq data")
    (description
     "@code{scBubbletree} is a quantitative method for the visual exploration of
@code{scRNA-seq} data, preserving key biological properties such as local and
global cell distances and cell density distributions across samples.  It
effectively resolves overplotting and enables the visualization of diverse cell
attributes from multiomic single-cell experiments.  Additionally,
@code{scBubbletree} is user-friendly and integrates seamlessly with popular
@code{scRNA-seq} analysis tools, facilitating comprehensive and intuitive data
interpretation.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-scbn
  (package
    (name "r-scbn")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCBN" version))
       (sha256
        (base32 "0snnmajjqlrnpcib472i0g9kbsxw9f63gxjj0i58x4xpw9skia57"))))
    (properties `((upstream-name . "SCBN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SCBN")
    (synopsis
     "statistical normalization method and differential expression analysis for RNA-seq data between different species")
    (description
     "This package provides a scale based normalization (SCBN) method to identify
genes with differential expression between different species.  It takes into
account the available knowledge of conserved orthologous genes and the
hypothesis testing framework to detect differentially expressed orthologous
genes.  The method on this package are described in the article A statistical
normalization method and differential expression analysis for RNA-seq data
between different species by Yan Zhou, Jiadi Zhu, Tiejun Tong, Junhui Wang,
Bingqing Lin, Jun Zhang (2018, pending publication).")
    (license license:gpl2)))

(define-public r-scbfa
  (package
    (name "r-scbfa")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scBFA" version))
       (sha256
        (base32 "0fdnh210afa30z9vjbdz58p47f14n4h6lm6jrvj8hi87wdxjk2lh"))))
    (properties `((upstream-name . "scBFA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zinbwave
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-matrix
                             r-mass
                             r-ggplot2
                             r-deseq2
                             r-copula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ucdavis/quon-titative-biology/BFA")
    (synopsis
     "dimensionality reduction tool using gene detection pattern to mitigate noisy expression profile of scRNA-seq")
    (description
     "This package is designed to model gene detection pattern of @code{scRNA-seq}
through a binary factor analysis model.  This model allows user to pass into a
cell level covariate matrix X and gene level covariate matrix Q to account for
nuisance variance(e.g batch effect), and it will output a low dimensional
embedding matrix for downstream analysis.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-scatterhatch
  (package
    (name "r-scatterhatch")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scatterHatch" version))
       (sha256
        (base32 "027gmj3ymx9f15rcymj30xggmf0rggs2jygw39mxf7iqak9r97kc"))))
    (properties `((upstream-name . "scatterHatch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatstat-geom r-plyr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FertigLab/scatterHatch")
    (synopsis "Creates hatched patterns for scatterplots")
    (description
     "The objective of this package is to efficiently create scatterplots where groups
can be distinguished by color and texture.  Visualizations in computational
biology tend to have many groups making it difficult to distinguish between
groups solely on color.  Thus, this package is useful for increasing the
accessibility of scatterplot visualizations to those with visual impairments
such as color blindness.")
    (license license:expat)))

(define-public r-scatac-explorer
  (package
    (name "r-scatac-explorer")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scATAC.Explorer" version
                              'experiment))
       (sha256
        (base32 "1r8my1c9xqnqmj2lz4ka1w499af72160qmynrspvkvqbgr4vcssz"))))
    (properties `((upstream-name . "scATAC.Explorer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zellkonverter
                             r-singlecellexperiment
                             r-s4vectors
                             r-matrix
                             r-data-table
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scATAC.Explorer")
    (synopsis
     "Collection of Single-cell ATAC Sequencing Datasets and Corresponding Metadata")
    (description
     "This package provides a tool to search and download a collection of publicly
available single cell ATAC-seq datasets and their metadata.
@code{scATAC-Explorer} aims to act as a single point of entry for users looking
to study single cell ATAC-seq data.  Users can quickly search available datasets
using the metadata table and download datasets of interest for immediate
analysis within R.")
    (license license:artistic2.0)))

(define-public r-scarray-sat
  (package
    (name "r-scarray-sat")
    (version "1.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCArray.sat" version))
       (sha256
        (base32 "0yd5pinqbdi5pq1vcbabwqnwhw3vrk3qbdyrqi82hib5zqxzw9zr"))))
    (properties `((upstream-name . "SCArray.sat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seuratobject
                             r-seurat
                             r-scarray
                             r-s4vectors
                             r-matrix
                             r-gdsfmt
                             r-delayedarray
                             r-biocsingular
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SCArray.sat")
    (synopsis
     "Large-scale single-cell RNA-seq data analysis using GDS files and Seurat")
    (description
     "Extends the Seurat classes and functions to support Genomic Data Structure (GDS)
files as a @code{DelayedArray} backend for data representation.  It relies on
the implementation of GDS-based @code{DelayedMatrix} in the SCArray package to
represent single cell RNA-seq data.  The common optimized algorithms leveraging
GDS-based and single cell-specific @code{DelayedMatrix} (SC_GDSMatrix) are
implemented in the SCArray package.  SCArray.sat introduces a new
SC@code{ArrayAssay} class (derived from the Seurat Assay), which wraps raw
counts, normalized expressions and scaled data matrix based on GDS-specific
@code{DelayedMatrix}.  It is designed to integrate seamlessly with the Seurat
package to provide common data analysis in the @code{SeuratObject-based}
workflow.  Compared with Seurat, SCArray.sat significantly reduces the memory
usage without downsampling and can be applied to very large datasets.")
    (license license:gpl3)))

(define-public r-scarray
  (package
    (name "r-scarray")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCArray" version))
       (sha256
        (base32 "1bxbjl5445glqj6vsl6i0z1rrkc6k91glhg343ykzz2hhjz6xifd"))))
    (properties `((upstream-name . "SCArray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-sparsearray
                             r-singlecellexperiment
                             r-s4vectors
                             r-matrix
                             r-gdsfmt
                             r-delayedmatrixstats
                             r-delayedarray
                             r-biocsingular
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AbbVie-ComputationalGenomics/SCArray")
    (synopsis "Large-scale single-cell omics data manipulation with GDS files")
    (description
     "This package provides large-scale single-cell omics data manipulation using
Genomic Data Structure (GDS) files.  It combines dense and sparse matrices
stored in GDS files and the Bioconductor infrastructure framework
(@code{SingleCellExperiment} and @code{DelayedArray}) to provide out-of-memory
data storage and large-scale manipulation using the R programming language.")
    (license license:gpl3)))

(define-public r-scanvis
  (package
    (name "r-scanvis")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCANVIS" version))
       (sha256
        (base32 "10a7iw5iqmnlhn74000gbaqnbkp98l0ar4cin8fqgrbmj5fmm0ha"))))
    (properties `((upstream-name . "SCANVIS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtracklayer r-rcurl r-plotrix r-iranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SCANVIS")
    (synopsis
     "SCANVIS - a tool for SCoring, ANnotating and VISualizing splice junctions")
    (description
     "SCANVIS is a set of annotation-dependent tools for analyzing splice junctions
and their read support as predetermined by an alignment tool of choice (for
example, STAR aligner).  SCANVIS assesses each junction's relative read support
(RRS) by relating to the context of local split reads aligning to annotated
transcripts.  SCANVIS also annotates each splice junction by indicating whether
the junction is supported by annotation or not, and if not, what type of
junction it is (e.g. exon skipping, alternative 5 or 3 events, Novel Exons).
Unannotated junctions are also futher annotated by indicating whether it induces
a frame shift or not.  SCANVIS includes a visualization function to generate
static sashimi-style plots depicting relative read support and number of split
reads using arc thickness and arc heights, making it easy for users to spot
well-supported junctions.  These plots also clearly delineate unannotated
junctions from annotated ones using designated color schemes, and users can also
highlight splice junctions of choice.  Variants and/or a read profile are also
incoroporated into the plot if the user supplies variants in bed format and/or
the BAM file.  One further feature of the visualization function is that users
can submit multiple samples of a certain disease or cohort to generate a single
plot - this occurs via a \"merge\" function wherein junction details over multiple
samples are merged to generate a single sashimi plot, which is useful when
contrasting cohorots (eg.  disease vs control).")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-scannotatr-models
  (package
    (name "r-scannotatr-models")
    (version "0.99.10")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scAnnotatR.models" version
                              'annotation))
       (sha256
        (base32 "1mj23jyakx5bss4v8lb66ri67ajcxk9kzfp8ya8vsbhkx5npqgl4"))))
    (properties `((upstream-name . "scAnnotatR.models")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scAnnotatR.models")
    (synopsis "Pretrained models for scAnnotatR package")
    (description
     "Pretrained models for @code{scAnnotatR} package.  These models can be used to
automatically classify several (immune) cell types in human @code{scRNA-seq}
data.")
    (license license:expat)))

(define-public r-scanmirdata
  (package
    (name "r-scanmirdata")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scanMiRData" version
                              'experiment))
       (sha256
        (base32 "15hs0bpc75a16n32bz2aj4cw53gy7mp78cih21k048mjd7mhr2r6"))))
    (properties `((upstream-name . "scanMiRData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scanmir))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scanMiRData")
    (synopsis "miRNA Affinity models for the scanMiR package")
    (description
     "This package contains companion data to the @code{scanMiR} package.  It contains
`@code{KdModel`} (@code{miRNA} 12-mer binding affinity models) collections
corresponding to all human, mouse and rat mirbase @code{miRNAs}.  See the
@code{scanMiR} package for details.")
    (license license:gpl3)))

(define-public r-scanmirapp
  (package
    (name "r-scanmirapp")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scanMiRApp" version))
       (sha256
        (base32 "0mfmlvdlzn9ldxhfrx1szhkssqqwqzy7l943j2y2rfsavg3w14lj"))))
    (properties `((upstream-name . "scanMiRApp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waiter
                             r-txdbmaker
                             r-shinyjqui
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-scanmirdata
                             r-scanmir
                             r-s4vectors
                             r-rtracklayer
                             r-rintrojs
                             r-plotly
                             r-matrix
                             r-iranges
                             r-htmlwidgets
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-fst
                             r-ensembldb
                             r-dt
                             r-digest
                             r-data-table
                             r-biostrings
                             r-biocparallel
                             r-annotationhub
                             r-annotationfilter
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scanMiRApp")
    (synopsis "scanMiR shiny application")
    (description
     "This package provides a shiny interface to the @code{scanMiR} package.  The
application enables the scanning of transcripts and custom sequences for
@code{miRNA} binding sites, the visualization of @code{KdModels} and binding
results, as well as browsing predicted repression data.  In addition contains
the @code{IndexedFst} class for fast indexed reading of large
@code{GenomicRanges} or data.frames, and some utilities for facilitating scans
and identifying enriched @code{miRNA-target} pairs.")
    (license license:gpl3)))

(define-public r-scanmir
  (package
    (name "r-scanmir")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scanMiR" version))
       (sha256
        (base32 "0yfzfsilqfm3waj4hjx455k7icln526jgmhp5byyq75zn3a8mgr8"))))
    (properties `((upstream-name . "scanMiR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-seqlogo
                             r-seqinfo
                             r-s4vectors
                             r-pwalign
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-data-table
                             r-cowplot
                             r-biostrings
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/scanMiR")
    (synopsis "scanMiR")
    (description
     "This package provides a set of tools for working with @code{miRNA} affinity
models (@code{KdModels}), efficiently scanning for @code{miRNA} binding sites,
and predicting target repression.  It supports scanning using @code{miRNA}
seeds, full @code{miRNA} sequences (enabling 3 alignment) and @code{KdModels},
and includes the prediction of slicing and TDMD sites.  Finally, it includes
utility and plotting functions (e.g. for the visual representation of
@code{miRNA-target} alignment).")
    (license license:gpl3)))

(define-public r-scan-upc
  (package
    (name "r-scan-upc")
    (version "2.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SCAN.UPC" version))
       (sha256
        (base32 "0kvzg4i7yl0d1p0plwzbisl6z3kjn46avaa86g5y9jxj4vwhgb9p"))))
    (properties `((upstream-name . "SCAN.UPC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-oligo
                             r-mass
                             r-iranges
                             r-geoquery
                             r-foreach
                             r-biostrings
                             r-biobase
                             r-affyio
                             r-affy))
    (home-page "http://bioconductor.org")
    (synopsis
     "Single-channel array normalization (SCAN) and Universal exPression Codes (UPC)")
    (description
     "SCAN is a microarray normalization method to facilitate personalized-medicine
workflows.  Rather than processing microarray samples as groups, which can
introduce biases and present logistical challenges, SCAN normalizes each sample
individually by modeling and removing probe- and array-specific background noise
using only data from within each array.  SCAN can be applied to one-channel
(e.g., Affymetrix) or two-channel (e.g., Agilent) microarrays.  The Universal
@code{exPression} Codes (UPC) method is an extension of SCAN that estimates
whether a given gene/transcript is active above background levels in a given
sample.  The UPC method can be applied to one-channel or two-channel microarrays
as well as to RNA-Seq read counts.  Because UPC values are represented on the
same scale and have an identical interpretation for each platform, they can be
used for cross-platform data integration.")
    (license license:expat)))

(define-public r-scale4c
  (package
    (name "r-scale4c")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Scale4C" version))
       (sha256
        (base32 "063h796ywzzp92avhvjhdbmzd7z4a3rm2rvb60sigkbbb1636scj"))))
    (properties `((upstream-name . "Scale4C")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-smoothie r-iranges
                             r-genomicranges))
    (home-page "https://bioconductor.org/packages/Scale4C")
    (synopsis
     "Scale4C: an R/Bioconductor package for scale-space transformation of 4C-seq data")
    (description
     "Scale4C is an R/Bioconductor package for scale-space transformation and
visualization of 4C-seq data.  The scale-space transformation is a multi-scale
visualization technique to transform a 2D signal (e.g. 4C-seq reads on a genomic
interval of choice) into a tesselation in the scale space (2D, genomic position
x scale factor) by applying different smoothing kernels (Gauss, with increasing
sigma).  This transformation allows for explorative analysis and comparisons of
the data's structure with other samples.")
    (license license:lgpl3)))

(define-public r-scafari
  (package
    (name "r-scafari")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scafari" version))
       (sha256
        (base32 "0pwda9szl9ga8ic17wnfkadgisyzjy6gihvsrcn1ap6vdjzgs745"))))
    (properties `((upstream-name . "scafari")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waiter
                             r-txdbmaker
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-singlecellexperiment
                             r-shinyjs
                             r-shinycustomloader
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-scales
                             r-s4vectors
                             r-rhdf5
                             r-reshape2
                             r-rann
                             r-r-utils
                             r-plotly
                             r-org-hs-eg-db
                             r-markdown
                             r-magrittr
                             r-jsonlite
                             r-igraph
                             r-httr
                             r-ggplot2
                             r-ggbio
                             r-genomicranges
                             r-factoextra
                             r-dt
                             r-dplyr
                             r-dbscan
                             r-complexheatmap
                             r-circlize
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sophiewind/scafari")
    (synopsis "Analysis of scDNA-seq data")
    (description
     "Scafari is a Shiny application designed for the analysis of single-cell DNA
sequencing (@code{scDNA-seq}) data provided in .h5 file format.  The analysis
process is structured into the four key steps \"Sequencing\", \"Panel\", \"Variants\",
and \"Explore Variants\".  It supports various analyses and visualizations.")
    (license license:lgpl3)))

(define-public r-scaedata
  (package
    (name "r-scaedata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "scaeData" version
                              'experiment))
       (sha256
        (base32 "110bpnqk1c6laa9drf8qm3k7c4bc410jrazszx8gkc7qzhfpdgqc"))))
    (properties `((upstream-name . "scaeData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AGImkeller/scaeData")
    (synopsis "Data Package for SingleCellAlleleExperiment")
    (description
     "This package contains default datasets used by the Bioconductor package
@code{SingleCellAlleleExperiment}.  The raw FASTQ files were sourced from
publicly accessible datasets provided by 10x Genomics.  Subsequently, our
@code{scIGD} snakemake workflow was employed to process these FASTQ files.  The
resulting output from @code{scIGD} constitutes to the contents of this data
package.")
    (license license:expat)))

(define-public r-sc3
  (package
    (name "r-sc3")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SC3" version))
       (sha256
        (base32 "1ysxbarqrw8pbg2fm66nsyjxshi0c14svydwc3yj2ldlv25n7kmi"))))
    (properties `((upstream-name . "SC3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-writexls
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-s4vectors
                             r-rrcov
                             r-rocr
                             r-robustbase
                             r-rcpparmadillo
                             r-rcpp
                             r-pheatmap
                             r-ggplot2
                             r-foreach
                             r-e1071
                             r-dorng
                             r-doparallel
                             r-cluster
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hemberg-lab/SC3")
    (synopsis "Single-Cell Consensus Clustering")
    (description
     "This package provides a tool for unsupervised clustering and analysis of single
cell RNA-Seq data.")
    (license license:gpl3)))

(define-public r-sbmlr
  (package
    (name "r-sbmlr")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SBMLR" version))
       (sha256
        (base32 "0qy698n59i9c4lhlc1nhs7p9pcg1c7y818vyw23piyk8x27rd2wq"))))
    (properties `((upstream-name . "SBMLR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-desolve))
    (home-page "http://epbi-radivot.cwru.edu/SBMLR/SBMLR.html")
    (synopsis "SBML-R Interface and Analysis Tools")
    (description
     "This package contains a systems biology markup language (SBML) interface to R.")
    (license license:gpl2)))

(define-public r-sbgnview-data
  (package
    (name "r-sbgnview-data")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SBGNview.data" version
                              'experiment))
       (sha256
        (base32 "1qpxymydwb1j647ds9bxzww1q2p7n15mkxd5wzhqij44zysgndw1"))))
    (properties `((upstream-name . "SBGNview.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown r-knitr r-bookdown))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SBGNview.data")
    (synopsis "Supporting datasets for SBGNview package")
    (description
     "This package contains: 1.  A microarray gene expression dataset from a human
breast cancer study.  2.  A RNA-Seq gene expression dataset from a mouse study
on IFNG knockout.  3.  ID mapping tables between gene IDs and SBGN-ML file glyph
IDs.  4.  Percent of orthologs detected in other species of the genes in a
pathway.  Cutoffs of this percentage for defining if a pathway exists in another
species.  5.  XML text of SBGN-ML files for all pre-collected pathways.")
    (license license:agpl3)))

(define-public r-sbgnview
  (package
    (name "r-sbgnview")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SBGNview" version))
       (sha256
        (base32 "1qyxd55c1w8kv5dchjcl6kfg96sq52y7fvinxssq9dacwk0p698w"))))
    (properties `((upstream-name . "SBGNview")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-summarizedexperiment
                             r-sbgnview-data
                             r-rsvg
                             r-rmarkdown
                             r-rdpack
                             r-pathview
                             r-knitr
                             r-keggrest
                             r-igraph
                             r-httr
                             r-bookdown
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/datapplab/SBGNview")
    (synopsis
     "\"SBGNview: Data Analysis, Integration and Visualization on SBGN Pathways\"")
    (description
     "SBGNview is a tool set for pathway based data visalization, integration and
analysis.  SBGNview is similar and complementary to the widely used Pathview,
with the following key features: 1.  Pathway definition by the widely adopted
Systems Biology Graphical Notation (SBGN); 2.  Supports multiple major pathway
databases beyond KEGG (Reactome, @code{MetaCyc}, SMPDB, PANTHER, METACROP) and
user defined pathways; 3.  Covers 5,200 reference pathways and over 3,000
species by default; 4.  Extensive graphics controls, including glyph and edge
attributes, graph layout and sub-pathway highlight; 5.  SBGN pathway data
manipulation, processing, extraction and analysis.")
    (license license:agpl3)))

(define-public r-saureusprobe
  (package
    (name "r-saureusprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "saureusprobe" version
                              'annotation))
       (sha256
        (base32 "0s5ma3hh7ncsi4dq33r3hwffk85x3gvjbm5cslppbsd0r0bjwkia"))))
    (properties `((upstream-name . "saureusprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/saureusprobe")
    (synopsis "Probe sequence data for microarrays of type saureus")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was S\\_aureus\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-saureuscdf
  (package
    (name "r-saureuscdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "saureuscdf" version
                              'annotation))
       (sha256
        (base32 "0vmm3fy10dzzmaq22ah4fb0k3fs1gdbhnsi8mxz7xgp27dcan29j"))))
    (properties `((upstream-name . "saureuscdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/saureuscdf")
    (synopsis "saureuscdf")
    (description
     "This package provides a package containing an environment representing the
S_aureus.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-saser
  (package
    (name "r-saser")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "saseR" version))
       (sha256
        (base32 "0gms4md6qhw2fbbl2sn31fa50abpp19wmm6qh2z048v08zyf3wfb"))))
    (properties `((upstream-name . "saseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-prroc
                             r-matrixgenerics
                             r-mass
                             r-limma
                             r-iranges
                             r-igraph
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-edger
                             r-dplyr
                             r-deseq2
                             r-data-table
                             r-biocparallel
                             r-biocgenerics
                             r-aspli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/statOmics/saseR")
    (synopsis "Scalable Aberrant Splicing and Expression Retrieval")
    (description
     "@code{saseR} is a highly performant and fast framework for aberrant expression
and splicing analyses.  The main functions are: \\itemize{ \\item
\\code{\\link{@code{BamtoAspliCounts}}} - Process BAM files to ASpli counts \\item
\\code{\\link{@code{convertASpli}}} - Get gene, bin or junction counts from ASpli
@code{SummarizedExperiment} \\item \\code{\\link{@code{calculateOffsets}}} - Create
an offsets assays for aberrant expression or splicing analysis \\item
\\code{\\link{@code{saseRfindEncodingDim}}} - Estimate the optimal number of
latent factors to include when estimating the mean expression \\item
\\code{\\link{@code{saseRfit}}} - Parameter estimation of the negative binomial
distribution and compute p-values for aberrant expression and splicing } For
information upon how to use these functions, check out our vignette at
\\url{https://github.com/@code{statOmics/saseR/blob/main/vignettes/Vignette.Rmd}}
and the @code{saseR} paper: Segers, A. et al. (2023).  Juggling offsets unlocks
RNA-seq tools for fast scalable differential usage, aberrant splicing and
expression analyses. @code{bioRxiv}.
\\url{https://doi.org/10.1101/2023.06.29.547014}.")
    (license license:artistic2.0)))

(define-public r-sarks
  (package
    (name "r-sarks")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sarks" version))
       (sha256
        (base32 "0bkkhi5cpbmwc6f1l1vv7mkz4z76mq1sqam3yq3hmjhhxihf8ffx"))))
    (properties `((upstream-name . "sarks")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-iranges r-cluster r-biostrings r-binom))
    (home-page
     "https://academic.oup.com/bioinformatics/article-abstract/35/20/3944/5418797")
    (synopsis
     "Suffix Array Kernel Smoothing for discovery of correlative sequence motifs and multi-motif domains")
    (description
     "Suffix Array Kernel Smoothing (see
https://academic.oup.com/bioinformatics/article-abstract/35/20/3944/5418797), or
S@code{ArKS}, identifies sequence motifs whose presence correlates with numeric
scores (such as differential expression statistics) assigned to the sequences
(such as gene promoters).  S@code{ArKS} smooths over sequence similarity,
quantified by location within a suffix array based on the full set of input
sequences.  A second round of smoothing over spatial proximity within sequences
reveals multi-motif domains.  Discovered motifs can then be merged or extended
based on adjacency within MMDs.  False positive rates are estimated and
controlled by permutation testing.")
    (license license:bsd-3)))

(define-public r-santa
  (package
    (name "r-santa")
    (version "2.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SANTA" version))
       (sha256
        (base32 "0saxpxbxwyzl4a8w7z550df5x1gzpg56si7hzv6r6v9arcc39i50"))))
    (properties `((upstream-name . "SANTA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/SANTA")
    (synopsis "Spatial Analysis of Network Associations")
    (description
     "This package provides methods for measuring the strength of association between
a network and a phenotype.  It does this by measuring clustering of the
phenotype across the network (Knet).  Vertices can also be individually ranked
by their strength of association with high-weight vertices (Knode).")
    (license license:gpl2+)))

(define-public r-sanityr
  (package
    (name "r-sanityr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SanityR" version))
       (sha256
        (base32 "0a7zayilxgw7fzqqk8b9f3q6r3chagkmy5bxyai0ylsxg49202sw"))))
    (properties `((upstream-name . "SanityR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-scuttle
                             r-s4vectors
                             r-rcpp
                             r-matrixgenerics
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/TeoSakel/SanityR")
    (synopsis
     "R/Bioconductor interface to the Sanity model gene expression analysis")
    (description
     "a Bayesian normalization procedure derived from first principles.  Sanity
estimates expression values and associated error bars directly from raw unique
molecular identifier (UMI) counts without any tunable parameters.")
    (license license:gpl3+)))

(define-public r-sangeranalyser
  (package
    (name "r-sangeranalyser")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sangeranalyseR" version))
       (sha256
        (base32 "18jk5yqm96smqcqw70yl3v88iz03ishx47c6d0d01z22k8hyk08q"))))
    (properties `((upstream-name . "sangeranalyseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-zeallot
                             r-stringr
                             r-shinywidgets
                             r-shinyjs
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-seqinr
                             r-sangerseqr
                             r-rmarkdown
                             r-reshape2
                             r-pwalign
                             r-plotly
                             r-openxlsx
                             r-logger
                             r-knitr
                             r-gridextra
                             r-ggdendro
                             r-excelr
                             r-dt
                             r-decipher
                             r-data-table
                             r-biostrings
                             r-biocstyle
                             r-ape))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/sangeranalyseR")
    (synopsis
     "sangeranalyseR: a suite of functions for the analysis of Sanger sequence data in R")
    (description
     "This package builds on @code{sangerseqR} to allow users to create contigs from
collections of Sanger sequencing reads.  It provides a wide range of options for
a number of commonly-performed actions including read trimming, detecting
secondary peaks, and detecting indels using a reference sequence.  All
parameters can be adjusted interactively either in R or in the associated Shiny
applications.  There is extensive online documentation, and the package can
outputs detailed HTML reports, including chromatograms.")
    (license license:gpl2)))

(define-public r-samspectral
  (package
    (name "r-samspectral")
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SamSPECTRAL" version))
       (sha256
        (base32 "1ncxkzydr5d0xca7jikif6s68m5ah6bnk7qg45cf1svicar4k0j1"))))
    (properties `((upstream-name . "SamSPECTRAL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/SamSPECTRAL")
    (synopsis "Identifies cell population in flow cytometry data")
    (description
     "Samples large data such that spectral clustering is possible while preserving
density information in edge weights.  More specifically, given a matrix of
coordinates as input, @code{SamSPECTRAL} first builds the communities to sample
the data points.  Then, it builds a graph and after weighting the edges by
conductance computation, the graph is passed to a classic spectral clustering
algorithm to find the spectral clusters.  The last stage of @code{SamSPECTRAL}
is to combine the spectral clusters.  The resulting \"connected components\"
estimate biological cell populations in the data.  See the vignette for more
details on how to use this package, some illustrations, and simple examples.")
    (license license:gpl2+)))

(define-public r-sampleclassifierdata
  (package
    (name "r-sampleclassifierdata")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sampleClassifierData" version
                              'experiment))
       (sha256
        (base32 "0i8jh942mapk8lk0amnxfqsqjkrxkisjnna19c5vpjisp3lqw5gc"))))
    (properties `((upstream-name . "sampleClassifierData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment))
    (home-page "https://bioconductor.org/packages/sampleClassifierData")
    (synopsis "Pre-processed data for use with the sampleClassifier package")
    (description
     "This package contains two microarray and two RNA-seq datasets that have been
preprocessed for use with the @code{sampleClassifier} package.  The RNA-seq data
are derived from Fagerberg et al. (2014) and the Illumina Body Map 2.0 data.
The microarray data are derived from Roth et al. (2006) and Ge et al. (2005).")
    (license license:artistic2.0)))

(define-public r-saigegds
  (package
    (name "r-saigegds")
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "SAIGEgds" version))
       (sha256
        (base32 "0y4zkdf6khicaxbm7d98pvbd083c4624cc290xc1sssxf8nxrahn"))))
    (properties `((upstream-name . "SAIGEgds")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survey
                             r-skat
                             r-seqarray
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-gdsfmt
                             r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AbbVie-ComputationalGenomics/SAIGEgds")
    (synopsis
     "Scalable Implementation of Generalized mixed models using GDS files in Phenome-Wide Association Studies")
    (description
     "Scalable implementation of generalized mixed models with highly optimized C++
implementation and integration with Genomic Data Structure (GDS) files.  It is
designed for single variant tests and set-based aggregate tests in large-scale
Phenome-wide Association Studies (@code{PheWAS}) with millions of variants and
samples, controlling for sample structure and case-control imbalance.  The
implementation is based on the SAIGE R package (v0.45, Zhou et al.  2018 and
Zhou et al.  2020), and it is extended to include the state-of-the-art ACAT-O
set-based tests.  Benchmarks show that SAIGEgds is significantly faster than the
SAIGE R package.")
    (license license:gpl3)))

(define-public r-sagenhaft
  (package
    (name "r-sagenhaft")
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "sagenhaft" version))
       (sha256
        (base32 "16m68j9p9ad7x1mwbgpzivhn60y5z4h66kaqpgkzk7wn61lajxh4"))))
    (properties `((upstream-name . "sagenhaft")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsem))
    (home-page "http://www.bioinf.med.uni-goettingen.de")
    (synopsis
     "Collection of functions for reading and comparing SAGE libraries")
    (description
     "This package implements several functions useful for analysis of gene expression
data by sequencing tags as done in SAGE (Serial Analysis of Gene Expressen)
data, i.e.  extraction of a SAGE library from sequence files, sequence error
correction, library comparison.  Sequencing error correction is implementing
using an Expectation Maximization Algorithm based on a Mixture Model of tag
counts.")
    (license license:gpl2+)))

(define-public r-safe
  (package
    (name "r-safe")
    (version "3.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "safe" version))
       (sha256
        (base32 "1p4lscs7dasag6qfv4s98adgz1sp6q08a3agf8z96qbzg1gvw0c9"))))
    (properties `((upstream-name . "safe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsem r-biobase r-annotationdbi))
    (home-page "https://bioconductor.org/packages/safe")
    (synopsis "Significance Analysis of Function and Expression")
    (description
     "SAFE is a resampling-based method for testing functional categories in gene
expression experiments.  SAFE can be applied to 2-sample and multi-class
comparisons, or simple linear regressions.  Other experimental designs can also
be accommodated through user-defined functions.")
    (license license:gpl2+)))

