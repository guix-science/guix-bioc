(define-module (guix-bioc packages p)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages i)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages maths)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages o)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages v)
  #:use-module (gnu packages java)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
  #:use-module (guix-bioc packages v)
  #:use-module (guix-bioc packages u)
  #:use-module (guix-bioc packages t)
  #:use-module (guix-bioc packages s)
  #:use-module (guix-bioc packages r)
  #:use-module (guix-bioc packages q)
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
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-pwomics
  (package
    (name "r-pwomics")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pwOmics" version))
       (sha256
        (base32 "0sq98v0ln6y0mnl5xhk90j66zzvxwgbzr15xcbyn1f51a9jil21l"))))
    (properties `((upstream-name . "pwOmics")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringdb
                             r-rbiopaxparser
                             r-igraph
                             r-graph
                             r-gplots
                             r-genomicranges
                             r-data-table
                             r-biomart
                             r-biocgenerics
                             r-biobase
                             r-annotationhub
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/pwOmics")
    (synopsis "Pathway-based data integration of omics data")
    (description
     "@code{pwOmics} performs pathway-based level-specific data comparison of matching
omics data sets based on pre-analysed user-specified lists of differential
genes/transcripts and phosphoproteins.  A separate downstream analysis of
phosphoproteomic data including pathway identification, transcription factor
identification and target gene identification is opposed to the upstream
analysis starting with gene or transcript information as basis for
identification of upstream transcription factors and potential proteomic
regulators.  The cross-platform comparative analysis allows for comprehensive
analysis of single time point experiments and time-series experiments by
providing static and dynamic analysis tools for data integration.  In addition,
it provides functions to identify individual signaling axes based on data
integration.")
    (license license:gpl2+)))

(define-public r-pwmenrich
  (package
    (name "r-pwmenrich")
    (version "4.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PWMEnrich" version))
       (sha256
        (base32 "1s0hvqsvsfvhhyli238z8zbwnwmsi97gm3n83wv326zhzacmdxhf"))))
    (properties `((upstream-name . "PWMEnrich")))
    (build-system r-build-system)
    (propagated-inputs (list r-seqlogo
                             r-s4vectors
                             r-gdata
                             r-evd
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PWMEnrich")
    (synopsis "PWM enrichment analysis")
    (description
     "This package provides a toolkit of high-level functions for DNA motif scanning
and enrichment analysis built upon Biostrings.  The main functionality is PWM
enrichment analysis of already known PWMs (e.g. from databases such as
@code{MotifDb}), but the package also implements high-level functions for PWM
scanning and visualisation.  The package does not perform \"de novo\" motif
discovery, but is instead focused on using motifs that are either experimentally
derived or computationally constructed by other tools.")
    (license license:lgpl2.0+)))

(define-public r-pviz
  (package
    (name "r-pviz")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Pviz" version))
       (sha256
        (base32 "17aggsyc82mpya27771sal2k03hvqmi4yxf8cqnknmakf9ylm9la"))))
    (properties `((upstream-name . "Pviz")))
    (build-system r-build-system)
    (propagated-inputs (list r-iranges
                             r-gviz
                             r-genomicranges
                             r-data-table
                             r-biovizbase
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Pviz")
    (synopsis "Peptide Annotation and Data Visualization using Gviz")
    (description
     "Pviz adapts the Gviz package for protein sequences and data.")
    (license license:artistic2.0)))

(define-public r-pvca
  (package
    (name "r-pvca")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pvca" version))
       (sha256
        (base32 "0l2d8yqbqb9ra04adzlldjkcnpmd01ziia40k4p5z265f0apxwvc"))))
    (properties `((upstream-name . "pvca")))
    (build-system r-build-system)
    (propagated-inputs (list r-vsn r-matrix r-lme4 r-biobase))
    (home-page "https://bioconductor.org/packages/pvca")
    (synopsis "Principal Variance Component Analysis (PVCA)")
    (description
     "This package contains the function to assess the batch sourcs by fitting all
\"sources\" as random effects including two-way interaction terms in the Mixed
Model(depends on lme4 package) to selected principal components, which were
obtained from the original data correlation matrix.  This package accompanies
the book \"Batch Effects and Noise in Microarray Experiements, chapter 12.")
    (license license:lgpl2.0+)))

(define-public r-pvac
  (package
    (name "r-pvac")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pvac" version))
       (sha256
        (base32 "073ah4d92kqgaxcbyvn7v17bfj0303g5zmdwpmm73rgxl9zj2idd"))))
    (properties `((upstream-name . "pvac")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/pvac")
    (synopsis "PCA-based gene filtering for Affymetrix arrays")
    (description
     "The package contains the function for filtering genes by the proportion of
variation accounted for by the first principal component (PVAC).")
    (license license:lgpl2.0+)))

(define-public r-purecn
  (package
    (name "r-purecn")
    (version "2.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PureCN" version))
       (sha256
        (base32 "0hi1f1j2xlvlngf6pz28b6l9rcb1kkvlx5hg2zrlb8wd1gijxb7j"))))
    (properties `((upstream-name . "PureCN")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-variantannotation
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rhdf5
                             r-rcolorbrewer
                             r-mclust
                             r-matrix
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-futile-logger
                             r-dnacopy
                             r-data-table
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lima1/PureCN")
    (synopsis
     "Copy number calling and SNV classification using targeted short read sequencing")
    (description
     "This package estimates tumor purity, copy number, and loss of heterozygosity
(LOH), and classifies single nucleotide variants (SNVs) by somatic status and
clonality. @code{PureCN} is designed for targeted short read sequencing data,
integrates well with standard somatic variant detection and copy number
pipelines, and has support for tumor samples without matching normal samples.")
    (license license:artistic2.0)))

(define-public r-puma
  (package
    (name "r-puma")
    (version "3.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "puma" version))
       (sha256
        (base32 "1s50gf44psg01p8c84rp89hkic7bcxyk9wyzq8b7xphvilgy4gdk"))))
    (properties `((upstream-name . "puma")))
    (build-system r-build-system)
    (propagated-inputs (list r-oligoclasses
                             r-oligo
                             r-mclust
                             r-biobase
                             r-affyio
                             r-affy))
    (home-page "http://umber.sbs.man.ac.uk/resources/puma")
    (synopsis
     "Propagating Uncertainty in Microarray Analysis(including Affymetrix tranditional 3' arrays and exon arrays and Human Transcriptome Array 2.0)")
    (description
     "Most analyses of Affymetrix @code{GeneChip} data (including tranditional 3
arrays and exon arrays and Human Transcriptome Array 2.0) are based on point
estimates of expression levels and ignore the uncertainty of such estimates.  By
propagating uncertainty to downstream analyses we can improve results from
microarray analyses.  For the first time, the puma package makes a suite of
uncertainty propagation methods available to a general audience.  In additon to
calculte gene expression from Affymetrix 3 arrays, puma also provides methods to
process exon arrays and produces gene and isoform expression for alternative
splicing study.  puma also offers improvements in terms of scope and speed of
execution over previously available uncertainty propagation methods.  Included
are summarisation, differential expression detection, clustering and PCA
methods, together with useful plotting functions.")
    (license license:lgpl2.0+)))

(define-public r-ptairms
  (package
    (name "r-ptairms")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ptairMS" version))
       (sha256
        (base32 "0qjnbx91vdj6hbiri7nh3q53p8hi0vnjxq8hcwrsqa5ar70k38hz"))))
    (properties `((upstream-name . "ptairMS")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal
                             r-shinyscreenshot
                             r-shiny
                             r-scales
                             r-rlang
                             r-rhdf5
                             r-rcpp
                             r-plotly
                             r-msnbase
                             r-minpack-lm
                             r-hmisc
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-foreach
                             r-envipat
                             r-dt
                             r-doparallel
                             r-data-table
                             r-chron
                             r-bit64
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ptairMS")
    (synopsis "Pre-processing PTR-TOF-MS Data")
    (description
     "This package implements a suite of methods to preprocess data from PTR-TOF-MS
instruments (HDF5 format) and generates the sample by features table of peak
intensities in addition to the sample and feature metadata (as a singl<e
@code{ExpressionSet} object for subsequent statistical analysis).  This package
also permit usefull tools for cohorts management as analyzing data
progressively, visualization tools and quality control.  The steps include
calibration, expiration detection, peak detection and quantification, feature
alignment, missing value imputation and feature annotation.  Applications to
exhaled air and cell culture in headspace are described in the vignettes and
examples.  This package was used for data analysis of Gassin Delyle study on
adults undergoing invasive mechanical ventilation in the intensive care unit due
to severe COVID-19 or non-COVID-19 acute respiratory distress syndrome (ARDS),
and permit to identfy four potentiel biomarquers of the infection.")
    (license license:gpl3)))

(define-public r-psygenet2r
  (package
    (name "r-psygenet2r")
    (version "1.34.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "psygenet2r" version))
       (sha256
        (base32 "08qjzj76vf89l0v8lfchrryvqpb049za0qpgldxzr8kxwzqx1bl5"))))
    (properties `((upstream-name . "psygenet2r")))
    (build-system r-build-system)
    (propagated-inputs (list r-topgo
                             r-stringr
                             r-reshape2
                             r-rcurl
                             r-labeling
                             r-igraph
                             r-go-db
                             r-ggplot2
                             r-biomart
                             r-biobase
                             r-bgeedb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/psygenet2r")
    (synopsis
     "psygenet2r - An R package for querying PsyGeNET and to perform comorbidity studies in psychiatric disorders")
    (description
     "Package to retrieve data from @code{PsyGeNET} database (www.psygenet.org) and to
perform comorbidity studies with @code{PsyGeNET's} and user's data.")
    (license license:expat)))

(define-public r-psmatch
  (package
    (name "r-psmatch")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PSMatch" version))
       (sha256
        (base32 "0l13zbi011a793wlp9rfhgrixp7szj0zbn24yjw764527x66qxyj"))))
    (properties `((upstream-name . "PSMatch")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-qfeatures
                             r-protgenerics
                             r-mscoreutils
                             r-matrix
                             r-igraph
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RforMassSpectrometry/PSM")
    (synopsis "Handling and Managing Peptide Spectrum Matches")
    (description
     "The PSMatch package helps proteomics practitioners to load, handle and manage
Peptide Spectrum Matches.  It provides functions to model peptide-protein
relations as adjacency matrices and connected components, visualise these as
graphs and make informed decision about shared peptide filtering.  The package
also provides functions to calculate and visualise MS2 fragment ions.")
    (license license:artistic2.0)))

(define-public r-psichomics
  (package
    (name "r-psichomics")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "psichomics" version))
       (sha256
        (base32 "0g70wn1r0lpn3xm9b8f2797aww4ch533n12wm3q076i4357da06j"))))
    (properties `((upstream-name . "psichomics")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-xml
                             r-survival
                             r-summarizedexperiment
                             r-stringr
                             r-shinyjs
                             r-shinybs
                             r-shiny
                             r-rfast
                             r-reshape2
                             r-recount
                             r-rcpp
                             r-r-utils
                             r-purrr
                             r-plyr
                             r-pairsd3
                             r-limma
                             r-jsonlite
                             r-httr
                             r-htmltools
                             r-highcharter
                             r-ggrepel
                             r-ggplot2
                             r-fastmatch
                             r-fastica
                             r-edger
                             r-dt
                             r-dplyr
                             r-digest
                             r-data-table
                             r-colourpicker
                             r-cluster
                             r-biocfilecache
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://nuno-agostinho.github.io/psichomics/")
    (synopsis
     "Graphical Interface for Alternative Splicing Quantification, Analysis and Visualisation")
    (description
     "Interactive R package with an intuitive Shiny-based graphical interface for
alternative splicing quantification and integrative analyses of alternative
splicing and gene expression based on The Cancer Genome Atlas (TCGA), the
Genotype-Tissue Expression project (GTEx), Sequence Read Archive (SRA) and
user-provided data.  The tool interactively performs survival, dimensionality
reduction and median- and variance-based differential splicing and gene
expression analyses that benefit from the incorporation of clinical and
molecular sample-associated features (such as tumour stage or survival).
Interactive visual access to genomic mapping and functional annotation of
selected alternative splicing events is also included.")
    (license license:expat)))

(define-public r-psea
  (package
    (name "r-psea")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PSEA" version))
       (sha256
        (base32 "02gnxacnpzz74bk4y4nkd6pd8y8abi0988zf03x1mcgnn7hk1s2y"))))
    (properties `((upstream-name . "PSEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-biobase))
    (home-page "https://bioconductor.org/packages/PSEA")
    (synopsis "Population-Specific Expression Analysis")
    (description
     "Deconvolution of gene expression data by Population-Specific Expression Analysis
(PSEA).")
    (license license:artistic2.0)))

(define-public r-protgear
  (package
    (name "r-protgear")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "protGear" version))
       (sha256
        (base32 "0r8md32vxjzarjldr9vsh3k0ms4zgqm9c7pp2flanbyinnqlfnxv"))))
    (properties `((upstream-name . "protGear")))
    (build-system r-build-system)
    (propagated-inputs (list r-vsn
                             r-tidyr
                             r-tibble
                             r-styler
                             r-shinydashboard
                             r-shiny
                             r-rmarkdown
                             r-rlang
                             r-remotes
                             r-readr
                             r-purrr
                             r-plyr
                             r-plotly
                             r-pheatmap
                             r-mass
                             r-magrittr
                             r-limma
                             r-knitr
                             r-kendall
                             r-htmltools
                             r-gtools
                             r-ggpubr
                             r-ggplot2
                             r-ggally
                             r-genefilter
                             r-flexdashboard
                             r-factominer
                             r-factoextra
                             r-dplyr
                             r-data-table
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Keniajin/protGear")
    (synopsis
     "Protein Micro Array Data Management and Interactive Visualization")
    (description
     "This package provides a generic three-step pre-processing package for protein
microarray data.  This package contains different data pre-processing procedures
to allow comparison of their performance.These steps are background correction,
the coefficient of variation (CV) based filtering, batch correction and
normalization.")
    (license license:gpl3)))

(define-public r-proteomm
  (package
    (name "r-proteomm")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ProteoMM" version))
       (sha256
        (base32 "0fgypbamsk8sh63s1nfda40f962ff5mi2qh0b8gaq20z6pkywk04"))))
    (properties `((upstream-name . "ProteoMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats
                             r-gtools
                             r-ggrepel
                             r-ggplot2
                             r-gdata
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ProteoMM")
    (synopsis
     "Multi-Dataset Model-based Differential Expression Proteomics Analysis Platform")
    (description
     "@code{ProteoMM} is a statistical method to perform model-based peptide-level
differential expression analysis of single or multiple datasets.  For multiple
datasets @code{ProteoMM} produces a single fold change and p-value for each
protein across multiple datasets. @code{ProteoMM} provides functionality for
normalization, missing value imputation and differential expression.
Model-based peptide-level imputation and differential expression analysis
component of package follows the analysis described in “A statistical framework
for protein quantitation in bottom-up MS based proteomics\" (Karpievitch et al.
Bioinformatics 2009). @code{EigenMS} normalisation is implemented as described
in \"Normalization of peak intensities in bottom-up MS-based proteomics using
singular value decomposition.\" (Karpievitch et al.  Bioinformatics 2009).")
    (license license:expat)))

(define-public r-proteodisco
  (package
    (name "r-proteodisco")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ProteoDisco" version))
       (sha256
        (base32 "02d477mk43ci9vl1g1rp8zjw6635772pkyjnda87ms4as9jrxcw6"))))
    (properties `((upstream-name . "ProteoDisco")))
    (build-system r-build-system)
    (propagated-inputs (list r-xvector
                             r-variantannotation
                             r-tidyr
                             r-tibble
                             r-s4vectors
                             r-rlang
                             r-plyr
                             r-parallellogger
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dplyr
                             r-cleaver
                             r-checkmate
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ErasmusMC-CCBC/ProteoDisco")
    (synopsis
     "Generation of customized protein variant databases from genomic variants, splice-junctions and manual sequences")
    (description
     "@code{ProteoDisco} is an R package to facilitate proteogenomics studies.  It
houses functions to create customized (variant) protein databases based on
user-submitted genomic variants, splice-junctions, fusion genes and manual
transcript sequences.  The flexible workflow can be adopted to suit a myriad of
research and experimental settings.")
    (license license:gpl3)))

(define-public r-proteinprofiles
  (package
    (name "r-proteinprofiles")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "proteinProfiles" version))
       (sha256
        (base32 "152nv9m4pzq7jh37xl4shv5g71w490cxqcah2lqprpgd6mwc5ac1"))))
    (properties `((upstream-name . "proteinProfiles")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/proteinProfiles")
    (synopsis "Protein Profiling")
    (description
     "Significance assessment for distance measures of time-course protein profiles")
    (license license:gpl3)))

(define-public r-prostar
  (package
    (name "r-prostar")
    (version "1.34.5")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Prostar" version))
       (sha256
        (base32 "1797pm7fdi0rxz4x5n30xndcppidz0lldvvjifw90bk7f82pvcld"))))
    (properties `((upstream-name . "Prostar")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-webshot
                             r-vioplot
                             r-tibble
                             r-shinywidgets
                             r-shinytree
                             r-shinythemes
                             r-shinyjs
                             r-shinyjqui
                             r-shinycssloaders
                             r-shinybs
                             r-shinyace
                             r-shiny
                             r-sass
                             r-rhandsontable
                             r-rcolorbrewer
                             r-rclipboard
                             r-r-utils
                             r-promises
                             r-markdown
                             r-later
                             r-knitr
                             r-htmlwidgets
                             r-highcharter
                             r-gtools
                             r-gplots
                             r-ggplot2
                             r-future
                             r-dt
                             r-data-table
                             r-dapar
                             r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "http://www.prostar-proteomics.org/")
    (synopsis "Provides a GUI for DAPAR")
    (description
     "This package provides a GUI interface for the DAPAR package.  The package
Prostar (Proteomics statistical analysis with R) is a Bioconductor distributed R
package which provides all the necessary functions to analyze quantitative data
from label-free proteomics experiments.  Contrarily to most other similar R
packages, it is endowed with rich and user-friendly graphical interfaces, so
that no programming skill is required.")
    (license license:artistic2.0)))

(define-public r-props
  (package
    (name "r-props")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PROPS" version))
       (sha256
        (base32 "1kc2f3syvm16hckv8bgipbmjfvdfhkz1zlm8hhyc6hvqhvl81973"))))
    (properties `((upstream-name . "PROPS")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva r-reshape2 r-bnlearn r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PROPS")
    (synopsis "PRObabilistic Pathway Score (PROPS)")
    (description
     "This package calculates probabilistic pathway scores using gene expression data.
 Gene expression values are aggregated into pathway-based scores using Bayesian
network representations of biological pathways.")
    (license license:gpl2)))

(define-public r-proper
  (package
    (name "r-proper")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PROPER" version))
       (sha256
        (base32 "1fmj6g9rjxr4i0480gzwfnmz0pn66pbyz3cy1wxwwfhpna24bi62"))))
    (properties `((upstream-name . "PROPER")))
    (build-system r-build-system)
    (propagated-inputs (list r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PROPER")
    (synopsis "PROspective Power Evaluation for RNAseq")
    (description
     "This package provide simulation based methods for evaluating the statistical
power in differential expression analysis from RNA-seq data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-promise
  (package
    (name "r-promise")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PROMISE" version))
       (sha256
        (base32 "0hscmk80mk47ay9l0s1jw1z9zaxxxv5r1n0057pmlpwbxvsck94p"))))
    (properties `((upstream-name . "PROMISE")))
    (build-system r-build-system)
    (propagated-inputs (list r-gseabase r-biobase))
    (home-page "https://bioconductor.org/packages/PROMISE")
    (synopsis "PRojection Onto the Most Interesting Statistical Evidence")
    (description
     "This package provides a general tool to identify genomic features with a
specific biologically interesting pattern of associations with multiple endpoint
variables as described in Pounds et.  al. (2009) Bioinformatics 25: 2013-2019")
    (license license:gpl2+)))

(define-public r-prolocgui
  (package
    (name "r-prolocgui")
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pRolocGUI" version))
       (sha256
        (base32 "0m493r27n4aq7ig95gnn0di09qmcvmnzrdbks0lr2zd4p032l5gx"))))
    (properties `((upstream-name . "pRolocGUI")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shinyjs
                             r-shinyhelper
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shiny
                             r-scales
                             r-proloc
                             r-msnbase
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-colourpicker
                             r-colorspace
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lgatto/pRolocGUI")
    (synopsis "Interactive visualisation of spatial proteomics data")
    (description
     "The package @code{pRolocGUI} comprises functions to interactively visualise
spatial proteomics data on the basis of @code{pRoloc}, @code{pRolocdata} and
shiny.")
    (license license:gpl2)))

(define-public r-proloc
  (package
    (name "r-proloc")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pRoloc" version))
       (sha256
        (base32 "14xdkcg92k0cn62vgaadmmfa1qz2r67xnn3lsrgps960gi66w2ps"))))
    (properties `((upstream-name . "pRoloc")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-sampling
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-randomforest
                             r-proxy
                             r-plyr
                             r-nnet
                             r-mvtnorm
                             r-msnbase
                             r-mlinterfaces
                             r-mixtools
                             r-mclust
                             r-mass
                             r-lattice
                             r-laplacesdemon
                             r-knitr
                             r-kernlab
                             r-hexbin
                             r-gtools
                             r-ggplot2
                             r-fnn
                             r-e1071
                             r-dendextend
                             r-coda
                             r-class
                             r-caret
                             r-biomart
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lgatto/pRoloc")
    (synopsis "unifying bioinformatics framework for spatial proteomics")
    (description
     "The @code{pRoloc} package implements machine learning and visualisation methods
for the analysis and interogation of quantitiative mass spectrometry data to
reliably infer protein sub-cellular localisation.")
    (license license:gpl2)))

(define-public r-projectr
  (package
    (name "r-projectr")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "projectR" version))
       (sha256
        (base32 "1jg8nkkh8xc2fiw94h69saira55gm9qjjiv206cac9hi49fjw1k8"))))
    (properties `((upstream-name . "projectR")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-umap
                             r-tsne
                             r-scales
                             r-rocr
                             r-reshape2
                             r-rcolorbrewer
                             r-nmf
                             r-matrixmodels
                             r-matrix
                             r-limma
                             r-ggrepel
                             r-ggplot2
                             r-ggalluvial
                             r-dplyr
                             r-cowplot
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/genesofeve/projectR/")
    (synopsis
     "Functions for the projection of weights from PCA, CoGAPS, NMF, correlation, and clustering")
    (description
     "This package provides functions for the projection of data into the spaces
defined by PCA, @code{CoGAPS}, NMF, correlation, and clustering.")
    (license (license:fsdg-compatible "GPL (==2)"))))

(define-public r-profilescoredist
  (package
    (name "r-profilescoredist")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "profileScoreDist" version))
       (sha256
        (base32 "1x34mqb7d5zb1nqp6zh2s3bx95qxaizyn6bi11vs84qvp4myqmws"))))
    (properties `((upstream-name . "profileScoreDist")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/profileScoreDist")
    (synopsis "Profile score distributions")
    (description
     "Regularization and score distributions for position count matrices.")
    (license license:expat)))

(define-public r-profileplyr
  (package
    (name "r-profileplyr")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "profileplyr" version))
       (sha256
        (base32 "1cng4l5b1mfx3iqx7gis3p9s0iyhrjm554gcdhg15hpydapgx7nv"))))
    (properties `((upstream-name . "profileplyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-txdb-mmusculus-ucsc-mm9-knowngene
                             r-txdb-mmusculus-ucsc-mm10-knowngene
                             r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-tiff
                             r-tidyr
                             r-summarizedexperiment
                             r-soggi
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rlang
                             r-rjson
                             r-rgreat
                             r-r-utils
                             r-pheatmap
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-enrichedheatmap
                             r-dplyr
                             r-complexheatmap
                             r-circlize
                             r-chipseeker
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/profileplyr")
    (synopsis
     "Visualization and annotation of read signal over genomic ranges with profileplyr")
    (description
     "Quick and straightforward visualization of read signal over genomic intervals is
key for generating hypotheses from sequencing data sets (e.g. @code{ChIP-seq},
ATAC-seq, bisulfite/methyl-seq).  Many tools both inside and outside of R and
Bioconductor are available to explore these types of data, and they typically
start with a @code{bigWig} or BAM file and end with some representation of the
signal (e.g. heatmap).  profileplyr leverages many Bioconductor tools to allow
for both flexibility and additional functionality in workflows that end with
visualization of the read signal.")
    (license license:gpl3+)))

(define-public r-proda
  (package
    (name "r-proda")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "proDA" version))
       (sha256
        (base32 "08zs0lapq9qynivrainh29l0flz0g6w68xzdf13hr9y1lizs11vp"))))
    (properties `((upstream-name . "proDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-s4vectors r-extradistr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/const-ae/proDA")
    (synopsis
     "Differential Abundance Analysis of Label-Free Mass Spectrometry Data")
    (description
     "Account for missing values in label-free mass spectrometry data without
imputation.  The package implements a probabilistic dropout model that ensures
that the information from observed and missing values are properly combined.  It
adds empirical Bayesian priors to increase power to detect differentially
abundant proteins.")
    (license license:gpl3)))

(define-public r-procoil
  (package
    (name "r-procoil")
    (version "2.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "procoil" version))
       (sha256
        (base32 "020sj33sj333cb5bvvld7rsxc8kwzkl996y11f6n8h5zs3flqbn1"))))
    (properties `((upstream-name . "procoil")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-kebabs r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/procoil")
    (synopsis "Prediction of Oligomerization of Coiled Coil Proteins")
    (description
     "The package allows for predicting whether a coiled coil sequence (amino acid
sequence plus heptad register) is more likely to form a dimer or more likely to
form a trimer.  Additionally to the prediction itself, a prediction profile is
computed which allows for determining the strengths to which the individual
residues are indicative for either class.  Prediction profiles can also be
visualized as curves or heatmaps.")
    (license license:gpl2+)))

(define-public r-process
  (package
    (name "r-process")
    (version "1.78.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PROcess" version))
       (sha256
        (base32 "0hwhkz5qnwwgzmjf44qqfnrbqg8gl20rk0dc1ymjyah79lyn1vpj"))))
    (properties `((upstream-name . "PROcess")))
    (build-system r-build-system)
    (propagated-inputs (list r-icens))
    (home-page "https://bioconductor.org/packages/PROcess")
    (synopsis "Ciphergen SELDI-TOF Processing")
    (description
     "This package provides a package for processing protein mass spectrometry data.")
    (license license:artistic2.0)))

(define-public r-probamr
  (package
    (name "r-probamr")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "proBAMr" version))
       (sha256
        (base32 "0jn0cv48nfykyilmbbpdapxwfslrdby2j83s7f2mm3hbrikvk11r"))))
    (properties `((upstream-name . "proBAMr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtracklayer
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-biostrings
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/proBAMr")
    (synopsis "Generating SAM file for PSMs in shotgun proteomics data")
    (description
     "Mapping PSMs back to genome.  The package builds SAM file from shotgun
proteomics data The package also provides function to prepare annotation from
GTF file.")
    (license license:artistic2.0)))

(define-public r-proactiv
  (package
    (name "r-proactiv")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "proActiv" version))
       (sha256
        (base32 "00cm99hgcrirdj1xrkg06q2r7idy0fajw8k33934m2622si7lwhj"))))
    (properties `((upstream-name . "proActiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-iranges
                             r-gplots
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-dplyr
                             r-deseq2
                             r-data-table
                             r-biocparallel
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GoekeLab/proActiv")
    (synopsis "Estimate Promoter Activity from RNA-Seq data")
    (description
     "Most human genes have multiple promoters that control the expression of
different isoforms.  The use of these alternative promoters enables the
regulation of isoform expression pre-transcriptionally.  Alternative promoters
have been found to be important in a wide number of cell types and diseases.
@code{proActiv} is an R package that enables the analysis of promoters from
RNA-seq data. @code{proActiv} uses aligned reads as input, and generates counts
and normalized promoter activity estimates for each annotated promoter.  In
particular, @code{proActiv} accepts junction files from @code{TopHat2} or STAR
or BAM files as inputs.  These estimates can then be used to identify which
promoter is active, which promoter is inactive, and which promoters change their
activity across conditions. @code{proActiv} also allows visualization of
promoter activity across conditions.")
    (license license:expat)))

(define-public r-prince
  (package
    (name "r-prince")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PrInCE" version))
       (sha256
        (base32 "0qzsrmn3dww1yklf4d1pk9grbiij5fqpsnhxz2fqkb3r0xyrnqm6"))))
    (properties `((upstream-name . "PrInCE")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tester
                             r-speedglm
                             r-robustbase
                             r-rdpack
                             r-ranger
                             r-purrr
                             r-progress
                             r-naivebayes
                             r-msnbase
                             r-magrittr
                             r-liblinear
                             r-hmisc
                             r-forecast
                             r-dplyr
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PrInCE")
    (synopsis "Predicting Interactomes from Co-Elution")
    (description
     "@code{PrInCE} (Predicting Interactomes from Co-Elution) uses a naive Bayes
classifier trained on dataset-derived features to recover protein-protein
interactions from co-elution chromatogram profiles.  This package contains the R
implementation of @code{PrInCE}.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-primirtss
  (package
    (name "r-primirtss")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "primirTSS" version))
       (sha256
        (base32 "1gzswcihphq6vc9n0cshsf8nznysa1f738cv6l9mjkzshj2f3bxq"))))
    (properties `((upstream-name . "primirTSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-tfbstools
                             r-stringr
                             r-shiny
                             r-s4vectors
                             r-rtracklayer
                             r-r-utils
                             r-purrr
                             r-iranges
                             r-gviz
                             r-genomicscores
                             r-genomicranges
                             r-dplyr
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ipumin/primirTSS")
    (synopsis "Prediction of pri-miRNA Transcription Start Site")
    (description
     "This package provides a fast, convenient tool to identify the TSSs of
@code{miRNAs} by integrating the data of H3K4me3 and Pol II as well as combining
the conservation level and sequence feature, provided within both command-line
and graphical interfaces, which achieves a better performance than the previous
non-cell-specific methods on @code{miRNA} TSSs.")
    (license license:gpl2)))

(define-public r-preda
  (package
    (name "r-preda")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PREDA" version))
       (sha256
        (base32 "1n8nlkhfbhisq62b382ydj9k4yrpiq0niqhj56rj3vz9p56gkx1p"))))
    (properties `((upstream-name . "PREDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-multtest r-lokern r-biobase r-annotate))
    (home-page "https://bioconductor.org/packages/PREDA")
    (synopsis "Position Related Data Analysis")
    (description
     "Package for the position related analysis of quantitative functional genomics
data.")
    (license license:gpl2)))

(define-public r-precisetad
  (package
    (name "r-precisetad")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "preciseTAD" version))
       (sha256
        (base32 "1vf71x59wghiq78ns0xfr587rarzpcnzkik78xghnpkidk16183s"))))
    (properties `((upstream-name . "preciseTAD")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rcgh
                             r-randomforest
                             r-prroc
                             r-proc
                             r-pbapply
                             r-modelmetrics
                             r-iranges
                             r-gtools
                             r-genomicranges
                             r-foreach
                             r-e1071
                             r-dosnow
                             r-dbscan
                             r-cluster
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/preciseTAD")
    (synopsis
     "preciseTAD: A machine learning framework for precise TAD boundary prediction")
    (description
     "@code{preciseTAD} provides functions to predict the location of boundaries of
topologically associated domains (TADs) and chromatin loops at base-level
resolution.  As an input, it takes BED-formatted genomic coordinates of domain
boundaries detected from low-resolution Hi-C data, and coordinates of
high-resolution genomic annotations from ENCODE or other consortia.
@code{preciseTAD} employs several feature engineering strategies and resampling
techniques to address class imbalance, and trains an optimized random forest
model for predicting low-resolution domain boundaries.  Translated on a
base-level, @code{preciseTAD} predicts the probability for each base to be a
boundary.  Density-based clustering and scalable partitioning techniques are
used to detect precise boundary regions and summit points.  Compared with
low-resolution boundaries, @code{preciseTAD} boundaries are highly enriched for
CTCF, RAD21, SMC3, and ZNF143 signal and more conserved across cell lines.  The
pre-trained model can accurately predict boundaries in another cell line using
CTCF, RAD21, SMC3, and ZNF143 annotation data for this cell line.")
    (license license:expat)))

(define-public r-prebs
  (package
    (name "r-prebs")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "prebs" version))
       (sha256
        (base32 "1zg73x9ygllxrjhswvz9bv5lacnfxlaq56y34j6zkvj3zmcpqx4g"))))
    (properties `((upstream-name . "prebs")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rpa
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-biobase
                             r-affy))
    (home-page "https://bioconductor.org/packages/prebs")
    (synopsis
     "Probe region expression estimation for RNA-seq data for improved microarray comparability")
    (description
     "The prebs package aims at making RNA-sequencing (RNA-seq) data more comparable
to microarray data.  The comparability is achieved by summarizing
sequencing-based expressions of probe regions using a modified version of RMA
algorithm.  The pipeline takes mapped reads in BAM format as an input and
produces either gene expressions or original microarray probe set expressions as
an output.")
    (license license:artistic2.0)))

(define-public r-pram
  (package
    (name "r-pram")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pram" version))
       (sha256
        (base32 "1zid1ra1b6qa6c8xw5z9jclkkjv5r61rzhw0xikm5mamg4mhvv4x"))))
    (properties `((upstream-name . "pram")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-data-table
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pliu55/pram")
    (synopsis "Pooling RNA-seq datasets for assembling transcript models")
    (description
     "Publicly available RNA-seq data is routinely used for retrospective analysis to
elucidate new biology.  Novel transcript discovery enabled by large collections
of RNA-seq datasets has emerged as one of such analysis.  To increase the power
of transcript discovery from large collections of RNA-seq datasets, we developed
a new R package named Pooling RNA-seq and Assembling Models (PRAM), which builds
transcript models in intergenic regions from pooled RNA-seq datasets.  This
package includes functions for defining intergenic regions, extracting and
pooling related RNA-seq alignments, predicting, selected, and evaluating
transcript models.")
    (license license:gpl3+)))

(define-public r-pqsfinder
  (package
    (name "r-pqsfinder")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pqsfinder" version))
       (sha256
        (base32 "0bm4rp6dvk9y8i3mj762rjjna9w75j6ggkkd60aqddidx4dicc6b"))))
    (properties `((upstream-name . "pqsfinder")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rcpp
                             r-iranges
                             r-genomicranges
                             r-biostrings
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://pqsfinder.fi.muni.cz")
    (synopsis "Identification of potential quadruplex forming sequences")
    (description
     "Pqsfinder detects DNA and RNA sequence patterns that are likely to fold into an
intramolecular G-quadruplex (G4).  Unlike many other approaches, pqsfinder is
able to detect G4s folded from imperfect G-runs containing bulges or mismatches
or G4s having long loops.  Pqsfinder also assigns an integer score to each hit
that was fitted on G4 sequencing data and corresponds to expected stability of
the folded G4.")
    (license license:bsd-2)))

(define-public r-ppinfer
  (package
    (name "r-ppinfer")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PPInfer" version))
       (sha256
        (base32 "141hc0gl52869labiryr8ar763hqrxqxjxbi6s1nlj96d601s8sm"))))
    (properties `((upstream-name . "PPInfer")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringdb
                             r-kernlab
                             r-igraph
                             r-httr
                             r-ggplot2
                             r-fgsea
                             r-biomart))
    (home-page "https://bioconductor.org/packages/PPInfer")
    (synopsis
     "Inferring functionally related proteins using protein interaction networks")
    (description
     "Interactions between proteins occur in many, if not most, biological processes.
Most proteins perform their functions in networks associated with other proteins
and other biomolecules.  This fact has motivated the development of a variety of
experimental methods for the identification of protein interactions.  This
variety has in turn ushered in the development of numerous different
computational approaches for modeling and predicting protein interactions.
Sometimes an experiment is aimed at identifying proteins closely related to some
interesting proteins.  A network based statistical learning method is used to
infer the putative functions of proteins from the known functions of its
neighboring proteins on a PPI network.  This package identifies such proteins
often involved in the same or similar biological functions.")
    (license license:artistic2.0)))

(define-public r-ppcseq
  (package
    (name "r-ppcseq")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ppcseq" version))
       (sha256
        (base32 "01g67bskk71imkb04ln3cngbdf23lvaaldsvbrrk6sym51l3c3mn"))))
    (properties `((upstream-name . "ppcseq")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidybayes
                             r-tibble
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-foreach
                             r-edger
                             r-dplyr
                             r-bh
                             r-benchmarkme))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stemangiola/ppcseq")
    (synopsis
     "Probabilistic Outlier Identification for RNA Sequencing Generalized Linear Models")
    (description
     "Relative transcript abundance has proven to be a valuable tool for understanding
the function of genes in biological systems.  For the differential analysis of
transcript abundance using RNA sequencing data, the negative binomial model is
by far the most frequently adopted.  However, common methods that are based on a
negative binomial model are not robust to extreme outliers, which we found to be
abundant in public datasets.  So far, no rigorous and probabilistic methods for
detection of outliers have been developed for RNA sequencing data, leaving the
identification mostly to visual inspection.  Recent advances in Bayesian
computation allow large-scale comparison of observed data against its
theoretical distribution given in a statistical model.  Here we propose ppcseq,
a key quality-control tool for identifying transcripts that include outlier data
points in differential expression analysis, which do not follow a negative
binomial distribution.  Applying ppcseq to analyse several publicly available
datasets using popular tools, we show that from 3 to 10 percent of
differentially abundant transcripts across algorithms and datasets had
statistics inflated by the presence of outliers.")
    (license license:gpl3)))

(define-public r-powsc
  (package
    (name "r-powsc")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "POWSC" version))
       (sha256
        (base32 "1qkbzc61kr5kpc4z2z8yfhwvxyvhm6x297zfjzn6a1c16g3hy3p0"))))
    (properties `((upstream-name . "POWSC")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-rcolorbrewer
                             r-pheatmap
                             r-mast
                             r-limma
                             r-ggplot2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/POWSC")
    (synopsis
     "Simulation, power evaluation, and sample size recommendation for single cell RNA-seq")
    (description
     "Determining the sample size for adequate power to detect statistical
significance is a crucial step at the design stage for high-throughput
experiments.  Even though a number of methods and tools are available for sample
size calculation for microarray and RNA-seq in the context of differential
expression (DE), this topic in the field of single-cell RNA sequencing is
understudied.  Moreover, the unique data characteristics present in
@code{scRNA-seq} such as sparsity and heterogeneity increase the challenge.  We
propose POWSC, a simulation-based method, to provide power evaluation and sample
size recommendation for single-cell RNA sequencing DE analysis.  POWSC consists
of a data simulator that creates realistic expression data, and a power assessor
that provides a comprehensive evaluation and visualization of the power and
sample size relationship.")
    (license license:gpl2)))

(define-public r-poma
  (package
    (name "r-poma")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "POMA" version))
       (sha256
        (base32 "08drgm5n5b6qhxs6znc9adfl8rlfrsqbv9j0lsj7lbi2kism1xc3"))))
    (properties `((upstream-name . "POMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-uwot
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-rmarkdown
                             r-rankprod
                             r-randomforest
                             r-mixomics
                             r-magrittr
                             r-limma
                             r-impute
                             r-glmnet
                             r-glasso
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-deseq2
                             r-dbscan
                             r-complexheatmap
                             r-caret
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pcastellanoescuder/POMA")
    (synopsis "Tools for Omics Data Analysis")
    (description
     "This package provides a reproducible and easy-to-use toolkit for visualization,
pre-processing, exploration, and statistical analysis of omics datasets.  The
main aim of POMA is to enable a flexible data cleaning and statistical analysis
processes in one comprehensible and user-friendly R package.  This package has a
Shiny app version called POMAShiny that implements all POMA functions.  See
https://github.com/pcastellanoescuder/POMAShiny.  See Castellano-Escuder P,
González-Domínguez R, Carmona-Pontaque F, et al. (2021)
<doi:10.1371/journal.pcbi.1009148> for more details.")
    (license license:gpl3)))

(define-public r-pogos
  (package
    (name "r-pogos")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pogos" version))
       (sha256
        (base32 "0rx60m4jmw8a7ha6nkszachk4dl0bjv0n4mvgvi2kiy7a3s3p6zp"))))
    (properties `((upstream-name . "pogos")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-s4vectors
                             r-rjson
                             r-ontoproc
                             r-httr
                             r-ggplot2))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/pogos")
    (synopsis "PharmacOGenomics Ontology Support")
    (description
     "Provide simple utilities for querying bhklab @code{PharmacoDB}, modeling API
outputs, and integrating to cell and compound ontologies.")
    (license license:artistic2.0)))

(define-public r-podkat
  (package
    (name "r-podkat")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "podkat" version))
       (sha256
        (base32 "0003237bhwyrvlfsb5vncbq76l74i9y0cvh0zmbfpbqz8d72nf98"))))
    (properties `((upstream-name . "podkat")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsamtools
                             r-rhtslib
                             r-rcpp
                             r-matrix
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/podkat")
    (synopsis "Position-Dependent Kernel Association Test")
    (description
     "This package provides an association test that is capable of dealing with very
rare and even private variants.  This is accomplished by a kernel-based approach
that takes the positions of the variants into account.  The test can be used for
pre-processed matrix data, but also directly for variant data stored in VCF
files.  Association testing can be performed whole-genome, whole-exome, or
restricted to pre-defined regions of interest.  The test is complemented by
tools for analyzing and visualizing the results.")
    (license license:gpl2+)))

(define-public r-podcall
  (package
    (name "r-podcall")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PoDCall" version))
       (sha256
        (base32 "1c8g3p7fm25b9fvyw6dy3rz0g84by2l3vp289d22pyy08kxxgwrj"))))
    (properties `((upstream-name . "PoDCall")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyjs
                             r-shiny
                             r-rlist
                             r-readr
                             r-purrr
                             r-mclust
                             r-laplacesdemon
                             r-gridextra
                             r-ggplot2
                             r-dt
                             r-diptest))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PoDCall")
    (synopsis
     "Positive Droplet Calling for DNA Methylation Droplet Digital PCR")
    (description
     "Reads files exported from QX Manager or @code{QuantaSoft} containing amplitude
values from a run of @code{ddPCR} (96 well plate) and robustly sets thresholds
to determine positive droplets for each channel of each individual well.
Concentration and normalized concentration in addition to other metrics is then
calculated for each well.  Results are returned as a table, optionally written
to file, as well as optional plots (scatterplot and histogram) for both channels
per well written to file.  The package includes a shiny application which
provides an interactive and user-friendly interface to the full functionality of
@code{PoDCall}.")
    (license license:gpl3)))

(define-public r-pmp
  (package
    (name "r-pmp")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pmp" version))
       (sha256
        (base32 "0771h3g4b7k37l8azcc35g4hk06f3wi6ff9s6z5myn4igfc4nmhn"))))
    (properties `((upstream-name . "pmp")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-reshape2
                             r-pcamethods
                             r-missforest
                             r-matrixstats
                             r-impute
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pmp")
    (synopsis
     "Peak Matrix Processing and signal batch correction for metabolomics datasets")
    (description
     "This package provides methods and tools for (pre-)processing of metabolomics
datasets (i.e.  peak matrices), including filtering, normalisation, missing
value imputation, scaling, and signal drift and batch effect correction methods.
 Filtering methods are based on: the fraction of missing values (across samples
or features); Relative Standard Deviation (RSD) calculated from the Quality
Control (QC) samples; the blank samples.  Normalisation methods include
Probabilistic Quotient Normalisation (PQN) and normalisation to total signal
intensity.  A unified user interface for several commonly used missing value
imputation algorithms is also provided.  Supported methods are: k-nearest
neighbours (knn), random forests (rf), Bayesian PCA missing value estimator
(bpca), mean or median value of the given feature and a constant small value.
The generalised logarithm (glog) transformation algorithm is available to
stabilise the variance across low and high intensity mass spectral features.
Finally, this package provides an implementation of the Quality Control-Robust
Spline Correction (QCRSC) algorithm for signal drift and batch effect correction
of mass spectrometry-based datasets.")
    (license license:gpl3)))

(define-public r-pmm
  (package
    (name "r-pmm")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pmm" version))
       (sha256
        (base32 "0hcm03z7z4fsxlr0g1jwpqmwmq17pzagwkfds70p0ldixrs5zfrw"))))
    (properties `((upstream-name . "pmm")))
    (build-system r-build-system)
    (propagated-inputs (list r-lme4))
    (home-page "https://bioconductor.org/packages/pmm")
    (synopsis "Parallel Mixed Model")
    (description
     "The Parallel Mixed Model (PMM) approach is suitable for hit selection and
cross-comparison of RNAi screens generated in experiments that are performed in
parallel under several conditions.  For example, we could think of the
measurements or readouts from cells under RNAi knock-down, which are infected
with several pathogens or which are grown from different cell lines.")
    (license license:gpl3)))

(define-public r-plyinteractions
  (package
    (name "r-plyinteractions")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plyinteractions" version))
       (sha256
        (base32 "1f11mnaykvr1knzymr73ivrfwnsbnr8gdb4wl3hr5g0p2mhl3ir6"))))
    (properties `((upstream-name . "plyinteractions")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-s4vectors
                             r-rlang
                             r-plyranges
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/plyinteractions")
    (synopsis "Extending tidy verbs to genomic interactions")
    (description
     "Operate on `GInteractions` objects as tabular data using `dplyr`-like verbs.
The functions and methods in `plyinteractions` provide a grammatical approach to
manipulate `GInteractions`, to facilitate their integration in genomic analysis
workflows.")
    (license license:artistic2.0)))

(define-public r-plpe
  (package
    (name "r-plpe")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PLPE" version))
       (sha256
        (base32 "0ygh6awl73h0ykzcng6l2gxphgjivgswbk76xmlq53458sz12kv1"))))
    (properties `((upstream-name . "PLPE")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-lpe r-biobase))
    (home-page "http://www.korea.ac.kr/~stat2242/")
    (synopsis
     "Local Pooled Error Test for Differential Expression with Paired High-throughput Data")
    (description
     "This package performs tests for paired high-throughput data.")
    (license license:gpl2+)))

(define-public r-plotgrouper
  (package
    (name "r-plotgrouper")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plotGrouper" version))
       (sha256
        (base32 "0f3vnv6kmx62rfxdqfyn1j8npda18ry39y1cxxdghpxbnvl9678d"))))
    (properties `((upstream-name . "plotGrouper")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-shinythemes
                             r-shiny
                             r-scales
                             r-rlang
                             r-readxl
                             r-readr
                             r-magrittr
                             r-hmisc
                             r-gtable
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-egg
                             r-dplyr
                             r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "https://jdgagnon.github.io/plotGrouper/")
    (synopsis
     "Shiny app GUI wrapper for ggplot with built-in statistical analysis")
    (description
     "This package provides a shiny app-based GUI wrapper for ggplot with built-in
statistical analysis.  Import data from file and use dropdown menus and
checkboxes to specify the plotting variables, graph type, and look of your
plots.  Once created, plots can be saved independently or stored in a report
that can be saved as a pdf.  If new data are added to the file, the report can
be refreshed to include new data.  Statistical tests can be selected and added
to the graphs.  Analysis of flow cytometry data is especially integrated with
@code{plotGrouper}.  Count data can be transformed to return the absolute number
of cells in a sample (this feature requires inclusion of the number of beads per
sample and information about any dilution performed).")
    (license license:gpl3)))

(define-public r-plotgardener
  (package
    (name "r-plotgardener")
    (version "1.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plotgardener" version))
       (sha256
        (base32 "0mh025ki2i35pm5a51sy5nak1h2ygzakphjj74n0d0732a00xykj"))))
    (properties `((upstream-name . "plotgardener")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-strawr
                             r-rlang
                             r-rcpp
                             r-rcolorbrewer
                             r-purrr
                             r-plyranges
                             r-iranges
                             r-ggplotify
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://phanstiellab.github.io/plotgardener")
    (synopsis "Coordinate-Based Genomic Visualization Package for R")
    (description
     "Coordinate-based genomic visualization package for R. It grants users the
ability to programmatically produce complex, multi-paneled figures.  Tailored
for genomics, plotgardener allows users to visualize large complex genomic
datasets and provides exquisite control over how plots are placed and arranged
on a page.")
    (license license:expat)))

(define-public r-plogo2
  (package
    (name "r-plogo2")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PloGO2" version))
       (sha256
        (base32 "0r0zf8dfb4pv4hv5fp5v61i3q5bnzwxws1v3cnx7l64b0hjl2ffi"))))
    (properties `((upstream-name . "PloGO2")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-openxlsx
                             r-lattice
                             r-httr
                             r-gostats
                             r-go-db))
    (home-page "https://bioconductor.org/packages/PloGO2")
    (synopsis "Plot Gene Ontology and KEGG pathway Annotation and Abundance")
    (description
     "This package provides functions for enrichment analysis and plotting gene
ontology or KEGG pathway information for multiple data subsets at the same time.
 It also enables encorporating multiple conditions and abundance data.")
    (license license:gpl2)))

(define-public r-plier
  (package
    (name "r-plier")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plier" version))
       (sha256
        (base32 "1a4sb7ni6byzdhh5wkfg7z47za8cr6q85b7349wz02c87axjhn31"))))
    (properties `((upstream-name . "plier")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/plier")
    (synopsis "Implements the Affymetrix PLIER algorithm")
    (description
     "The PLIER (Probe Logarithmic Error Intensity Estimate) method produces an
improved signal by accounting for experimentally observed patterns in probe
behavior and handling error at the appropriately at low and high signal values.")
    (license license:gpl2+)))

(define-public r-plasmut
  (package
    (name "r-plasmut")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "plasmut" version))
       (sha256
        (base32 "1b27ykiraprda3a1sg008wrkkm5vmbhb5mf3sxgg0b136ldfqv1h"))))
    (properties `((upstream-name . "plasmut")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/plasmut")
    (synopsis
     "Stratifying mutations observed in cell-free DNA and white blood cells as germline, hematopoietic, or somatic")
    (description
     "This package provides a Bayesian method for quantifying the liklihood that a
given plasma mutation arises from clonal hematopoesis or the underlying tumor.
It requires sequencing data of the mutation in plasma and white blood cells with
the number of distinct and mutant reads in both tissues.  We implement a Monte
Carlo importance sampling method to assess the likelihood that a mutation arises
from the tumor relative to non-tumor origin.")
    (license license:artistic2.0)))

(define-public r-planttfhunter
  (package
    (name "r-planttfhunter")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "planttfhunter" version))
       (sha256
        (base32 "18p9ms5vz8bis6v07dh9zn3qm0bck71p1rflzslcqgnx2y8icnc7"))))
    (properties `((upstream-name . "planttfhunter")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/almeidasilvaf/planttfhunter")
    (synopsis
     "Identification and classification of plant transcription factors")
    (description
     "planttfhunter is used to identify plant transcription factors (TFs) from protein
sequence data and classify them into families and subfamilies using the
classification scheme implemented in @code{PlantTFDB}.  TFs are identified using
pre-built hidden Markov model profiles for DNA-binding domains.  Then, auxiliary
and forbidden domains are used with DNA-binding domains to classify TFs into
families and subfamilies (when applicable).  Currently, TFs can be classified in
58 different TF families/subfamilies.")
    (license license:gpl3)))

(define-public r-planet
  (package
    (name "r-planet")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "planet" version))
       (sha256
        (base32 "10imcjax2ymqwkrx1li5dmi0yy42nn4gl029czgrsnk8fcfkijmj"))))
    (properties `((upstream-name . "planet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://victor.rbind.io/planet")
    (synopsis "Placental DNA methylation analysis tools")
    (description
     "This package contains R functions to predict biological variables to from
placnetal DNA methylation data generated from infinium arrays.  This includes
inferring ethnicity/ancestry, gestational age, and cell composition from
placental DNA methylation array (450k/850k) data.")
    (license license:gpl2)))

(define-public r-pipeframe
  (package
    (name "r-pipeframe")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pipeFrame" version))
       (sha256
        (base32 "1vvxjb0hzr1y09yl39lsayvpy15mc3199s6khgh3v8416mhxhwn9"))))
    (properties `((upstream-name . "pipeFrame")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-rmarkdown
                             r-magrittr
                             r-genomeinfodb
                             r-digest
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wzthu/pipeFrame")
    (synopsis "Pipeline framework for bioinformatics in R")
    (description
     "@code{pipeFrame} is an R package for building a componentized bioinformatics
pipeline.  Each step in this pipeline is wrapped in the framework, so the
connection among steps is created seamlessly and automatically.  Users could
focus more on fine-tuning arguments rather than spending a lot of time on
transforming file format, passing task outputs to task inputs or installing the
dependencies.  Componentized step elements can be customized into other new
pipelines flexibly as well.  This pipeline can be split into several important
functional steps, so it is much easier for users to understand the complex
arguments from each step rather than parameter combination from the whole
pipeline.  At the same time, componentized pipeline can restart at the
breakpoint and avoid rerunning the whole pipeline, which may save a lot of time
for users on pipeline tuning or such issues as power off or process other
interrupts.")
    (license license:gpl3)))

(define-public r-pipecomp
  (package
    (name "r-pipecomp")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pipeComp" version))
       (sha256
        (base32 "0wf2vw4r83l6jwdp9i57g7rv69j9wg6rzcamsvb3ksxfj0yjsf6r"))))
    (properties `((upstream-name . "pipeComp")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-uwot
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-scran
                             r-scater
                             r-scales
                             r-s4vectors
                             r-rtsne
                             r-reshape2
                             r-rcolorbrewer
                             r-randomcolor
                             r-matrixstats
                             r-matrix
                             r-knitr
                             r-intrinsicdimension
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-complexheatmap
                             r-cluster
                             r-clue
                             r-circlize
                             r-biocparallel
                             r-aricode))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1186/s13059-020-02136-7")
    (synopsis "pipeComp pipeline benchmarking framework")
    (description
     "This package provides a simple framework to facilitate the comparison of
pipelines involving various steps and parameters.  The
`@code{pipelineDefinition`} class represents pipelines as, minimally, a set of
functions consecutively executed on the output of the previous one, and
optionally accompanied by step-wise evaluation and aggregation functions.  Given
such an object, a set of alternative parameters/methods, and benchmark datasets,
the `@code{runPipeline`} function then proceeds through all combinations
arguments, avoiding recomputing the same step twice and compiling evaluations on
the fly to avoid storing potentially large intermediate data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ping
  (package
    (name "r-ping")
    (version "2.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PING" version))
       (sha256
        (base32 "1i5vcjplck3phgwy72rcpi2xf4nwkd57lv81pl7wx2lr4yls7jw3"))))
    (properties `((upstream-name . "PING")))
    (build-system r-build-system)
    (inputs (list gsl))
    (propagated-inputs (list r-s4vectors
                             r-pics
                             r-iranges
                             r-gviz
                             r-genomicranges
                             r-fda
                             r-bsgenome
                             r-biocgenerics))
    (native-inputs (list pkg-config))
    (home-page "https://bioconductor.org/packages/PING")
    (synopsis
     "Probabilistic inference for Nucleosome Positioning with MNase-based or Sonicated Short-read Data")
    (description
     "Probabilistic inference of @code{ChIP-Seq} using an empirical Bayes mixture
model approach.")
    (license license:artistic2.0)))

(define-public r-pigengene
  (package
    (name "r-pigengene")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Pigengene" version))
       (sha256
        (base32 "0sh9q6qx4ycgdhpdvh026hqcxyy6jnbz5inb5r2acj5n5sza0xbk"))))
    (properties `((upstream-name . "Pigengene")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-rgraphviz
                             r-reactomepa
                             r-preprocesscore
                             r-pheatmap
                             r-partykit
                             r-openxlsx
                             r-matrixstats
                             r-mass
                             r-impute
                             r-graph
                             r-go-db
                             r-ggplot2
                             r-gdata
                             r-dplyr
                             r-dose
                             r-dbi
                             r-clusterprofiler
                             r-c50
                             r-bnlearn
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Pigengene")
    (synopsis "Infers biological signatures from gene expression data")
    (description
     "Pigengene package provides an efficient way to infer biological signatures from
gene expression profiles.  The signatures are independent from the underlying
platform, e.g., the input can be microarray or RNA Seq data.  It can even infer
the signatures using data from one platform, and evaluate them on the other.
Pigengene identifies the modules (clusters) of highly coexpressed genes using
coexpression network analysis, summarizes the biological information of each
module in an eigengene, learns a Bayesian network that models the probabilistic
dependencies between modules, and builds a decision tree based on the expression
of eigengenes.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-pics
  (package
    (name "r-pics")
    (version "2.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PICS" version))
       (sha256
        (base32 "0rpdi8s5l9hz5p1r688ngqq07cddqjcbl3ingl4a0jhl8k3rrznb"))))
    (properties `((upstream-name . "PICS")))
    (build-system r-build-system)
    (inputs (list gsl))
    (propagated-inputs (list r-rsamtools r-iranges r-genomicranges
                             r-genomicalignments))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://github.com/SRenan/PICS")
    (synopsis "Probabilistic inference of ChIP-seq")
    (description
     "Probabilistic inference of @code{ChIP-Seq} using an empirical Bayes mixture
model approach.")
    (license license:artistic2.0)))

(define-public r-pickgene
  (package
    (name "r-pickgene")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pickgene" version))
       (sha256
        (base32 "0dp862069sxyaxmniszn9hggpjqch3dg9s3q5f7iqdb9gijvz8jx"))))
    (properties `((upstream-name . "pickgene")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "http://www.stat.wisc.edu/~yandell/statgen")
    (synopsis "Adaptive Gene Picking for Microarray Expression Data Analysis")
    (description
     "This package provides functions to Analyze Microarray (Gene Expression) Data.")
    (license license:gpl2+)))

(define-public r-pi
  (package
    (name "r-pi")
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Pi" version))
       (sha256
        (base32 "16jh7p3f6nk2hwvp44b9sas1dl618m520xj553x9dkaj77jmzp6d"))))
    (properties `((upstream-name . "Pi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-suprahex
                             r-scales
                             r-rocr
                             r-readr
                             r-rcircos
                             r-randomforest
                             r-purrr
                             r-plot3d
                             r-osfr
                             r-matrix
                             r-mass
                             r-lattice
                             r-iranges
                             r-igraph
                             r-glmnet
                             r-ggrepel
                             r-ggplot2
                             r-ggnetwork
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-dnet
                             r-caret
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "http://pi314.r-forge.r-project.org")
    (synopsis
     "Leveraging Genetic Evidence to Prioritise Drug Targets at the Gene and Pathway Level")
    (description
     "Priority index or Pi is developed as a genomic-led target prioritisation system.
 It integrates functional genomic predictors, knowledge of network connectivity
and immune ontologies to prioritise potential drug targets at the gene and
pathway level.")
    (license license:gpl3)))

(define-public r-phyloprofile
  (package
    (name "r-phyloprofile")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhyloProfile" version))
       (sha256
        (base32 "19qiz589sp30qrqlf5s5a1j70npqhkxp0i9bd3143w7pa9rqmpfj"))))
    (properties `((upstream-name . "PhyloProfile")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-xml2
                             r-stringr
                             r-shinyjs
                             r-shinyfiles
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-rcurl
                             r-rcolorbrewer
                             r-plyr
                             r-pbapply
                             r-omadb
                             r-gridextra
                             r-ggplot2
                             r-experimenthub
                             r-energy
                             r-dt
                             r-data-table
                             r-colourpicker
                             r-biostrings
                             r-biodist
                             r-biocstyle
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BIONF/PhyloProfile/")
    (synopsis "PhyloProfile")
    (description
     "@code{PhyloProfile} is a tool for exploring complex phylogenetic profiles.
Phylogenetic profiles, presence/absence patterns of genes over a set of species,
are commonly used to trace the functional and evolutionary history of genes
across species and time.  With @code{PhyloProfile} we can enrich regular
phylogenetic profiles with further data like sequence/structure similarity, to
make phylogenetic profiling more meaningful.  Besides the interactive
visualisation powered by R-Shiny, the package offers a set of further analysis
features to gain insights like the gene age estimation or core gene
identification.")
    (license license:expat)))

(define-public r-phosr
  (package
    (name "r-phosr")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhosR" version))
       (sha256
        (base32 "1wjnc0i062kwdzz2hxavxifgfl47pk98s57z7av974vz9aa64v7b"))))
    (properties `((upstream-name . "PhosR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-stringi
                             r-s4vectors
                             r-ruv
                             r-rlang
                             r-reshape2
                             r-rcolorbrewer
                             r-preprocesscore
                             r-pheatmap
                             r-pcamethods
                             r-network
                             r-limma
                             r-igraph
                             r-ggtext
                             r-ggpubr
                             r-ggplot2
                             r-ggdendro
                             r-ggally
                             r-e1071
                             r-dplyr
                             r-dendextend
                             r-circlize
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PhosR")
    (synopsis
     "set of methods and tools for comprehensive analysis of phosphoproteomics data")
    (description
     "@code{PhosR} is a package for the comprenhensive analysis of phosphoproteomic
data.  There are two major components to @code{PhosR}: processing and downstream
analysis. @code{PhosR} consists of various processing tools for
phosphoproteomics data including filtering, imputation, normalisation, and
functional analysis for inferring active kinases and signalling pathways.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-phosphonormalizer
  (package
    (name "r-phosphonormalizer")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phosphonormalizer" version))
       (sha256
        (base32 "1xs9vdf0kh2dpnbn1cdfw64gq4nzawm53vrlq83qhccfgfxvvx9i"))))
    (properties `((upstream-name . "phosphonormalizer")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-matrixstats))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/phosphonormalizer")
    (synopsis "Compensates for the bias introduced by median normalization in")
    (description
     "It uses the overlap between enriched and non-enriched datasets to compensate for
the bias introduced in global phosphorylation after applying median
normalization.")
    (license license:gpl2+)))

(define-public r-phipdata
  (package
    (name "r-phipdata")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhIPData" version))
       (sha256
        (base32 "14m8qbv6aspgj8ba78g91cgrfv44v8cq1xn6993qzkwdp94hxhwg"))))
    (properties `((upstream-name . "PhIPData")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-edger
                             r-cli
                             r-biocgenerics
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PhIPData")
    (synopsis "Container for PhIP-Seq Experiments")
    (description
     "@code{PhIPData} defines an S4 class for phage-immunoprecipitation sequencing
(@code{PhIP-seq}) experiments.  Buliding upon the
@code{RangedSummarizedExperiment} class, @code{PhIPData} enables users to
coordinate metadata with experimental data in analyses.  Additionally,
@code{PhIPData} provides specialized methods to subset and identify beads-only
samples, subset objects using virus aliases, and use existing peptide libraries
to populate object parameters.")
    (license license:expat)))

(define-public r-philr
  (package
    (name "r-philr")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "philr" version))
       (sha256
        (base32 "1kd7j8ah7v15xdkks4bjww72pbb45b2nvjygk65wnjc8qs53zngw"))))
    (properties `((upstream-name . "philr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-phangorn r-ggtree r-ggplot2 r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jsilve24/philr")
    (synopsis
     "Phylogenetic partitioning based ILR transform for metagenomics data")
    (description
     "@code{PhILR} is short for Phylogenetic Isometric Log-Ratio Transform.  This
package provides functions for the analysis of compositional data (e.g., data
representing proportions of different variables/parts).  Specifically this
package allows analysis of compositional data where the parts can be related
through a phylogenetic tree (as is common in microbiota survey data) and makes
available the Isometric Log Ratio transform built from the phylogenetic tree and
utilizing a weighted reference measure.")
    (license license:gpl3)))

(define-public r-phenstat
  (package
    (name "r-phenstat")
    (version "2.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhenStat" version))
       (sha256
        (base32 "16gh4qmp1r7hbfvnk38fzk0pg1xp9hnxixaa084c1pra5m9zrm7w"))))
    (properties `((upstream-name . "PhenStat")))
    (build-system r-build-system)
    (propagated-inputs (list r-smoothwin
                             r-reshape
                             r-pingr
                             r-nortest
                             r-nlme
                             r-msgps
                             r-mass
                             r-logistf
                             r-lme4
                             r-knitr
                             r-graph
                             r-ggplot2
                             r-corrplot
                             r-car))
    (home-page "https://bioconductor.org/packages/PhenStat")
    (synopsis "Statistical analysis of phenotypic data")
    (description
     "Package contains methods for statistical analysis of phenotypic data.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-phenotest
  (package
    (name "r-phenotest")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phenoTest" version))
       (sha256
        (base32 "0hrmbjanc5sscwc6948w5np4phz4ax8qldasi4cg5n0x18hqr3h5"))))
    (properties `((upstream-name . "phenoTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-survival
                             r-mgcv
                             r-limma
                             r-hopach
                             r-hmisc
                             r-heatplus
                             r-gseabase
                             r-gplots
                             r-ggplot2
                             r-genefilter
                             r-ellipse
                             r-category
                             r-bma
                             r-biomart
                             r-biobase
                             r-annotationdbi
                             r-annotate))
    (home-page "https://bioconductor.org/packages/phenoTest")
    (synopsis
     "Tools to test association between gene expression and phenotype in a way that is efficient, structured, fast and scalable. We also provide tools to do GSEA (Gene set enrichment analysis) and copy number variation")
    (description
     "This package provides tools to test correlation between gene expression and
phenotype in a way that is efficient, structured, fast and scalable.  GSEA is
also provided.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-phenopath
  (package
    (name "r-phenopath")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phenopath" version))
       (sha256
        (base32 "114wpnsszivxjp5q0xr7vz4g249dhxzx9aqvcx3bky5s7vqf9q94"))))
    (properties `((upstream-name . "phenopath")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-rcpp
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/phenopath")
    (synopsis
     "Genomic trajectories with heterogeneous genetic and environmental backgrounds")
    (description
     "@code{PhenoPath} infers genomic trajectories (pseudotimes) in the presence of
heterogeneous genetic and environmental backgrounds and tests for interactions
between them.")
    (license license:asl2.0)))

(define-public r-phenomis
  (package
    (name "r-phenomis")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phenomis" version))
       (sha256
        (base32 "1zfrw4s01l030i4kpn07kw4gg9324s8aikkvv0pqm1jlv1ajj01g"))))
    (properties `((upstream-name . "phenomis")))
    (build-system r-build-system)
    (propagated-inputs (list r-venndiagram
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-ropls
                             r-rcolorbrewer
                             r-ranger
                             r-pmcmrplus
                             r-plotly
                             r-multidataset
                             r-multiassayexperiment
                             r-limma
                             r-igraph
                             r-htmlwidgets
                             r-ggrepel
                             r-ggplot2
                             r-futile-logger
                             r-data-table
                             r-biodbchebi
                             r-biodb
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1038/s41597-021-01095-3")
    (synopsis "Postprocessing and univariate analysis of omics data")
    (description
     "The phenomis package provides methods to perform post-processing (i.e.  quality
control and normalization) as well as univariate statistical analysis of single
and multi-omics data sets.  These methods include quality control metrics,
signal drift and batch effect correction, intensity transformation, univariate
hypothesis testing, but also clustering (as well as annotation of metabolomics
data).  The data are handled in the standard Bioconductor formats (i.e.
@code{SummarizedExperiment} and @code{MultiAssayExperiment} for single and
multi-omics datasets, respectively; the alternative @code{ExpressionSet} and
@code{MultiDataSet} formats are also supported for convenience).  As a result,
all methods can be readily chained as workflows.  The pipeline can be further
enriched by multivariate analysis and feature selection, by using the ropls and
biosigner packages, which support the same formats.  Data can be conveniently
imported from and exported to text files.  Although the methods were initially
targeted to metabolomics data, most of the methods can be applied to other types
of omics data (e.g., transcriptomics, proteomics).")
    (license license:cecill)))

(define-public r-phenogeneranker
  (package
    (name "r-phenogeneranker")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PhenoGeneRanker" version))
       (sha256
        (base32 "1912cbyr3qwyn4mbr1zarzh1rr9n4birfdx8fq8swhc9pjdrbydv"))))
    (properties `((upstream-name . "PhenoGeneRanker")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-igraph r-foreach r-dplyr r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PhenoGeneRanker")
    (synopsis "PhenoGeneRanker: A gene and phenotype prioritization tool")
    (description
     "This package is a gene/phenotype prioritization tool that utilizes multiplex
heterogeneous gene phenotype network. @code{PhenoGeneRanker} allows multi-layer
gene and phenotype networks.  It also calculates empirical p-values of
gene/phenotype ranking using random stratified sampling of genes/phenotypes
based on their connectivity degree in the network.
https://dl.acm.org/doi/10.1145/3307339.3342155.")
    (license (license:fsdg-compatible
              "Creative Commons Attribution 4.0 International License"))))

(define-public r-phemd
  (package
    (name "r-phemd")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phemd" version))
       (sha256
        (base32 "174jp26insq2mwf9yw9bls4i9b2a8vccfkrg2h1dzvyyk513bi83"))))
    (properties `((upstream-name . "phemd")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-transport
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-scatterplot3d
                             r-s4vectors
                             r-rtsne
                             r-reticulate
                             r-rcolorbrewer
                             r-rann
                             r-pracma
                             r-pheatmap
                             r-phater
                             r-monocle
                             r-maptree
                             r-igraph
                             r-ggplot2
                             r-destiny
                             r-cowplot
                             r-cluster
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/phemd")
    (synopsis "Phenotypic EMD for comparison of single-cell samples")
    (description
     "Package for comparing and generating a low-dimensional embedding of multiple
single-cell samples.")
    (license license:gpl2)))

(define-public r-pharmacogx
  (package
    (name "r-pharmacogx")
    (version "3.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PharmacoGx" version))
       (sha256
        (base32 "1nhv8rncjmbg21pc14n8crjknwdjf53yfmj4sk970qp6pryqs75p"))))
    (properties `((upstream-name . "PharmacoGx")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-reshape2
                             r-rcpp
                             r-rcolorbrewer
                             r-multiassayexperiment
                             r-magicaxis
                             r-jsonlite
                             r-ggplot2
                             r-downloader
                             r-data-table
                             r-coregx
                             r-coop
                             r-checkmate
                             r-catools
                             r-boot
                             r-biocparallel
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PharmacoGx")
    (synopsis "Analysis of Large-Scale Pharmacogenomic Data")
    (description
     "This package contains a set of functions to perform large-scale analysis of
pharmaco-genomic data.  These include the @code{PharmacoSet} object for storing
the results of pharmacogenomic experiments, as well as a number of functions for
computing common summaries of drug-dose response and correlating them with the
molecular features in a cancer cell-line.")
    (license license:gpl3+)))

(define-public r-phantasuslite
  (package
    (name "r-phantasuslite")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phantasusLite" version))
       (sha256
        (base32 "0pq50l0lnx3b8v95k37cj7dcm60ggar0zs6j4qv3qpjd37aqqbwa"))))
    (properties `((upstream-name . "phantasusLite")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rhdf5client r-httr r-data-table
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ctlab/phantasusLite/")
    (synopsis "Loading and annotation RNA-Seq counts matrices")
    (description
     "@code{PhantasusLite} – a lightweight package with helper functions of general
interest extracted from phantasus package.  In parituclar it simplifies working
with public RNA-seq datasets from GEO by providing access to the remote HSDS
repository with the precomputed gene counts from ARCHS4 and DEE2 projects.")
    (license license:expat)))

(define-public r-phantasus
  (package
    (name "r-phantasus")
    (version "1.22.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "phantasus" version))
       (sha256
        (base32 "1ynwx1bbzj1xm6hci4kxqgmzargarg85saqz1219axj1gsyhljfn"))))
    (properties `((upstream-name . "phantasus")))
    (build-system r-build-system)
    (propagated-inputs (list r-svglite
                             r-stringr
                             r-scales
                             r-rook
                             r-rhdf5
                             r-protolite
                             r-pheatmap
                             r-opencpu
                             r-matrix
                             r-limma
                             r-jsonlite
                             r-httr
                             r-httpuv
                             r-htmltools
                             r-gtable
                             r-ggplot2
                             r-geoquery
                             r-fgsea
                             r-edger
                             r-deseq2
                             r-data-table
                             r-curl
                             r-ccapp
                             r-biobase
                             r-assertthat
                             r-annotationdbi))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://genome.ifmo.ru/phantasus")
    (synopsis "Visual and interactive gene expression analysis")
    (description
     "Phantasus is a web-application for visual and interactive gene expression
analysis.  Phantasus is based on Morpheus – a web-based software for heatmap
visualisation and analysis, which was integrated with an R environment via
@code{OpenCPU} API. Aside from basic visualization and filtering methods,
R-based methods such as k-means clustering, principal component analysis or
differential expression analysis with limma package are supported.")
    (license license:expat)))

(define-public r-pgca
  (package
    (name "r-pgca")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pgca" version))
       (sha256
        (base32 "0sp0rhrs36hhyydswi00321cw13m4hcyf6a430wc4xsmia29463s"))))
    (properties `((upstream-name . "pgca")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pgca")
    (synopsis
     "PGCA: An Algorithm to Link Protein Groups Created from MS/MS Data")
    (description
     "Protein Group Code Algorithm (PGCA) is a computationally inexpensive algorithm
to merge protein summaries from multiple experimental quantitative proteomics
data.  The algorithm connects two or more groups with overlapping accession
numbers.  In some cases, pairwise groups are mutually exclusive but they may
still be connected by another group (or set of groups) with overlapping
accession numbers.  Thus, groups created by PGCA from multiple experimental runs
(i.e., global groups) are called \"connected\" groups.  These identified global
protein groups enable the analysis of quantitative data available for protein
groups instead of unique protein identifiers.")
    (license license:gpl2+)))

(define-public r-periodicdna
  (package
    (name "r-periodicdna")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "periodicDNA" version))
       (sha256
        (base32 "08qf0sqy71cr2y9xj596igm4j7zym9ny5q6xd67jrp5iqwysyfzq"))))
    (properties `((upstream-name . "periodicDNA")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-s4vectors
                             r-rtracklayer
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-cowplot
                             r-bsgenome
                             r-biostrings
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/periodicDNA")
    (synopsis
     "Set of tools to identify periodic occurrences of k-mers in DNA sequences")
    (description
     "This R package helps the user identify k-mers (e.g. di- or tri-nucleotides)
present periodically in a set of genomic loci (typically regulatory elements).
The functions of this package provide a straightforward approach to find
periodic occurrences of k-mers in DNA sequences, such as regulatory elements.
It is not aimed at identifying motifs separated by a conserved distance; for
this type of analysis, please visit MEME website.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-pepxmltab
  (package
    (name "r-pepxmltab")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pepXMLTab" version))
       (sha256
        (base32 "1d0n27xfyqdxayc9s1w5j2pj7x82kwh80kszr46f30yhfd61l6j4"))))
    (properties `((upstream-name . "pepXMLTab")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml))
    (home-page "https://bioconductor.org/packages/pepXMLTab")
    (synopsis "Parsing pepXML files and filter based on peptide FDR")
    (description
     "Parsing @code{pepXML} files based one XML package.  The package tries to handle
@code{pepXML} files generated from different softwares.  The output will be a
peptide-spectrum-matching tabular file.  The package also provide function to
filter the PSMs based on FDR.")
    (license license:artistic2.0)))

(define-public r-pepstat
  (package
    (name "r-pepstat")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pepStat" version))
       (sha256
        (base32 "0rd1zwjnp0zmigscx38xzys29jqpkkg9fp24asvqikm1v3gpli3l"))))
    (properties `((upstream-name . "pepStat")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr
                             r-limma
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-fields
                             r-data-table
                             r-biobase))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/RGLab/pepStat")
    (synopsis "Statistical analysis of peptide microarrays")
    (description "Statistical analysis of peptide microarrays")
    (license license:artistic2.0)))

(define-public r-pengls
  (package
    (name "r-pengls")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pengls" version))
       (sha256
        (base32 "1b5xibq5z4lq6qr4s37r9w5ax2vci89a1hfi66l4xvbpm76zlckh"))))
    (properties `((upstream-name . "pengls")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-glmnet r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pengls")
    (synopsis "Fit Penalised Generalised Least Squares models")
    (description
     "Combine generalised least squares methodology from the nlme package for dealing
with autocorrelation with penalised least squares methods from the glmnet
package to deal with high dimensionality.  This pengls packages glues them
together through an iterative loop.  The resulting method is applicable to high
dimensional datasets that exhibit autocorrelation, such as spatial or temporal
data.")
    (license license:gpl2)))

(define-public r-peco
  (package
    (name "r-peco")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "peco" version))
       (sha256
        (base32 "0jhz9y6d9sfc6azw74rx5lcf421a3i9pb936rghlym8n24b72jvl"))))
    (properties `((upstream-name . "peco")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-scater
                             r-genlasso
                             r-foreach
                             r-doparallel
                             r-conicfit
                             r-circular
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jhsiao999/peco")
    (synopsis
     "Supervised Approach for **P**r**e**dicting **c**ell Cycle Pr**o**gression using scRNA-seq data")
    (description
     "Our approach provides a way to assign continuous cell cycle phase using
@code{scRNA-seq} data, and consequently, allows to identify cyclic trend of gene
expression levels along the cell cycle.  This package provides method and
training data, which includes @code{scRNA-seq} data collected from 6 individual
cell lines of induced pluripotent stem cells (@code{iPSCs}), and also continuous
cell cycle phase derived from FUCCI fluorescence imaging data.")
    (license license:gpl3+)))

(define-public r-peca
  (package
    (name "r-peca")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PECA" version))
       (sha256
        (base32 "05znla8cngj9k7yfx3k9wqcyrbp05f0dpddjvncgcnazp5jvq1g8"))))
    (properties `((upstream-name . "PECA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rots
                             r-preprocesscore
                             r-limma
                             r-genefilter
                             r-aroma-core
                             r-aroma-affymetrix
                             r-affy))
    (home-page "https://bioconductor.org/packages/PECA")
    (synopsis "Probe-level Expression Change Averaging")
    (description
     "Calculates Probe-level Expression Change Averages (PECA) to identify
differential expression in Affymetrix gene expression microarray studies or in
proteomic studies using peptide-level mesurements respectively.")
    (license license:gpl2+)))

(define-public r-peakpanther
  (package
    (name "r-peakpanther")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "peakPantheR" version))
       (sha256
        (base32 "01x6701ji451yj52yiqx8fpz23zd96ci8p07j2kdi4nz6cl7k2d3"))))
    (properties `((upstream-name . "peakPantheR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-stringr
                             r-shinycssloaders
                             r-shiny
                             r-scales
                             r-pracma
                             r-mzr
                             r-msnbase
                             r-minpack-lm
                             r-lubridate
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-dt
                             r-doparallel
                             r-bslib))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/phenomecentre/peakPantheR")
    (synopsis "Peak Picking and Annotation of High Resolution Experiments")
    (description
     "An automated pipeline for the detection, integration and reporting of predefined
features across a large number of mass spectrometry data files.  It enables the
real time annotation of multiple compounds in a single file, or the parallel
annotation of multiple compounds in multiple files.  A graphical user interface
as well as command line functions will assist in assessing the quality of
annotation and update fitting parameters until a satisfactory result is
obtained.")
    (license license:gpl3)))

(define-public r-peacoqc
  (package
    (name "r-peacoqc")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PeacoQC" version))
       (sha256
        (base32 "1108ni9lypy2p5xpv0zd68vaxnjz7sdpdi4vhpa1df1jwn91g6qw"))))
    (properties `((upstream-name . "PeacoQC")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr
                             r-gridextra
                             r-ggplot2
                             r-flowworkspace
                             r-flowcore
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/saeyslab/PeacoQC")
    (synopsis "Peak-based selection of high quality cytometry data")
    (description
     "This is a package that includes pre-processing and quality control functions
that can remove margin events, compensate and transform the data and that will
use @code{PeacoQCSignalStability} for quality control.  This last function will
first detect peaks in each channel of the flowframe.  It will remove anomalies
based on the @code{IsolationTree} function and the MAD outlier detection method.
 This package can be used for both flow- and mass cytometry data.")
    (license license:gpl3+)))

(define-public r-pdinfobuilder
  (package
    (name "r-pdinfobuilder")
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pdInfoBuilder" version))
       (sha256
        (base32 "1bcmd6g6qmddcxyafqmrk4zv8n14mjkim87ks8ha3rjyg5cpc9cs"))))
    (properties `((upstream-name . "pdInfoBuilder")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-oligoclasses
                             r-oligo
                             r-iranges
                             r-dbi
                             r-biostrings
                             r-biocgenerics
                             r-biobase
                             r-affxparser))
    (home-page "https://bioconductor.org/packages/pdInfoBuilder")
    (synopsis "Platform Design Information Package Builder")
    (description
     "Builds platform design information packages.  These consist of a SQLite database
containing feature-level data such as x, y position on chip and
@code{featureSet} ID. The database also incorporates @code{featureSet-level}
annotation data.  The products of this packages are used by the oligo pkg.")
    (license license:artistic2.0)))

(define-public r-pdatk
  (package
    (name "r-pdatk")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PDATK" version))
       (sha256
        (base32 "0jxah3jwwpkzp50gyc1200ndmwvn5s59pvv1c3xcnr8d8wyvsb5a"))))
    (properties `((upstream-name . "PDATK")))
    (build-system r-build-system)
    (propagated-inputs (list r-verification
                             r-switchbox
                             r-survminer
                             r-survival
                             r-survcomp
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-reportroc
                             r-rcolorbrewer
                             r-proc
                             r-plyr
                             r-piano
                             r-multiassayexperiment
                             r-matrixstats
                             r-matrixgenerics
                             r-igraph
                             r-ggplotify
                             r-ggplot2
                             r-genefu
                             r-dplyr
                             r-data-table
                             r-coregx
                             r-consensusclusterplus
                             r-clusterrepro
                             r-caret
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PDATK")
    (synopsis "Pancreatic Ductal Adenocarcinoma Tool-Kit")
    (description
     "Pancreatic ductal adenocarcinoma (PDA) has a relatively poor prognosis and is
one of the most lethal cancers.  Molecular classification of gene expression
profiles holds the potential to identify meaningful subtypes which can inform
therapeutic strategy in the clinical setting.  The Pancreatic Cancer
Adenocarcinoma Tool-Kit (PDATK) provides an S4 class-based interface for
performing unsupervised subtype discovery, cross-cohort meta-clustering,
gene-expression-based classification, and subsequent survival analysis to
identify prognostically useful subtypes in pancreatic cancer and beyond.  Two
novel methods, Consensus Subtypes in Pancreatic Cancer (CSPC) and Pancreatic
Cancer Overall Survival Predictor (PCOSP) are included for consensus-based
meta-clustering and overall-survival prediction, respectively.  Additionally,
four published subtype classifiers and three published prognostic gene
signatures are included to allow users to easily recreate published results,
apply existing classifiers to new data, and benchmark the relative performance
of new methods.  The use of existing Bioconductor classes as input to all PDATK
classes and methods enables integration with existing Bioconductor datasets,
including the 21 pancreatic cancer patient cohorts available in the
@code{MetaGxPancreas} data package.  PDATK has been used to replicate results
from Sandhu et al (2019) [https://doi.org/10.1200/cci.18.00102] and an
additional paper is in the works using CSPC to validate subtypes from the
included published classifiers, both of which use the data available in
@code{MetaGxPancreas}.  The inclusion of subtype centroids and prognostic gene
signatures from these and other publications will enable researchers and
clinicians to classify novel patient gene expression data, allowing the direct
clinical application of the classifiers included in PDATK. Overall, PDATK
provides a rich set of tools to identify and validate useful prognostic and
molecular subtypes based on gene-expression data, benchmark new classifiers
against existing ones, and apply discovered classifiers on novel patient data to
inform clinical decision making.")
    (license license:expat)))

(define-public r-pcxn
  (package
    (name "r-pcxn")
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pcxn" version))
       (sha256
        (base32 "1m8vs3bk7grc1mj4rh6vr50al0m1a79f6icbycfqfi1cqgz9pmi7"))))
    (properties `((upstream-name . "pcxn")))
    (build-system r-build-system)
    (propagated-inputs (list r-pheatmap))
    (home-page "https://bioconductor.org/packages/pcxn")
    (synopsis
     "Exploring, analyzing and visualizing functions utilizing the pcxnData package")
    (description
     "Discover the correlated pathways/gene sets of a single pathway/gene set or
discover correlation relationships among multiple pathways/gene sets.  Draw a
heatmap or create a network of your query and extract members of each
pathway/gene set found in the available collections (M@code{SigDB} H hallmark,
M@code{SigDB} C2 Canonical pathways, M@code{SigDB} C5 GO BP and Pathprint).")
    (license license:expat)))

(define-public r-pcan
  (package
    (name "r-pcan")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PCAN" version))
       (sha256
        (base32 "0hsxy2xny0ds712dniw8szlnnn9cpxn23hdzxashn5qh688xjwyk"))))
    (properties `((upstream-name . "PCAN")))
    (build-system r-build-system)
    (propagated-inputs (list r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PCAN")
    (synopsis "Phenotype Consensus ANalysis (PCAN)")
    (description
     "Phenotypes comparison based on a pathway consensus approach.  Assess the
relationship between candidate genes and a set of phenotypes based on additional
genes related to the candidate (e.g. Pathways or network neighbors).")
    (license (license:fsdg-compatible "CC BY-NC-ND 4.0"))))

(define-public r-paxtoolsr
  (package
    (name "r-paxtoolsr")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "paxtoolsr" version))
       (sha256
        (base32 "07rkyn3i6v98lkjz13la0x1g81zhnyyr44jdid5c2dydlfpchl7h"))))
    (properties `((upstream-name . "paxtoolsr")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-xml
                             r-rjson
                             r-rjava
                             r-readr
                             r-rappdirs
                             r-r-utils
                             r-plyr
                             r-jsonlite
                             r-igraph
                             r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BioPAX/paxtoolsr")
    (synopsis
     "Access Pathways from Multiple Databases Through BioPAX and Pathway Commons")
    (description
     "The package provides a set of R functions for interacting with @code{BioPAX} OWL
files using Paxtools and the querying Pathway Commons (PC) molecular interaction
database.  Pathway Commons is a project by the Memorial Sloan-Kettering Cancer
Center (MSKCC), Dana-Farber Cancer Institute (DFCI), and the University of
Toronto.  Pathway Commons databases include: BIND, @code{BioGRID}, CORUM, CTD,
DIP, @code{DrugBank}, HPRD, @code{HumanCyc}, @code{IntAct}, KEGG,
@code{MirTarBase}, Panther, @code{PhosphoSitePlus}, Reactome, RECON, TRANSFAC.")
    (license license:lgpl3)))

(define-public r-pathwaypca
  (package
    (name "r-pathwaypca")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pathwayPCA" version))
       (sha256
        (base32 "14d0anbfwxd666gyhgnqjayr1ivhayq2a8cpgi0w1ycpsbylylp4"))))
    (properties `((upstream-name . "pathwayPCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-lars))
    (native-inputs (list r-knitr))
    (home-page "<https://gabrielodom.github.io/pathwayPCA/>")
    (synopsis
     "Integrative Pathway Analysis with Modern PCA Methodology and Gene Selection")
    (description
     "@code{pathwayPCA} is an integrative analysis tool that implements the principal
component analysis (PCA) based pathway analysis approaches described in Chen et
al. (2008), Chen et al. (2010), and Chen (2011). @code{pathwayPCA} allows users
to: (1) Test pathway association with binary, continuous, or survival
phenotypes. (2) Extract relevant genes in the pathways using the @code{SuperPCA}
and AES-PCA approaches. (3) Compute principal components (PCs) based on the
selected genes.  These estimated latent variables represent pathway activities
for individual subjects, which can then be used to perform integrative pathway
analysis, such as multi-omics analysis. (4) Extract relevant genes that drive
pathway significance as well as data corresponding to these relevant genes for
additional in-depth analysis. (5) Perform analyses with enhanced computational
efficiency with parallel computing and enhanced data safety with S4-class data
objects. (6) Analyze studies with complex experimental designs, with multiple
covariates, and with interaction effects, e.g., testing whether pathway
association with clinical phenotype is different between male and female
subjects.  Citations: Chen et al. (2008)
<https://doi.org/10.1093/bioinformatics/btn458>; Chen et al. (2010)
<https://doi.org/10.1002/gepi.20532>; and Chen (2011)
<https://doi.org/10.2202/1544-6115.1697>.")
    (license license:gpl3)))

(define-public r-pathrender
  (package
    (name "r-pathrender")
    (version "1.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pathRender" version))
       (sha256
        (base32 "04ij9f9vnzj4qzk8cgvrkd0jhjx4qh5g3cv25drd230v5x492lhz"))))
    (properties `((upstream-name . "pathRender")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgraphviz r-rcolorbrewer r-graph
                             r-annotationdbi))
    (home-page "http://www.bioconductor.org")
    (synopsis "Render molecular pathways")
    (description
     "build graphs from pathway databases, render them by Rgraphviz.")
    (license license:lgpl2.0+)))

(define-public r-pathostat
  (package
    (name "r-pathostat")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PathoStat" version))
       (sha256
        (base32 "16c54dkfv81rmfx2yrd0mi9ppv1kbqgvv6fi8y52cjzdk7rgpaxk"))))
    (properties `((upstream-name . "PathoStat")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-webshot
                             r-vegan
                             r-tidyr
                             r-shinyjs
                             r-shiny
                             r-scales
                             r-rocr
                             r-reshape2
                             r-rentrez
                             r-rcolorbrewer
                             r-plyr
                             r-plotly
                             r-phyloseq
                             r-matrixstats
                             r-limma
                             r-knitr
                             r-gmodels
                             r-glmnet
                             r-ggplot2
                             r-edger
                             r-dt
                             r-dplyr
                             r-devtools
                             r-deseq2
                             r-corpcor
                             r-complexheatmap
                             r-biocstyle
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mani2012/PathoStat")
    (synopsis "PathoStat Statistical Microbiome Analysis Package")
    (description
     "The purpose of this package is to perform Statistical Microbiome Analysis on
metagenomics results from sequencing data samples.  In particular, it supports
analyses on the @code{PathoScope} generated report files. @code{PathoStat}
provides various functionalities including Relative Abundance charts, Diversity
estimates and plots, tests of Differential Abundance, Time Series visualization,
and Core OTU analysis.")
    (license license:gpl2+)))

(define-public r-pathnet
  (package
    (name "r-pathnet")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PathNet" version))
       (sha256
        (base32 "1ivyr2f19dqzis1l6r1d695i20ymwq4ldgszbkraxbj1vzk51fpw"))))
    (properties `((upstream-name . "PathNet")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/PathNet")
    (synopsis
     "An R package for pathway analysis using topological information")
    (description
     "@code{PathNet} uses topological information present in pathways and differential
expression levels of genes (obtained from microarray experiment) to identify
pathways that are 1) significantly enriched and 2) associated with each other in
the context of differential expression.  The algorithm is described in:
@code{PathNet}: A tool for pathway analysis using topological information.
Dutta B, Wallqvist A, and Reifman J. Source Code for Biology and Medicine 2012
Sep 24;7(1):10.")
    (license license:gpl3)))

(define-public r-pathifier
  (package
    (name "r-pathifier")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pathifier" version))
       (sha256
        (base32 "0y5hc1d5026kh3i05qpsjigfzhlp4h2f87ny08qbf3k9x7lndpbn"))))
    (properties `((upstream-name . "pathifier")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-oo r-princurve))
    (home-page "https://bioconductor.org/packages/pathifier")
    (synopsis "Quantify deregulation of pathways in cancer")
    (description
     "Pathifier is an algorithm that infers pathway deregulation scores for each tumor
sample on the basis of expression data.  This score is determined, in a
context-specific manner, for every particular dataset and type of cancer that is
being investigated.  The algorithm transforms gene-level information into
pathway-level information, generating a compact and biologically relevant
representation of each sample.")
    (license (license:fsdg-compatible "Artistic-1.0"))))

(define-public r-path2ppi
  (package
    (name "r-path2ppi")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Path2PPI" version))
       (sha256
        (base32 "1pjm0p91ins34fnhwkay0jnjms5fjpfw990mz343vr8s6ab83m89"))))
    (properties `((upstream-name . "Path2PPI")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (native-inputs (list r-knitr))
    (home-page "http://www.bioinformatik.uni-frankfurt.de/")
    (synopsis
     "Prediction of pathway-related protein-protein interaction networks")
    (description
     "Package to predict protein-protein interaction (PPI) networks in target
organisms for which only a view information about PPIs is available.  Path2PPI
predicts PPI networks based on sets of proteins which can belong to a certain
pathway from well-established model organisms.  It helps to combine and transfer
information of a certain pathway or biological process from several reference
organisms to one target organism.  Path2PPI only depends on the sequence
similarity of the involved proteins.")
    (license license:gpl2+)))

(define-public r-past
  (package
    (name "r-past")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PAST" version))
       (sha256
        (base32 "11vbgj1961ml6jvynsap6rybirijjs125v9m15knvirb8l7fa265"))))
    (properties `((upstream-name . "PAST")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-qvalue
                             r-iterators
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/IGBB/past")
    (synopsis "Pathway Association Study Tool (PAST)")
    (description
     "PAST takes GWAS output and assigns SNPs to genes, uses those genes to find
pathways associated with the genes, and plots pathways based on significance.
Implements methods for reading GWAS input data, finding genes associated with
SNPs, calculating enrichment score and significance of pathways, and plotting
pathways.")
    (license (license:fsdg-compatible "GPL (>=3) + file LICENSE"))))

(define-public r-partcnv
  (package
    (name "r-partcnv")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "partCNV" version))
       (sha256
        (base32 "15caglc8xs4441va2p8bd2pbz4jvlczy4hjnky7i280zzrjqx52a"))))
    (properties `((upstream-name . "partCNV")))
    (build-system r-build-system)
    (propagated-inputs (list r-singlecellexperiment
                             r-seurat
                             r-magrittr
                             r-genomicranges
                             r-depmixs4
                             r-data-table
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/partCNV")
    (synopsis "Infer locally aneuploid cells using single cell RNA-seq data")
    (description
     "This package uses a statistical framework for rapid and accurate detection of
aneuploid cells with local copy number deletion or amplification.  Our method
uses an EM algorithm with mixtures of Poisson distributions while incorporating
cytogenetics information (e.g., regional deletion or amplification) to guide the
classification (@code{partCNV}).  When applicable, we further improve the
accuracy by integrating a Hidden Markov Model for feature selection
(@code{partCNVH}).")
    (license license:gpl2)))

(define-public r-parglms
  (package
    (name "r-parglms")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "parglms" version))
       (sha256
        (base32 "05mrnddprcwl0m701fn2h1higy47yi2fmwwzd3zq1nr2qsacnpn1"))))
    (properties `((upstream-name . "parglms")))
    (build-system r-build-system)
    (propagated-inputs (list r-foreach r-doparallel r-biocgenerics r-batchjobs))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/parglms")
    (synopsis "support for parallelized estimation of GLMs/GEEs")
    (description
     "This package provides support for parallelized estimation of GLMs/GEEs, catering
for dispersed data.")
    (license license:artistic2.0)))

(define-public r-pareg
  (package
    (name "r-pareg")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pareg" version))
       (sha256
        (base32 "0cvj8jx80q3d21icy9k88kc6xcb44fxmpq4sqdijglrjl7l1l2pn"))))
    (properties `((upstream-name . "pareg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidygraph
                             r-tibble
                             r-tfprobability
                             r-tensorflow
                             r-stringr
                             r-rlang
                             r-reticulate
                             r-purrr
                             r-proxy
                             r-progress
                             r-nloptr
                             r-matrix
                             r-magrittr
                             r-logger
                             r-keras
                             r-igraph
                             r-hms
                             r-glue
                             r-ggrepel
                             r-ggraph
                             r-ggplot2
                             r-future
                             r-foreach
                             r-dplyr
                             r-dose
                             r-dorng
                             r-dofuture
                             r-devtools
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cbg-ethz/pareg")
    (synopsis "Pathway enrichment using a regularized regression approach")
    (description
     "Compute pathway enrichment scores while accounting for term-term relations.
This package uses a regularized multiple linear regression to regress
differential expression p-values obtained from multi-condition experiments on a
pathway membership matrix.  By doing so, it is able to incorporate additional
biological knowledge into the enrichment analysis and to estimate pathway
enrichment scores more robustly.")
    (license license:gpl3)))

(define-public r-panviz
  (package
    (name "r-panviz")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PanViz" version))
       (sha256
        (base32 "19aj5d9dhhzyylr2rlxq52ss82h5rvkc816661j45qcrcbm62ld0"))))
    (properties `((upstream-name . "PanViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rentrez
                             r-rcolorbrewer
                             r-magrittr
                             r-igraph
                             r-futile-logger
                             r-easycsv
                             r-dplyr
                             r-data-table
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LucaAnholt/PanViz")
    (synopsis
     "Integrating Multi-Omic Network Data With Summay-Level GWAS Data")
    (description
     "This pacakge integrates data from the Kyoto Encyclopedia of Genes and Genomes
(KEGG) with summary-level genome-wide association (GWAS) data, such as that
provided by the GWAS Catalog or GWAS Central databases, or a user's own study or
dataset, in order to produce biological networks, termed IMONs (Integrated
Multi-Omic Networks).  IMONs can be used to analyse trait-specific polymorphic
data within the context of biochemical and metabolic reaction networks,
providing greater biological interpretability for GWAS data.")
    (license license:artistic2.0)))

(define-public r-panr
  (package
    (name "r-panr")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PANR" version))
       (sha256
        (base32 "0w7x8lldarjgl7a0pbkyphrhkv18ngcc1psx1j1v20c8bxdidbws"))))
    (properties `((upstream-name . "PANR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reder r-pvclust r-mass r-igraph))
    (home-page "https://bioconductor.org/packages/PANR")
    (synopsis
     "Posterior association networks and functional modules inferred from rich phenotypes of gene perturbations")
    (description
     "This package provides S4 classes and methods for inferring functional gene
networks with edges encoding posterior beliefs of gene association types and
nodes encoding perturbation effects.")
    (license license:artistic2.0)))

(define-public r-panp
  (package
    (name "r-panp")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "panp" version))
       (sha256
        (base32 "1s069hlvbxgi37bx3h7bj8k5a94b0ndkvzjp2j5fji8y72f0sfzj"))))
    (properties `((upstream-name . "panp")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/panp")
    (synopsis "Presence-Absence Calls from Negative Strand Matching Probesets")
    (description
     "This package provides a function to make gene presence/absence calls based on
distance from negative strand matching probesets (NSMP) which are derived from
Affymetrix annotation.  PANP is applied after gene expression values are
created, and therefore can be used after any preprocessing method such as MAS5
or GCRMA, or PM-only methods like RMA. NSMP sets have been established for the
HGU133A and HGU133-Plus-2.0 chipsets to date.")
    (license license:gpl2+)))

(define-public r-panomir
  (package
    (name "r-panomir")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PanomiR" version))
       (sha256
        (base32 "0xbmqm61gfqk25mq97bb5bsda329jpn89k7dnm4qqjb35plswg38"))))
    (properties `((upstream-name . "PanomiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tibble
                             r-rlang
                             r-rcolorbrewer
                             r-preprocesscore
                             r-org-hs-eg-db
                             r-metap
                             r-limma
                             r-igraph
                             r-gseabase
                             r-forcats
                             r-dplyr
                             r-clusterprofiler))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pouryany/PanomiR")
    (synopsis
     "Detection of miRNAs that regulate interacting groups of pathways")
    (description
     "@code{PanomiR} is a package to detect @code{miRNAs} that target groups of
pathways from gene expression data.  This package provides functionality for
generating pathway activity profiles, determining differentially activated
pathways between user-specified conditions, determining clusters of pathways via
the P@code{CxN} package, and generating @code{miRNAs} targeting clusters of
pathways.  These function can be used separately or sequentially to analyze
RNA-Seq data.")
    (license license:expat)))

(define-public r-panelcn-mops
  (package
    (name "r-panelcn-mops")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "panelcn.mops" version))
       (sha256
        (base32 "1b86bgnb0cr20ymp3zx75c178p7bjvfid6k43ip3cm7vzx86f1cv"))))
    (properties `((upstream-name . "panelcn.mops")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-cn-mops))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/panelcn.mops")
    (synopsis "CNV detection tool for targeted NGS panel data")
    (description
     "CNV detection tool for targeted NGS panel data.  Extension of the cn.mops
package.")
    (license license:lgpl2.0+)))

(define-public r-pandar
  (package
    (name "r-pandar")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pandaR" version))
       (sha256
        (base32 "1562dv98hrh61n8p48779cr1824qy2jjnqgv4pmpxbnihmk3mrnw"))))
    (properties `((upstream-name . "pandaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-runit
                             r-reshape
                             r-plyr
                             r-matrixstats
                             r-igraph
                             r-hexbin
                             r-ggplot2
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pandaR")
    (synopsis "PANDA Algorithm")
    (description
     "Runs PANDA, an algorithm for discovering novel network structure by combining
information from multiple complementary data sources.")
    (license license:gpl2)))

(define-public r-pairkat
  (package
    (name "r-pairkat")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pairkat" version))
       (sha256
        (base32 "14vad3fd9588yqh1cc52p43kpp5avnw10zdff4gzwgpx9yars7xs"))))
    (properties `((upstream-name . "pairkat")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-magrittr
                             r-keggrest
                             r-igraph
                             r-data-table
                             r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/pairkat")
    (synopsis "PaIRKAT")
    (description
     "@code{PaIRKAT} is model framework for assessing statistical relationships
between networks of metabolites (pathways) and an outcome of interest
(phenotype). @code{PaIRKAT} queries the KEGG database to determine interactions
between metabolites from which network connectivity is constructed.  This model
framework improves testing power on high dimensional data by including graph
topography in the kernel machine regression setting.  Studies on high
dimensional data can struggle to include the complex relationships between
variables.  The semi-parametric kernel machine regression model is a powerful
tool for capturing these types of relationships.  They provide a framework for
testing for relationships between outcomes of interest and high dimensional data
such as metabolomic, genomic, or proteomic pathways. @code{PaIRKAT} uses known
biological connections between high dimensional variables by representing them
as edges of ‘graphs’ or ‘networks.’ It is common for nodes (e.g. metabolites) to
be disconnected from all others within the graph, which leads to meaningful
decreases in testing power whether or not the graph information is included.  We
include a graph regularization or ‘smoothing’ approach for managing this issue.")
    (license license:gpl3)))

(define-public r-pairedgsea
  (package
    (name "r-pairedgsea")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pairedGSEA" version))
       (sha256
        (base32 "1lcp5ghbf6vabiy9661qrqn5nfl71ay64q7cf3iz9hhwip61xbdy"))))
    (properties `((upstream-name . "pairedGSEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-s4vectors
                             r-limma
                             r-ggplot2
                             r-fgsea
                             r-dexseq
                             r-deseq2
                             r-biocparallel
                             r-aggregation))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shdam/pairedGSEA")
    (synopsis "Paired DGE and DGS analysis for gene set enrichment analysis")
    (description
     "@code{pairedGSEA} makes it simple to run a paired Differential Gene Expression
(DGE) and Differencital Gene Splicing (DGS) analysis.  The package allows you to
store intermediate results for further investiation, if desired.
@code{pairedGSEA} comes with a wrapper function for running an
Over-Representation Analysis (ORA) and functionalities for plotting the results.")
    (license license:expat)))

(define-public r-paircompviz
  (package
    (name "r-paircompviz")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "paircompviz" version))
       (sha256
        (base32 "1wi93vii4k84fp5ygvmakdw9jhl4qbnwjhfnxi0p7mv4sxxivxb4"))))
    (properties `((upstream-name . "paircompviz")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgraphviz))
    (home-page "https://bioconductor.org/packages/paircompviz")
    (synopsis "Multiple comparison test visualization")
    (description
     "This package provides visualization of the results from the multiple (i.e.
pairwise) comparison tests such as pairwise.t.test, pairwise.prop.test or
pairwise.wilcox.test.  The groups being compared are visualized as nodes in
Hasse diagram.  Such approach enables very clear and vivid depiction of which
group is significantly greater than which others, especially if comparing a
large number of groups.")
    (license (license:fsdg-compatible "GPL (>=3.0)"))))

(define-public r-pairadise
  (package
    (name "r-pairadise")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PAIRADISE" version))
       (sha256
        (base32 "1z17cxvsvi7lapbrqglsl126djlsqp4bwfagvhpi8hrpg85fqppr"))))
    (properties `((upstream-name . "PAIRADISE")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-s4vectors r-nloptr
                             r-biocparallel r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/PAIRADISE")
    (synopsis "PAIRADISE: Paired analysis of differential isoform expression")
    (description
     "This package implements the PAIRADISE procedure for detecting differential
isoform expression between matched replicates in paired RNA-Seq data.")
    (license license:expat)))

(define-public r-pagerank
  (package
    (name "r-pagerank")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "pageRank" version))
       (sha256
        (base32 "0qvcbcil6kvfvk460lzpj43h0vw2mqc967c3kfnycylwxdcgkqd1"))))
    (properties `((upstream-name . "pageRank")))
    (build-system r-build-system)
    (propagated-inputs (list r-motifmatchr r-igraph r-genomicranges))
    (home-page "https://github.com/hd2326/pageRank")
    (synopsis
     "Temporal and Multiplex PageRank for Gene Regulatory Network Analysis")
    (description
     "Implemented temporal @code{PageRank} analysis as defined by Rozenshtein and
Gionis.  Implemented multiplex @code{PageRank} as defined by Halu et al.
Applied temporal and multiplex @code{PageRank} in gene regulatory network
analysis.")
    (license license:gpl2)))

(define-public r-padog
  (package
    (name "r-padog")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PADOG" version))
       (sha256
        (base32 "0yyca2k5fml0gc69i3fa67f7avkb7md0ylb0rvnhmf4srgb7ca67"))))
    (properties `((upstream-name . "PADOG")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme
                             r-limma
                             r-keggrest
                             r-hgu133plus2-db
                             r-gsa
                             r-foreach
                             r-dorng
                             r-biobase
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/PADOG")
    (synopsis
     "Pathway Analysis with Down-weighting of Overlapping Genes (PADOG)")
    (description
     "This package implements a general purpose gene set analysis method called PADOG
that downplays the importance of genes that apear often accross the sets of
genes to be analyzed.  The package provides also a benchmark for gene set
analysis methods in terms of sensitivity and ranking using 24 public datasets
from KEG@code{GdzPathwaysGEO} package.")
    (license license:gpl2+)))

(define-public r-padma
  (package
    (name "r-padma")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "padma" version))
       (sha256
        (base32 "03b6zaas11i9aywlrpdhv6sv0cv6347yrw24hfpj8fym14sj67xd"))))
    (properties `((upstream-name . "padma")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-s4vectors
                             r-multiassayexperiment r-factominer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/andreamrau/padma")
    (synopsis
     "Individualized Multi-Omic Pathway Deviation Scores Using Multiple Factor Analysis")
    (description
     "Use multiple factor analysis to calculate individualized pathway-centric scores
of deviation with respect to the sampled population based on multi-omic assays
(e.g., RNA-seq, copy number alterations, methylation, etc).  Graphical and
numerical outputs are provided to identify highly aberrant individuals for a
particular pathway of interest, as well as the gene and omics drivers of
aberrant multi-omic profiles.")
    (license license:gpl3+)))

(define-public r-packfinder
  (package
    (name "r-packfinder")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "packFinder" version))
       (sha256
        (base32 "1s3sqwhzf7ll8kp5wg2riv3yxwbrssh9qpyjis83n3a19qi64jz6"))))
    (properties `((upstream-name . "packFinder")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-kmer
                             r-iranges
                             r-genomicranges
                             r-biostrings
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jackgisby/packFinder")
    (synopsis "de novo Annotation of Pack-TYPE Transposable Elements")
    (description
     "Algorithm and tools for in silico pack-TYPE transposon discovery.  Filters a
given genome for properties unique to DNA transposons and provides tools for the
investigation of returned matches.  Sequences are input in DNAString format, and
ranges are returned as a dataframe (in the format returned by
as.dataframe(GRanges)).")
    (license license:gpl2)))

(define-public r-paa
  (package
    (name "r-paa")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "PAA" version))
       (sha256
        (base32 "0jfvkgpw60p8p1lmlkzrv4iv8fshpn74q1v8crsm098gz1x0n052"))))
    (properties `((upstream-name . "PAA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva
                             r-rocr
                             r-rcpp
                             r-randomforest
                             r-mrmre
                             r-mass
                             r-limma
                             r-gtools
                             r-gplots
                             r-e1071))
    (home-page "http://www.ruhr-uni-bochum.de/mpc/software/PAA/")
    (synopsis "PAA (Protein Array Analyzer)")
    (description
     "PAA imports single color (protein) microarray data that has been saved in gpr
file format - esp. @code{ProtoArray} data.  After preprocessing (background
correction, batch filtering, normalization) univariate feature preselection is
performed (e.g., using the \"minimum M statistic\" approach - hereinafter referred
to as \"@code{mMs}\").  Subsequently, a multivariate feature selection is
conducted to discover biomarker candidates.  Therefore, either a frequency-based
backwards elimination aproach or ensemble feature selection can be used.  PAA
provides a complete toolbox of analysis tools including several different plots
for results examination and evaluation.")
    (license license:bsd-3)))

