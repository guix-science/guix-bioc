(define-module (guix-bioc packages b)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages c)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python)
  #:use-module (gnu packages machine-learning)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages q)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages m)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
  #:use-module (guix-bioc packages v)
  #:use-module (guix-bioc packages u)
  #:use-module (guix-bioc packages t)
  #:use-module (guix-bioc packages s)
  #:use-module (guix-bioc packages r)
  #:use-module (guix-bioc packages q)
  #:use-module (guix-bioc packages p)
  #:use-module (guix-bioc packages o)
  #:use-module (guix-bioc packages n)
  #:use-module (guix-bioc packages m)
  #:use-module (guix-bioc packages l)
  #:use-module (guix-bioc packages k)
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages a))

(define-public r-busseq
  (package
    (name "r-busseq")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUSseq" version))
       (sha256
        (base32 "1pmi2mbnpdxp4q2kh0h68bjq6j0rrh8nnlxidfk92gw058vhbv60"))))
    (properties `((upstream-name . "BUSseq")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-singlecellexperiment
                             r-s4vectors r-gplots))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/songfd2018/BUSseq")
    (synopsis
     "Batch Effect Correction with Unknow Subtypes for scRNA-seq data")
    (description
     "BUSseq R package fits an interpretable Bayesian hierarchical model---the Batch
Effects Correction with Unknown Subtypes for @code{scRNA} seq Data (BUSseq)---to
correct batch effects in the presence of unknown cell types.  BUSseq is able to
simultaneously correct batch effects, clusters cell types, and takes care of the
count data nature, the overdispersion, the dropout events, and the cell-specific
sequencing depth of @code{scRNA-seq} data.  After correcting the batch effects
with BUSseq, the corrected value can be used for downstream analysis as if all
cells were sequenced in a single batch.  BUSseq can integrate read count
matrices obtained from different @code{scRNA-seq} platforms and allow cell types
to be measured in some but not all of the batches as long as the experimental
design fulfills the conditions listed in our manuscript.")
    (license license:artistic2.0)))

(define-public r-busparse
  (package
    (name "r-busparse")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUSpaRse" version))
       (sha256
        (base32 "0fw90bg5c7a5ms08zinbf2l4c4cpnz1s5ql5vhhmhx2k2434khp8"))))
    (properties `((upstream-name . "BUSpaRse")))
    (build-system r-build-system)
    (propagated-inputs (list r-zeallot
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-s4vectors
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-plyranges
                             r-matrix
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-ensembldb
                             r-dplyr
                             r-bsgenome
                             r-biostrings
                             r-biomart
                             r-biocgenerics
                             r-bh
                             r-annotationfilter
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BUStools/BUSpaRse")
    (synopsis "kallisto | bustools R utilities")
    (description
     "The kallisto | bustools pipeline is a fast and modular set of tools to convert
single cell RNA-seq reads in fastq files into gene count or transcript
compatibility counts (TCC) matrices for downstream analysis.  Central to this
pipeline is the barcode, UMI, and set (BUS) file format.  This package serves
the following purposes: First, this package allows users to manipulate BUS
format files as data frames in R and then convert them into gene count or TCC
matrices.  Furthermore, since R and Rcpp code is easier to handle than pure C++
code, users are encouraged to tweak the source code of this package to
experiment with new uses of BUS format and different ways to convert the BUS
file into gene count matrix.  Second, this package can conveniently generate
files required to generate gene count matrices for spliced and unspliced
transcripts for RNA velocity.  Here biotypes can be filtered and scaffolds and
haplotypes can be removed, and the filtered transcriptome can be extracted and
written to disk.  Third, this package implements utility functions to get
transcripts and associated genes required to convert BUS files to gene count
matrices, to write the transcript to gene information in the format required by
bustools, and to read output of bustools into R as sparses matrices.")
    (license license:bsd-2)))

(define-public r-buscorrect
  (package
    (name "r-buscorrect")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUScorrect" version))
       (sha256
        (base32 "0l3hbx2j9cm73fvyam6bpjzikg4ai4n8rqwfwmpqifaqcmfd4qgf"))))
    (properties `((upstream-name . "BUScorrect")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-gplots))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BUScorrect")
    (synopsis "Batch Effects Correction with Unknown Subtypes")
    (description
     "High-throughput experimental data are accumulating exponentially in public
databases.  However, mining valid scientific discoveries from these abundant
resources is hampered by technical artifacts and inherent biological
heterogeneity.  The former are usually termed \"batch effects,\" and the latter is
often modelled by \"subtypes.\" The R package BUScorrect fits a Bayesian
hierarchical model, the Batch-effects-correction-with-Unknown-Subtypes model
(BUS), to correct batch effects in the presence of unknown subtypes.  BUS is
capable of (a) correcting batch effects explicitly, (b) grouping samples that
share similar characteristics into subtypes, (c) identifying features that
distinguish subtypes, and (d) enjoying a linear-order computation complexity.")
    (license license:gpl2+)))

(define-public r-bus
  (package
    (name "r-bus")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUS" version))
       (sha256
        (base32 "154fhml5x1j6yypazvjahzr9fhfqrwi3486x8bm3nqx9n4sfpn0v"))))
    (properties `((upstream-name . "BUS")))
    (build-system r-build-system)
    (propagated-inputs (list r-minet r-infotheo))
    (home-page "https://bioconductor.org/packages/BUS")
    (synopsis "Gene network reconstruction")
    (description
     "This package can be used to compute associations among genes (gene-networks) or
between genes and some external traits (i.e.  clinical).")
    (license license:gpl3)))

(define-public r-bumhmm
  (package
    (name "r-bumhmm")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUMHMM" version))
       (sha256
        (base32 "0ap8z0rk2w6ja19md4fa4h8lv2gxz12k5a7r4s5chbf4f7k2a480"))))
    (properties `((upstream-name . "BUMHMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-stringi
                             r-iranges
                             r-gtools
                             r-devtools
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BUMHMM")
    (synopsis
     "Computational pipeline for computing probability of modification from structure probing experiment data")
    (description
     "This is a probabilistic modelling pipeline for computing per- nucleotide
posterior probabilities of modification from the data collected in structure
probing experiments.  The model supports multiple experimental replicates and
empirically corrects coverage- and sequence-dependent biases.  The model
utilises the measure of a \"drop-off rate\" for each nucleotide, which is compared
between replicates through a log-ratio (LDR).  The LDRs between control
replicates define a null distribution of variability in drop-off rate observed
by chance and LDRs between treatment and control replicates gets compared to
this distribution.  Resulting empirical p-values (probability of being \"drawn\"
from the null distribution) are used as observations in a Hidden Markov Model
with a Beta-Uniform Mixture model used as an emission model.  The resulting
posterior probabilities indicate the probability of a nucleotide of having being
modified in a structure probing experiment.")
    (license license:gpl3)))

(define-public r-bugsigdbr
  (package
    (name "r-bugsigdbr")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bugsigdbr" version))
       (sha256
        (base32 "1xkhg1xrik2arwaqc4375f6h3hjqbsz4siblh198xjvqbmshg71q"))))
    (properties `((upstream-name . "bugsigdbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/bugsigdbr")
    (synopsis "R-side access to published microbial signatures from BugSigDB")
    (description
     "The bugsigdbr package implements convenient access to bugsigdb.org from within
R/Bioconductor.  The goal of the package is to facilitate import of
@code{BugSigDB} data into R/Bioconductor, provide utilities for extracting
microbe signatures, and enable export of the extracted signatures to plain text
files in standard file formats such as GMT.")
    (license license:gpl3)))

(define-public r-bufferedmatrixmethods
  (package
    (name "r-bufferedmatrixmethods")
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BufferedMatrixMethods" version))
       (sha256
        (base32 "023bpc3sakvxmdv1zxxwqwrgr8ap6p16jb15935v29qrwss643w9"))))
    (properties `((upstream-name . "BufferedMatrixMethods")))
    (build-system r-build-system)
    (propagated-inputs (list r-bufferedmatrix))
    (home-page "https://github.bom/bmbolstad/BufferedMatrixMethods")
    (synopsis
     "Microarray Data related methods that utlize BufferedMatrix objects")
    (description
     "Microarray analysis methods that use @code{BufferedMatrix} objects")
    (license license:gpl2+)))

(define-public r-bufferedmatrix
  (package
    (name "r-bufferedmatrix")
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BufferedMatrix" version))
       (sha256
        (base32 "1a3jrx2ym4ja6vhqnpm1w6c54df4y71qrcp91kkzc4g8k7ab8nhr"))))
    (properties `((upstream-name . "BufferedMatrix")))
    (build-system r-build-system)
    (home-page "https://github.com/bmbolstad/BufferedMatrix")
    (synopsis "matrix data storage object held in temporary files")
    (description
     "This package provides a tabular style data object where most data is stored
outside main memory.  A buffer is used to speed up access to data.")
    (license license:lgpl2.0+)))

(define-public r-bubbletree
  (package
    (name "r-bubbletree")
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BubbleTree" version))
       (sha256
        (base32 "0a4jnchzxfvh6k9dlhlkf5lshqmj33w3lqjdyz414ka6jlh8jwpq"))))
    (properties `((upstream-name . "BubbleTree")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexls
                             r-rcolorbrewer
                             r-plyr
                             r-magrittr
                             r-limma
                             r-iranges
                             r-gtools
                             r-gtable
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-e1071
                             r-dplyr
                             r-biovizbase
                             r-biocstyle
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BubbleTree")
    (synopsis
     "BubbleTree: an intuitive visualization to elucidate tumoral aneuploidy and clonality in somatic mosaicism using next generation sequencing data")
    (description "CNV analysis in groups of tumor samples.")
    (license license:lgpl3+)))

(define-public r-bsgenomeforge
  (package
    (name "r-bsgenomeforge")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenomeForge" version))
       (sha256
        (base32 "0wgs8j7kr6cma3h7gw9sjdm9k8jmfa9yjkzp6hmrv1p7nm3cbian"))))
    (properties `((upstream-name . "BSgenomeForge")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-iranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BSgenomeForge")
    (synopsis "Forge BSgenome data packages")
    (description
     "This package provides a set of tools to forge BSgenome data packages.
Supersedes the old seed-based tools from the BSgenome software package.  This
package allows the user to create a BSgenome data package in one function call,
simplifying the old seed-based process.")
    (license license:artistic2.0)))

(define-public r-browserviz
  (package
    (name "r-browserviz")
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BrowserViz" version))
       (sha256
        (base32 "1m4wvpzfhcfpn4slms8584pv5wa467fd4avk7wk5my1ifnwwjvr5"))))
    (properties `((upstream-name . "BrowserViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httpuv r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://gladkia.github.io/BrowserViz/")
    (synopsis
     "BrowserViz: interactive R/browser graphics using websockets and JSON")
    (description
     "Interactvive graphics in a web browser from R, using websockets and JSON.")
    (license license:gpl2)))

(define-public r-bridgedbr
  (package
    (name "r-bridgedbr")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BridgeDbR" version))
       (sha256
        (base32 "01y20lnna6fw6pgc1p0760kql120f0rjy9dicl97c8iv25m3kwzp"))))
    (properties `((upstream-name . "BridgeDbR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bridgedb/BridgeDbR")
    (synopsis
     "Code for using BridgeDb identifier mapping framework from within R")
    (description
     "Use @code{BridgeDb} functions and load identifier mapping databases in R. It
uses @code{GitHub}, Zenodo, and Figshare if you use this package to download
identifier mappings files.")
    (license license:agpl3)))

(define-public r-brgenomics
  (package
    (name "r-brgenomics")
    (version "1.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BRGenomics" version))
       (sha256
        (base32 "1y90pfrn7c6v3n0rlymxlljjcmblq1lfprnzy3xmjh9y7n4lnr2g"))))
    (properties `((upstream-name . "BRGenomics")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-deseq2))
    (native-inputs (list r-knitr))
    (home-page "https://mdeber.github.io")
    (synopsis
     "Tools for the Efficient Analysis of High-Resolution Genomics Data")
    (description
     "This package provides useful and efficient utilites for the analysis of
high-resolution genomic data using standard Bioconductor methods and classes.
BRGenomics is feature-rich and simplifies a number of post-alignment processing
steps and data handling.  Emphasis is on efficient analysis of multiple
datasets, with support for normalization and blacklisting.  Included are
functions for: spike-in normalizing data; generating basepair-resolution
readcounts and coverage data (e.g. for heatmaps); importing and processing bam
files (e.g. for conversion to @code{bigWig} files); generating
metaplots/metaprofiles (bootstrapped mean profiles) with confidence intervals;
conveniently calling DESeq2 without using sample-blind estimates of genewise
dispersion; among other features.")
    (license license:artistic2.0)))

(define-public r-brendadb
  (package
    (name "r-brendadb")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "brendaDb" version))
       (sha256
        (base32 "1hsd66wz3frg4z423358mxj4d7nmhmsyjlqkh5q4gdsasr4wx88y"))))
    (properties `((upstream-name . "brendaDb")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rcpp
                             r-rappdirs
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-crayon
                             r-biocparallel
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/y1zhou/brendaDb")
    (synopsis "The BRENDA Enzyme Database")
    (description
     "R interface for importing and analyzing enzyme information from the BRENDA
database.")
    (license license:expat)))

(define-public r-branchpointer
  (package
    (name "r-branchpointer")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "branchpointer" version))
       (sha256
        (base32 "104v99nnhkyfmnv5dalz4gimbx0z9xv8l9bwq1v8sf8m1fdlqz3k"))))
    (properties `((upstream-name . "branchpointer")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-s4vectors
                             r-rtracklayer
                             r-plyr
                             r-kernlab
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-gbm
                             r-data-table
                             r-cowplot
                             r-caret
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-biostrings
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/branchpointer")
    (synopsis "Prediction of intronic splicing branchpoints")
    (description
     "Predicts branchpoint probability for sites in intronic branchpoint windows.
Queries can be supplied as intronic regions; or to evaluate the effects of
mutations, SNPs.")
    (license license:bsd-3)))

(define-public r-brainflowprobes
  (package
    (name "r-brainflowprobes")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "brainflowprobes" version))
       (sha256
        (base32 "06gga72ns7h9c6mdbvbj8afpkyizg7maazriilvaq433h6s1pgqb"))))
    (properties `((upstream-name . "brainflowprobes")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-ggplot2
                             r-genomicranges
                             r-derfinderplot
                             r-derfinder
                             r-cowplot
                             r-bumphunter
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LieberInstitute/brainflowprobes")
    (synopsis
     "Plots and annotation for choosing BrainFlow target probe sequence")
    (description
     "Use these functions to characterize genomic regions for @code{BrainFlow} target
probe design.")
    (license license:artistic2.0)))

(define-public r-brain
  (package
    (name "r-brain")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BRAIN" version))
       (sha256
        (base32 "05s22lh1p4plb4n69ndbwhv0k86kwyg75sv9bxja4y1xnkidfq8f"))))
    (properties `((upstream-name . "BRAIN")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynomf r-lattice r-biostrings))
    (home-page "https://bioconductor.org/packages/BRAIN")
    (synopsis
     "Baffling Recursive Algorithm for Isotope distributioN calculations")
    (description
     "Package for calculating aggregated isotopic distribution and exact center-masses
for chemical substances (in this version composed of C, H, N, O and S).  This is
an implementation of the BRAIN algorithm described in the paper by J. Claesen,
P. Dittwald, T. Burzykowski and D. Valkenborg.")
    (license license:gpl2)))

(define-public r-bprmeth
  (package
    (name "r-bprmeth")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BPRMeth" version))
       (sha256
        (base32 "0ic9yh9r2wvrrjq82jivpfyav6ah2g2fk8pbfa86dapaq8lwvabf"))))
    (properties `((upstream-name . "BPRMeth")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-s4vectors
                             r-rcpparmadillo
                             r-rcpp
                             r-randomforest
                             r-mvtnorm
                             r-matrixcalc
                             r-mass
                             r-magrittr
                             r-kernlab
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-earth
                             r-e1071
                             r-doparallel
                             r-data-table
                             r-cowplot
                             r-biocstyle
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BPRMeth")
    (synopsis "Model higher-order methylation profiles")
    (description
     "The BPRMeth package is a probabilistic method to quantify explicit features of
methylation profiles, in a way that would make it easier to formally use such
profiles in downstream modelling efforts, such as predicting gene expression
levels or clustering genomic regions or cells according to their methylation
profiles.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-borealis
  (package
    (name "r-borealis")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "borealis" version))
       (sha256
        (base32 "1432frd73ysjayppdql2ffaf5dwwvqm5sr3rd7dj824qpdi1g9a4"))))
    (properties `((upstream-name . "borealis")))
    (build-system r-build-system)
    (propagated-inputs (list r-snow
                             r-rlang
                             r-r-utils
                             r-purrr
                             r-plyr
                             r-ggplot2
                             r-genomicranges
                             r-gamlss-dist
                             r-gamlss
                             r-foreach
                             r-dss
                             r-dplyr
                             r-doparallel
                             r-cowplot
                             r-bsseq
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/borealis")
    (synopsis "Bisulfite-seq OutlieR mEthylation At singLe-sIte reSolution")
    (description
     "Borealis is an R library performing outlier analysis for count-based bisulfite
sequencing data.  It detectes outlier methylated @code{CpG} sites from bisulfite
sequencing (BS-seq).  The core of Borealis is modeling Beta-Binomial
distributions.  This can be useful for rare disease diagnoses.")
    (license license:gpl3)))

(define-public r-bobafit
  (package
    (name "r-bobafit")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BOBaFIT" version))
       (sha256
        (base32 "1h9s0ff31glbbamw5pjyiv4m9v4pp7mm64mmdp55yqfrnhbgy6hi"))))
    (properties `((upstream-name . "BOBaFIT")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-plyranges
                             r-nbclust
                             r-magrittr
                             r-ggplot2
                             r-ggforce
                             r-ggbio
                             r-genomicranges
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/andrea-poletti-unibo/BOBaFIT")
    (synopsis "Refitting diploid region profiles using a clustering procedure")
    (description
     "This package provides a method to refit and correct the diploid region in copy
number profiles.  It uses a clustering algorithm to identify pathology-specific
normal (diploid) chromosomes and then use their copy number signal to refit the
whole profile.  The package is composed by three functions: DRrefit (the main
function), @code{ComputeNormalChromosome} and @code{PlotCluster}.")
    (license license:gpl3+)))

(define-public r-bnem
  (package
    (name "r-bnem")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bnem" version))
       (sha256
        (base32 "0wl5r6bxd315n1kdh1cjqvrmnxbvbjriq6n6djk43bvj5b7i8c5s"))))
    (properties `((upstream-name . "bnem")))
    (build-system r-build-system)
    (propagated-inputs (list r-vsn
                             r-sva
                             r-snowfall
                             r-rmarkdown
                             r-rgraphviz
                             r-rcolorbrewer
                             r-mnem
                             r-matrixstats
                             r-limma
                             r-graph
                             r-flexclust
                             r-epinem
                             r-cluster
                             r-cellnoptr
                             r-biobase
                             r-binom
                             r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MartinFXP/bnem/")
    (synopsis
     "Training of logical models from indirect measurements of perturbation experiments")
    (description
     "bnem combines the use of indirect measurements of Nested Effects Models (package
mnem) with the Boolean networks of @code{CellNOptR}.  Perturbation experiments
of signalling nodes in cells are analysed for their effect on the global gene
expression profile.  Those profiles give evidence for the Boolean regulation of
down-stream nodes in the network, e.g., whether two parents activate their child
independently (OR-gate) or jointly (AND-gate).")
    (license license:gpl3)))

(define-public r-bnbc
  (package
    (name "r-bnbc")
    (version "1.23.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bnbc" version))
       (sha256
        (base32 "1fgls5a2727c7ssj9f6r56s21j171s6ipf7k300b2780whagsdb7"))))
    (properties `((upstream-name . "bnbc")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-s4vectors
                             r-rhdf5
                             r-rcpp
                             r-preprocesscore
                             r-matrixstats
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-ebimage
                             r-data-table
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hansenlab/bnbc")
    (synopsis "Bandwise normalization and batch correction of Hi-C data")
    (description
     "This package provides tools to normalize (several) Hi-C data from replicates.")
    (license license:artistic2.0)))

(define-public r-bloodgen3module
  (package
    (name "r-bloodgen3module")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BloodGen3Module" version))
       (sha256
        (base32 "0nzgqpgdjz0vqrijnwgpr4z41jwrf7bkrzfb1y6a04d3lrm6xmbc"))))
    (properties `((upstream-name . "BloodGen3Module")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8
                             r-testthat
                             r-summarizedexperiment
                             r-reshape2
                             r-randomcolor
                             r-preprocesscore
                             r-matrixstats
                             r-limma
                             r-gtools
                             r-ggplot2
                             r-experimenthub
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BloodGen3Module")
    (synopsis
     "This R package for performing module repertoire analyses and generating fingerprint representations")
    (description
     "The @code{BloodGen3Module} package provides functions for R user performing
module repertoire analyses and generating fingerprint representations.
Functions can perform group comparison or individual sample analysis and
visualization by fingerprint grid plot or fingerprint heatmap.  Module
repertoire analyses typically involve determining the percentage of the
constitutive genes for each module that are significantly increased or
decreased.  As we describe in
details;https://www.biorxiv.org/content/10.1101/525709v2 and
https://pubmed.ncbi.nlm.nih.gov/33624743/, the results of module repertoire
analyses can be represented in a fingerprint format, where red and blue spots
indicate increases or decreases in module activity.  These spots are
subsequently represented either on a grid, with each position being assigned to
a given module, or in a heatmap where the samples are arranged in columns and
the modules in rows.")
    (license license:gpl2)))

(define-public r-blma
  (package
    (name "r-blma")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BLMA" version))
       (sha256
        (base32 "1avidkxgdm6klxwzyaaniff7ajbkj6aw5ypk3qk3zscj6rd5ark2"))))
    (properties `((upstream-name . "BLMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rontotools
                             r-padog
                             r-metafor
                             r-limma
                             r-gsa
                             r-graph
                             r-biobase))
    (home-page "https://bioconductor.org/packages/BLMA")
    (synopsis "BLMA: A package for bi-level meta-analysis")
    (description
     "Suit of tools for bi-level meta-analysis.  The package can be used in a wide
range of applications, including general hypothesis testings, differential
expression analysis, functional analysis, and pathway analysis.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-blima
  (package
    (name "r-blima")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "blima" version))
       (sha256
        (base32 "15p2792sf1mh11vna5807cw9kki2v5bc57w8lchgkkv2fy7a5l3i"))))
    (properties `((upstream-name . "blima")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-biocgenerics r-biobase r-beadarray))
    (native-inputs (list r-knitr))
    (home-page "https://bitbucket.org/kulvait/blima")
    (synopsis
     "Tools for the preprocessing and analysis of the Illumina microarrays on the detector (bead) level")
    (description
     "Package blima includes several algorithms for the preprocessing of Illumina
microarray data.  It focuses to the bead level analysis and provides novel
approach to the quantile normalization of the vectors of unequal lengths.  It
provides variety of the methods for background correction including background
subtraction, RMA like convolution and background outlier removal.  It also
implements variance stabilizing transformation on the bead level.  There are
also implemented methods for data summarization.  It also provides the methods
for performing T-tests on the detector (bead) level and on the probe level for
differential expression testing.")
    (license license:gpl3)))

(define-public r-blacksheepr
  (package
    (name "r-blacksheepr")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "blacksheepr" version))
       (sha256
        (base32 "10a2nwks2kmdx8xpk1zbrmxvi4wsmdsyxkg4a45s6n67213qx4ir"))))
    (properties `((upstream-name . "blacksheepr")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-summarizedexperiment
                             r-rcolorbrewer
                             r-pasilla
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/blacksheepr")
    (synopsis "Outlier Analysis for pairwise differential comparison")
    (description
     "Blacksheep is a tool designed for outlier analysis in the context of pairwise
comparisons in an effort to find distinguishing characteristics from two groups.
 This tool was designed to be applied for biological applications such as
phosphoproteomics or transcriptomics, but it can be used for any data that can
be represented by a 2D table, and has two sub populations within the table to
compare.")
    (license license:expat)))

(define-public r-biseq
  (package
    (name "r-biseq")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiSeq" version))
       (sha256
        (base32 "0ajx73bnx36cik70p4lbbnsr36ly88y57qqlp0mqbmn2mzqv5ajg"))))
    (properties `((upstream-name . "BiSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-lokern
                             r-iranges
                             r-globaltest
                             r-genomicranges
                             r-genomeinfodb
                             r-formula
                             r-biocgenerics
                             r-biobase
                             r-betareg))
    (home-page "https://bioconductor.org/packages/BiSeq")
    (synopsis "Processing and analyzing bisulfite sequencing data")
    (description
     "The @code{BiSeq} package provides useful classes and functions to handle and
analyze targeted bisulfite sequencing (BS) data such as reduced-representation
bisulfite sequencing (RRBS) data.  In particular, it implements an algorithm to
detect differentially methylated regions (DMRs).  The package takes already
aligned BS data from one or multiple samples.")
    (license license:lgpl3)))

(define-public r-bionar
  (package
    (name "r-bionar")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BioNAR" version))
       (sha256
        (base32 "0qbrma7q5xlhh3ysdhkbkk713nq10wzd7wly6yhdkfcv9mmiivzv"))))
    (properties `((upstream-name . "BioNAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-viridis
                             r-stringr
                             r-scales
                             r-rspectral
                             r-rspectra
                             r-rdpack
                             r-powerlaw
                             r-org-hs-eg-db
                             r-minpack-lm
                             r-matrix
                             r-latex2exp
                             r-igraph
                             r-go-db
                             r-ggrepel
                             r-ggplot2
                             r-fgsea
                             r-dplyr
                             r-data-table
                             r-cowplot
                             r-clustercons
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BioNAR")
    (synopsis "Biological Network Analysis in R")
    (description
     "the R package @code{BioNAR}, developed to step by step analysis of PPI network.
The aim is to quantify and rank each protein’s simultaneous impact into multiple
complexes based on network topology and clustering.  Package also enables
estimating of co-occurrence of diseases across the network and specific clusters
pointing towards shared/common mechanisms.")
    (license license:artistic2.0)))

(define-public r-biodbuniprot
  (package
    (name "r-biodbuniprot")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbUniprot" version))
       (sha256
        (base32 "19jq0s3s2hpwnwxws5zx9d569djfrqf5npsw49fq1v9zx4g903g1"))))
    (properties `((upstream-name . "biodbUniprot")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbUniprot")
    (synopsis "biodbUniprot, a library for connecting to the Uniprot Database")
    (description
     "The @code{biodbUniprot} library is an extension of the biodb framework package.
It provides access to the @code{UniProt} database.  It allows to retrieve
entries by their accession number, and run web service queries for searching for
entries.")
    (license license:agpl3)))

(define-public r-biodbnci
  (package
    (name "r-biodbnci")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbNci" version))
       (sha256
        (base32 "1djdfw3xks6wr20igrnj9ph8awrdnyxyiac3377wn3nc4sq87rax"))))
    (properties `((upstream-name . "biodbNci")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-rcpp r-r6 r-chk r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/biodbNci")
    (synopsis
     "biodbNci, a library for connecting to biodbNci, a library for connecting to the National Cancer Institute (USA) CACTUS Database")
    (description
     "The @code{biodbNci} library is an extension of the biodb framework package.  It
provides access to @code{biodbNci}, a library for connecting to the National
Cancer Institute (USA) CACTUS Database.  It allows to retrieve entries by their
accession number, and run specific web services.")
    (license license:agpl3)))

(define-public r-biodbncbi
  (package
    (name "r-biodbncbi")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbNcbi" version))
       (sha256
        (base32 "1qkcpk81j6wzqvfa78sv01a51sgcgyfjdkwm4izgkb5qblwy17c5"))))
    (properties `((upstream-name . "biodbNcbi")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-r6 r-chk r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbNcbi")
    (synopsis "biodbNcbi, a library for connecting to NCBI Databases")
    (description
     "The @code{biodbNcbi} library provides access to the NCBI databases CCDS, Gene,
Pubchem Comp and Pubchem Subst, using biodb package framework.  It allows to
retrieve entries by their accession number.  Web services can be accessed for
searching the database by name or mass.")
    (license license:agpl3)))

(define-public r-biodbmirbase
  (package
    (name "r-biodbmirbase")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbMirbase" version))
       (sha256
        (base32 "17clip9l8as9pz390bqgj07jxp1rijis2f5hj53s6vqaqmiyz4il"))))
    (properties `((upstream-name . "biodbMirbase")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-r6 r-chk r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/biodbMirbase")
    (synopsis
     "biodbMirbase, a library for connecting to miRBase mature database")
    (description
     "The @code{biodbMirbase} library is an extension of the biodb framework package,
that provides access to @code{miRBase} mature database.  It allows to retrieve
entries by their accession number, and run specific web services.  Description:
The @code{biodbMirbase} library provides access to the @code{miRBase} Database,
using biodb package framework.")
    (license license:agpl3)))

(define-public r-biodblipidmaps
  (package
    (name "r-biodblipidmaps")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbLipidmaps" version))
       (sha256
        (base32 "10zz8wri5pmz0329bygpg0a20yphsx04gwhv41hy5x0z86sx55xs"))))
    (properties `((upstream-name . "biodbLipidmaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-lifecycle r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbLipidmaps")
    (synopsis
     "biodbLipidmaps, a library for connecting to the Lipidmaps Structure database")
    (description
     "The @code{biodbLipidmaps} library provides access to the Lipidmaps Structure
Database, using biodb package framework.  It allows to retrieve entries by their
accession number, and run web the services @code{lmsdSearch} and
@code{lmsdRecord}.")
    (license license:agpl3)))

(define-public r-biodbkegg
  (package
    (name "r-biodbkegg")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbKegg" version))
       (sha256
        (base32 "07hvk0sab9m5df1y7v5ndkn7m4l24w6cy4bvyvx3445c1bljqwmf"))))
    (properties `((upstream-name . "biodbKegg")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-lifecycle r-chk r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbKegg")
    (synopsis "biodbKegg, a library for connecting to the KEGG Database")
    (description
     "The @code{biodbKegg} library is an extension of the biodb framework package that
provides access to the KEGG databases Compound, Enzyme, Genes, Module, Orthology
and Reaction.  It allows to retrieve entries by their accession numbers.  Web
services like \"find\", \"list\" and \"@code{findExactMass}\" are also available.
Some functions for navigating along the pathways have also been implemented.")
    (license license:agpl3)))

(define-public r-biodbhmdb
  (package
    (name "r-biodbhmdb")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbHmdb" version))
       (sha256
        (base32 "1kymxi6kzv13gkvvhlfz8fkgac4ww05svxvy4zw6clwnh9gv3lwy"))))
    (properties `((upstream-name . "biodbHmdb")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip r-testthat r-rcpp r-r6 r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbHmdb")
    (synopsis "biodbHmdb, a library for connecting to the HMDB Database")
    (description
     "The @code{biodbHmdb} library is an extension of the biodb framework package that
provides access to the HMDB Metabolites database.  It allows to download the
whole HMDB Metabolites database locally, access entries and search for entries
by name or description.  A future version of this package will also include a
search by mass and mass spectra annotation.")
    (license license:agpl3)))

(define-public r-biodbexpasy
  (package
    (name "r-biodbexpasy")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbExpasy" version))
       (sha256
        (base32 "1y8f1iy3ircwxcwc6aymmi0q8yx91mh1c17y7drxp2b3pcbhgly1"))))
    (properties `((upstream-name . "biodbExpasy")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-r6 r-chk r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/biodbExpasy")
    (synopsis
     "biodbExpasy, a library for connecting to Expasy ENZYME database")
    (description
     "The @code{biodbExpasy} library provides access to Expasy ENZYME database, using
biodb package framework.  It allows to retrieve entries by their accession
number.  Web services can be accessed for searching the database by name or
comments.")
    (license license:agpl3)))

(define-public r-biodbchebi
  (package
    (name "r-biodbchebi")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbChebi" version))
       (sha256
        (base32 "0ic7dpjl0fxsqx51x8zjmf46ganx2imr64n93s79admwrcwbc33b"))))
    (properties `((upstream-name . "biodbChebi")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbChebi")
    (synopsis "biodbChebi, a library for connecting to the ChEBI Database")
    (description
     "The @code{biodbChebi} library provides access to the @code{ChEBI} Database,
using biodb package framework.  It allows to retrieve entries by their accession
number.  Web services can be accessed for searching the database by name, mass
or other fields.")
    (license license:agpl3)))

(define-public r-biocsklearn
  (package
    (name "r-biocsklearn")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocSklearn" version))
       (sha256
        (base32 "01q9i3ncgi5ddkpvh47y061n8s7cvl19xlra6j591h0lxm65a6yx"))))
    (properties `((upstream-name . "BiocSklearn")))
    (build-system r-build-system)
    (inputs (list python-scikit-learn python python-pandas python-numpy
                  python-h5py))
    (propagated-inputs (list r-summarizedexperiment r-reticulate r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BiocSklearn")
    (synopsis "interface to python sklearn via Rstudio reticulate")
    (description
     "This package provides interfaces to selected sklearn elements, and demonstrates
fault tolerant use of python modules requiring extensive iteration.")
    (license license:artistic2.0)))

(define-public r-biochubsshiny
  (package
    (name "r-biochubsshiny")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocHubsShiny" version))
       (sha256
        (base32 "1sz27svvpvcys4b9p53da1javkh5k9235pzsjvn2wx76gi6b1jkj"))))
    (properties `((upstream-name . "BiocHubsShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinytoastr
                             r-shinythemes
                             r-shinyjs
                             r-shinyace
                             r-shiny
                             r-s4vectors
                             r-htmlwidgets
                             r-experimenthub
                             r-dt
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/BiocHubsShiny")
    (synopsis "View AnnotationHub and ExperimentHub Resources Interactively")
    (description
     "This package provides a package that allows interactive exploration of
@code{AnnotationHub} and @code{ExperimentHub} resources.  It uses DT /
@code{DataTable} to display resources for multiple organisms.  It provides
template code for reproducibility and for downloading resources via the
indicated Hub package.")
    (license license:artistic2.0)))

(define-public r-biochail
  (package
    (name "r-biochail")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocHail" version))
       (sha256
        (base32 "02dss0xbrxl1l6py9xmag1f5vqr031n343jk2jcf4idn4zr02s6m"))))
    (properties `((upstream-name . "BiocHail")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate r-dplyr r-biocgenerics
                             r-biocfilecache r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjcitn/BiocHail")
    (synopsis "basilisk and hail")
    (description
     "Use hail via basilisk when appropriate, or via reticulate.  This package can be
used in terra.bio to interact with UK Biobank resources processed by hail.is.")
    (license license:artistic2.0)))

(define-public r-biocfhir
  (package
    (name "r-biocfhir")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocFHIR" version))
       (sha256
        (base32 "1syp4yc7kdzywln1lscr5a6f20nl7jjw86sbxj2ci1f01wbiq63w"))))
    (properties `((upstream-name . "BiocFHIR")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-tidyr
                             r-shiny
                             r-jsonlite
                             r-graph
                             r-dt
                             r-dplyr
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjcitn/BiocFHIR")
    (synopsis "Illustration of FHIR ingestion and transformation using R")
    (description
     "FHIR R4 bundles in JSON format are derived from
https://synthea.mitre.org/downloads.  Transformation inspired by a kaggle
notebook published by Dr Alexander Scarlat,
https://www.kaggle.com/code/drscarlat/fhir-starter-parse-healthcare-bundles-into-tables.
 This is a very limited illustration of some basic parsing and reorganization
processes.  Additional tooling will be required to move beyond the Synthea data
illustrations.")
    (license license:artistic2.0)))

(define-public r-biocbook
  (package
    (name "r-biocbook")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocBook" version))
       (sha256
        (base32 "0lk4rm5q8q5xkiayg6chb7xdagjyz66wga9v3yl4nwangk0rfsil"))))
    (properties `((upstream-name . "BiocBook")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-usethis
                             r-tibble
                             r-stringr
                             r-rprojroot
                             r-rlang
                             r-renv
                             r-quarto
                             r-purrr
                             r-httr
                             r-glue
                             r-gitcreds
                             r-gh
                             r-gert
                             r-dplyr
                             r-cli
                             r-biocgenerics
                             r-available))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BiocBook")
    (synopsis
     "Write, containerize, publish and version Quarto books with Bioconductor")
    (description
     "This package provides a @code{BiocBook} can be created by authors (e.g. R
developers, but also scientists, teachers, communicators, ...) who wish to 1)
write (compile a body of biological and/or bioinformatics knowledge), 2)
containerize (provide Docker images to reproduce the examples illustrated in the
compendium), 3) publish (deploy an online book to disseminate the compendium),
and 4) version (automatically generate specific online book versions and Docker
images for specific Bioconductor releases).")
    (license license:expat)))

(define-public r-biocartaimage
  (package
    (name "r-biocartaimage")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BioCartaImage" version))
       (sha256
        (base32 "0xp0znvlgh29f3y4n4gjc66c17jpifxk0ik49dqrdn6q1p2cbcv9"))))
    (properties `((upstream-name . "BioCartaImage")))
    (build-system r-build-system)
    (propagated-inputs (list r-magick))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jokergoo/BioCartaImage")
    (synopsis "BioCarta Pathway Images")
    (description
     "The core functionality of the package is to provide coordinates of genes on the
@code{BioCarta} pathway images and to provide methods to add self-defined
graphics to the genes of interest.")
    (license license:expat)))

(define-public r-biocancer
  (package
    (name "r-biocancer")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bioCancer" version))
       (sha256
        (base32 "0rhv3k3m8nn6dx91895nwmwg0x7igyrh3iz71ds6i3zi0crlq9zm"))))
    (properties `((upstream-name . "bioCancer")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-visnetwork
                             r-tibble
                             r-shinythemes
                             r-shiny
                             r-reactomepa
                             r-reactome-db
                             r-radiant-data
                             r-r-oo
                             r-r-methodss3
                             r-plyr
                             r-org-hs-eg-db
                             r-org-bt-eg-db
                             r-import
                             r-httr
                             r-htmlwidgets
                             r-go-db
                             r-genetclassifier
                             r-dt
                             r-dplyr
                             r-dose
                             r-diagrammer
                             r-clusterprofiler
                             r-biobase
                             r-annotationdbi
                             r-algdesign))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://kmezhoud.github.io/bioCancer/")
    (synopsis
     "Interactive Multi-Omics Cancers Data Visualization and Analysis")
    (description
     "This package is a Shiny App to visualize and analyse interactively Multi-Assays
of Cancer Genomic Data.")
    (license (list license:agpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-bindingsitefinder
  (package
    (name "r-bindingsitefinder")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BindingSiteFinder" version))
       (sha256
        (base32 "1af4q8hzdjbi058a5l70jps5r7k3nccs8096gsfhgqfc9vanv6dy"))))
    (properties `((upstream-name . "BindingSiteFinder")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-rcolorbrewer
                             r-plyr
                             r-matrixstats
                             r-lifecycle
                             r-kableextra
                             r-iranges
                             r-ggplot2
                             r-ggforce
                             r-ggdist
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-forcats
                             r-dplyr
                             r-complexheatmap))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BindingSiteFinder")
    (synopsis "Binding site defintion based on iCLIP data")
    (description
     "Precise knowledge on the binding sites of an RNA-binding protein (RBP) is key to
understand (post-) transcriptional regulatory processes.  Here we present a
workflow that describes how exact binding sites can be defined from @code{iCLIP}
data.  The package provides functions for binding site definition and result
visualization.  For details please see the vignette.")
    (license license:artistic2.0)))

(define-public r-bg2
  (package
    (name "r-bg2")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BG2" version))
       (sha256
        (base32 "1r4qvqgpjw760mnbcb5xas23mnbvy64098b81467fsc0cjwrps6w"))))
    (properties `((upstream-name . "BG2")))
    (build-system r-build-system)
    (propagated-inputs (list r-memoise r-matrix r-mass r-ga r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BG2")
    (synopsis
     "Performs Bayesian GWAS analysis for non-Gaussian data using BG2")
    (description
     "This package is built to perform GWAS analysis for non-Gaussian data using BG2.
The BG2 method uses penalized quasi-likelihood along with nonlocal priors in a
two step manner to identify SNPs in GWAS analysis.  The research related to this
package was supported in part by National Science Foundation awards DMS 1853549
and DMS 2054173.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-benchdamic
  (package
    (name "r-benchdamic")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "benchdamic" version))
       (sha256
        (base32 "1prrm5jcv6i64hhqcqj3m6kblv9l0adkssc235r5h4fgk2jq9zyf"))))
    (properties `((upstream-name . "benchdamic")))
    (build-system r-build-system)
    (propagated-inputs (list r-zinbwave
                             r-treesummarizedexperiment
                             r-tidytext
                             r-summarizedexperiment
                             r-seurat
                             r-reshape2
                             r-rcolorbrewer
                             r-plyr
                             r-phyloseq
                             r-noiseq
                             r-mixomics
                             r-microbiomestat
                             r-mglm
                             r-metagenomeseq
                             r-mast
                             r-maaslin2
                             r-lme4
                             r-limma
                             r-gunifrac
                             r-ggridges
                             r-ggplot2
                             r-ggdendro
                             r-edger
                             r-deseq2
                             r-dearseq
                             r-cowplot
                             r-biocparallel
                             r-ancombc
                             r-aldex2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/benchdamic")
    (synopsis "Benchmark of differential abundance methods on microbiome data")
    (description
     "Starting from a microbiome dataset (16S or WMS with absolute count values) it is
possible to perform several analysis to assess the performances of many
differential abundance detection methods.  A basic and standardized version of
the main differential abundance analysis methods is supplied but the user can
also add his method to the benchmark.  The analyses focus on 4 main aspects: i)
the goodness of fit of each method's distributional assumptions on the observed
count data, ii) the ability to control the false discovery rate, iii) the within
and between method concordances, iv) the truthfulness of the findings if any
apriori knowledge is given.  Several graphical functions are available for
result visualization.")
    (license license:artistic2.0)))

(define-public r-beer
  (package
    (name "r-beer")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "beer" version))
       (sha256
        (base32 "1dapyrp1rdy2smi6v7cvj1wv5mhrkvv3sz1aqpim8vf18f9132py"))))
    (properties `((upstream-name . "beer")))
    (build-system r-build-system)
    (inputs (list jags))
    (propagated-inputs (list r-summarizedexperiment
                             r-rjags
                             r-progressr
                             r-phipdata
                             r-edger
                             r-cli
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/athchen/beer/")
    (synopsis "Bayesian Enrichment Estimation in R")
    (description
     "BEER implements a Bayesian model for analyzing phage-immunoprecipitation
sequencing (@code{PhIP-seq}) data.  Given a @code{PhIPData} object, BEER returns
posterior probabilities of enriched antibody responses, point estimates for the
relative fold-change in comparison to negative control samples, and more.
Additionally, BEER provides a convenient implementation for using @code{edgeR}
to identify enriched antibody responses.")
    (license license:expat)))

(define-public r-beat
  (package
    (name "r-beat")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BEAT" version))
       (sha256
        (base32 "1kxclpl92pvdxydginp6wj9kvrxy4sh7650fb6vm3cxsnzzbs9xs"))))
    (properties `((upstream-name . "BEAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-shortread r-genomicranges r-bsgenome
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/BEAT")
    (synopsis "BEAT - BS-Seq Epimutation Analysis Toolkit")
    (description "Model-based analysis of single-cell methylation data")
    (license (license:fsdg-compatible "LGPL (>= 3.0)"))))

(define-public r-bearscc
  (package
    (name "r-bearscc")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BEARscc" version))
       (sha256
        (base32 "0lxnmfqnvkdvyhmpqx4nxr8swvsadfx98rpzfz5r6xdkd3alizv8"))))
    (properties `((upstream-name . "BEARscc")))
    (build-system r-build-system)
    (propagated-inputs (list r-singlecellexperiment r-ggplot2 r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BEARscc")
    (synopsis
     "BEARscc (Bayesian ERCC Assesstment of Robustness of Single Cell Clusters)")
    (description
     "BEARscc is a noise estimation and injection tool that is designed to assess
putative single-cell RNA-seq clusters in the context of experimental noise
estimated by ERCC spike-in controls.")
    (license license:gpl3)))

(define-public r-beachmat-hdf5
  (package
    (name "r-beachmat-hdf5")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "beachmat.hdf5" version))
       (sha256
        (base32 "1ihx1c7j1k52c45f6q17iwvrnym3fdx93lhxk73la6ig6q6y0p85"))))
    (properties `((upstream-name . "beachmat.hdf5")))
    (build-system r-build-system)
    (propagated-inputs (list r-rhdf5lib r-rcpp r-hdf5array r-delayedarray
                             r-beachmat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/beachmat.hdf5")
    (synopsis "beachmat bindings for HDF5-backed matrices")
    (description
     "Extends beachmat to support initialization of tatami matrices from HDF5-backed
arrays.  This allows C++ code in downstream packages to directly call the HDF5
C/C++ library to access array data, without the need for block processing via
@code{DelayedArray}.  Some utilities are also provided for direct creation of an
in-memory tatami matrix from a HDF5 file.")
    (license license:gpl3)))

(define-public r-bcseq
  (package
    (name "r-bcseq")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bcSeq" version))
       (sha256
        (base32 "050rh9ina8wlkk6d66l2y81vblgyldsyy9fqxk7kpnzmjani919k"))))
    (properties `((upstream-name . "bcSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrix r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jl354/bcSeq")
    (synopsis
     "Fast Sequence Mapping in High-Throughput shRNA and CRISPR Screens")
    (description
     "This Rcpp-based package implements a highly efficient data structure and
algorithm for performing alignment of short reads from CRISPR or @code{shRNA}
screens to reference barcode library.  Sequencing error are considered and
matching qualities are evaluated based on Phred scores.  A Bayes classifier is
employed to predict the originating barcode of a read.  The package supports
provision of user-defined probability models for evaluating matching qualities.
The package also supports multi-threading.")
    (license license:gpl2+)))

(define-public r-batchqc
  (package
    (name "r-batchqc")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BatchQC" version))
       (sha256
        (base32 "1xfa4g32b7vzj2l8bv0fa1xb15vlk7x933g2wxx4qz78a2wkd6yq"))))
    (properties `((upstream-name . "BatchQC")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva
                             r-shiny
                             r-rmarkdown
                             r-reshape2
                             r-pander
                             r-moments
                             r-mcmcpack
                             r-matrixstats
                             r-matrix
                             r-limma
                             r-knitr
                             r-heatmaply
                             r-gplots
                             r-ggvis
                             r-corpcor))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/mani2012/BatchQC")
    (synopsis "Batch Effects Quality Control Software")
    (description
     "Sequencing and microarray samples often are collected or processed in multiple
batches or at different times.  This often produces technical biases that can
lead to incorrect results in the downstream analysis. @code{BatchQC} is a
software tool that streamlines batch preprocessing and evaluation by providing
interactive diagnostics, visualizations, and statistical analyses to explore the
extent to which batch variation impacts the data. @code{BatchQC} diagnostics
help determine whether batch adjustment needs to be done, and how correction
should be applied before proceeding with a downstream analysis.  Moreover,
@code{BatchQC} interactively applies multiple common batch effect approaches to
the data, and the user can quickly see the benefits of each method.
@code{BatchQC} is developed as a Shiny App.  The output is organized into
multiple tabs, and each tab features an important part of the batch effect
analysis and visualization of the data.  The @code{BatchQC} interface has the
following analysis groups: Summary, Differential Expression, Median
Correlations, Heatmaps, Circular Dendrogram, PCA Analysis, Shape, @code{ComBat}
and SVA.")
    (license license:gpl2+)))

(define-public r-basicstan
  (package
    (name "r-basicstan")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BASiCStan" version))
       (sha256
        (base32 "01pa2sjmn6asbchxm0gdb8nyzsc73pay26jpv6fnl3gijiwm2xii"))))
    (properties `((upstream-name . "BASiCStan")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-stanheaders
                             r-singlecellexperiment
                             r-scuttle
                             r-scran
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-glmgampoi
                             r-bh
                             r-basics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Alanocallaghan/BASiCStan")
    (synopsis "Stan implementation of BASiCS")
    (description
     "This package provides an interface to infer the parameters of BA@code{SiCS}
using the variational inference (ADVI), Markov chain Monte Carlo (NUTS), and
maximum a posteriori (BFGS) inference engines in the Stan programming language.
BA@code{SiCS} is a Bayesian hierarchical model that uses an adaptive Metropolis
within Gibbs sampling scheme.  Alternative inference methods provided by Stan
may be preferable in some situations, for example for particularly large data or
posterior distributions with difficult geometries.")
    (license license:gpl3)))

(define-public r-basecallqc
  (package
    (name "r-basecallqc")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "basecallQC" version))
       (sha256
        (base32 "0ak5rbrzbazz48x75alihzmlgll46l2hnyh11pf5n7gvws6skrps"))))
    (properties `((upstream-name . "basecallQC")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-yaml
                             r-xml
                             r-tidyr
                             r-stringr
                             r-shortread
                             r-rmarkdown
                             r-raster
                             r-prettydoc
                             r-magrittr
                             r-lazyeval
                             r-knitr
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/basecallQC")
    (synopsis
     "Working with Illumina Basecalling and Demultiplexing input and output files")
    (description
     "The @code{basecallQC} package provides tools to work with Illumina bcl2Fastq
(versions >= 2.1.7) software.Prior to basecalling and demultiplexing using the
bcl2Fastq software, @code{basecallQC} functions allow the user to update
Illumina sample sheets from versions <= 1.8.9 to >= 2.1.7 standards, clean
sample sheets of common problems such as invalid sample names and IDs, create
read and index basemasks and the bcl2Fastq command.  Following the generation of
basecalled and demultiplexed data, the @code{basecallQC} packages allows the
user to generate HTML tables, plots and a self contained report of summary
metrics from Illumina XML output files.")
    (license license:gpl3+)))

(define-public r-bandle
  (package
    (name "r-bandle")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bandle" version))
       (sha256
        (base32 "1hszmd73axh1mg3zgj7i11fz03cg2v5xjaf7kx5npbdgi3yd4b2b"))))
    (properties `((upstream-name . "bandle")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-s4vectors
                             r-robustbase
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-proloc
                             r-plyr
                             r-msnbase
                             r-lbfgs
                             r-knitr
                             r-ggrepel
                             r-ggplot2
                             r-ggalluvial
                             r-dplyr
                             r-circlize
                             r-biocstyle
                             r-biocparallel
                             r-biobase
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/ococrook/bandle")
    (synopsis
     "An R package for the Bayesian analysis of differential subcellular localisation experiments")
    (description
     "The Bandle package enables the analysis and visualisation of differential
localisation experiments using mass-spectrometry data.  Experimental methods
supported include dynamic LOPIT-DC, @code{hyperLOPIT}, Dynamic Organellar Maps,
Dynamic PCP. It provides Bioconductor infrastructure to analyse these data.")
    (license license:artistic2.0)))

