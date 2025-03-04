(define-module (guix-bioc packages a)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (guix-cran packages c)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages d)
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
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b))

(define-public r-autonomics
  (package
    (name "r-autonomics")
    (version "1.14.8")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "autonomics" version))
       (sha256
        (base32 "1wgzr20md0wlv5kiibg1jyvnpnhg94linlrfk7kcyg0grpw1hyfa"))))
    (properties `((upstream-name . "autonomics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vsn
                             r-tidyselect
                             r-tidyr
                             r-summarizedexperiment
                             r-stringi
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-readxl
                             r-rcolorbrewer
                             r-r-utils
                             r-multiassayexperiment
                             r-matrixstats
                             r-magrittr
                             r-limma
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-edger
                             r-dplyr
                             r-data-table
                             r-colorspace
                             r-codingmatrices
                             r-cluster
                             r-bit64
                             r-biocgenerics
                             r-biocfilecache
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/autonomics")
    (synopsis "Unified Statistical Modeling of Omics Data")
    (description
     "This package unifies access to Statistal Modeling of Omics Data.  Across linear
modeling engines (lm, lme, lmer, limma, and wilcoxon).  Across coding systems
(treatment, difference, deviation, etc).  Across model formulae (with/without
intercept, random effect, interaction or nesting).  Across omics platforms
(microarray, rnaseq, msproteomics, affinity proteomics, metabolomics).  Across
projection methods (pca, pls, sma, lda, spls, opls).  Across clustering methods
(hclust, pam, cmeans).  It provides a fast enrichment analysis implementation.
And an intuitive contrastogram visualisation to summarize contrast effects in
complex designs.")
    (license license:gpl3)))

(define-public r-ath1121501probe
  (package
    (name "r-ath1121501probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ath1121501probe" version
                              'annotation))
       (sha256
        (base32 "0a2nd8zhp3ybis780l3rrmwcxskbl3a111g8w6m8qfwsw5vnlqg1"))))
    (properties `((upstream-name . "ath1121501probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ath1121501probe")
    (synopsis "Probe sequence data for microarrays of type ath1121501")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was ATH1-121501\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-ath1121501frmavecs
  (package
    (name "r-ath1121501frmavecs")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ath1121501frmavecs" version
                              'annotation))
       (sha256
        (base32 "0y3ka95aafiyily188536azvfqrsr2mbljhc696d2wlkjczbxq5i"))))
    (properties `((upstream-name . "ath1121501frmavecs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ath1121501frmavecs")
    (synopsis "Vectors used by frma for microarrays of type ath1121501")
    (description
     "Annotation package for the implementation of the frozen Robust Multiarray
Analysis procedure for Arabidopsis thaliana.  This package was generated on the
basis of @code{frmaTools} version 1.52.0.")
    (license license:gpl2+)))

(define-public r-ath1121501cdf
  (package
    (name "r-ath1121501cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ath1121501cdf" version
                              'annotation))
       (sha256
        (base32 "1naq8f8dwgbmndx178nm2pw6hjx5ljx0w1wb4dfjifnl4bs5rqcc"))))
    (properties `((upstream-name . "ath1121501cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ath1121501cdf")
    (synopsis "ath1121501cdf")
    (description
     "This package provides a package containing an environment representing the
ATH1-121501.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-ath1121501-db
  (package
    (name "r-ath1121501-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ath1121501.db" version
                              'annotation))
       (sha256
        (base32 "0v4vapbns71dpv09857lyrnliq202i8yi4ar9z81wbpbc22lhf0d"))))
    (properties `((upstream-name . "ath1121501.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-at-tair-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ath1121501.db")
    (synopsis
     "Affymetrix Affymetrix ATH1-121501 Array annotation data (chip ath1121501)")
    (description
     "Affymetrix Affymetrix ATH1-121501 Array annotation data (chip ath1121501)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-atacseqtfea
  (package
    (name "r-atacseqtfea")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ATACseqTFEA" version))
       (sha256
        (base32 "08s06npspgggfg5vpw4iwmlx2ygbc19nwfp97pphc7lml0d3dhmb"))))
    (properties `((upstream-name . "ATACseqTFEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tfbstools
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-pracma
                             r-motifmatchr
                             r-matrix
                             r-limma
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-dplyr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jianhong/ATACseqTFEA")
    (synopsis "Transcription Factor Enrichment Analysis for ATAC-seq")
    (description
     "Assay for Transpose-Accessible Chromatin using sequencing (ATAC-seq) is a
technique to assess genome-wide chromatin accessibility by probing open
chromatin with hyperactive mutant Tn5 Transposase that inserts sequencing
adapters into open regions of the genome.  ATA@code{CseqTFEA} is an improvement
of the current computational method that detects differential activity of
transcription factors (TFs).  ATA@code{CseqTFEA} not only uses the difference of
open region information, but also (or emphasizes) the difference of TFs
footprints (cutting sites or insertion sites).  ATA@code{CseqTFEA} provides an
easy, rigorous way to broadly assess TF activity changes between two conditions.")
    (license license:gpl3)))

(define-public r-asurat
  (package
    (name "r-asurat")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ASURAT" version))
       (sha256
        (base32 "0dak5kx8fwmz9kx2a2r7dgzg5d8jhbf5qx6014p4g54lxns0zxj5"))))
    (properties `((upstream-name . "ASURAT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rcpp
                             r-plot3d
                             r-complexheatmap
                             r-cluster
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ASURAT")
    (synopsis
     "Functional annotation-driven unsupervised clustering for single-cell data")
    (description
     "ASURAT is a software for single-cell data analysis.  Using ASURAT, one can
simultaneously perform unsupervised clustering and biological interpretation in
terms of cell type, disease, biological process, and signaling pathway activity.
 Inputting a single-cell RNA-seq data and knowledge-based databases, such as
Cell Ontology, Gene Ontology, KEGG, etc., ASURAT transforms gene expression
tables into original multivariate tables, termed sign-by-sample matrices (SSMs).")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-assign
  (package
    (name "r-assign")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ASSIGN" version))
       (sha256
        (base32 "0avr3zn9nyamcdkr5b9qklcl9gzk36w9w7ky6qwhm7innqhmfapp"))))
    (properties `((upstream-name . "ASSIGN")))
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
    (propagated-inputs (list r-yaml
                             r-sva
                             r-rlab
                             r-msm
                             r-gplots
                             r-ggplot2))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://compbiomed.github.io/ASSIGN/")
    (synopsis "Adaptive Signature Selection and InteGratioN (ASSIGN)")
    (description
     "ASSIGN is a computational tool to evaluate the pathway deregulation/activation
status in individual patient samples.  ASSIGN employs a flexible Bayesian factor
analysis approach that adapts predetermined pathway signatures derived either
from knowledge-based literature or from perturbation experiments to the
cell-/tissue-specific pathway signatures.  The deregulation/activation level of
each context-specific pathway is quantified to a score, which represents the
extent to which a patient sample encompasses the pathway deregulation/activation
signature.")
    (license license:expat)))

(define-public r-asicsdata
  (package
    (name "r-asicsdata")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ASICSdata" version
                              'experiment))
       (sha256
        (base32 "1vhhvdpnayxf33mq50hdg9ypfpbvxlnjk1h4p73k462517dzxpn0"))))
    (properties `((upstream-name . "ASICSdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ASICSdata")
    (synopsis "Example of 1D NMR spectra data for ASICS package")
    (description
     "1D NMR example spectra and additional data for use with the ASICS package.  Raw
1D Bruker spectral data files were found in the @code{MetaboLights} database
(https://www.ebi.ac.uk/metabolights/, study MTBLS1).")
    (license license:gpl2+)))

(define-public r-ashkenazimsonchr21
  (package
    (name "r-ashkenazimsonchr21")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AshkenazimSonChr21" version
                              'experiment))
       (sha256
        (base32 "0chcr50wa1lwcl1y9sgp2759i6hlwbqald5x5l0y4dldjsqfsr3s"))))
    (properties `((upstream-name . "AshkenazimSonChr21")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AshkenazimSonChr21")
    (synopsis
     "Annotated variants on the chromosome 21, human genome 19, Ashkenazim Trio son sample")
    (description
     "@code{SonVariantsChr21} is a dataset of annotated genomic variants coming from
Complete Genomics whole genome sequencing.  Data comes from GIAB project,
Ashkenazim Trio, sample HG002 run 1.  Both vcf and annotated data frame are
provided.")
    (license license:artistic2.0)))

(define-public r-artms
  (package
    (name "r-artms")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "artMS" version))
       (sha256
        (base32 "0r13816m50qc1w840sd0hx014fgx8bm98kfqh5s0i3rp93fdjsw3"))))
    (properties `((upstream-name . "artMS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-venndiagram
                             r-upsetr
                             r-tidyr
                             r-stringr
                             r-seqinr
                             r-scales
                             r-rcolorbrewer
                             r-plyr
                             r-plotly
                             r-pheatmap
                             r-org-hs-eg-db
                             r-openxlsx
                             r-msstats
                             r-limma
                             r-gplots
                             r-ggrepel
                             r-ggplot2
                             r-ggdendro
                             r-getopt
                             r-dplyr
                             r-data-table
                             r-corrplot
                             r-cluster
                             r-circlize
                             r-bit64
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "http://artms.org")
    (synopsis "Analytical R tools for Mass Spectrometry")
    (description
     "@code{artMS} provides a set of tools for the analysis of proteomics label-free
datasets.  It takes as input the @code{MaxQuant} search result output
(evidence.txt file) and performs quality control, relative quantification using
MSstats, downstream analysis and integration. @code{artMS} also provides a set
of functions to re-format and make it compatible with other analytical tools,
including, SAINTq, SAINTexpress, Phosfate, and PHOTON. Check
[http://artms.org](http://artms.org) for details.")
    (license (license:fsdg-compatible "GPL (>= 3) + file LICENSE"))))

(define-public r-aracne-networks
  (package
    (name "r-aracne-networks")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "aracne.networks" version
                              'experiment))
       (sha256
        (base32 "10zp8nqb0xsxc5xbhlc3la34kcrk7f9m0yqrp45c3qaffzr63jki"))))
    (properties `((upstream-name . "aracne.networks")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viper))
    (home-page "https://bioconductor.org/packages/aracne.networks")
    (synopsis "ARACNe-inferred gene networks from TCGA tumor datasets")
    (description
     "This package contains ARACNe-inferred networks from TCGA tumor datasets.  It
also contains a function to export them into plain-text format.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-arabidopsis-db0
  (package
    (name "r-arabidopsis-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "arabidopsis.db0" version
                              'annotation))
       (sha256
        (base32 "15rcqa844plk5hg1pagry4ybhbcq41n3lccqprmvvlxw5xsrhkv4"))))
    (properties `((upstream-name . "arabidopsis.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/arabidopsis.db0")
    (synopsis "Base Level Annotation databases for arabidopsis")
    (description
     "Base annotation databases for arabidopsis, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-appreci8r
  (package
    (name "r-appreci8r")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "appreci8R" version))
       (sha256
        (base32 "1kd2ds216620hrzaxjdccc1skwal575n5zz6qqyyq1jh2vwggy7x"))))
    (properties `((upstream-name . "appreci8R")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtrasnplocs-hsapiens-dbsnp144-grch37
                             r-variantannotation
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-summarizedexperiment
                             r-stringr
                             r-snplocs-hsapiens-dbsnp144-grch37
                             r-sift-hsapiens-dbsnp137
                             r-shinyjs
                             r-shiny
                             r-seqinr
                             r-s4vectors
                             r-rsamtools
                             r-rentrez
                             r-polyphen-hsapiens-dbsnp131
                             r-openxlsx
                             r-mafdb-gnomadex-r2-1-hs37d5
                             r-mafdb-exac-r1-0-hs37d5
                             r-iranges
                             r-homo-sapiens
                             r-genomicscores
                             r-genomicranges
                             r-genomicfeatures
                             r-dt
                             r-cosmic-67
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bsgenome
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/appreci8R")
    (synopsis
     "appreci8R: an R/Bioconductor package for filtering SNVs and short indels with high sensitivity and high PPV")
    (description
     "The appreci8R is an R version of our appreci8-algorithm - A Pipeline for PREcise
variant Calling Integrating 8 tools.  Variant calling results of our standard
appreci8-tools (GATK, Platypus, @code{VarScan}, @code{FreeBayes}, @code{LoFreq},
SNVer, samtools and @code{VarDict}), as well as up to 5 additional tools is
combined, evaluated and filtered.")
    (license license:lgpl3)))

(define-public r-apl
  (package
    (name "r-apl")
    (version "1.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "APL" version))
       (sha256
        (base32 "0z3djj3sdr10i8virdp21fn7vv8jg99v6868234rvzkghyij3i68"))))
    (properties `((upstream-name . "APL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridislite
                             r-topgo
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seuratobject
                             r-rspectra
                             r-rlang
                             r-plotly
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-matrix
                             r-magrittr
                             r-ggrepel
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://vingronlab.github.io/APL/")
    (synopsis "Association Plots")
    (description
     "APL is a package developed for computation of Association Plots (AP), a method
for visualization and analysis of single cell transcriptomics data.  The main
focus of APL is the identification of genes characteristic for individual
clusters of cells from input data.  The package performs correspondence analysis
(CA) and allows to identify cluster-specific genes using Association Plots.
Additionally, APL computes the cluster-specificity scores for all genes which
allows to rank the genes by their specificity for a selected cell cluster of
interest.")
    (license license:gpl3+)))

(define-public r-apalyzer
  (package
    (name "r-apalyzer")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "APAlyzer" version))
       (sha256
        (base32 "06zalaf2lqw0ba3wa47mfdj4nidqs4i0arcqnpdrgdnjw1b679mv"))))
    (properties `((upstream-name . "APAlyzer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-tidyr
                             r-summarizedexperiment
                             r-rtracklayer
                             r-rsubread
                             r-rsamtools
                             r-repmis
                             r-hybridmtest
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-dplyr
                             r-deseq2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RJWANGbioinfo/APAlyzer/")
    (synopsis "toolkit for APA analysis using RNA-seq data")
    (description
     "Perform 3'UTR APA, Intronic APA and gene expression analysis using RNA-seq data.")
    (license license:lgpl3)))

(define-public r-anvilworkflow
  (package
    (name "r-anvilworkflow")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AnVILWorkflow" version))
       (sha256
        (base32 "0yix1ilxw3wz5x195bqj6n333kdqb4pqckpdar32sl28zx9ymhzr"))))
    (properties `((upstream-name . "AnVILWorkflow")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-plyr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-anvilgcp
                             r-anvilbase
                             r-anvil))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shbrief/AnVILWorkflow")
    (synopsis "Run workflows implemented in Terra/AnVIL workspace")
    (description
     "The @code{AnVIL} is a cloud computing resource developed in part by the National
Human Genome Research Institute.  The main cloud-based genomics platform
deported by the @code{AnVIL} project is Terra.  The @code{AnVILWorkflow} package
allows remote access to Terra implemented workflows, enabling end-user to
utilize Terra/ @code{AnVIL} provided resources - such as data, workflows, and
flexible/scalble computing resources - through the conventional R functions.")
    (license license:artistic2.0)))

(define-public r-anvilpublish
  (package
    (name "r-anvilpublish")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AnVILPublish" version))
       (sha256
        (base32 "1fyz9xaycm9skaisa0v8mr6bp57an29482sbj7yfqz8p421dydkp"))))
    (properties `((upstream-name . "AnVILPublish")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-whisker
                             r-rmarkdown
                             r-readr
                             r-jsonlite
                             r-httr
                             r-biocmanager
                             r-biocbaseutils
                             r-anvilgcp
                             r-anvil))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AnVILPublish")
    (synopsis "Publish Packages and Other Resources to AnVIL Workspaces")
    (description
     "Use this package to create or update @code{AnVIL} workspaces from resources such
as R / Bioconductor packages.  The metadata about the package (e.g., select
information from the package DESCRIPTION file and from vignette YAML headings)
are used to populate the DASHBOARD'.  Vignettes are translated to python
notebooks ready for evaluation in @code{AnVIL}.")
    (license license:artistic2.0)))

(define-public r-anvilgcp
  (package
    (name "r-anvilgcp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AnVILGCP" version))
       (sha256
        (base32 "0m0assxfq65smzqif7rqsqzlw0y8zjdnyq0nxij0snqzjd9a0iih"))))
    (properties `((upstream-name . "AnVILGCP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-biocbaseutils
                             r-anvilbase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/AnVILGCP")
    (synopsis "The GCP R Client for the AnVIL")
    (description
     "The package provides a set of functions to interact with the Google Cloud
Platform (GCP) services on the @code{AnVIL} platform.  The package is designed
to work with the @code{AnVIL} package.  User-level interaction with this package
should be minimal.")
    (license license:artistic2.0)))

(define-public r-anvilbilling
  (package
    (name "r-anvilbilling")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AnVILBilling" version))
       (sha256
        (base32 "1g7j9q1n11nnyjkz68wrpavinchwfpshcs2bridag45n6l42zd16"))))
    (properties `((upstream-name . "AnVILBilling")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinytoastr
                             r-shiny
                             r-plotly
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-dbi
                             r-bigrquery))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AnVILBilling")
    (synopsis
     "Provide functions to retrieve and report on usage expenses in NHGRI AnVIL (anvilproject.org)")
    (description
     "@code{AnVILBilling} helps monitor @code{AnVIL-related} costs in R, using queries
to a @code{BigQuery} table to which costs are exported daily.  Functions are
defined to help categorize tasks and associated expenditures, and to visualize
and explore expense profiles over time.  This package will be expanded to help
users estimate costs for specific task sets.")
    (license license:artistic2.0)))

(define-public r-anvilaz
  (package
    (name "r-anvilaz")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AnVILAz" version))
       (sha256
        (base32 "0b0rpq5f394y50djiwq1ldjr7wfvd4c4vw1nfdqzgizx6cybii7a"))))
    (properties `((upstream-name . "AnVILAz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-tibble
                             r-rjsoncons
                             r-jsonlite
                             r-httr2
                             r-curl
                             r-biocbaseutils
                             r-anvilbase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/AnVILAz")
    (synopsis "R / Bioconductor Support for the AnVIL Azure Platform")
    (description
     "The @code{AnVIL} is a cloud computing resource developed in part by the National
Human Genome Research Institute.  The @code{AnVILAz} package supports end-users
and developers using the @code{AnVIL} platform in the Azure cloud.  The package
provides a programmatic interface to @code{AnVIL} resources, including
workspaces, notebooks, tables, and workflows.  The package also provides
utilities for managing resources, including copying files to and from Azure Blob
Storage, and creating shared access signatures (SAS) for secure access to Azure
resources.")
    (license license:artistic2.0)))

(define-public r-antiprofilesdata
  (package
    (name "r-antiprofilesdata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "antiProfilesData" version
                              'experiment))
       (sha256
        (base32 "0590iff9pf7nc34w0llg2jk8gc8004vl5fxg93nb91n0jm86crdp"))))
    (properties `((upstream-name . "antiProfilesData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/antiProfilesData")
    (synopsis
     "Normal colon and cancer preprocessed affy data for antiProfile building")
    (description
     "Colon normal tissue and cancer samples used in Corrada Bravo, et al.  gene
expression anti-profiles paper: BMC Bioinformatics 2012, 13:272
doi:10.1186/1471-2105-13-272.  Measurements are z-scores obtained from the
@code{GeneExpression} Barcode in the frma package.")
    (license license:artistic2.0)))

(define-public r-anopheles-db0
  (package
    (name "r-anopheles-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "anopheles.db0" version
                              'annotation))
       (sha256
        (base32 "07vfxbvw41w7600xv70bnh37wxxwsbkkhihypmibprxmwibf7dvp"))))
    (properties `((upstream-name . "anopheles.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/anopheles.db0")
    (synopsis "Base Level Annotation databases for anopheles")
    (description
     "Base annotation databases for anopheles, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-ampaffyexample
  (package
    (name "r-ampaffyexample")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AmpAffyExample" version
                              'experiment))
       (sha256
        (base32 "0hh3j161whmnw0crcrypv77sdkkcbjrzpfzvgvjvad9m9qkkgfb9"))))
    (properties `((upstream-name . "AmpAffyExample")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-affy))
    (home-page "https://bioconductor.org/packages/AmpAffyExample")
    (synopsis "Example of Amplified Data")
    (description
     "Six arrays.  Three from amplified RNA, three from the typical procedure.")
    (license license:lgpl2.0+)))

(define-public r-alternativesplicingevents-hg38
  (package
    (name "r-alternativesplicingevents-hg38")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alternativeSplicingEvents.hg38" version
                              'annotation))
       (sha256
        (base32 "18qabggvs9mcg8fwd6prdca8lfxn9r9i0493l667n8jl9vy2pbfc"))))
    (properties `((upstream-name . "alternativeSplicingEvents.hg38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (home-page
     "https://github.com/nuno-agostinho/alternativeSplicingEvents.hg38")
    (synopsis "Alternative splicing event annotation for Human (hg38)")
    (description
     "Data frame containing alternative splicing events.  The splicing events were
compiled from the annotation files used by the alternative splicing
quantification tools MISO, VAST-TOOLS, SUPPA and @code{rMATS}.")
    (license license:expat)))

(define-public r-alternativesplicingevents-hg19
  (package
    (name "r-alternativesplicingevents-hg19")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alternativeSplicingEvents.hg19" version
                              'annotation))
       (sha256
        (base32 "0q90nw3ds66zbyn3ch19lq1qimd1hz1s3jyyd6zi3v10p5s8bm0y"))))
    (properties `((upstream-name . "alternativeSplicingEvents.hg19")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (home-page
     "https://github.com/nuno-agostinho/alternativeSplicingEvents.hg19")
    (synopsis "Alternative splicing event annotation for Human (hg19)")
    (description
     "Data frame containing alternative splicing events.  The splicing events were
compiled from the annotation files used by the alternative splicing
quantification tools MISO, VAST-TOOLS, SUPPA and @code{rMATS}.")
    (license license:expat)))

(define-public r-alphamissenser
  (package
    (name "r-alphamissenser")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AlphaMissenseR" version))
       (sha256
        (base32 "0lmpij9k36hi8adp0mnbjagh6mfyykhvsyzyk1vabvbnqi9d3zxk"))))
    (properties `((upstream-name . "AlphaMissenseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-whisker
                             r-spdl
                             r-rlang
                             r-rjsoncons
                             r-memoise
                             r-ggplot2
                             r-duckdb
                             r-dplyr
                             r-dbi
                             r-curl
                             r-biocfilecache
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://mtmorgan.github.io/AlphaMissenseR/")
    (synopsis "Accessing AlphaMissense Data Resources in R")
    (description
     "The @code{AlphaMissense} publication
<https://www.science.org/doi/epdf/10.1126/science.adg7492> outlines how a
variant of @code{AlphaFold} / @code{DeepMind} was used to predict missense
variant pathogenicity.  Supporting data on Zenodo
<https://zenodo.org/record/10813168> include, for instance, 71M variants across
hg19 and hg38 genome builds.  The @code{AlphaMissenseR} package allows ready
access to the data, downloading individual files to @code{DuckDB} databases for
exploration and integration into *R* and *Bioconductor* workflows.")
    (license license:artistic2.0)))

(define-public r-alphamissense-v2023-hg38
  (package
    (name "r-alphamissense-v2023-hg38")
    (version "3.18.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AlphaMissense.v2023.hg38" version
                              'annotation))
       (sha256
        (base32 "080c0282hcls96pd9mjljv2y1y6sy6nhqzlqwl5a2knq1aql4mna"))))
    (properties `((upstream-name . "AlphaMissense.v2023.hg38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicscores r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AlphaMissense.v2023.hg38")
    (synopsis
     "AlphaMissense v2023 Pathogenicity Scores AnnotationHub Resource Metadata for hg38")
    (description
     "Store Google @code{DeepMind} @code{AlphaMissense} v2023 hg38 pathogenicity
scores @code{AnnotationHub} Resource Metadata.  Provide provenance and citation
information for Google @code{DeepMind} @code{AlphaMissense} v2023 hg38
pathogenicity score @code{AnnotationHub} resources.  Illustrate in a vignette
how to access those resources.")
    (license license:artistic2.0)))

(define-public r-alphamissense-v2023-hg19
  (package
    (name "r-alphamissense-v2023-hg19")
    (version "3.18.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AlphaMissense.v2023.hg19" version
                              'annotation))
       (sha256
        (base32 "0622yzywf3655rsh1ckmfvx0crm715a227bg5zz5znz7zfnlsl8y"))))
    (properties `((upstream-name . "AlphaMissense.v2023.hg19")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicscores r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AlphaMissense.v2023.hg19")
    (synopsis
     "AlphaMissense v2023 Pathogenicity Scores AnnotationHub Resource Metadata for hg19")
    (description
     "Store Google @code{DeepMind} @code{AlphaMissense} v2023 hg19 pathogenicity
scores @code{AnnotationHub} Resource Metadata.  Provide provenance and citation
information for Google @code{DeepMind} @code{AlphaMissense} v2023 hg19
pathogenicity score @code{AnnotationHub} resources.  Illustrate in a vignette
how to access those resources.")
    (license license:artistic2.0)))

(define-public r-allmll
  (package
    (name "r-allmll")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ALLMLL" version
                              'experiment))
       (sha256
        (base32 "1ipp8ykdfldyxza2g8g8lj1yrwaynky0fwhmksym7pgn39gl910l"))))
    (properties `((upstream-name . "ALLMLL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-affy))
    (home-page "https://bioconductor.org/packages/ALLMLL")
    (synopsis
     "subset of arrays from a large acute lymphoblastic leukemia (ALL) study")
    (description
     "This package provides probe-level data for 20 HGU133A and 20 HGU133B arrays
which are a subset of arrays from a large ALL study.  The data is for the MLL
arrays.  This data was published in Mary E. Ross, Xiaodong Zhou, Guangchun Song,
Sheila A. Shurtleff, Kevin Girtman, W. Kent Williams, Hsi-Che Liu, Rami Mahfouz,
Susana C. Raimondi, Noel Lenny, Anami Patel, and James R. Downing (2003)
Classification of pediatric acute lymphoblastic leukemia by gene expression
profiling Blood 102: 2951-2959.")
    (license license:gpl2)))

(define-public r-alabaster-vcf
  (package
    (name "r-alabaster-vcf")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.vcf" version))
       (sha256
        (base32 "0f96s0wzmlzy7cchzf7lgbprc78k6vq03603h55l94z4bcn8n077"))))
    (properties `((upstream-name . "alabaster.vcf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-s4vectors
                             r-rsamtools
                             r-alabaster-string
                             r-alabaster-se
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.vcf")
    (synopsis "Save and Load Variant Data to/from File")
    (description
     "Save variant calling @code{SummarizedExperiment} to file and load them back as
VCF objects.  This is a more portable alternative to serialization of such
objects into RDS files.  Each artifact is associated with metadata for further
interpretation; downstream applications can enrich this metadata with
context-specific properties.")
    (license license:expat)))

(define-public r-alabaster-string
  (package
    (name "r-alabaster-string")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.string" version))
       (sha256
        (base32 "18kbc1gc1bi9vp95adi5kxy2yg3ygdipdvf827vfnl36cn5imna3"))))
    (properties `((upstream-name . "alabaster.string")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-biostrings r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.string")
    (synopsis "Save and Load Biostrings to/from File")
    (description
     "Save Biostrings objects to file artifacts, and load them back into memory.  This
is a more portable alternative to serialization of such objects into RDS files.
Each artifact is associated with metadata for further interpretation; downstream
applications can enrich this metadata with context-specific properties.")
    (license license:expat)))

(define-public r-alabaster-spatial
  (package
    (name "r-alabaster-spatial")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.spatial" version))
       (sha256
        (base32 "15lswhfdxpg8mdhf1nqivvck9ncygk5m0mnx8px3xam3c5kc7lsd"))))
    (properties `((upstream-name . "alabaster.spatial")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatialexperiment r-s4vectors r-rhdf5
                             r-alabaster-sce r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.spatial")
    (synopsis "Save and Load Spatial 'Omics Data to/from File")
    (description
     "Save @code{SpatialExperiment} objects and their images into file artifacts, and
load them back into memory.  This is a more portable alternative to
serialization of such objects into RDS files.  Each artifact is associated with
metadata for further interpretation; downstream applications can enrich this
metadata with context-specific properties.")
    (license license:expat)))

(define-public r-alabaster-mae
  (package
    (name "r-alabaster-mae")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.mae" version))
       (sha256
        (base32 "150b2wcm7bq3ickwfz1vpw3s0h63gk0s57n1j58dn2ssni4y2z5r"))))
    (properties `((upstream-name . "alabaster.mae")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rhdf5
                             r-multiassayexperiment
                             r-jsonlite
                             r-alabaster-se
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.mae")
    (synopsis "Load and Save MultiAssayExperiments")
    (description
     "Save @code{MultiAssayExperiments} into file artifacts, and load them back into
memory.  This is a more portable alternative to serialization of such objects
into RDS files.  Each artifact is associated with metadata for further
interpretation; downstream applications can enrich this metadata with
context-specific properties.")
    (license license:expat)))

(define-public r-alabaster-files
  (package
    (name "r-alabaster-files")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.files" version))
       (sha256
        (base32 "1d905lq0s1dd15qpj9drh14vk8xalgp2r6cdirjxyc44nyk6kfp5"))))
    (properties `((upstream-name . "alabaster.files")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-rsamtools r-biocgenerics
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.files")
    (synopsis "Wrappers to Save Common File Formats")
    (description
     "Save common bioinformatics file formats within the alabaster framework.  This
includes BAM, BED, VCF, @code{bigWig}, @code{bigBed}, FASTQ, FASTA and so on.
We save and load additional metadata for each file, and we support linkage
between each file and its corresponding index.")
    (license license:expat)))

(define-public r-alabaster-bumpy
  (package
    (name "r-alabaster-bumpy")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.bumpy" version))
       (sha256
        (base32 "0my4zqrvjnnrs85263rgxnvaq0a936zhq134hzq8c2lng3csir7d"))))
    (properties `((upstream-name . "alabaster.bumpy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rhdf5
                             r-matrix
                             r-iranges
                             r-bumpymatrix
                             r-biocgenerics
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.bumpy")
    (synopsis "Save and Load BumpyMatrices to/from file")
    (description
     "Save @code{BumpyMatrix} objects into file artifacts, and load them back into
memory.  This is a more portable alternative to serialization of such objects
into RDS files.  Each artifact is associated with metadata for further
interpretation; downstream applications can enrich this metadata with
context-specific properties.")
    (license license:expat)))

(define-public r-alabaster
  (package
    (name "r-alabaster")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster" version))
       (sha256
        (base32 "1jb7dh4kamr6ypfkjm306797jrbn6n37nk533k3h74ckhb06xf33"))))
    (properties `((upstream-name . "alabaster")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-alabaster-vcf
                             r-alabaster-string
                             r-alabaster-spatial
                             r-alabaster-se
                             r-alabaster-sce
                             r-alabaster-ranges
                             r-alabaster-matrix
                             r-alabaster-mae
                             r-alabaster-bumpy
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster")
    (synopsis "Umbrella for the Alabaster Framework")
    (description
     "Umbrella for the alabaster suite, providing a single-line import for all
alabaster.* packages.  Installing this package ensures that all known
alabaster.* packages are also installed, avoiding problems with missing packages
when a staging method or loading function is dynamically requested.  Obviously,
this comes at the cost of needing to install more packages, so advanced users
and application developers may prefer to install the required alabaster.*
packages individually.")
    (license license:expat)))

(define-public r-ahwikipathwaysdbs
  (package
    (name "r-ahwikipathwaysdbs")
    (version "0.99.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHWikipathwaysDbs" version
                              'annotation))
       (sha256
        (base32 "0vz3p9sx36bwzl9rq0ffh7klbq13pv2yhgjq1cjk7ll8z226c0q4"))))
    (properties `((upstream-name . "AHWikipathwaysDbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kozo2/AHWikipathwaysDbs")
    (synopsis
     "Metabolites linked to WikiPathways pathways (for AnnotationHub)")
    (description
     "The package provides a comprehensive mapping table of metabolites linked to
Wikipathways pathways.  The tables include HMDB, KEGG, @code{ChEBI}, Drugbank,
@code{PubChem} compound, @code{ChemSpider}, KN@code{ApSAcK}, and Wikidata IDs
plus CAS and @code{InChIKey}.  The tables are provided for each of the 25
species (\"Anopheles gambiae\", \"Arabidopsis thaliana\", \"Bacillus subtilis\", \"Bos
taurus\", \"Caenorhabditis elegans\", \"Canis familiaris\", \"Danio rerio\",
\"Drosophila melanogaster\", \"Equus caballus\", \"Escherichia coli\", \"Gallus
gallus\", \"Gibberella zeae\", \"Homo sapiens\", \"Hordeum vulgare\", \"Mus musculus\",
\"Mycobacterium tuberculosis\", \"Oryza sativa\", \"Pan troglodytes\", \"Plasmodium
falciparum\", \"Populus trichocarpa\", \"Rattus norvegicus\", \"Saccharomyces
cerevisiae\", \"Solanum lycopersicum\", \"Sus scrofa\", \"Zea mays\").  These table
information can be used for Metabolite Set Enrichment Analysis.")
    (license license:artistic2.0)))

(define-public r-ahpubmeddbs
  (package
    (name "r-ahpubmeddbs")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHPubMedDbs" version
                              'annotation))
       (sha256
        (base32 "1p9jxs8ci4yv7yi4n86gpg49jigdmw0nrfnm8ls0jxwm0371vm7l"))))
    (properties `((upstream-name . "AHPubMedDbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AHPubMedDbs")
    (synopsis "SQLites, tibbles, and data.tables for AnnotationHub")
    (description
     "Supplies @code{AnnotationHub} with some preprocessed sqlite, tibble, and
data.table datasets of @code{PubMed}.  All the datasets are generated by our
Snakemake workflow
[pubmed-workflow](https://github.com/rikenbit/pubmed-workflow).  For the
details, see the README.md of pubmed-workflow.")
    (license license:artistic2.0)))

(define-public r-ahpathbankdbs
  (package
    (name "r-ahpathbankdbs")
    (version "0.99.5")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHPathbankDbs" version
                              'annotation))
       (sha256
        (base32 "10wcrglm521xcrfbzc39dkbjvg1pkz0zq70vgnh68akiwmdirp89"))))
    (properties `((upstream-name . "AHPathbankDbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kozo2/AHPathbankDbs")
    (synopsis
     "Metabolites and proteins linked to PathBank pathways (for AnnotationHub)")
    (description
     "The package provides a comprehensive mapping table of metabolites and proteins
linked to @code{PathBank} pathways.  The tables include HMDB, KEGG,
@code{ChEBI}, CAS, Drugbank, Uniprot IDs.  The tables are provided for each of
the 10 species (\"Homo sapiens\", \"Escherichia coli\", \"Mus musculus\", \"Arabidopsis
thaliana\", \"Saccharomyces cerevisiae\", \"Bos taurus\", \"Caenorhabditis elegans\",
\"Rattus norvegicus\", \"Drosophila melanogaster\", and \"Pseudomonas aeruginosa\").
These table information can be used for Metabolite Set (and other) Enrichment
Analysis.")
    (license license:artistic2.0)))

(define-public r-ahmeshdbs
  (package
    (name "r-ahmeshdbs")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHMeSHDbs" version
                              'annotation))
       (sha256
        (base32 "09acd6xipzillw9z68nqqxjxa0hbshclv504na7l2dkhpppx6934"))))
    (properties `((upstream-name . "AHMeSHDbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AHMeSHDbs")
    (synopsis "MeSHDbs for AnnotationHub")
    (description
     "Supplies @code{AnnotationHub} with `@code{MeSHDb`} NIH @code{MeSH} annotation
databases for many species.  All the SQLite files and metadata.csv are generated
by our Snakemake workflow
[mesh-workflow](https://github.com/rikenbit/mesh-workflow).")
    (license license:artistic2.0)))

(define-public r-ahmassbank
  (package
    (name "r-ahmassbank")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHMassBank" version))
       (sha256
        (base32 "1hx80h7pi54arq7xnbn7gmz1hfbv7zn34gynwiinqb48b537ba6v"))))
    (properties `((upstream-name . "AHMassBank")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhubdata))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jorainer/AHMassBank")
    (synopsis "MassBank Annotation Resources for AnnotationHub")
    (description
     "Supplies @code{AnnotationHub} with @code{MassBank} metabolite/compound
annotations bundled in @code{CompDb} SQLite databases. @code{CompDb} SQLite
databases contain general compound annotation as well as fragment spectra
representing fragmentation patterns of compounds ions. @code{MassBank} data is
retrieved from https://massbank.eu/@code{MassBank} and processed using helper
functions from the @code{CompoundDb} Bioconductor package into redistributable
SQLite databases.")
    (license license:artistic2.0)))

(define-public r-ahlrbasedbs
  (package
    (name "r-ahlrbasedbs")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHLRBaseDbs" version
                              'annotation))
       (sha256
        (base32 "038i0338zyqzkvmhxcdiykb0rwa3bzi0vv18j643b1a64bsnvcxi"))))
    (properties `((upstream-name . "AHLRBaseDbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AHLRBaseDbs")
    (synopsis "LRBaseDbs for AnnotationHub")
    (description
     "Supplies @code{AnnotationHub} with `L@code{RbaseDb`} Ligand-Receptor annotation
databases for many species.  All the SQLite files are generated by our Snakemake
workflow [lrbase-workflow](https://github.com/rikenbit/lrbase-workflow).  For
the details, see the README.md of lrbase-workflow.")
    (license license:artistic2.0)))

(define-public r-ahensdbs
  (package
    (name "r-ahensdbs")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHEnsDbs" version
                              'annotation))
       (sha256
        (base32 "1l62703d0czlysvxggvzsqfn1cgjgim7vd0wgzav70vj572z2bs5"))))
    (properties `((upstream-name . "AHEnsDbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ensembldb r-annotationhubdata))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AHEnsDbs")
    (synopsis "EnsDbs for AnnotationHub")
    (description
     "Supplies @code{AnnotationHub} with @code{EnsDb} Ensembl-based annotation
databases for all species. @code{EnsDb} SQLite databases are generated
separately from Ensembl @code{MySQL} databases using functions from the
ensembldb package employing the Ensembl Perl API.")
    (license license:artistic2.0)))

(define-public r-ahcytobands
  (package
    (name "r-ahcytobands")
    (version "0.99.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHCytoBands" version
                              'annotation))
       (sha256
        (base32 "0svxxhj3mh5gqik45ikcxnlhnma8n1c0rv8pycj2034cb9ms1dbv"))))
    (properties `((upstream-name . "AHCytoBands")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/AHCytoBands")
    (synopsis "CytoBands for AnnotationHub")
    (description
     "Supplies @code{AnnotationHub} with @code{CytoBand} information from UCSC. There
is a track for each major organism.  Giemsa-stained bands are commonly used to
decorate chromosomal overviews in visualizations of genomic data.")
    (license license:artistic2.0)))

(define-public r-agprobe
  (package
    (name "r-agprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "agprobe" version
                              'annotation))
       (sha256
        (base32 "1vnawamcpz16na8nmlq2czfxcr325fwdnngxl65mmnbd0f4lmy3k"))))
    (properties `((upstream-name . "agprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/agprobe")
    (synopsis "Probe sequence data for microarrays of type ag")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was AG\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-agcdf
  (package
    (name "r-agcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "agcdf" version
                              'annotation))
       (sha256
        (base32 "07hq41dwqs7yy2sck8p7zl3v9x4bgl35kkycpazz5ql2g5zy6b7j"))))
    (properties `((upstream-name . "agcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/agcdf")
    (synopsis "agcdf")
    (description
     "This package provides a package containing an environment representing the
AG.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-ag-db
  (package
    (name "r-ag-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ag.db" version
                              'annotation))
       (sha256
        (base32 "005y4whqjc8ndr1yjikzcz9196hvq3d04lz8pqfmhk6kyjljpgzh"))))
    (properties `((upstream-name . "ag.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-at-tair-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ag.db")
    (synopsis "Affymetrix Affymetrix AG Array annotation data (chip ag)")
    (description
     "Affymetrix Affymetrix AG Array annotation data (chip ag) assembled using data
from public repositories.")
    (license license:artistic2.0)))

(define-public r-affymoe4302expr
  (package
    (name "r-affymoe4302expr")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Affymoe4302Expr" version
                              'experiment))
       (sha256
        (base32 "1vnilic1lkx8s0gllrfznd03p49m05426fbjhgxmqznd45s7rjaw"))))
    (properties `((upstream-name . "Affymoe4302Expr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/Affymoe4302Expr")
    (synopsis
     "Affymetrix Mouse Genome 430 2.0 Array (GPL1261) Expression Data Package")
    (description
     "This package contains pre-built mouse (GPL1261) database of gene expression
profiles.  The gene expression data was downloaded from NCBI GEO, preprocessed
and normalized consistently.  The biological context of each sample was recorded
and manually verified based on the sample description in GEO.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-affymetrixdatatestfiles
  (package
    (name "r-affymetrixdatatestfiles")
    (version "0.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AffymetrixDataTestFiles" version
                              'experiment))
       (sha256
        (base32 "055msffzbv9ga74krp2hrxjlfxw57p7ldwb9bqp3rcji834d5nmb"))))
    (properties `((upstream-name . "AffymetrixDataTestFiles")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/AffymetrixDataTestFiles")
    (synopsis
     "Affymetrix Data Files (CEL, CDF, CHP, EXP, PGF, PSI) for Testing")
    (description
     "This package contains annotation data files and sample data files of Affymetrix
file formats.  The files originate from the Affymetrix Fusion SDK distribution
and other official sources.")
    (license license:lgpl2.1)))

(define-public r-affyhgu133plus2expr
  (package
    (name "r-affyhgu133plus2expr")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Affyhgu133Plus2Expr" version
                              'experiment))
       (sha256
        (base32 "0dy7bx5nncc90xfcmgy1gaf3bs29wkb0s2g2pjnf475xgvrjf07c"))))
    (properties `((upstream-name . "Affyhgu133Plus2Expr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/Affyhgu133Plus2Expr")
    (synopsis "Affyhgu133Plus2Expr (GPL570) Expression Data Package")
    (description
     "This package contains pre-built human (GPL570) database of gene expression
profiles.  The gene expression data was downloaded from NCBI GEO and
preprocessed and normalized consistently.  The biological context of each sample
was recorded and manually verified based on the sample description in GEO.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-affyhgu133aexpr
  (package
    (name "r-affyhgu133aexpr")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Affyhgu133aExpr" version
                              'experiment))
       (sha256
        (base32 "17bq293nyzb8rxn8ywgr2ypk72n5jrcgmyzjsmz9f9dp53icfgzk"))))
    (properties `((upstream-name . "Affyhgu133aExpr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/Affyhgu133aExpr")
    (synopsis "Affymetrix Human hgu133a Array (GPL96) Expression Data Package")
    (description
     "This package contains pre-built human (GPL96) database of gene expression
profiles.  The gene expression data was downloaded from NCBI GEO, preprocessed
and normalized consistently.  The biological context of each sample was recorded
and manually verified based on the sample description in GEO.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-affyhgu133a2expr
  (package
    (name "r-affyhgu133a2expr")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Affyhgu133A2Expr" version
                              'experiment))
       (sha256
        (base32 "1asq4vv6lh6yixnnkh12rrlpqckyw3j53vb107mfrwzq99vngmpa"))))
    (properties `((upstream-name . "Affyhgu133A2Expr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/Affyhgu133A2Expr")
    (synopsis
     "Affymetrix Human Genome U133A 2.0 Array (GPL571) Expression Data Package")
    (description
     "This package contains pre-built human (GPL571) databases of gene expression
profiles.  The gene expression data was downloaded from NCBI GEO and
preprocessed and normalized consistently.  The biological context of each sample
was recorded and manually verified based on the sample description in GEO.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-affycompdata
  (package
    (name "r-affycompdata")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "affycompData" version
                              'experiment))
       (sha256
        (base32 "01x4qj2sc1b6z3221af2acpniaar97jhfdgg21lkb6429mm6g42r"))))
    (properties `((upstream-name . "affycompData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase r-affycomp))
    (home-page "https://bioconductor.org/packages/affycompData")
    (synopsis "affycomp data")
    (description "Data needed by the affycomp package.")
    (license license:gpl2+)))

(define-public r-adverscarial
  (package
    (name "r-adverscarial")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "adverSCarial" version))
       (sha256
        (base32 "0lri1mc23f9mhg3gwq0hjq09vk8fhc2jpais5vy60dym1dz2nnn7"))))
    (properties `((upstream-name . "adverSCarial")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-gtools r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/adverSCarial")
    (synopsis
     "adverSCarial, generate and analyze the vulnerability of scRNA-seq classifier to adversarial attacks")
    (description
     "@code{adverSCarial} is an R Package designed for generating and analyzing the
vulnerability of @code{scRNA-seq} classifiers to adversarial attacks.  The
package is versatile and provides a format for integrating any type of
classifier.  It offers functions for studying and generating two types of
attacks, single gene attack and max change attack.  The single-gene attack
involves making a small modification to the input to alter the classification.
The max-change attack involves making a large modification to the input without
changing its classification.  The package provides a comprehensive solution for
evaluating the robustness of @code{scRNA-seq} classifiers against adversarial
attacks.")
    (license license:expat)))

(define-public r-adme16cod-db
  (package
    (name "r-adme16cod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "adme16cod.db" version
                              'annotation))
       (sha256
        (base32 "1vn9s1lrl6zzs00madb111fdzqjfb45mprpjqap8bvib65942rvq"))))
    (properties `((upstream-name . "adme16cod.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/adme16cod.db")
    (synopsis
     "Codelink ADME Rat 16-Assay Bioarray annotation data (chip adme16cod)")
    (description
     "Codelink ADME Rat 16-Assay Bioarray annotation data (chip adme16cod) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-adapt
  (package
    (name "r-adapt")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ADAPT" version))
       (sha256
        (base32 "111k0q40znpjacqkgcswjdp5iqbxxx60d1bjkziazgk3kgz6ly44"))))
    (properties `((upstream-name . "ADAPT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-phyloseq
                             r-ggrepel
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ADAPT")
    (synopsis
     "Analysis of Microbiome Differential Abundance by Pooling Tobit Models")
    (description
     "ADAPT carries out differential abundance analysis for microbiome metagenomics
data in phyloseq format.  It has two innovations.  One is to treat zero counts
as left censored and use Tobit models for log count ratios.  The other is an
innovative way to find non-differentially abundant taxa as reference, then use
the reference taxa to find the differentially abundant ones.")
    (license license:expat)))

