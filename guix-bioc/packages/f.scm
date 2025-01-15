(define-module (guix-bioc packages f)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (guix-cran packages a)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages f)
  #:use-module (gnu packages bioconductor)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages r)
  #:use-module (gnu packages maths)
  #:use-module (guix-cran packages g)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages imagemagick)
  #:use-module (gnu packages java)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages k)
  #:use-module (guix-cran packages o)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
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
  #:use-module (guix-bioc packages j)
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-fusesom
  (package
    (name "r-fusesom")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FuseSOM" version))
       (sha256
        (base32 "0mrh4lkk1gknfny50j240wcg2sf3l9fakb5xnwd58jfv31459w1w"))))
    (properties `((upstream-name . "FuseSOM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rcpp
                             r-psych
                             r-proxy
                             r-pheatmap
                             r-ggpubr
                             r-ggplotify
                             r-ggplot2
                             r-fpc
                             r-fcps
                             r-fastcluster
                             r-diptest
                             r-coop
                             r-cluster
                             r-analogue))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/FuseSOM")
    (synopsis
     "Correlation Based Multiview Self Organizing Maps Clustering For IMC Datasets")
    (description
     "This package provides a correlation-based multiview self-organizing map for the
characterization of cell types in highly multiplexed in situ imaging cytometry
assays (`@code{FuseSOM`}) is a tool for unsupervised clustering.
`@code{FuseSOM`} is robust and achieves high accuracy by combining a `Self
Organizing Map` architecture and a `Multiview` integration of correlation based
metrics.  This allows @code{FuseSOM} to cluster highly multiplexed in situ
imaging cytometry assays.")
    (license license:gpl2)))

(define-public r-furrowseg
  (package
    (name "r-furrowseg")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "furrowSeg" version
                              'experiment))
       (sha256
        (base32 "052531x1fb47mx7p77y61amkxhdga6xsgcq98a55vxm3pg2jsf49"))))
    (properties `((upstream-name . "furrowSeg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tiff r-locfit r-ebimage r-dplyr r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/furrowSeg")
    (synopsis "Furrow Segmentation")
    (description
     "Image feature data and analysis codes for the Guglielmi, Barry et al.  paper
describing the application of an optogenetics tools to disrupt Drosophila embryo
furrowing.")
    (license license:artistic2.0)))

(define-public r-funtoonorm
  (package
    (name "r-funtoonorm")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "funtooNorm" version))
       (sha256
        (base32 "13qz1icxpkdk0kssdh9svk71r850crrf2x7lc3sxiphcg71x83jz"))))
    (properties `((upstream-name . "funtooNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pls
                             r-minfi
                             r-matrixstats
                             r-illuminahumanmethylation450kmanifest
                             r-illuminahumanmethylation450kanno-ilmn12-hg19
                             r-genomeinfodb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/funtooNorm")
    (synopsis
     "Normalization Procedure for Infinium HumanMethylation450 BeadChip Kit")
    (description
     "This package provides a function to normalize Illumina Infinium Human
Methylation 450 @code{BeadChip} (Illumina 450K), correcting for tissue and/or
cell type.")
    (license license:gpl3)))

(define-public r-funomics
  (package
    (name "r-funomics")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "funOmics" version))
       (sha256
        (base32 "0xybpr3iclpazyjf405y5qvvg18n038rmmg3v4234cym9gymf8c6"))))
    (properties `((upstream-name . "funOmics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-pathifier
                             r-org-hs-eg-db
                             r-nmf
                             r-keggrest
                             r-dplyr
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/elisagdelope/funomics")
    (synopsis
     "Aggregating Omics Data into Higher-Level Functional Representations")
    (description
     "The @code{funOmics} package ggregates or summarizes omics data into higher level
functional representations such as GO terms gene sets or KEGG metabolic
pathways.  The aggregated data matrix represents functional activity scores that
facilitate the analysis of functional molecular sets while allowing to reduce
dimensionality and provide easier and faster biological interpretations.
Coordinated functional activity scores can be as informative as single
molecules!")
    (license license:expat)))

(define-public r-frmatools
  (package
    (name "r-frmatools")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "frmaTools" version))
       (sha256
        (base32 "0fszdna6n3nhdqzvxarby7zrcwv3c61p3cvw8sjr18v7qmwxahic"))))
    (properties `((upstream-name . "frmaTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-preprocesscore r-dbi r-biobase r-affy))
    (home-page "http://bioconductor.org")
    (synopsis "Frozen RMA Tools")
    (description
     "This package provides tools for advanced use of the frma package.")
    (license license:gpl2+)))

(define-public r-frmaexampledata
  (package
    (name "r-frmaexampledata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "frmaExampleData" version
                              'experiment))
       (sha256
        (base32 "1sazkzs2nr0kbmc1ilb1rhwkjd2lwkjf8lx89id8qxra62wdc19f"))))
    (properties `((upstream-name . "frmaExampleData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/frmaExampleData")
    (synopsis "Frma Example Data")
    (description
     "Data files used by the examples in frma and @code{frmaTools} packages.")
    (license license:gpl2+)))

(define-public r-frma
  (package
    (name "r-frma")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "frma" version))
       (sha256
        (base32 "14x36pgq4w76whg8c3gzkrmyn5b0rav7gqrlz8j2673j5gijkqq6"))))
    (properties `((upstream-name . "frma")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-preprocesscore
                             r-oligoclasses
                             r-oligo
                             r-mass
                             r-dbi
                             r-biocgenerics
                             r-biobase
                             r-affy))
    (home-page "http://bioconductor.org")
    (synopsis "Frozen RMA and Barcode")
    (description
     "Preprocessing and analysis for single microarrays and microarray batches.")
    (license license:gpl2+)))

(define-public r-frgepistasis
  (package
    (name "r-frgepistasis")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FRGEpistasis" version))
       (sha256
        (base32 "0l56zdxw7p7ld6r2bxqvdkva0ljv7lbddp6jyf8dajg1n7hph9ni"))))
    (properties `((upstream-name . "FRGEpistasis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-fda))
    (home-page "https://bioconductor.org/packages/FRGEpistasis")
    (synopsis
     "Epistasis Analysis for Quantitative Traits by Functional Regression Model")
    (description
     "This package provides a Tool for Epistasis Analysis Based on Functional
Regression Model.")
    (license license:gpl2)))

(define-public r-frenchfish
  (package
    (name "r-frenchfish")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "frenchFISH" version))
       (sha256
        (base32 "11cmb0fp7mj73rbqmh8qfm0zmdr1jz1w1wy5w670p6hxc882qmih"))))
    (properties `((upstream-name . "frenchFISH")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nhpoisson r-mcmcpack))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/frenchFISH")
    (synopsis
     "Poisson Models for Quantifying DNA Copy-number from FISH Images of Tissue Sections")
    (description
     "@code{FrenchFISH} comprises a nuclear volume correction method coupled with two
types of Poisson models: either a Poisson model for improved manual spot
counting without the need for control probes; or a homogenous Poisson Point
Process model for automated spot counting.")
    (license license:artistic2.0)))

(define-public r-fraser
  (package
    (name "r-fraser")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FRASER" version))
       (sha256
        (base32 "1br4cb764r036kgpfbd7azkyddkv4vnin9g0jnnyy1hw3c0zkl67"))))
    (properties `((upstream-name . "FRASER")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-tibble
                             r-summarizedexperiment
                             r-s4vectors
                             r-rsubread
                             r-rsamtools
                             r-rhdf5
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-r-utils
                             r-prroc
                             r-plotly
                             r-pheatmap
                             r-pcamethods
                             r-outrider
                             r-matrixstats
                             r-iranges
                             r-hdf5array
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-generics
                             r-extradistr
                             r-delayedmatrixstats
                             r-delayedarray
                             r-data-table
                             r-cowplot
                             r-bsgenome
                             r-biomart
                             r-biocparallel
                             r-biocgenerics
                             r-biobase
                             r-bbmisc
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gagneurlab/FRASER")
    (synopsis "Find RAre Splicing Events in RNA-Seq Data")
    (description
     "Detection of rare aberrant splicing events in transcriptome profiles.  Read
count ratio expectations are modeled by an autoencoder to control for
confounding factors in the data.  Given these expectations, the ratios are
assumed to follow a beta-binomial distribution with a junction specific
dispersion.  Outlier events are then identified as read-count ratios that
deviate significantly from this distribution.  FRASER is able to detect
alternative splicing, but also intron retention.  The package aims to support
diagnostics in the field of rare diseases where RNA-seq is performed to identify
aberrant splicing defects.")
    (license license:expat)))

(define-public r-fourdndata
  (package
    (name "r-fourdndata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fourDNData" version
                              'experiment))
       (sha256
        (base32 "1ippkbavwhwbhf7j6r2k50jnbdrzxzb6qv2ff5dab86wr59804x1"))))
    (properties `((upstream-name . "fourDNData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-iranges r-hicexperiment
                             r-genomicranges r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/fourDNData")
    (synopsis "4DN data package")
    (description
     "@code{fourDNData} is a data package giving programmatic access to Hi-C contact
matrices uniformly processed by the [4DN
consortium](https://www.4dnucleome.org/).  The matrices are available in the
multi-resolution `.mcool` format.")
    (license license:expat)))

(define-public r-fobitools
  (package
    (name "r-fobitools")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fobitools" version))
       (sha256
        (base32 "11s02q3jj8z66jkx4v4c48656vkiaiwqb9064y07kiajj28ckvpy"))))
    (properties `((upstream-name . "fobitools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vroom
                             r-tidyr
                             r-tidygraph
                             r-tictoc
                             r-textclean
                             r-stringr
                             r-recordlinkage
                             r-purrr
                             r-ontologyindex
                             r-magrittr
                             r-ggraph
                             r-ggplot2
                             r-fgsea
                             r-dplyr
                             r-crayon
                             r-clisymbols))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pcastellanoescuder/fobitools/")
    (synopsis "Tools for Manipulating the FOBI Ontology")
    (description
     "This package provides a set of tools for interacting with the Food-Biomarker
Ontology (FOBI).  A collection of basic manipulation tools for biological
significance analysis, graphs, and text mining strategies for annotating
nutritional data.")
    (license license:gpl3)))

(define-public r-fmrs
  (package
    (name "r-fmrs")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fmrs" version))
       (sha256
        (base32 "0b6sm1k3ancnzjhnd2gmwfmi5jq4g9ai63prn3364dmbmgkwp894"))))
    (properties `((upstream-name . "fmrs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/fmrs")
    (synopsis
     "Variable Selection in Finite Mixture of AFT Regression and FMR Models")
    (description
     "The package obtains parameter estimation, i.e., maximum likelihood estimators
(MLE), via the Expectation-Maximization (EM) algorithm for the Finite Mixture of
Regression (FMR) models with Normal distribution, and MLE for the Finite Mixture
of Accelerated Failure Time Regression (FMAFTR) subject to right censoring with
Log-Normal and Weibull distributions via the EM algorithm and the Newton-Raphson
algorithm (for Weibull distribution).  More importantly, the package obtains the
maximum penalized likelihood (MPLE) for both FMR and FMAFTR models (collectively
called FMRs).  A component-wise tuning parameter selection based on a
component-wise BIC is implemented in the package.  Furthermore, this package
provides Ridge Regression and Elastic Net.")
    (license license:gpl3)))

(define-public r-fly-db0
  (package
    (name "r-fly-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fly.db0" version
                              'annotation))
       (sha256
        (base32 "0nsxzbxg284jg9gd9fnn55qhsw7lbsnywwyh5dp9ssmmhwf746ix"))))
    (properties `((upstream-name . "fly.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/fly.db0")
    (synopsis "Base Level Annotation databases for fly")
    (description
     "Base annotation databases for fly, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-flowvs
  (package
    (name "r-flowvs")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowVS" version))
       (sha256
        (base32 "13d6inmsqamlg23p5ah2skbprad9sqkz04dxc2c3ws8p8dqk9qmp"))))
    (properties `((upstream-name . "flowVS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-flowviz r-flowstats r-flowcore))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/flowVS")
    (synopsis "Variance stabilization in flow cytometry (and microarrays)")
    (description
     "Per-channel variance stabilization from a collection of flow cytometry samples
by Bertlett test for homogeneity of variances.  The approach is applicable to
microarrays data as well.")
    (license license:artistic2.0)))

(define-public r-flowtrans
  (package
    (name "r-flowtrans")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowTrans" version))
       (sha256
        (base32 "0axc678vq221808b1diw2whhnl2hgp9ddixy6fc8xny16vbg3wln"))))
    (properties `((upstream-name . "flowTrans")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-flowviz r-flowcore r-flowclust))
    (home-page "https://bioconductor.org/packages/flowTrans")
    (synopsis "Parameter Optimization for Flow Cytometry Data Transformation")
    (description
     "Profile maximum likelihood estimation of parameters for flow cytometry data
transformations.")
    (license license:artistic2.0)))

(define-public r-flowtime
  (package
    (name "r-flowtime")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowTime" version))
       (sha256
        (base32 "0x1bq9w0ggj27lig1n9hamag9qxvrmi20v2hnmi7ijjmg9z59yhd"))))
    (properties `((upstream-name . "flowTime")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-plyr
                             r-magrittr
                             r-flowcore
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/flowTime")
    (synopsis
     "Annotation and analysis of biological dynamical systems using flow cytometry")
    (description
     "This package facilitates analysis of both timecourse and steady state flow
cytometry experiments.  This package was originially developed for quantifying
the function of gene regulatory networks in yeast (strain W303) expressing
fluorescent reporter proteins using BD Accuri C6 and SORP cytometers.  However,
the functions are for the most part general and may be adapted for analysis of
other organisms using other flow cytometers.  Functions in this package
facilitate the annotation of flow cytometry data with experimental metadata, as
often required for publication and general ease-of-reuse.  Functions for
creating, saving and loading gate sets are also included.  In the past, we have
typically generated summary statistics for each flowset for each timepoint and
then annotated and analyzed these summary statistics.  This method loses a great
deal of the power that comes from the large amounts of individual cell data
generated in flow cytometry, by essentially collapsing this data into a bulk
measurement after subsetting.  In addition to these summary functions, this
package also contains functions to facilitate annotation and analysis of
steady-state or time-lapse data utilizing all of the data collected from the
thousands of individual cells in each sample.")
    (license license:artistic2.0)))

(define-public r-flowspecs
  (package
    (name "r-flowspecs")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowSpecs" version))
       (sha256
        (base32 "0l1ray2p5mzp5w0x6r70g1dv5zgl171259a942mvy7szd4b2h2an"))))
    (properties `((upstream-name . "flowSpecs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-reshape2
                             r-ggplot2
                             r-flowcore
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/flowSpecs")
    (synopsis "Tools for processing of high-dimensional cytometry data")
    (description
     "This package is intended to fill the role of conventional cytometry
pre-processing software, for spectral decomposition, transformation,
visualization and cleanup, and to aid further downstream analyses, such as with
@code{DepecheR}, by enabling transformation of @code{flowFrames} and
@code{flowSets} to dataframes.  Functions for @code{flowCore-compliant}
automatic 1D-gating/filtering are in the pipe line.  The package name has been
chosen both as it will deal with spectral cytometry and as it will hopefully
give the user a nice pair of spectacles through which to view their data.")
    (license license:expat)))

(define-public r-flowsorted-dlpfc-450k
  (package
    (name "r-flowsorted-dlpfc-450k")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FlowSorted.DLPFC.450k" version
                              'experiment))
       (sha256
        (base32 "1338vkd2fjirmbydlz8ma2pxpln243fsj68a004bxp47gkvxpjnd"))))
    (properties `((upstream-name . "FlowSorted.DLPFC.450k")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-minfi))
    (home-page "https://bioconductor.org/packages/FlowSorted.DLPFC.450k")
    (synopsis
     "Illumina HumanMethylation data on sorted frontal cortex cell populations")
    (description
     "Raw data objects for the Illumina 450k DNA methylation microarrays.")
    (license license:artistic2.0)))

(define-public r-flowsorted-cordbloodnorway-450k
  (package
    (name "r-flowsorted-cordbloodnorway-450k")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FlowSorted.CordBloodNorway.450k" version
                              'experiment))
       (sha256
        (base32 "11w600kbk7gkm1pafqm513kv7y5cfrny589gw18z6magnkscffna"))))
    (properties `((upstream-name . "FlowSorted.CordBloodNorway.450k")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-minfi))
    (home-page "https://bitbucket.com/kasperdanielhansen/Illumina_CordBlood")
    (synopsis
     "Illumina HumanMethylation data on sorted cord blood cell populations")
    (description
     "Raw data objects for the Illumina 450k DNA methylation microarrays, for cell
type composition estimation.")
    (license license:artistic2.0)))

(define-public r-flowsorted-cordbloodcombined-450k
  (package
    (name "r-flowsorted-cordbloodcombined-450k")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FlowSorted.CordBloodCombined.450k" version
                              'experiment))
       (sha256
        (base32 "15phn2kikaap2yzv9pn1206iiv4lg87hrh1yn4ks45f30prryp9x"))))
    (properties `((upstream-name . "FlowSorted.CordBloodCombined.450k")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-minfi
                             r-illuminahumanmethylationepicanno-ilm10b4-hg19
                             r-illuminahumanmethylation450kanno-ilmn12-hg19
                             r-experimenthub
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page
     "https://github.com/immunomethylomics/FlowSorted.CordBloodCombined.450k")
    (synopsis "Illumina 450k/EPIC data on FACS and MACS umbilical blood cells")
    (description
     "Raw data objects to be used for umbilical cord blood cell proportion estimation
in minfi and similar packages.  The @code{FlowSorted.CordBloodCombined.450k}
object is based in samples assayed by Bakulski et al, Gervin et al., de Goede et
al., and Lin et al.")
    (license license:gpl3)))

(define-public r-flowsorted-cordblood-450k
  (package
    (name "r-flowsorted-cordblood-450k")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FlowSorted.CordBlood.450k" version
                              'experiment))
       (sha256
        (base32 "0cxdhysyj1s5wrj1779km6gfyk6n8yz94sysg9w6cw7n561b2q5i"))))
    (properties `((upstream-name . "FlowSorted.CordBlood.450k")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-minfi))
    (home-page "https://bioconductor.org/packages/FlowSorted.CordBlood.450k")
    (synopsis "Illumina 450k data on sorted cord blood cells")
    (description
     "Raw data objects to be used for cord blood cell proportion estimation in minfi.")
    (license license:artistic2.0)))

(define-public r-flowplots
  (package
    (name "r-flowplots")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowPlots" version))
       (sha256
        (base32 "0db5k4s6w7p3k3n4618w5wk9zl48lyr590s47wpbzi69m201jqfn"))))
    (properties `((upstream-name . "flowPlots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/flowPlots")
    (synopsis
     "flowPlots: analysis plots and data class for gated flow cytometry data")
    (description
     "Graphical displays with embedded statistical tests for gated ICS flow cytometry
data, and a data class which stores \"stacked\" data and has methods for computing
summary measures on stacked data, such as marginal and polyfunctional degree
data.")
    (license license:artistic2.0)))

(define-public r-flowploidydata
  (package
    (name "r-flowploidydata")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowPloidyData" version
                              'experiment))
       (sha256
        (base32 "17a7cabqgfj4f6l7p2fxvf2z1lafhkl01wcklyhjycfb1803plsl"))))
    (properties `((upstream-name . "flowPloidyData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/flowPloidyData")
    (synopsis "Example Flow Cytometry Data")
    (description
     "This package provides a collection of raw flow cytometry data for use in
vignettes for the @code{flowPloidy} package.")
    (license license:gpl3)))

(define-public r-flowploidy
  (package
    (name "r-flowploidy")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowPloidy" version))
       (sha256
        (base32 "1cxppkg0knjadwbafmyyy5lx8jg9rjx58rfgzl7vn7bk0rrj253z"))))
    (properties `((upstream-name . "flowPloidy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-minpack-lm
                             r-knitr
                             r-flowcore
                             r-catools
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/plantarum/flowPloidy")
    (synopsis "Analyze flow cytometer data to determine sample ploidy")
    (description
     "Determine sample ploidy via flow cytometry histogram analysis.  Reads Flow
Cytometry Standard (FCS) files via the @code{flowCore} bioconductor package, and
provides functions for determining the DNA ploidy of samples based on internal
standards.")
    (license license:gpl3)))

(define-public r-flowpeaks
  (package
    (name "r-flowpeaks")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowPeaks" version))
       (sha256
        (base32 "0sgxzywbzwz0y4c8ja2803ny3l3gywn90jil76r96s37ddn376ii"))))
    (properties `((upstream-name . "flowPeaks")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl gsl))
    (home-page "https://bioconductor.org/packages/flowPeaks")
    (synopsis "An R package for flow data clustering")
    (description
     "This package provides a fast and automatic clustering to classify the cells into
subpopulations based on finding the peaks from the overall density function
generated by K-means.")
    (license (license:fsdg-compatible "Artistic-1.0"))))

(define-public r-flowmerge
  (package
    (name "r-flowmerge")
    (version "2.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowMerge" version))
       (sha256
        (base32 "0jxi9zpq3vvz1mpqq9c7l9c4pvrjvgvcmma1v4w52gflrp1nxj7w"))))
    (properties `((upstream-name . "flowMerge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snow
                             r-rrcov
                             r-rgraphviz
                             r-graph
                             r-foreach
                             r-flowcore
                             r-flowclust
                             r-feature))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/flowMerge")
    (synopsis "Cluster Merging for Flow Cytometry Data")
    (description
     "Merging of mixture components for model-based automated gating of flow cytometry
data using the @code{flowClust} framework.  Note: users should have a working
copy of @code{flowClust} 2.0 installed.")
    (license license:artistic2.0)))

(define-public r-flowmatch
  (package
    (name "r-flowmatch")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowMatch" version))
       (sha256
        (base32 "1v0l5974bynyiv4aw5az2x90jzi2qa383njifg8dxx6061qr1s3s"))))
    (properties `((upstream-name . "flowMatch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-flowcore r-biobase))
    (home-page "https://bioconductor.org/packages/flowMatch")
    (synopsis "Matching and meta-clustering in flow cytometry")
    (description
     "Matching cell populations and building meta-clusters and templates from a
collection of FC samples.")
    (license license:artistic2.0)))

(define-public r-flowgraph
  (package
    (name "r-flowgraph")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowGraph" version))
       (sha256
        (base32 "0r7svnyqmf45mdr9v3bpqbv9352yfdkrvj2syisrhdhg7mbvhpcn"))))
    (properties `((upstream-name . "flowGraph")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-stringr
                             r-stringi
                             r-rdpack
                             r-purrr
                             r-matrixstats
                             r-matrix
                             r-igraph
                             r-htmlwidgets
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-ggiraph
                             r-future
                             r-furrr
                             r-effsize
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aya49/flowGraph")
    (synopsis
     "Identifying differential cell populations in flow cytometry data accounting for marker frequency")
    (description
     "Identifies maximal differential cell populations in flow cytometry data taking
into account dependencies between cell populations; @code{flowGraph} calculates
and plots @code{SpecEnr} abundance scores given cell population cell counts.")
    (license license:artistic2.0)))

(define-public r-flowgate
  (package
    (name "r-flowgate")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowGate" version))
       (sha256
        (base32 "086nc8rjafhnqdzf00n342pxsdh2x4ysnkymihngj7s43xvppvjd"))))
    (properties `((upstream-name . "flowGate")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-shiny
                             r-rlang
                             r-purrr
                             r-ggplot2
                             r-ggcyto
                             r-flowworkspace
                             r-flowcore
                             r-dplyr
                             r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/flowGate")
    (synopsis "Interactive Cytometry Gating in R")
    (description
     "@code{flowGate} adds an interactive Shiny app to allow manual GUI-based gating
of flow cytometry data in R. Using @code{flowGate}, you can draw 1D and 2D
span/rectangle gates, quadrant gates, and polygon gates on flow cytometry data
by interactively drawing the gates on a plot of your data, rather than by
specifying gate coordinates.  This package is especially geared toward wet-lab
cytometerists looking to take advantage of R for cytometry analysis, without
necessarily having a lot of R experience.")
    (license license:expat)))

(define-public r-flowfp
  (package
    (name "r-flowfp")
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowFP" version))
       (sha256
        (base32 "109184ad3nwbzlkj22ha753lk7z382gwi2dbna6s4wjngr7rbavf"))))
    (properties `((upstream-name . "flowFP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-flowviz r-flowcore r-biocgenerics r-biobase))
    (home-page "https://bioconductor.org/packages/flowFP")
    (synopsis "Fingerprinting for Flow Cytometry")
    (description
     "Fingerprint generation of flow cytometry data, used to facilitate the
application of machine learning and datamining tools for flow cytometry.")
    (license license:artistic2.0)))

(define-public r-flowdensity
  (package
    (name "r-flowdensity")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowDensity" version))
       (sha256
        (base32 "0fwfppwn0jxp8lvwyfpgmkizsfp3i6n3jaccc7m9fkmad3cd2yxv"))))
    (properties `((upstream-name . "flowDensity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list libxml2))
    (propagated-inputs (list r-polyclip r-gplots r-flowviz r-flowcore r-car))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/flowDensity")
    (synopsis "Sequential Flow Cytometry Data Gating")
    (description
     "This package provides tools for automated sequential gating analogous to the
manual gating strategy based on the density of the data.")
    (license license:artistic2.0)))

(define-public r-flowcybar
  (package
    (name "r-flowcybar")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowCyBar" version))
       (sha256
        (base32 "1vc1zlxp07jaf5z0p761x0jmyrfmczsj23pq8p24h3wip6kd8yl3"))))
    (properties `((upstream-name . "flowCyBar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan r-gplots))
    (home-page "http://www.ufz.de/index.php?de=16773")
    (synopsis "Analyze flow cytometric data using gate information")
    (description
     "This package provides a package to analyze flow cytometric data using gate
information to follow population/community dynamics.")
    (license license:gpl2)))

(define-public r-flowcut
  (package
    (name "r-flowcut")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowCut" version))
       (sha256
        (base32 "0ib8agini4cij81z0prhv11m6qmrp8l9sg2piwp05cqd67r3h81x"))))
    (properties `((upstream-name . "flowCut")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-flowdensity r-flowcore r-e1071 r-cairo))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/flowCut")
    (synopsis
     "Automated Removal of Outlier Events and Flagging of Files Based on Time Versus Fluorescence Analysis")
    (description
     "Common techinical complications such as clogging can result in spurious events
and fluorescence intensity shifting, @code{flowCut} is designed to detect and
remove technical artifacts from your data by removing segments that show
statistical differences from other segments.")
    (license license:artistic2.0)))

(define-public r-flowclean
  (package
    (name "r-flowclean")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowClean" version))
       (sha256
        (base32 "0rgqih8vvl2mbmb4l6vhw8algn4x5iikmv9cksxvpm0iq1p6m5rf"))))
    (properties `((upstream-name . "flowClean")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sfsmisc r-flowcore r-changepoint r-bit))
    (home-page "https://bioconductor.org/packages/flowClean")
    (synopsis "flowClean")
    (description
     "This package provides a quality control tool for flow cytometry data based on
compositional data analysis.")
    (license license:artistic2.0)))

(define-public r-flowchic
  (package
    (name "r-flowchic")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowCHIC" version))
       (sha256
        (base32 "03z8jd1z3nbfjv16q0b57g99gqxwwjabmj4wbnhxsagcpzz7gf02"))))
    (properties `((upstream-name . "flowCHIC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan r-hexbin r-ggplot2 r-flowcore r-ebimage))
    (home-page "http://www.ufz.de/index.php?en=16773")
    (synopsis "Analyze flow cytometric data using histogram information")
    (description
     "This package provides a package to analyze flow cytometric data of complex
microbial communities based on histogram images.")
    (license license:gpl2)))

(define-public r-flowcatchr
  (package
    (name "r-flowcatchr")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowcatchR" version))
       (sha256
        (base32 "1czl7cccxd27y5cxwikdqkd79i1qd17lyb225ryhygpjbl6b84b3"))))
    (properties `((upstream-name . "flowcatchR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list imagemagick))
    (propagated-inputs (list r-shiny
                             r-plotly
                             r-ebimage
                             r-colorramps
                             r-biocparallel
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/federicomarini/flowcatchR")
    (synopsis
     "Tools to analyze in vivo microscopy imaging data focused on tracking flowing blood cells")
    (description
     "@code{flowcatchR} is a set of tools to analyze in vivo microscopy imaging data,
focused on tracking flowing blood cells.  It guides the steps from segmentation
to calculation of features, filtering out particles not of interest, providing
also a set of utilities to help checking the quality of the performed operations
(e.g. how good the segmentation was).  It allows investigating the issue of
tracking flowing cells such as in blood vessels, to categorize the particles in
flowing, rolling and adherent.  This classification is applied in the study of
phenomena such as hemostasis and study of thrombosis development.  Moreover,
@code{flowcatchR} presents an integrated workflow solution, based on the
integration with a Shiny App and Jupyter notebooks, which is delivered alongside
the package, and can enable fully reproducible bioimage analysis in the R
environment.")
    (license license:bsd-3)))

(define-public r-flowbin
  (package
    (name "r-flowbin")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowBin" version))
       (sha256
        (base32 "01raylkvy6jnh30f2c7rjxlnw280ay1n1mz78r6h6nvjs2mb9jx5"))))
    (properties `((upstream-name . "flowBin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snow
                             r-limma
                             r-flowfp
                             r-flowcore
                             r-class
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/flowBin")
    (synopsis "Combining multitube flow cytometry data by binning")
    (description
     "Software to combine flow cytometry data that has been multiplexed into multiple
tubes with common markers between them, by establishing common bins across tubes
in terms of the common markers, then determining expression within each tube for
each bin in terms of the tube-specific markers.")
    (license license:artistic2.0)))

(define-public r-flowbeads
  (package
    (name "r-flowbeads")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flowBeads" version))
       (sha256
        (base32 "151pcq3dbsrzvclcfknlmqh7xhnxsckxk6z48yxjc607qkbp1hry"))))
    (properties `((upstream-name . "flowBeads")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable r-rrcov r-knitr r-flowcore r-biobase))
    (home-page "https://bioconductor.org/packages/flowBeads")
    (synopsis "flowBeads: Analysis of flow bead data")
    (description
     "This package extends @code{flowCore} to provide functionality specific to bead
data.  One of the goals of this package is to automate analysis of bead data for
the purpose of normalisation.")
    (license license:artistic2.0)))

(define-public r-fletcher2013b
  (package
    (name "r-fletcher2013b")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Fletcher2013b" version
                              'experiment))
       (sha256
        (base32 "081l3af001i2z7zzhgjdlm02lwaw9g65bc9hkb393rrfxix974aq"))))
    (properties `((upstream-name . "Fletcher2013b")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtn r-reder r-rcolorbrewer r-igraph
                             r-fletcher2013a))
    (home-page "http://dx.doi.org/10.1038/ncomms3464")
    (synopsis "Master regulators of FGFR2 signalling and breast cancer risk")
    (description
     "This package reproduces the systems biology analysis for the data in package
Fletcher2013a using RTN.")
    (license license:gpl2+)))

(define-public r-fletcher2013a
  (package
    (name "r-fletcher2013a")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Fletcher2013a" version
                              'experiment))
       (sha256
        (base32 "02wb3d2dw29bdnapy25znvs1mrpifwfax13ngv07g3jbm64sfcbr"))))
    (properties `((upstream-name . "Fletcher2013a")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venndiagram r-limma r-gplots r-biobase))
    (home-page "http://dx.doi.org/10.1038/ncomms3464")
    (synopsis
     "Gene expression data from breast cancer cells under FGFR2 signalling perturbation")
    (description
     "The package Fletcher2013a contains time-course gene expression data from MCF-7
cells treated under different experimental systems in order to perturb FGFR2
signalling.  The data comes from Fletcher et al. (Nature Comms 4:2464, 2013)
where further details about the background and the experimental design of the
study can be found.")
    (license license:gpl2+)))

(define-public r-flagme
  (package
    (name "r-flagme")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "flagme" version))
       (sha256
        (base32 "10ykp64pkkdfygbfrwrjmqgbq18j8ys3gi8k4g47b89sn6cnzr6z"))))
    (properties `((upstream-name . "flagme")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xcms
                             r-sparsem
                             r-mass
                             r-gplots
                             r-gcspikelite
                             r-camera))
    (home-page "https://bioconductor.org/packages/flagme")
    (synopsis "Analysis of Metabolomics GC/MS Data")
    (description
     "Fragment-level analysis of gas chromatography-massspectrometry metabolomics
data.")
    (license license:lgpl2.0+)))

(define-public r-fitcons-ucsc-hg19
  (package
    (name "r-fitcons-ucsc-hg19")
    (version "3.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fitCons.UCSC.hg19" version
                              'annotation))
       (sha256
        (base32 "19isa4x8js0pdb4k8a11bw3bzmzv6jc4jphzrvav7piqkvrgykzx"))))
    (properties `((upstream-name . "fitCons.UCSC.hg19")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/fitCons.UCSC.hg19")
    (synopsis "UCSC fitCons fitness consequences scores for hg19")
    (description
     "Store UCSC @code{fitCons} fitness consequences scores version 1.01 for the human
genome (hg19).")
    (license license:artistic2.0)))

(define-public r-fission
  (package
    (name "r-fission")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fission" version
                              'experiment))
       (sha256
        (base32 "07xg2j46jxx6g01wa6m774y1x9cawpq6njk61il08fxhxmv9zv0q"))))
    (properties `((upstream-name . "fission")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/fission")
    (synopsis
     "RangedSummarizedExperiment for time course RNA-Seq of fission yeast in response to stress, by Leong et al., Nat Commun 2014")
    (description
     "This package provides a @code{RangedSummarizedExperiment} object of read counts
in genes for a time course RNA-Seq experiment of fission yeast
(Schizosaccharomyces pombe) in response to oxidative stress (1M sorbitol
treatment) at 0, 15, 30, 60, 120 and 180 mins.  The samples are further divided
between a wild-type group and a group with deletion of atf21.  The read count
matrix was prepared and provided by the author of the study: Leong HS, Dawson K,
Wirth C, Li Y, Connolly Y, Smith DL, Wilkinson CR, Miller CJ. \"A global
non-coding RNA system modulates fission yeast protein levels in response to
stress\".  Nat Commun 2014 May 23;5:3947.  PMID: 24853205.  GEO: GSE56761.")
    (license license:lgpl2.0+)))

(define-public r-fishalyser
  (package
    (name "r-fishalyser")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FISHalyseR" version))
       (sha256
        (base32 "0nb47jnfv9i9z99l249a96zkal5m6clk34ywp6p8hhzcqc20gwg3"))))
    (properties `((upstream-name . "FISHalyseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ebimage r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/FISHalyseR")
    (synopsis "FISHalyseR a package for automated FISH quantification")
    (description
     "FIS@code{HalyseR} provides functionality to process and analyse digital cell
culture images, in particular to quantify FISH probes within nuclei.
Furthermore, it extract the spatial location of each nucleus as well as each
probe enabling spatial co-localisation analysis.")
    (license license:artistic2.0)))

(define-public r-fis
  (package
    (name "r-fis")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FIs" version
                              'experiment))
       (sha256
        (base32 "1fgga7vm6mrq622drx8lhp7i9bql16sd0843w2dp0scq3w80qyhz"))))
    (properties `((upstream-name . "FIs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/FIs")
    (synopsis "Human Functional Interactions (FIs) for splineTimeR package")
    (description
     "Data set containing two complete lists of identified functional interaction
partners in Human.  Data are derived from Reactome and @code{BioGRID} databases.")
    (license license:gpl3)))

(define-public r-findit2
  (package
    (name "r-findit2")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FindIT2" version))
       (sha256
        (base32 "067pv3q4is8rgkibnb4agc1cjgg6gsr9ssaahj931fdlcapl1j43"))))
    (properties `((upstream-name . "FindIT2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-qvalue
                             r-purrr
                             r-progress
                             r-patchwork
                             r-multiassayexperiment
                             r-iranges
                             r-glmnet
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dplyr
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shangguandong1996/FindIT2")
    (synopsis "find influential TF and Target based on multi-omics data")
    (description
     "This package implements functions to find influential TF and target based on
different input type.  It have five module: Multi-peak multi-gene
annotaion(@code{mmPeakAnno} module), Calculate regulation
potential(@code{calcRP} module), Find influential Target based on
@code{ChIP-Seq} and RNA-Seq data(Find influential Target module), Find
influential TF based on different input(Find influential TF module), Calculate
peak-gene or peak-peak correlation(@code{peakGeneCor} module).  And there are
also some other useful function like integrate different source information,
calculate jaccard similarity for your TF.")
    (license license:artistic2.0)))

(define-public r-findips
  (package
    (name "r-findips")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "findIPs" version))
       (sha256
        (base32 "18984ndycgcg0kr15z7kll5r8h5ybqbb5sxxb9b2c05mc9dx2ibv"))))
    (properties `((upstream-name . "findIPs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-summarizedexperiment r-biocparallel
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ShuoStat/findIPs")
    (synopsis "Influential Points Detection for Feature Rankings")
    (description
     "Feature rankings can be distorted by a single case in the context of
high-dimensional data.  The cases exerts abnormal influence on feature rankings
are called influential points (IPs).  The package aims at detecting IPs based on
case deletion and quantifies their effects by measuring the rank changes
(DOI:10.48550/@code{arXiv.2303.10516}).  The package applies a novel rank
comparing measure using the adaptive weights that stress the top-ranked
important features and adjust the weights to ranking properties.")
    (license license:gpl3)))

(define-public r-filterffpe
  (package
    (name "r-filterffpe")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FilterFFPE" version))
       (sha256
        (base32 "02haiwb1pl507b4vmzlzcrghp7qwfbhdjbq1zx60sxa25avgm5m7"))))
    (properties `((upstream-name . "FilterFFPE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-foreach
                             r-doparallel))
    (home-page "https://bioconductor.org/packages/FilterFFPE")
    (synopsis "FFPE Artificial Chimeric Read Filter for NGS data")
    (description
     "This package finds and filters artificial chimeric reads specifically generated
in next-generation sequencing (NGS) process of formalin-fixed paraffin-embedded
(FFPE) tissues.  These artificial chimeric reads can lead to a large number of
false positive structural variation (SV) calls.  The required input is an
indexed BAM file of a FFPE sample.")
    (license license:lgpl3)))

(define-public r-fieldeffectcrc
  (package
    (name "r-fieldeffectcrc")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FieldEffectCrc" version
                              'experiment))
       (sha256
        (base32 "0gbj5qgxwilkbdab9q3i47dxj3ah3hfji4knvlvdxsa1sf4f8bhh"))))
    (properties `((upstream-name . "FieldEffectCrc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-runit
                             r-experimenthub
                             r-deseq2
                             r-biocstyle
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page
     "http://bioconductor.org/packages/release/bioc/html/FieldEffectCrc.html")
    (synopsis
     "Tumor, tumor-adjacent normal, and healthy colorectal transcriptomes as SummarizedExperiment objects")
    (description
     "Processed RNA-seq data for 1,139 human primary colorectal tissue samples across
three phenotypes, including tumor, normal adjacent-to-tumor, and healthy,
available as Synapse ID syn22237139 on synapse.org.  Data have been parsed into
@code{SummarizedExperiment} objects available via @code{ExperimentHub} to
facilitate reproducibility and extension of results from Dampier et al. (PMCID:
PMC7386360, PMID: 32764205).")
    (license license:artistic2.0)))

(define-public r-fibroeset
  (package
    (name "r-fibroeset")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fibroEset" version
                              'experiment))
       (sha256
        (base32 "050dmfl2v1z48kzr03nlxsp4xzshs0046bkd0lcdylzvk8gdwpyf"))))
    (properties `((upstream-name . "fibroEset")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/fibroEset")
    (synopsis "exprSet for Karaman et al. (2003) fibroblasts data")
    (description
     "@code{exprSet} for Karaman et al. (2003) human, bonobo and gorilla fibroblasts
data.")
    (license license:lgpl2.0+)))

(define-public r-fgnet
  (package
    (name "r-fgnet")
    (version "3.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FGNet" version))
       (sha256
        (base32 "1xbba8r4z634kvi749ac2idzmpsv7q9ajk5djh425a8d18679pm5"))))
    (properties `((upstream-name . "FGNet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-reshape2
                             r-rcolorbrewer
                             r-r-utils
                             r-png
                             r-plotrix
                             r-igraph
                             r-hwriter))
    (native-inputs (list r-knitr))
    (home-page "http://www.cicancer.org")
    (synopsis
     "Functional Gene Networks derived from biological enrichment analyses")
    (description
     "Build and visualize functional gene and term networks from clustering of
enrichment analyses in multiple annotation spaces.  The package includes a
graphical user interface (GUI) and functions to perform the functional
enrichment analysis through DAVID, @code{GeneTerm} Linker, gage (GSEA) and
@code{topGO}.")
    (license license:gpl2+)))

(define-public r-fgga
  (package
    (name "r-fgga")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fgga" version))
       (sha256
        (base32 "1arda97raf7if9xi8hn7ifb1d558kkhh4wsd5vl0rjkjmhilap72"))))
    (properties `((upstream-name . "fgga")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rbgl
                             r-jsonlite
                             r-igraph
                             r-grbase
                             r-graph
                             r-e1071
                             r-curl
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fspetale/fgga")
    (synopsis "Hierarchical ensemble method based on factor graph")
    (description
     "Package that implements the FGGA algorithm.  This package provides a
hierarchical ensemble method based ob factor graphs for the consistent
cross-ontology annotation of protein coding genes.  FGGA embodies elements of
predicate logic, communication theory, supervised learning and inference in
graphical models.")
    (license license:gpl3)))

(define-public r-ffpeexampledata
  (package
    (name "r-ffpeexampledata")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ffpeExampleData" version
                              'experiment))
       (sha256
        (base32 "096400prmh23jd5q3dab6vgh19vbkwar4hx4l57n8klrx8dxq7q4"))))
    (properties `((upstream-name . "ffpeExampleData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lumi))
    (home-page "https://bioconductor.org/packages/ffpeExampleData")
    (synopsis "Illumina DASL example microarray data")
    (description
     "This package provides a subset of GSE17565 (April et al.  2009) containing 32
FFPE samples of Burkitts Lymphoma and Breast Adenocarcinoma, with a dilution
series in technical duplicate.")
    (license (license:fsdg-compatible "GPL (>2)"))))

(define-public r-ffpe
  (package
    (name "r-ffpe")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ffpe" version))
       (sha256
        (base32 "1zy51274rxkpxj1xfgj3c4nnd581mhimqj6q4jdq1zf271fscglm"))))
    (properties `((upstream-name . "ffpe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ttr
                             r-sfsmisc
                             r-methylumi
                             r-lumi
                             r-biocgenerics
                             r-biobase
                             r-affy))
    (home-page "https://bioconductor.org/packages/ffpe")
    (synopsis
     "Quality assessment and control for FFPE microarray expression data")
    (description
     "Identify low-quality data using metrics developed for expression data derived
from Formalin-Fixed, Paraffin-Embedded (FFPE) data.  Also a function for making
Concordance at the Top plots (CAT-plots).")
    (license (license:fsdg-compatible "GPL (>2)"))))

(define-public r-fenr
  (package
    (name "r-fenr")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fenr" version))
       (sha256
        (base32 "1ya993wph53p2y71265yxy50dd8igpnyab5cqblc1b27d455ady0"))))
    (properties `((upstream-name . "fenr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-shiny
                             r-rvest
                             r-rlang
                             r-readr
                             r-purrr
                             r-progress
                             r-httr2
                             r-ggplot2
                             r-dplyr
                             r-biocfilecache
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bartongroup/fenr")
    (synopsis "Fast functional enrichment for interactive applications")
    (description
     "Perform fast functional enrichment on feature lists (like genes or proteins)
using the hypergeometric distribution.  Tailored for speed, this package is
ideal for interactive platforms such as Shiny.  It supports the retrieval of
functional data from sources like GO, KEGG, Reactome, Bioplanet and
@code{WikiPathways}.  By downloading and preparing data first, it allows for
rapid successive tests on various feature selections without the need for
repetitive, time-consuming preparatory steps typical of other packages.")
    (license license:expat)))

(define-public r-fella
  (package
    (name "r-fella")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FELLA" version))
       (sha256
        (base32 "1r744bnvwzswfq3q31r2ybq3k10dm04hziqxdcpyj0lg4x29rq2l"))))
    (properties `((upstream-name . "FELLA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-matrix r-keggrest r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/FELLA")
    (synopsis "Interpretation and enrichment for metabolomics data")
    (description
     "Enrichment of metabolomics data using KEGG entries.  Given a set of affected
compounds, FELLA suggests affected reactions, enzymes, modules and pathways
using label propagation in a knowledge model network.  The resulting subnetwork
can be visualised and exported.")
    (license license:gpl3)))

(define-public r-fedup
  (package
    (name "r-fedup")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fedup" version))
       (sha256
        (base32 "04cw7a221bz9w8yw4yz8r9nqqn8l2lqzqi8g2s1vgzzq92xlpsnm"))))
    (properties `((upstream-name . "fedup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-rcy3
                             r-rcolorbrewer
                             r-openxlsx
                             r-ggthemes
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rosscm/fedup")
    (synopsis
     "Fisher's Test for Enrichment and Depletion of User-Defined Pathways")
    (description
     "An R package that tests for enrichment and depletion of user-defined pathways
using a Fisher's exact test.  The method is designed for versatile pathway
annotation formats (eg.  gmt, txt, xlsx) to allow the user to run pathway
analysis on custom annotations.  This package is also integrated with Cytoscape
to provide network-based pathway visualization that enhances the
interpretability of the results.")
    (license license:expat)))

(define-public r-featseekr
  (package
    (name "r-featseekr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FeatSeekR" version))
       (sha256
        (base32 "0mcn5m18wn7h2j3zxq54h0lfzzv0vicj5pbvgv11bnxbnhan9vih"))))
    (properties `((upstream-name . "FeatSeekR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-pracma r-pheatmap r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tcapraz/FeatSeekR")
    (synopsis "FeatSeekR an R package for unsupervised feature selection")
    (description
     "@code{FeatSeekR} performs unsupervised feature selection using replicated
measurements.  It iteratively selects features with the highest reproducibility
across replicates, after projecting out those dimensions from the data that are
spanned by the previously selected features.  The selected a set of features has
a high replicate reproducibility and a high degree of uniqueness.")
    (license license:gpl3)))

(define-public r-feast
  (package
    (name "r-feast")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FEAST" version))
       (sha256
        (base32 "0z0mqrdbk9g89431hkl1gc5yszrmw6n7yghngdyis29gykhcf5h3"))))
    (properties `((upstream-name . "FEAST")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tscan
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-sc3
                             r-mclust
                             r-matrixstats
                             r-irlba
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/FEAST")
    (synopsis "FEAture SelcTion (FEAST) for Single-cell clustering")
    (description
     "Cell clustering is one of the most important and commonly performed tasks in
single-cell RNA sequencing (@code{scRNA-seq}) data analysis.  An important step
in cell clustering is to select a subset of genes (referred to as “features”),
whose expression patterns will then be used for downstream clustering.  A good
set of features should include the ones that distinguish different cell types,
and the quality of such set could have significant impact on the clustering
accuracy.  FEAST is an R library for selecting most representative features
before performing the core of @code{scRNA-seq} clustering.  It can be used as a
plug-in for the etablished clustering algorithms such as SC3, TSCAN, SHARP,
SIMLR, and Seurat.  The core of FEAST algorithm includes three steps: 1.
consensus clustering; 2.  gene-level significance inference; 3.  validation of
an optimized feature set.")
    (license license:gpl2)))

(define-public r-fdrame
  (package
    (name "r-fdrame")
    (version "1.78.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fdrame" version))
       (sha256
        (base32 "1pmnm7rjdwx609bzgmnwa0ahv85yl6kkmd75dxalrj7clrp2r77q"))))
    (properties `((upstream-name . "fdrame")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/fdrame")
    (synopsis "FDR adjustments of Microarray Experiments (FDR-AME)")
    (description
     "This package contains two main functions.  The first is fdr.ma which takes
normalized expression data array, experimental design and computes adjusted
p-values It returns the fdr adjusted p-values and plots, according to the
methods described in (Reiner, Yekutieli and Benjamini 2002).  The second, is
@code{fdr.gui()} which creates a simple graphic user interface to access fdr.ma.")
    (license license:gpl2+)))

(define-public r-fdb-ucsc-trnas
  (package
    (name "r-fdb-ucsc-trnas")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FDb.UCSC.tRNAs" version
                              'annotation))
       (sha256
        (base32 "1dymdalx9fzrplxyc0fd9faa4r5jimi7zyry9k65lyz1pabpkwqz"))))
    (properties `((upstream-name . "FDb.UCSC.tRNAs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page "https://bioconductor.org/packages/FDb.UCSC.tRNAs")
    (synopsis "Annotation package for FeatureDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{FeatureDb} objects.")
    (license license:artistic2.0)))

(define-public r-fdb-ucsc-snp137common-hg19
  (package
    (name "r-fdb-ucsc-snp137common-hg19")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FDb.UCSC.snp137common.hg19" version
                              'annotation))
       (sha256
        (base32 "1q1r7rk29q0zlzxz6fvfy1kjfli6wxzvhvhhfnf3z4ksy5332q63"))))
    (properties `((upstream-name . "FDb.UCSC.snp137common.hg19")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page "https://bioconductor.org/packages/FDb.UCSC.snp137common.hg19")
    (synopsis "UCSC common SNPs track for dbSNP build 137")
    (description
     "@code{makeFeatureDbFromUCSC} cannot cope with this track, hence a package.")
    (license license:artistic2.0)))

(define-public r-fdb-ucsc-snp135common-hg19
  (package
    (name "r-fdb-ucsc-snp135common-hg19")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FDb.UCSC.snp135common.hg19" version
                              'annotation))
       (sha256
        (base32 "1ykyixrbw86ajx65w1jwr068ma5cvzl4kypaw77kpggmf1qqgkxp"))))
    (properties `((upstream-name . "FDb.UCSC.snp135common.hg19")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page "https://bioconductor.org/packages/FDb.UCSC.snp135common.hg19")
    (synopsis "UCSC common SNPs track for dbSNP build 135")
    (description
     "@code{makeFeatureDbFromUCSC} cannot cope with this track, hence a package.")
    (license license:artistic2.0)))

(define-public r-fdb-infiniummethylation-hg18
  (package
    (name "r-fdb-infiniummethylation-hg18")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FDb.InfiniumMethylation.hg18" version
                              'annotation))
       (sha256
        (base32 "0vwzqzj49imjdsn8ssiwqi7qic7rqw5pbsiinyxgy7y10fn2i42a"))))
    (properties `((upstream-name . "FDb.InfiniumMethylation.hg18")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg18-knowngene
                             r-org-hs-eg-db r-genomicfeatures r-biostrings
                             r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/FDb.InfiniumMethylation.hg18")
    (synopsis
     "Annotation package for Illumina Infinium DNA methylation probes")
    (description
     "Compiled @code{HumanMethylation27} and @code{HumanMethylation450} annotations.")
    (license license:artistic2.0)))

(define-public r-fdb-fantom4-promoters-hg19
  (package
    (name "r-fdb-fantom4-promoters-hg19")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FDb.FANTOM4.promoters.hg19" version
                              'annotation))
       (sha256
        (base32 "04sn5x1r5fcbghzw6n1bvy0z8zyhrbk86wsqz1p5gk665vicz8rw"))))
    (properties `((upstream-name . "FDb.FANTOM4.promoters.hg19")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-biostrings r-annotationdbi))
    (home-page "https://bioconductor.org/packages/FDb.FANTOM4.promoters.hg19")
    (synopsis
     "Annotation package for FANTOM4 promoters identified from THP-1 cells")
    (description
     "FANTOM4 promoters, @code{liftOver'ed} from hg18 to hg19, @code{CpGs} quantified.")
    (license license:artistic2.0)))

(define-public r-fci
  (package
    (name "r-fci")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fCI" version))
       (sha256
        (base32 "167sr70gd7ci9lc9y1pxr1bk5b67r4hvnv1k2y4hg01mbpl96dws"))))
    (properties `((upstream-name . "fCI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-venndiagram
                             r-rgl
                             r-psych
                             r-gtools
                             r-fnn))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/fCI")
    (synopsis
     "f-divergence Cutoff Index for Differential Expression Analysis in Transcriptomics and Proteomics")
    (description
     "(f-divergence Cutoff Index), is to find DEGs in the transcriptomic & proteomic
data, and identify DEGs by computing the difference between the distribution of
fold-changes for the control-control and remaining (non-differential)
case-control gene expression ratio data. @code{fCI} provides several advantages
compared to existing methods.")
    (license license:gpl2+)))

(define-public r-fccac
  (package
    (name "r-fccac")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fCCAC" version))
       (sha256
        (base32 "1l4v760ggpzyk22rf8qirandpxlzll2in7c7n2aii13mz51n1cla"))))
    (properties `((upstream-name . "fCCAC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rcolorbrewer
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomation
                             r-fda
                             r-complexheatmap))
    (home-page "https://bioconductor.org/packages/fCCAC")
    (synopsis
     "functional Canonical Correlation Analysis to evaluate Covariance between nucleic acid sequencing datasets")
    (description
     "Computational evaluation of variability across DNA or RNA sequencing datasets is
a crucial step in genomics, as it allows both to evaluate reproducibility of
replicates, and to compare different datasets to identify potential
correlations. @code{fCCAC} applies functional Canonical Correlation Analysis to
allow the assessment of: (i) reproducibility of biological or technical
replicates, analyzing their shared covariance in higher order components; and
(ii) the associations between different datasets. @code{fCCAC} represents a more
sophisticated approach that complements Pearson correlation of genomic coverage.")
    (license license:artistic2.0)))

(define-public r-fastreer
  (package
    (name "r-fastreer")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fastreeR" version))
       (sha256
        (base32 "0yqn2dxzp7rqrbv56mif0fdfn4slx8ncy5dwwdq3bd1gdpcl4mlw"))))
    (properties `((upstream-name . "fastreeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-stringr
                             r-rjava
                             r-r-utils
                             r-dynamictreecut
                             r-data-table
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gkanogiannis/fastreeR")
    (synopsis
     "Phylogenetic, Distance and Other Calculations on VCF and Fasta Files")
    (description
     "Calculate distances, build phylogenetic trees or perform hierarchical clustering
between the samples of a VCF or FASTA file.  Functions are implemented in Java
and called via @code{rJava}.  Parallel implementation that operates directly on
the VCF or FASTA file for fast execution.")
    (license license:gpl3)))

(define-public r-fastqcleaner
  (package
    (name "r-fastqcleaner")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FastqCleaner" version))
       (sha256
        (base32 "1w320w45g8vhas53ly43gdj9445i3ha1bhdrhc179r9ykfgc5k6v"))))
    (properties `((upstream-name . "FastqCleaner")))
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
    (propagated-inputs (list r-shortread
                             r-shinybs
                             r-shiny
                             r-s4vectors
                             r-rcpp
                             r-iranges
                             r-htmltools
                             r-dt
                             r-biostrings))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/FastqCleaner")
    (synopsis
     "Shiny Application for Quality Control, Filtering and Trimming of FASTQ Files")
    (description
     "An interactive web application for quality control, filtering and trimming of
FASTQ files.  This user-friendly tool combines a pipeline for data processing
based on Biostrings and @code{ShortRead} infrastructure, with a cutting-edge
visual environment.  Single-Read and Paired-End files can be locally processed.
Diagnostic interactive plots (CG content, per-base sequence quality, etc.) are
provided for both the input and output files.")
    (license license:expat)))

(define-public r-fastliquidassociation
  (package
    (name "r-fastliquidassociation")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fastLiquidAssociation" version))
       (sha256
        (base32 "1gzypl0p6l559hjldkp2hh2798gw24b0s8r4zmz0ril3j8lv5ram"))))
    (properties `((upstream-name . "fastLiquidAssociation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wgcna
                             r-preprocesscore
                             r-liquidassociation
                             r-impute
                             r-hmisc
                             r-doparallel))
    (home-page "https://bioconductor.org/packages/fastLiquidAssociation")
    (synopsis "functions for genome-wide application of Liquid Association")
    (description
     "This package extends the function of the @code{LiquidAssociation} package for
genome-wide application.  It integrates a screening method into the LA analysis
to reduce the number of triplets to be examined for a high LA value and provides
code for use in subsequent significance analyses.")
    (license license:gpl2)))

(define-public r-fantom3and4cage
  (package
    (name "r-fantom3and4cage")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FANTOM3and4CAGE" version
                              'experiment))
       (sha256
        (base32 "0kz91pajy3y2xsg88jinghx973190ncxsmg179mbqjimqkyzjfyv"))))
    (properties `((upstream-name . "FANTOM3and4CAGE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/FANTOM3and4CAGE")
    (synopsis "CAGE data from FANTOM3 and FANTOM4 projects")
    (description
     "CAGE (Cap Analysis Gene Expression) data from FANTOM3 and FANTOM4 projects
produced by RIKEN Omics Science Center.")
    (license license:gpl3)))

(define-public r-famat
  (package
    (name "r-famat")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "famat" version))
       (sha256
        (base32 "0zj32n5niaaiq9m7rln3a0jwrs4fiprvdwvqfn7vb518k77x80xa"))))
    (properties `((upstream-name . "famat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-shinydashboard
                             r-shinybs
                             r-shiny
                             r-rwikipathways
                             r-reactome-db
                             r-plotly
                             r-org-hs-eg-db
                             r-ontologyindex
                             r-mgcv
                             r-magrittr
                             r-keggrest
                             r-gprofiler2
                             r-go-db
                             r-dt
                             r-dplyr
                             r-clusterprofiler
                             r-biasedurn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/emiliesecherre/famat")
    (synopsis "Functional analysis of metabolic and transcriptomic data")
    (description
     "Famat is made to collect data about lists of genes and metabolites provided by
user, and to visualize it through a Shiny app.  Information collected is: -
Pathways containing some of the user's genes and metabolites (obtained using a
pathway enrichment analysis). - Direct interactions between user's elements
inside pathways. - Information about elements (their identifiers and
descriptions). - Go terms enrichment analysis performed on user's genes.  The
Shiny app is composed of: - information about genes, metabolites, and direct
interactions between them inside pathways. - an heatmap showing which elements
from the list are in pathways (pathways are structured in hierarchies). -
hierarchies of enriched go terms using Molecular Function and Biological
Process.")
    (license license:gpl3)))

(define-public r-famagg
  (package
    (name "r-famagg")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "FamAgg" version))
       (sha256
        (base32 "0i32yz7764vcaijy7pyfh30s3sf39a2k3v4n30pz0mvd0r1l9ix5"))))
    (properties `((upstream-name . "FamAgg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survey
                             r-matrix
                             r-kinship2
                             r-igraph
                             r-gap
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EuracBiomedicalResearch/FamAgg")
    (synopsis "Pedigree Analysis and Familial Aggregation")
    (description
     "Framework providing basic pedigree analysis and plotting utilities as well as a
variety of methods to evaluate familial aggregation of traits in large
pedigrees.")
    (license license:expat)))

(define-public r-faers
  (package
    (name "r-faers")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "faers" version))
       (sha256
        (base32 "12qgmbdmlal1s6hy2rca2jxvviy22hdb2ls0gw9m6yicwrw0zqjg"))))
    (properties `((upstream-name . "faers")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-vroom
                             r-rvest
                             r-rlang
                             r-openebgm
                             r-mcmcpack
                             r-httr2
                             r-data-table
                             r-curl
                             r-cli
                             r-brio
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/faers")
    (synopsis "R interface for FDA Adverse Event Reporting System")
    (description
     "The FDA Adverse Event Reporting System (FAERS) is a database used for the
spontaneous reporting of adverse events and medication errors related to human
drugs and therapeutic biological products.  faers pacakge serves as the
interface between the FAERS database and R. Furthermore, faers pacakge offers a
standardized approach for performing pharmacovigilance analysis.")
    (license license:expat)))

(define-public r-factr
  (package
    (name "r-factr")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "factR" version))
       (sha256
        (base32 "0wlf0yrjmv55dr92s777g57zq85bhwn89gdb9dy4wkf1xg6sc25x"))))
    (properties `((upstream-name . "factR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-wiggleplotr
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-rcurl
                             r-purrr
                             r-pbapply
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-drawproteins
                             r-dplyr
                             r-data-table
                             r-crayon
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://fursham-h.github.io/factR/")
    (synopsis "Functional Annotation of Custom Transcriptomes")
    (description
     "@code{factR} contain tools to process and interact with custom-assembled
transcriptomes (GTF).  At its core, @code{factR} constructs CDS information on
custom transcripts and subsequently predicts its functional output.  In
addition, @code{factR} has tools capable of plotting transcripts, correcting
chromosome and gene information and shortlisting new transcripts.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-factdesign
  (package
    (name "r-factdesign")
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "factDesign" version))
       (sha256
        (base32 "0r4rjr9v6v6262sp82sghv478my4fvjpiw8rnw2z3g9kfj8ri5r2"))))
    (properties `((upstream-name . "factDesign")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/factDesign")
    (synopsis "Factorial designed microarray experiment analysis")
    (description
     "This package provides a set of tools for analyzing data from a factorial
designed microarray experiment, or any microarray experiment for which a linear
model is appropriate.  The functions can be used to evaluate tests of contrast
of biological interest and perform single outlier detection.")
    (license license:lgpl2.0+)))

(define-public r-fabiadata
  (package
    (name "r-fabiadata")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fabiaData" version
                              'experiment))
       (sha256
        (base32 "005hxja8g1608gkhgl5bi6xg5pkswvdh4400yzjp8ph8irsdcd4d"))))
    (properties `((upstream-name . "fabiaData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "http://www.bioinf.jku.at/software/fabia/fabia.html")
    (synopsis
     "Data sets for FABIA (Factor Analysis for Bicluster Acquisition)")
    (description
     "Supplying gene expression data sets for the demos of the biclustering method
\"Factor Analysis for Bicluster Acquisition\" (FABIA).  The following three data
sets are provided: A) breast cancer (van't Veer, Nature, 2002), B) multiple
tissues (Su, PNAS, 2002), and C) diffuse large-B-cell lymphoma (Rosenwald, N
Engl J Med, 2002).")
    (license license:lgpl2.1+)))

(define-public r-fabia
  (package
    (name "r-fabia")
    (version "2.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "fabia" version))
       (sha256
        (base32 "1mzcc807viyl8gnvx65f1jm2nhm8s5h8sn2bm2x0nb7ywj37lfr2"))))
    (properties `((upstream-name . "fabia")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "http://www.bioinf.jku.at/software/fabia/fabia.html")
    (synopsis "FABIA: Factor Analysis for Bicluster Acquisition")
    (description
     "Biclustering by \"Factor Analysis for Bicluster Acquisition\" (FABIA).  FABIA is a
model-based technique for biclustering, that is clustering rows and columns
simultaneously.  Biclusters are found by factor analysis where both the factors
and the loading matrix are sparse.  FABIA is a multiplicative model that
extracts linear dependencies between samples and feature patterns.  It captures
realistic non-Gaussian data distributions with heavy tails as observed in gene
expression measurements.  FABIA utilizes well understood model selection
techniques like the EM algorithm and variational approaches and is embedded into
a Bayesian framework.  FABIA ranks biclusters according to their information
content and separates spurious biclusters from true biclusters.  The code is
written in C.")
    (license license:lgpl2.1+)))

