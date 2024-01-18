(define-module (guix-bioc packages a)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages r)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python)
  #:use-module (gnu packages machine-learning)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages j)
  #:use-module (gnu packages compression)
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
  #:use-module (guix-bioc packages b))

(define-public r-autonomics
  (package
    (name "r-autonomics")
    (version "1.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "autonomics" version))
       (sha256
        (base32 "1chgsckv6vvx8sxfbd7ds0pm67w2yaijzf68j8zm7pplz44kr9m9"))))
    (properties `((upstream-name . "autonomics")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-stringi
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-readxl
                             r-rappdirs
                             r-r-utils
                             r-pcamethods
                             r-multiassayexperiment
                             r-matrixstats
                             r-magrittr
                             r-limma
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-data-table
                             r-colorspace
                             r-bit64
                             r-biocgenerics
                             r-biocfilecache
                             r-assertive-sets
                             r-assertive-numbers
                             r-assertive-files
                             r-assertive-base
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bhagwataditya/autonomics")
    (synopsis "Generifying and intuifying cross-platform omics analysis")
    (description
     "This package offers a generic and intuitive solution for cross-platform omics
data analysis.  It has functions for import, preprocessing, exploration,
contrast analysis and visualization of omics data.  It follows a tidy,
functional programming paradigm.")
    (license license:gpl3)))

(define-public r-atacseqtfea
  (package
    (name "r-atacseqtfea")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ATACseqTFEA" version))
       (sha256
        (base32 "1cz2vhg1w62xb3vl7sqhwdzvf9ixv5685lrnp2l1m6xvg4q8wzjw"))))
    (properties `((upstream-name . "ATACseqTFEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tfbstools
                             r-summarizedexperiment
                             r-s4vectors
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

(define-public r-ataccogaps
  (package
    (name "r-ataccogaps")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ATACCoGAPS" version))
       (sha256
        (base32 "1v9a9hv9s0iv542n4q7d03axf5vnaj3x75chw7f1w1fg1vgb5bna"))))
    (properties `((upstream-name . "ATACCoGAPS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tfbstools
                             r-stringr
                             r-rgreat
                             r-projectr
                             r-mus-musculus
                             r-msigdbr
                             r-motifmatchr
                             r-iranges
                             r-homo-sapiens
                             r-gtools
                             r-gplots
                             r-genomicranges
                             r-genomicfeatures
                             r-geneoverlap
                             r-fgsea
                             r-dplyr
                             r-cogaps
                             r-chromvar
                             r-bsgenome-mmusculus-ucsc-mm10
                             r-bsgenome-hsapiens-ucsc-hg19))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ATACCoGAPS")
    (synopsis "Analysis Tools for scATACseq Data with CoGAPS")
    (description
     "This package provides tools for running the @code{CoGAPS} algorithm (Fertig et
al, 2010) on single-cell ATAC sequencing data and analysis of the results.  Can
be used to perform analyses at the level of genes, motifs, TFs, or pathways.
Additionally provides tools for transfer learning and data integration with
single-cell RNA sequencing data.")
    (license license:artistic2.0)))

(define-public r-asurat
  (package
    (name "r-asurat")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ASURAT" version))
       (sha256
        (base32 "0lxl7wgkys6n6xrh2wcp0p2bf33qdd1f3px3nkzk0yk6dvz715v7"))))
    (properties `((upstream-name . "ASURAT")))
    (build-system r-build-system)
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ASSIGN" version))
       (sha256
        (base32 "15brzfi9ain84171c72w3hzpmjz93g57zz228cbxm3k2s9kn8h7w"))))
    (properties `((upstream-name . "ASSIGN")))
    (build-system r-build-system)
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

(define-public r-artms
  (package
    (name "r-artms")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "artMS" version))
       (sha256
        (base32 "19zd0p37pqk01ns2krjj80mz2c07b8q5qbcdi8czd0vvwkp1cxq7"))))
    (properties `((upstream-name . "artMS")))
    (build-system r-build-system)
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

(define-public r-appreci8r
  (package
    (name "r-appreci8r")
    (version "1.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "appreci8R" version))
       (sha256
        (base32 "0m0gr4v4bwbafdmi5v1x0x2v0ax5cp60jy2cj586ws5z82d0dgl4"))))
    (properties `((upstream-name . "appreci8R")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-summarizedexperiment
                             r-stringr
                             r-snplocs-hsapiens-dbsnp144-grch37
                             r-shinyjs
                             r-shiny
                             r-seqinr
                             r-s4vectors
                             r-rsamtools
                             r-rentrez
                             r-openxlsx
                             r-iranges
                             r-homo-sapiens
                             r-genomicscores
                             r-genomicranges
                             r-genomicfeatures
                             r-dt
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "APL" version))
       (sha256
        (base32 "0p9s7513gq6fggrab3yf132z0sbydfcyay13f1ka889lcgw741bh"))))
    (properties `((upstream-name . "APL")))
    (build-system r-build-system)
    (inputs (list python-pytorch python python-numpy))
    (propagated-inputs (list r-viridislite
                             r-topgo
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seurat
                             r-rlang
                             r-reticulate
                             r-plotly
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-magrittr
                             r-ggrepel
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/APL")
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "APAlyzer" version))
       (sha256
        (base32 "1jzl274ikk6xp0lq9lr8gfw6f58nn5zs9ifj5mgwsj2vf0ma4mzc"))))
    (properties `((upstream-name . "APAlyzer")))
    (build-system r-build-system)
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AnVILWorkflow" version))
       (sha256
        (base32 "15yvpmpkii030v13bixhdj4g8b1qwjn9cm8k4rbpz6iqngaa4w5i"))))
    (properties `((upstream-name . "AnVILWorkflow")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-anvil))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/AnVILWorkflow")
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AnVILPublish" version))
       (sha256
        (base32 "0yk5v4863h58795apffj6hp6iikgw5jx220s9f3j2fvvdpv3z995"))))
    (properties `((upstream-name . "AnVILPublish")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-whisker
                             r-rmarkdown
                             r-readr
                             r-jsonlite
                             r-httr
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

(define-public r-anvilbilling
  (package
    (name "r-anvilbilling")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AnVILBilling" version))
       (sha256
        (base32 "1b90q6nvf6mzq1r9r679b33k6pqywwnjwkfdhfc3kp5i0d3xfh4s"))))
    (properties `((upstream-name . "AnVILBilling")))
    (build-system r-build-system)
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

(define-public r-alabaster-vcf
  (package
    (name "r-alabaster-vcf")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.vcf" version))
       (sha256
        (base32 "0xzwcn112bp3mz8g1wmnkklsjm4p2hs237mgv9vxfsb6022njci9"))))
    (properties `((upstream-name . "alabaster.vcf")))
    (build-system r-build-system)
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.string" version))
       (sha256
        (base32 "1gppm56mzf1by8gs37aabd03hamyghlg2vv3z95r4alb515rfgmm"))))
    (properties `((upstream-name . "alabaster.string")))
    (build-system r-build-system)
    (propagated-inputs (list r-biostrings r-alabaster-base))
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.spatial" version))
       (sha256
        (base32 "1jdhiqypsagzpa669l6sm7y1hpz6i6mjck47yvv3f7xja3pwz66x"))))
    (properties `((upstream-name . "alabaster.spatial")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-s4vectors
                             r-jsonlite
                             r-alabaster-sce
                             r-alabaster-base))
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

(define-public r-alabaster-se
  (package
    (name "r-alabaster-se")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.se" version))
       (sha256
        (base32 "14rvdyd4b1ck303n18nfsvrxmjgpikhrj308gmn3g7158q8zfdwx"))))
    (properties `((upstream-name . "alabaster.se")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-biocgenerics
                             r-alabaster-ranges
                             r-alabaster-matrix
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.se")
    (synopsis "Load and Save SummarizedExperiments from File")
    (description
     "Save @code{SummarizedExperiments} into file artifacts, and load them back into
memory.  This is a more portable alternative to serialization of such objects
into RDS files.  Each artifact is associated with metadata for further
interpretation; downstream applications can enrich this metadata with
context-specific properties.")
    (license license:expat)))

(define-public r-alabaster-schemas
  (package
    (name "r-alabaster-schemas")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.schemas" version))
       (sha256
        (base32 "0swpd4jxf75g3p4yxscb0f3q74qm1sy3jjr5y55wqkb5c22lmmy1"))))
    (properties `((upstream-name . "alabaster.schemas")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.schemas")
    (synopsis "Schemas for the Alabaster Framework")
    (description
     "Stores all schemas required by various alabaster.* packages.  No computation
should be performed by this package, as that is handled by alabaster.base.  We
use a separate package instead of storing the schemas in alabaster.base itself,
to avoid conflating management of the schemas with code maintenence.")
    (license license:expat)))

(define-public r-alabaster-sce
  (package
    (name "r-alabaster-sce")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.sce" version))
       (sha256
        (base32 "1gk4iy7f9kvn0dsl8mkwrjd40yrjmy806yfjsmliih6s3vgmwcvz"))))
    (properties `((upstream-name . "alabaster.sce")))
    (build-system r-build-system)
    (propagated-inputs (list r-singlecellexperiment r-alabaster-se
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.sce")
    (synopsis "Load and Save SingleCellExperiment from File")
    (description
     "Save @code{SingleCellExperiment} into file artifacts, and load them back into
memory.  This is a more portable alternative to serialization of such objects
into RDS files.  Each artifact is associated with metadata for further
interpretation; downstream applications can enrich this metadata with
context-specific properties.")
    (license license:expat)))

(define-public r-alabaster-ranges
  (package
    (name "r-alabaster-ranges")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.ranges" version))
       (sha256
        (base32 "0p66n4sarzgr5pl9qhy9rjycb4s1xcigj6b1hk0fwqvmkpgfs53d"))))
    (properties `((upstream-name . "alabaster.ranges")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-biocgenerics
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.ranges")
    (synopsis "Load and Save Ranges-related Artifacts from File")
    (description
     "Save @code{GenomicRanges}, IRanges and related data structures into file
artifacts, and load them back into memory.  This is a more portable alternative
to serialization of such objects into RDS files.  Each artifact is associated
with metadata for further interpretation; downstream applications can enrich
this metadata with context-specific properties.")
    (license license:expat)))

(define-public r-alabaster-matrix
  (package
    (name "r-alabaster-matrix")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.matrix" version))
       (sha256
        (base32 "0ghgz4vys64y4z3i8bcnbz3mkwig0mhh2zf5ig59xvqn6k0xbvx5"))))
    (properties `((upstream-name . "alabaster.matrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsearray
                             r-s4vectors
                             r-rhdf5
                             r-matrix
                             r-hdf5array
                             r-delayedarray
                             r-biocgenerics
                             r-alabaster-base))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.matrix")
    (synopsis "Load and Save Artifacts from File")
    (description
     "Save matrices, arrays and similar objects into file artifacts, and load them
back into memory.  This is a more portable alternative to serialization of such
objects into RDS files.  Each artifact is associated with metadata for further
interpretation; downstream applications can enrich this metadata with
context-specific properties.")
    (license license:expat)))

(define-public r-alabaster-mae
  (package
    (name "r-alabaster-mae")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.mae" version))
       (sha256
        (base32 "1ag8g2076gzhzf8iqjszq8r4jirzqsx2hf2bkdg5x30q5g03d4ii"))))
    (properties `((upstream-name . "alabaster.mae")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-multiassayexperiment r-alabaster-se
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.files" version))
       (sha256
        (base32 "104ar597n91nhlvcvx0pl4wrymlnflvg76gfj6kjgy55q6v53i2j"))))
    (properties `((upstream-name . "alabaster.files")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-biostrings
                             r-biocgenerics
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.bumpy" version))
       (sha256
        (base32 "0z95qbg1nl5zq5wbq351mn5i3vh0ilr9g330cqc2j1ng9rjhr5cf"))))
    (properties `((upstream-name . "alabaster.bumpy")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
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

(define-public r-alabaster-base
  (package
    (name "r-alabaster-base")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster.base" version))
       (sha256
        (base32 "1vpzc7h8589v49jyjgca2wyb1q548xfqnslvblmvamv28z3x2053"))))
    (properties `((upstream-name . "alabaster.base")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-s4vectors
                             r-rhdf5lib
                             r-rhdf5
                             r-rcpp
                             r-jsonvalidate
                             r-jsonlite
                             r-alabaster-schemas))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/alabaster.base")
    (synopsis "Save Bioconductor Objects To File")
    (description
     "Save Bioconductor data structures into file artifacts, and load them back into
memory.  This is a more robust and portable alternative to serialization of such
objects into RDS files.  Each artifact is associated with metadata for further
interpretation; downstream applications can enrich this metadata with
context-specific properties.")
    (license license:expat)))

(define-public r-alabaster
  (package
    (name "r-alabaster")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "alabaster" version))
       (sha256
        (base32 "0l40hl5jwsyxnkqbzsmc8k8bvyi88rfhaiaj74aba04jqj4ga23d"))))
    (properties `((upstream-name . "alabaster")))
    (build-system r-build-system)
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

(define-public r-ahmassbank
  (package
    (name "r-ahmassbank")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "AHMassBank" version))
       (sha256
        (base32 "1lkv6zkwgnyjpr2vqbmpbz79h6f42s3ksy0ix0hbxdi3aalgyfgf"))))
    (properties `((upstream-name . "AHMassBank")))
    (build-system r-build-system)
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

(define-public r-adverscarial
  (package
    (name "r-adverscarial")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "adverSCarial" version))
       (sha256
        (base32 "1ynd51ldy7xpnlxzchyi7pgh81wwz2vqvgn9810c2rwm5n6hqv0a"))))
    (properties `((upstream-name . "adverSCarial")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-gtools r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/adverSCarial")
    (synopsis
     "adverSCarial, generate and analyze the vulnerability of scRNA-seq classifiers to adversarial attacks")
    (description
     "@code{adverSCarial} is an R Package designed for generating and analyzing the
vulnerability of @code{scRNA-seq} classifiers to adversarial attacks.  The
package is versatile and provides a format for integrating any type of
classifier.  It offers functions for studying and generating two types of
attacks, single gene attack and max change attack.  The single gene attack
involves making a small modification to the input to alter the classification.
The max change attack involves making a large modification to the input without
changing its classification.  The package provides a comprehensive solution for
evaluating the robustness of @code{scRNA-seq} classifiers against adversarial
attacks.")
    (license license:expat)))

