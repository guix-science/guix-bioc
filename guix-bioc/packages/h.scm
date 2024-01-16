(define-module (guix-bioc packages h)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages web)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages compression)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages c)
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
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-hyper
  (package
    (name "r-hyper")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hypeR" version))
       (sha256
        (base32 "0axkk4qbj29g2f332qmi0wmsbkh9p3sykn7l1r9wamf46dfc1m8z"))))
    (properties `((upstream-name . "hypeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-stringr
                             r-shiny
                             r-scales
                             r-rmarkdown
                             r-rlang
                             r-reshape2
                             r-reactable
                             r-r6
                             r-purrr
                             r-openxlsx
                             r-msigdbr
                             r-magrittr
                             r-kableextra
                             r-igraph
                             r-httr
                             r-htmltools
                             r-ggplot2
                             r-ggforce
                             r-dplyr
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/montilab/hypeR")
    (synopsis "An R Package For Geneset Enrichment Workflows")
    (description "An R Package for Geneset Enrichment Workflows.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-hummingbird
  (package
    (name "r-hummingbird")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hummingbird" version))
       (sha256
        (base32 "1hpbdmdymlnpdqnpq3y4iw9i44vgf399862xw50sjhm7r4d6p3hh"))))
    (properties `((upstream-name . "hummingbird")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-rcpp r-iranges
                             r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hummingbird")
    (synopsis
     "Bayesian Hidden Markov Model for the detection of differentially methylated regions")
    (description
     "This package provides a package for detecting differential methylation.  It
exploits a Bayesian hidden Markov model that incorporates location dependence
among genomic loci, unlike most existing methods that assume independence among
observations.  Bayesian priors are applied to permit information sharing across
an entire chromosome for improved power of detection.  The direct output of our
software package is the best sequence of methylation states, eliminating the use
of a subjective, and most of the time an arbitrary, threshold of p-value for
determining significance.  At last, our methodology does not require replication
in either or both of the two comparison groups.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-humantranscriptomecompendium
  (package
    (name "r-humantranscriptomecompendium")
    (version "1.17.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HumanTranscriptomeCompendium" version))
       (sha256
        (base32 "013lxz0hki13xsmx0j9m2r2hw203jnbnm0sjaaypi79m9p52maav"))))
    (properties `((upstream-name . "HumanTranscriptomeCompendium")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-ssrch r-shiny
                             r-s4vectors))
    (native-inputs (list r-knitr))
    (home-page
     "https://bioconductor.org/packages/HumanTranscriptomeCompendium")
    (synopsis
     "Tools to work with a Compendium of 181000 human transcriptome sequencing studies")
    (description
     "Provide tools for working with a compendium of human transcriptome sequences
(originally htxcomp).")
    (license license:artistic2.0)))

(define-public r-hubpub
  (package
    (name "r-hubpub")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HubPub" version))
       (sha256
        (base32 "13jimwbyvfxwhr5dllv8l455as4fa556czizzwqddjh5hcw4n7mg"))))
    (properties `((upstream-name . "HubPub")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-fs
                             r-dplyr
                             r-biocthis
                             r-biocmanager
                             r-aws-s3
                             r-available))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HubPub")
    (synopsis "Utilities to create and use Bioconductor Hubs")
    (description
     "@code{HubPub} provides users with functionality to help with the Bioconductor
Hub structures.  The package provides the ability to create a skeleton of a Hub
style package that the user can then populate with the necessary information.
There are also functions to help add resources to the Hub package metadata files
as well as publish data to the Bioconductor S3 bucket.")
    (license license:artistic2.0)))

(define-public r-htsfilter
  (package
    (name "r-htsfilter")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HTSFilter" version))
       (sha256
        (base32 "1n3s24z6c9l7n3ri053rgxpj2xm7v9llhdqwnzb5ajvarkiikl6l"))))
    (properties `((upstream-name . "HTSFilter")))
    (build-system r-build-system)
    (propagated-inputs (list r-edger r-deseq2 r-biocparallel r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HTSFilter")
    (synopsis
     "Filter replicated high-throughput transcriptome sequencing data")
    (description
     "This package implements a filtering procedure for replicated transcriptome
sequencing data based on a global Jaccard similarity index in order to identify
genes with low, constant levels of expression across one or more experimental
conditions.")
    (license license:artistic2.0)))

(define-public r-htseqgenie
  (package
    (name "r-htseqgenie")
    (version "4.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HTSeqGenie" version))
       (sha256
        (base32 "1n2kj66m7r6fxzkh99fyl14glcdkr8ba1ywi5kqlr09msckg1ngw"))))
    (properties `((upstream-name . "HTSeqGenie")))
    (build-system r-build-system)
    (propagated-inputs (list r-varianttools
                             r-variantannotation
                             r-summarizedexperiment
                             r-shortread
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-hwriter
                             r-gmapr
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-chipseq
                             r-cairo
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/HTSeqGenie")
    (synopsis "NGS analysis pipeline.")
    (description "Libraries to perform NGS analysis.")
    (license license:artistic2.0)))

(define-public r-hpip
  (package
    (name "r-hpip")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HPiP" version))
       (sha256
        (base32 "0xsnjyzhzwfaiglyws8kqk9xnqzsjmmx7hmynr1dxrsmp57dracf"))))
    (properties `((upstream-name . "HPiP")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-readr
                             r-purrr
                             r-prroc
                             r-protr
                             r-proc
                             r-mcl
                             r-magrittr
                             r-igraph
                             r-httr
                             r-ggplot2
                             r-dplyr
                             r-corrplot
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mrbakhsh/HPiP")
    (synopsis "Host-Pathogen Interaction Prediction")
    (description
     "H@code{PiP} (Host-Pathogen Interaction Prediction) uses an ensemble learning
algorithm for prediction of host-pathogen protein-protein interactions (HP-PPIs)
using structural and physicochemical descriptors computed from amino
acid-composition of host and pathogen proteins.The proposed package can
effectively address data shortages and data unavailability for HP-PPI network
reconstructions.  Moreover, establishing computational frameworks in that regard
will reveal mechanistic insights into infectious diseases and suggest potential
HP-PPI targets, thus narrowing down the range of possible candidates for
subsequent wet-lab experimental validations.")
    (license license:expat)))

(define-public r-hpaanalyze
  (package
    (name "r-hpaanalyze")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HPAanalyze" version))
       (sha256
        (base32 "1xsln9sbflfvnm7fygh7lp1b6qc0wcrxyhz1sh2cfbwchx75hdhz"))))
    (properties `((upstream-name . "HPAanalyze")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-openxlsx
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/anhtr/HPAanalyze")
    (synopsis "Retrieve and analyze data from the Human Protein Atlas")
    (description
     "Provide functions for retrieving, exploratory analyzing and visualizing the
Human Protein Atlas data.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-hopach
  (package
    (name "r-hopach")
    (version "2.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hopach" version))
       (sha256
        (base32 "1v0rqk7757l8samyqd05dpplg6pdrss4nk7fi2hwfkj1vf5wz14s"))))
    (properties `((upstream-name . "hopach")))
    (build-system r-build-system)
    (propagated-inputs (list r-cluster r-biocgenerics r-biobase))
    (home-page "http://www.stat.berkeley.edu/~laan/")
    (synopsis
     "Hierarchical Ordered Partitioning and Collapsing Hybrid (HOPACH)")
    (description
     "The HOPACH clustering algorithm builds a hierarchical tree of clusters by
recursively partitioning a data set, while ordering and possibly collapsing
clusters at each level.  The algorithm uses the Mean/Median Split Silhouette
(MSS) criteria to identify the level of the tree with maximally homogeneous
clusters.  It also runs the tree down to produce a final ordered list of the
elements.  The non-parametric bootstrap allows one to estimate the probability
that each element belongs to each cluster (fuzzy clustering).")
    (license license:gpl2+)))

(define-public r-hoodscanr
  (package
    (name "r-hoodscanr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hoodscanR" version))
       (sha256
        (base32 "1gyzb6vfzg95yc7w05z5apgbyk6al2k4mr2m83k0p19niy9v7ryd"))))
    (properties `((upstream-name . "hoodscanR")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-scico
                             r-rmarkdown
                             r-rlang
                             r-rcpp
                             r-rann
                             r-knitr
                             r-ggplot2
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DavisLaboratory/hoodscanR")
    (synopsis "Spatial cellular neighbourhood scanning in R")
    (description
     "@code{hoodscanR} is an user-friendly R package providing functions to assist
cellular neighborhood analysis of any spatial transcriptomics data with
single-cell resolution.  All functions in the package are built based on the
@code{SpatialExperiment} object, allowing integration into various spatial
transcriptomics-related packages from Bioconductor.  The package can result in
cell-level neighborhood annotation output, along with funtions to perform
neighborhood colocalization analysis and neighborhood-based cell clustering.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-hmmcopy
  (package
    (name "r-hmmcopy")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HMMcopy" version))
       (sha256
        (base32 "1nhm8bv6p5zcs7f9p1hqzyjgya6v3q8rl13blh135pk9gxjiad2c"))))
    (properties `((upstream-name . "HMMcopy")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://bioconductor.org/packages/HMMcopy")
    (synopsis
     "Copy number prediction with correction for GC and mappability bias for HTS data")
    (description
     "Corrects GC and mappability biases for readcounts (i.e.  coverage) in
non-overlapping windows of fixed length for single whole genome samples,
yielding a rough estimate of copy number for furthur analysis.  Designed for
rapid correction of high coverage whole genome tumour and normal samples.")
    (license license:gpl3)))

(define-public r-hmdbquery
  (package
    (name "r-hmdbquery")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hmdbQuery" version))
       (sha256
        (base32 "0x50m4i7drygj340j5jbcfv6ddal8fab2afdrr5wzax8xn1ygmm9"))))
    (properties `((upstream-name . "hmdbQuery")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-s4vectors))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hmdbQuery")
    (synopsis "utilities for exploration of human metabolome database")
    (description
     "Define utilities for exploration of human metabolome database, including
functions to retrieve specific metabolite entries and data snapshots with
pairwise associations (metabolite-gene,-protein,-disease).")
    (license license:artistic2.0)))

(define-public r-hireewas
  (package
    (name "r-hireewas")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HIREewas" version))
       (sha256
        (base32 "1vq9hqdyz26q27h1vjs2p5kq4m97qdi06j4wsiw38vigj4q1s2yw"))))
    (properties `((upstream-name . "HIREewas")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-gplots))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HIREewas")
    (synopsis
     "Detection of cell-type-specific risk-CpG sites in epigenome-wide association studies")
    (description
     "In epigenome-wide association studies, the measured signals for each sample are
a mixture of methylation profiles from different cell types.  The current
approaches to the association detection only claim whether a
cytosine-phosphate-guanine (@code{CpG}) site is associated with the phenotype or
not, but they cannot determine the cell type in which the risk-@code{CpG} site
is affected by the phenotype.  We propose a solid statistical method, HIgh
REsolution (HIRE), which not only substantially improves the power of
association detection at the aggregated level as compared to the existing
methods but also enables the detection of risk-@code{CpG} sites for individual
cell types.  The \"HIREewas\" R package is to implement HIRE model in R.")
    (license license:gpl2+)))

(define-public r-hireadsprocessor
  (package
    (name "r-hireadsprocessor")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hiReadsProcessor" version))
       (sha256
        (base32 "0dkg4hq43radr7yhyh9hhjyib3220rc0s1v4kzxaxxl05ylj92ds"))))
    (properties `((upstream-name . "hiReadsProcessor")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-soniclength
                             r-readxl
                             r-hiannotator
                             r-genomicranges
                             r-genomicalignments
                             r-dplyr
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hiReadsProcessor")
    (synopsis "Functions to process LM-PCR reads from 454/Illumina data")
    (description
     "@code{hiReadsProcessor} contains set of functions which allow users to process
LM-PCR products sequenced using any platform.  Given an excel/txt file
containing parameters for demultiplexing and sample metadata, the functions
automate trimming of adaptors and identification of the genomic product.
Genomic products are further processed for QC and abundance quantification.")
    (license license:gpl3)))

(define-public r-hippo
  (package
    (name "r-hippo")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HIPPO" version))
       (sha256
        (base32 "0flxpyji8c6z7cllpav0js3sk47r6qja1m7pcwmz2ch6aia11k0s"))))
    (properties `((upstream-name . "HIPPO")))
    (build-system r-build-system)
    (propagated-inputs (list r-umap
                             r-singlecellexperiment
                             r-rtsne
                             r-rlang
                             r-reshape2
                             r-matrix
                             r-magrittr
                             r-irlba
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tk382/HIPPO")
    (synopsis "Heterogeneity-Induced Pre-Processing tOol")
    (description
     "For @code{scRNA-seq} data, it selects features and clusters the cells
simultaneously for single-cell UMI data.  It has a novel feature selection
method using the zero inflation instead of gene variance, and computationally
faster than other existing methods since it only relies on PCA+Kmeans rather
than graph-clustering or consensus clustering.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-hipathia
  (package
    (name "r-hipathia")
    (version "3.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hipathia" version))
       (sha256
        (base32 "1lq0xcwjvgcm8l2kzaxf44ng1h57i63xylyv813pq9szma3zl8bx"))))
    (properties `((upstream-name . "hipathia")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-tibble
                             r-summarizedexperiment
                             r-servr
                             r-s4vectors
                             r-reshape2
                             r-preprocesscore
                             r-multiassayexperiment
                             r-metbrewer
                             r-matrixstats
                             r-limma
                             r-igraph
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-delayedarray
                             r-coin
                             r-annotationhub))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/hipathia")
    (synopsis "HiPathia: High-throughput Pathway Analysis")
    (description
     "Hipathia is a method for the computation of signal transduction along signaling
pathways from transcriptomic data.  The method is based on an iterative
algorithm which is able to compute the signal intensity passing through the
nodes of a network by taking into account the level of expression of each gene
and the intensity of the signal arriving to it.  It also provides a new approach
to functional analysis allowing to compute the signal arriving to the functions
annotated to each pathway.")
    (license license:gpl2)))

(define-public r-hilda
  (package
    (name "r-hilda")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiLDA" version))
       (sha256
        (base32 "0midjn8jhvm4cqljfi44jh850bl7drl7k22iwf1y7352jb1mjz84"))))
    (properties `((upstream-name . "HiLDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-xvector
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-tidyr
                             r-stringr
                             r-s4vectors
                             r-rcpp
                             r-r2jags
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-forcats
                             r-cowplot
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-biostrings
                             r-biocgenerics
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USCbiostats/HiLDA")
    (synopsis
     "Conducting statistical inference on comparing the mutational exposures of mutational signatures by using hierarchical latent Dirichlet allocation")
    (description
     "This package provides a package built under the Bayesian framework of applying
hierarchical latent Dirichlet allocation.  It statistically tests whether the
mutational exposures of mutational signatures (Shiraishi-model signatures) are
different between two groups.  The package also provides inference and
visualization.")
    (license license:gpl3)))

(define-public r-hilbertvisgui
  (package
    (name "r-hilbertvisgui")
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HilbertVisGUI" version))
       (sha256
        (base32 "091jy4vixx9xw763mj5faxj02w07bqjk5myb75nban66yggxz5c2"))))
    (properties `((upstream-name . "HilbertVisGUI")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-hilbertvis))
    (native-inputs (list pkg-config))
    (home-page "http://www.ebi.ac.uk/~anders/hilbert")
    (synopsis "HilbertVisGUI")
    (description
     "An interactive tool to visualize long vectors of integer data by means of
Hilbert curves")
    (license license:gpl3+)))

(define-public r-hilbertvis
  (package
    (name "r-hilbertvis")
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HilbertVis" version))
       (sha256
        (base32 "1mb0011g4hp7bbx2qh29j9026yspw8ril7kszddy8n11wkgs9iwn"))))
    (properties `((upstream-name . "HilbertVis")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "http://www.ebi.ac.uk/~anders/hilbert")
    (synopsis "Hilbert curve visualization")
    (description
     "This package provides functions to visualize long vectors of integer data by
means of Hilbert curves")
    (license license:gpl3+)))

(define-public r-hilbertcurve
  (package
    (name "r-hilbertcurve")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HilbertCurve" version))
       (sha256
        (base32 "04575v4ha4znp7nc6irs79rldr8sp85785l362yx3hlz70hkg8n8"))))
    (properties `((upstream-name . "HilbertCurve")))
    (build-system r-build-system)
    (propagated-inputs (list r-polylabelr
                             r-png
                             r-iranges
                             r-hilbertvis
                             r-genomicranges
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jokergoo/HilbertCurve")
    (synopsis "Making 2D Hilbert Curve")
    (description
     "Hilbert curve is a type of space-filling curves that fold one dimensional axis
into a two dimensional space, but with still preserves the locality.  This
package aims to provide an easy and flexible way to visualize data through
Hilbert curve.")
    (license license:expat)))

(define-public r-hierinf
  (package
    (name "r-hierinf")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hierinf" version))
       (sha256
        (base32 "1ahb8ijyghz10zq71dqfscmwbwb3i20b3ai5l3nyja78616viprf"))))
    (properties `((upstream-name . "hierinf")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet r-fmsb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hierinf")
    (synopsis "Hierarchical Inference")
    (description
     "This package provides tools to perform hierarchical inference for one or
multiple studies / data sets based on high-dimensional multivariate
(generalised) linear models.  A possible application is to perform hierarchical
inference for GWA studies to find significant groups or single SNPs (if the
signal is strong) in a data-driven and automated procedure.  The method is based
on an efficient hierarchical multiple testing correction and controls the FWER.
The functions can easily be run in parallel.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hiergwas
  (package
    (name "r-hiergwas")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hierGWAS" version))
       (sha256
        (base32 "0g8lkymr18jfvswwi0qfv44vwzpf3pzjs61zlqn67yr6jpsak34g"))))
    (properties `((upstream-name . "hierGWAS")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet r-fmsb r-fastcluster))
    (home-page "https://bioconductor.org/packages/hierGWAS")
    (synopsis "Asessing statistical significance in predictive GWA studies")
    (description
     "Testing individual SNPs, as well as arbitrarily large groups of SNPs in GWA
studies, using a joint model of all SNPs.  The method controls the FWER, and
provides an automatic, data-driven refinement of the SNP clusters to smaller
groups or single markers.")
    (license license:gpl3)))

(define-public r-hicvenndiagram
  (package
    (name "r-hicvenndiagram")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hicVennDiagram" version))
       (sha256
        (base32 "0xfw0sszpwmh0g6vpb8f1y84p5bg9mwnfypb9n4vwqhxnb12w5qb"))))
    (properties `((upstream-name . "hicVennDiagram")))
    (build-system r-build-system)
    (propagated-inputs (list r-svglite
                             r-s4vectors
                             r-rtracklayer
                             r-reshape2
                             r-interactionset
                             r-htmlwidgets
                             r-ggplot2
                             r-eulerr
                             r-complexupset))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/jianhong/hicVennDiagram")
    (synopsis "Venn Diagram for genomic interaction data")
    (description
     "This package provides a package to generate high-resolution Venn and Upset plots
for genomic interaction data from @code{HiC}, @code{ChIA-PET}, @code{HiChIP},
PLAC-Seq, Hi-@code{TrAC}, @code{HiCAR} and etc.  The package generates plots
specifically crafted to eliminate the deceptive visual representation caused by
the counts method.")
    (license license:gpl3)))

(define-public r-hicool
  (package
    (name "r-hicool")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCool" version))
       (sha256
        (base32 "0ilmps2wp7jm3hmlkrgnsrfzg4ianr25aawbh15x070sp2jsmmnj"))))
    (properties `((upstream-name . "HiCool")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-stringr
                             r-sessioninfo
                             r-s4vectors
                             r-rmdformats
                             r-rmarkdown
                             r-reticulate
                             r-plotly
                             r-iranges
                             r-interactionset
                             r-hicexperiment
                             r-genomicranges
                             r-dplyr
                             r-biocio
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/HiCool")
    (synopsis "HiCool")
    (description
     "@code{HiCool} provides an R interface to process and normalize Hi-C paired-end
fastq reads into .(m)cool files. .(m)cool is a compact, indexed HDF5 file format
specifically tailored for efficiently storing @code{HiC-based} data.  On top of
processing fastq reads, @code{HiCool} provides a convenient reporting function
to generate shareable reports summarizing Hi-C experiments and including quality
controls.")
    (license license:expat)))

(define-public r-hicontacts
  (package
    (name "r-hicontacts")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiContacts" version))
       (sha256
        (base32 "0adbyny0ji0a83rc12adbh2fws1x157wabv65d7gx0kwyz3jrzby"))))
    (properties `((upstream-name . "HiContacts")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rspectra
                             r-readr
                             r-matrix
                             r-iranges
                             r-interactionset
                             r-hicexperiment
                             r-ggrastr
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biocparallel
                             r-biocio
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/HiContacts")
    (synopsis "Analysing cool files in R with HiContacts")
    (description
     "@code{HiContacts} provides a collection of tools to analyse and visualize Hi-C
datasets imported in R by @code{HiCExperiment}.")
    (license license:expat)))

(define-public r-hicexperiment
  (package
    (name "r-hicexperiment")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCExperiment" version))
       (sha256
        (base32 "12pif6yf4dg9s3bc24ibbbz9al0dx597g6kylwf7591s46z1m6mi"))))
    (properties `((upstream-name . "HiCExperiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-strawr
                             r-s4vectors
                             r-rhdf5
                             r-matrix
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biocparallel
                             r-biocio
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/HiCExperiment")
    (synopsis "Bioconductor class for interacting with Hi-C files in R")
    (description
     "R generic interface to Hi-C contact matrices in `.(m)cool`, `.hic` or
@code{HiC-Pro} derived formats, as well as other Hi-C processed file formats.
Contact matrices can be partially parsed using a random access method, allowing
a memory-efficient representation of Hi-C data in R. The `@code{HiCExperiment`}
class stores the Hi-C contacts parsed from local contact matrix files.
`@code{HiCExperiment`} instances can be further investigated in R using the
`@code{HiContacts`} analysis package.")
    (license license:expat)))

(define-public r-hicdoc
  (package
    (name "r-hicdoc")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCDOC" version))
       (sha256
        (base32 "1y7dad3aljhi02p2nmcbc7ljkfw35g2sv54kqsdx76d97c0j8xr3"))))
    (properties `((upstream-name . "HiCDOC")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-zlibbioc
                             r-summarizedexperiment
                             r-s4vectors
                             r-rcpp
                             r-pbapply
                             r-multihiccompare
                             r-interactionset
                             r-gtools
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-cowplot
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mzytnicki/HiCDOC")
    (synopsis "A/B compartment detection and differential analysis")
    (description
     "@code{HiCDOC} normalizes intrachromosomal Hi-C matrices, uses unsupervised
learning to predict A/B compartments from multiple replicates, and detects
significant compartment changes between experiment conditions.  It provides a
collection of functions assembled into a pipeline to filter and normalize the
data, predict the compartments and visualize the results.  It accepts several
type of data: tabular `.tsv` files, Cooler `.cool` or `.mcool` files, Juicer
`.hic` files or @code{HiC-Pro} `.matrix` and `.bed` files.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-hicdcplus
  (package
    (name "r-hicdcplus")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCDCPlus" version))
       (sha256
        (base32 "02n5pn4l1i6aybw60nmmf8665djxp9nypv076bmvjv19kmbm7kr7"))))
    (properties `((upstream-name . "HiCDCPlus")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-rcpp
                             r-r-utils
                             r-pscl
                             r-mass
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-genomicinteractions
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-bsgenome
                             r-biostrings
                             r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HiCDCPlus")
    (synopsis "Hi-C Direct Caller Plus")
    (description
     "Systematic 3D interaction calls and differential analysis for Hi-C and
@code{HiChIP}.  The @code{HiC-DC+} (Hi-C/@code{HiChIP} direct caller plus)
package enables principled statistical analysis of Hi-C and @code{HiChIP} data
sets – including calling significant interactions within a single experiment and
performing differential analysis between conditions given replicate experiments
– to facilitate global integrative studies. @code{HiC-DC+} estimates significant
interactions in a Hi-C or @code{HiChIP} experiment directly from the raw contact
matrix for each chromosome up to a specified genomic distance, binned by uniform
genomic intervals or restriction enzyme fragments, by training a background
model to account for random polymer ligation and systematic sources of read
count variation.")
    (license license:gpl3)))

(define-public r-hiccompare
  (package
    (name "r-hiccompare")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCcompare" version))
       (sha256
        (base32 "1b38vdzdxzwhba33g7dnhiszlmfr8cwli971jmzyljjcfmsa1g2d"))))
    (properties `((upstream-name . "HiCcompare")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rhdf5
                             r-pheatmap
                             r-mgcv
                             r-kernsmooth
                             r-iranges
                             r-interactionset
                             r-gtools
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-dplyr
                             r-data-table
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/HiCcompare")
    (synopsis
     "HiCcompare: Joint normalization and comparative analysis of multiple Hi-C datasets")
    (description
     "@code{HiCcompare} provides functions for joint normalization and difference
detection in multiple Hi-C datasets. @code{HiCcompare} operates on processed
Hi-C data in the form of chromosome-specific chromatin interaction matrices.  It
accepts three-column tab-separated text files storing chromatin interaction
matrices in a sparse matrix format which are available from several sources.
@code{HiCcompare} is designed to give the user the ability to perform a
comparative analysis on the 3-Dimensional structure of the genomes of cells in
different biological states.`@code{HiCcompare`} differs from other packages that
attempt to compare Hi-C data in that it works on processed data in chromatin
interaction matrix format instead of pre-processed sequencing data.  In
addition, `@code{HiCcompare`} provides a non-parametric method for the joint
normalization and removal of biases between two Hi-C datasets for the purpose of
comparative analysis. `@code{HiCcompare`} also provides a simple yet robust
method for detecting differences between Hi-C datasets.")
    (license license:expat)))

(define-public r-hicbricks
  (package
    (name "r-hicbricks")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCBricks" version))
       (sha256
        (base32 "0590ihwsmw1b5fj54jmlpy24mhsnpphazlzi20hvjy7j3yjzzzzg"))))
    (properties `((upstream-name . "HiCBricks")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tibble
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rhdf5
                             r-reshape2
                             r-readr
                             r-rcolorbrewer
                             r-r6
                             r-r-utils
                             r-jsonlite
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-digest
                             r-data-table
                             r-curl
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HiCBricks")
    (synopsis
     "Framework for Storing and Accessing Hi-C Data Through HDF Files")
    (description
     "@code{HiCBricks} is a library designed for handling large high-resolution Hi-C
datasets.  Over the years, the Hi-C field has experienced a rapid increase in
the size and complexity of datasets. @code{HiCBricks} is meant to overcome the
challenges related to the analysis of such large datasets within the R
environment. @code{HiCBricks} offers user-friendly and efficient solutions for
handling large high-resolution Hi-C datasets.  The package provides an
R/Bioconductor framework with the bricks to build more complex data analysis
pipelines and algorithms. @code{HiCBricks} already incorporates example
algorithms for calling domain boundaries and functions for high quality data
visualization.")
    (license license:expat)))

(define-public r-hibag
  (package
    (name "r-hibag")
    (version "1.38.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HIBAG" version))
       (sha256
        (base32 "1spbnj6kfgrg4a2wzpj33d9spvjqs2nn2zmq7448j10dyk3vp0is"))))
    (properties `((upstream-name . "HIBAG")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zhengxwen/HIBAG")
    (synopsis "HLA Genotype Imputation with Attribute Bagging")
    (description
     "Imputes HLA classical alleles using GWAS SNP data, and it relies on a training
set of HLA and SNP genotypes.  HIBAG can be used by researchers with published
parameter estimates instead of requiring access to large training sample
datasets.  It combines the concepts of attribute bagging, an ensemble classifier
method, with haplotype inference for SNPs and HLA types.  Attribute bagging is a
technique which improves the accuracy and stability of classifier ensembles
using bootstrap aggregating and random variable selection.")
    (license license:gpl3)))

(define-public r-hiannotator
  (package
    (name "r-hiannotator")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hiAnnotator" version))
       (sha256
        (base32 "072nhfbzwkl26nrzrfgph56ygjwyldj1qfviv7xj3bpqcz6fhq9y"))))
    (properties `((upstream-name . "hiAnnotator")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rtracklayer
                             r-iterators
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-bsgenome))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hiAnnotator")
    (synopsis "Functions for annotating GRanges objects")
    (description
     "@code{hiAnnotator} contains set of functions which allow users to annotate a
GRanges object with custom set of annotations.  The basic philosophy of this
package is to take two GRanges objects (query & subject) with common set of
seqnames (i.e.  chromosomes) and return associated annotation per seqnames and
rows from the query matching seqnames and rows from the subject (i.e.  genes or
cpg islands).  The package comes with three types of annotation functions which
calculates if a position from query is: within a feature, near a feature, or
count features in defined window sizes.  Moreover, each function is equipped
with parallel backend to utilize the foreach package.  In addition, the package
is equipped with wrapper functions, which finds appropriate columns needed to
make a GRanges object from a common data frame.")
    (license license:gpl2+)))

(define-public r-hgc
  (package
    (name "r-hgc")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HGC" version))
       (sha256
        (base32 "1x8j0x2yf0k6ngsgrnaq5rp2z50dfhffbnaqdn5pi5kr31mncnf9"))))
    (properties `((upstream-name . "HGC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen
                             r-rcpp
                             r-rann
                             r-patchwork
                             r-mclust
                             r-matrix
                             r-ggplot2
                             r-dplyr
                             r-dendextend
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HGC")
    (synopsis "fast hierarchical graph-based clustering method")
    (description
     "HGC (short for Hierarchical Graph-based Clustering) is an R package for
conducting hierarchical clustering on large-scale single-cell RNA-seq
(@code{scRNA-seq}) data.  The key idea is to construct a dendrogram of cells on
their shared nearest neighbor (SNN) graph.  HGC provides functions for building
graphs and for conducting hierarchical clustering on the graph.  The users with
old R version could visit
https://github.com/@code{XuegongLab/HGC/tree/HGC4oldRVersion} to get HGC package
built for R 3.6.")
    (license license:gpl3)))

(define-public r-herper
  (package
    (name "r-herper")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Herper" version))
       (sha256
        (base32 "02jypf2bzaqqdlx32cgvpf8vw13ax51nkibg36fkvh69prz17nq4"))))
    (properties `((upstream-name . "Herper")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-rjson r-reticulate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RockefellerUniversity/Herper")
    (synopsis
     "The Herper package is a simple toolset to install and manage conda packages and environments from R")
    (description
     "Many tools for data analysis are not available in R, but are present in public
repositories like conda.  The Herper package provides a comprehensive set of
functions to interact with the conda package managament system.  With Herper
users can install, manage and run conda packages from the comfort of their R
session.  Herper also provides an ad-hoc approach to handling external system
requirements for R packages.  For people developing packages with python conda
dependencies we recommend using basilisk
(https://bioconductor.org/packages/release/bioc/html/basilisk.html) to
internally support these system requirments pre-hoc.")
    (license license:gpl3)))

(define-public r-heron
  (package
    (name "r-heron")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HERON" version))
       (sha256
        (base32 "0jz3c2mjgrqr9l0nz9y89qbxfbv94s745rc7vi1wgnij1ia6b8xi"))))
    (properties `((upstream-name . "HERON")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-spdep
                             r-s4vectors
                             r-metap
                             r-matrixstats
                             r-matrix
                             r-limma
                             r-iranges
                             r-harmonicmeanp
                             r-genomicranges
                             r-data-table
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ong-Research/HERON")
    (synopsis "Hierarchical Epitope pROtein biNding")
    (description
     "HERON is a software package for analyzing peptide binding array data.  In
addition to identifying significant binding probes, HERON also provides
functions for finding epitopes (string of consecutive peptides within a
protein).  HERON also calculates significance on the probe, epitope, and protein
level by employing meta p-value methods.  HERON is designed for obtaining calls
on the sample level and calculates fractions of hits for different conditions.")
    (license license:gpl3+)))

(define-public r-hermes
  (package
    (name "r-hermes")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hermes" version))
       (sha256
        (base32 "1l68gz8kwsc61zji4ack4ayca0m0ls4ky2lyiab6zs01ywibfj3r"))))
    (properties `((upstream-name . "hermes")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-s4vectors
                             r-rlang
                             r-rdpack
                             r-r6
                             r-purrr
                             r-multiassayexperiment
                             r-matrixstats
                             r-magrittr
                             r-limma
                             r-lifecycle
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-ggfortify
                             r-genomicranges
                             r-forcats
                             r-envstats
                             r-edger
                             r-dplyr
                             r-deseq2
                             r-complexheatmap
                             r-circlize
                             r-checkmate
                             r-biomart
                             r-biocgenerics
                             r-biobase
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/insightsengineering/hermes/")
    (synopsis "Preprocessing, analyzing, and reporting of RNA-seq data")
    (description
     "This package provides classes and functions for quality control, filtering,
normalization and differential expression analysis of pre-processed RNA-seq
data.  Data can be imported from `@code{SummarizedExperiment`} as well as
`matrix` objects and can be annotated from @code{BioMart}.  Filtering for genes
without too low expression or containing required annotations, as well as
filtering for samples with sufficient correlation to other samples or total
number of reads is supported.  The standard normalization methods including
`cpm`, `rpkm` and `tpm` can be used, and `DESeq2` as well as `voom` differential
expression analyses are available.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hem
  (package
    (name "r-hem")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HEM" version))
       (sha256
        (base32 "1zii27ihz42117mw6ipa1djv4nr1zlh3xkybp8ic2m143q1s7jsq"))))
    (properties `((upstream-name . "HEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page
     "http://www.healthsystem.virginia.edu/internet/hes/biostat/bioinformatics/")
    (synopsis
     "Heterogeneous error model for identification of differentially expressed genes under multiple conditions")
    (description
     "This package fits heterogeneous error models for analysis of microarray data")
    (license license:gpl2+)))

(define-public r-help
  (package
    (name "r-help")
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HELP" version))
       (sha256
        (base32 "0q55prngrr04w5ma255k50yyzq13aqxmvk2yi12j4m4315h35ciz"))))
    (properties `((upstream-name . "HELP")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/HELP")
    (synopsis "Tools for HELP data analysis")
    (description
     "The package contains a modular pipeline for analysis of HELP microarray data,
and includes graphical and mathematical tools with more general applications.")
    (license license:gpl2+)))

(define-public r-helloranges
  (package
    (name "r-helloranges")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HelloRanges" version))
       (sha256
        (base32 "0pzx5hixkyqqqgd2r7l9j0vhd7w5b0hlkkaxsfa7jvcizjbv3lgh"))))
    (properties `((upstream-name . "HelloRanges")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-docopt
                             r-bsgenome
                             r-biostrings
                             r-biocio
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/HelloRanges")
    (synopsis "Introduce *Ranges to bedtools users")
    (description
     "Translates bedtools command-line invocations to R code calling functions from
the Bioconductor *Ranges infrastructure.  This is intended to educate novice
Bioconductor users and to compare the syntax and semantics of the two
frameworks.")
    (license license:gpl2+)))

(define-public r-heatmaps
  (package
    (name "r-heatmaps")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "heatmaps" version))
       (sha256
        (base32 "1b52a0rlziaxwbsxmvd43g4ilr5n1vx6gz4azsnlp5hpmw524mdq"))))
    (properties `((upstream-name . "heatmaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-plotrix
                             r-matrix
                             r-kernsmooth
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-ebimage
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/heatmaps")
    (synopsis
     "Flexible Heatmaps for Functional Genomics and Sequence Features")
    (description
     "This package provides functions for plotting heatmaps of genome-wide data across
genomic intervals, such as @code{ChIP-seq} signals at peaks or across promoters.
 Many functions are also provided for investigating sequence features.")
    (license license:artistic2.0)))

(define-public r-hdtd
  (package
    (name "r-hdtd")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HDTD" version))
       (sha256
        (base32 "0y243fava1n8ivnd7y2grmllj358k1rva4axrlyyy8y9z9krkyr2"))))
    (properties `((upstream-name . "HDTD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/AnestisTouloumis/HDTD")
    (synopsis
     "Statistical Inference about the Mean Matrix and the Covariance Matrices in High-Dimensional Transposable Data (HDTD)")
    (description
     "Characterization of intra-individual variability using physiologically relevant
measurements provides important insights into fundamental biological questions
ranging from cell type identity to tumor development.  For each individual, the
data measurements can be written as a matrix with the different subsamples of
the individual recorded in the columns and the different phenotypic units
recorded in the rows.  Datasets of this type are called high-dimensional
transposable data.  The HDTD package provides functions for conducting
statistical inference for the mean relationship between the row and column
variables and for the covariance structure within and between the row and column
variables.")
    (license license:gpl3)))

(define-public r-hca
  (package
    (name "r-hca")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hca" version))
       (sha256
        (base32 "1lq97wzgygsh6m351hy8swmh58rbwd1h70qmw3w3msd5wm28v22a"))))
    (properties `((upstream-name . "hca")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-shiny
                             r-readr
                             r-miniui
                             r-jsonlite
                             r-httr
                             r-dt
                             r-dplyr
                             r-digest
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hca")
    (synopsis "Exploring the Human Cell Atlas Data Coordinating Platform")
    (description
     "This package provides users with the ability to query the Human Cell Atlas data
repository for single-cell experiment data.  The `projects()`, `files()`,
`samples()` and `bundles()` functions retrieve summary information on each of
these indexes; corresponding `*_details()` are available for individual entries
of each index.  File-based resources can be downloaded using `files_download()`.
 Advanced use of the package allows the user to page through large result sets,
and to flexibly query the list-of-lists structure representing query responses.")
    (license license:expat)))

(define-public r-harmonizr
  (package
    (name "r-harmonizr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HarmonizR" version))
       (sha256
        (base32 "1gsgqirwk6p1babwidlhdmj6ilx2z8qlwi8b2vdxxjzxz9gqa9lj"))))
    (properties `((upstream-name . "HarmonizR")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-seriation
                             r-plyr
                             r-limma
                             r-janitor
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HarmonizR")
    (synopsis "Handles missing values and makes more data available")
    (description
     "An implementation, which takes input data and makes it available for proper
batch effect removal by @code{ComBat} or Limma.  The implementation
appropriately handles missing values by dissecting the input matrix into smaller
matrices with sufficient data to feed the @code{ComBat} or limma algorithm.  The
adjusted data is returned to the user as a rebuild matrix.  The implementation
is meant to make as much data available as possible with minimal data loss.")
    (license license:gpl3)))

(define-public r-harman
  (package
    (name "r-harman")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Harman" version))
       (sha256
        (base32 "1kfraxmkqkqn8j3lj1lfb7i18q8iyprih1wvr0dnx6prvz8wjl1p"))))
    (properties `((upstream-name . "Harman")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrixstats r-ckmeans-1d-dp))
    (native-inputs (list r-knitr))
    (home-page "http://www.bioinformatics.csiro.au/harman/")
    (synopsis
     "The removal of batch effects from datasets using a PCA and constrained optimisation based technique")
    (description
     "Harman is a PCA and constrained optimisation based technique that maximises the
removal of batch effects from datasets, with the constraint that the probability
of overcorrection (i.e.  removing genuine biological signal along with batch
noise) is kept to a fraction which is set by the end-user.")
    (license (license:fsdg-compatible "GPL-3 + file LICENCE"))))

(define-public r-hapfabia
  (package
    (name "r-hapfabia")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapFabia" version))
       (sha256
        (base32 "0mmpwbpi2z8cj7xssxrwbyzcr47szywf0bm9d9vnwkl0z6awmxfz"))))
    (properties `((upstream-name . "hapFabia")))
    (build-system r-build-system)
    (propagated-inputs (list r-fabia r-biobase))
    (home-page "http://www.bioinf.jku.at/software/hapFabia/hapFabia.html")
    (synopsis
     "hapFabia: Identification of very short segments of identity by descent (IBD) characterized by rare variants in large sequencing data")
    (description
     "This package provides a package to identify very short IBD segments in large
sequencing data by FABIA biclustering.  Two haplotypes are identical by descent
(IBD) if they share a segment that both inherited from a common ancestor.
Current IBD methods reliably detect long IBD segments because many minor alleles
in the segment are concordant between the two haplotypes.  However, many cohort
studies contain unrelated individuals which share only short IBD segments.  This
package provides software to identify short IBD segments in sequencing data.
Knowledge of short IBD segments are relevant for phasing of genotyping data,
association studies, and for population genetics, where they shed light on the
evolutionary history of humans.  The package supports VCF formats, is based on
sparse matrix operations, and provides visualization of haplotype clusters in
different formats.")
    (license license:lgpl2.1+)))

(define-public r-h5vc
  (package
    (name "r-h5vc")
    (version "2.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "h5vc" version))
       (sha256
        (base32 "0h3vffm1yadryxqjz6x7lapx9ysmmmqvc6m1ayw3cfzswkqfd86z"))))
    (properties `((upstream-name . "h5vc")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-rhtslib
                             r-rhdf5
                             r-reshape
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-biostrings
                             r-biocparallel
                             r-batchjobs
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/h5vc")
    (synopsis "Managing alignment tallies using a hdf5 backend")
    (description
     "This package contains functions to interact with tally data from NGS experiments
that is stored in HDF5 files.")
    (license license:gpl3+)))

