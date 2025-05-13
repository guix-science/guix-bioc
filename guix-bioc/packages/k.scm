(define-module (guix-bioc packages k)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages compression)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages a)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages c)
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

(define-public r-koinar
  (package
    (name "r-koinar")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "koinar" version))
       (sha256
        (base32 "13jj9saqwrq7jcys973rcdiwk110b75jd4ijilhxhh4dhqc55kmr"))))
    (properties `((upstream-name . "koinar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wilhelm-lab/koina")
    (synopsis "KoinaR - Remote machine learning inference using Koina")
    (description
     "This package provides a client to simplify fetching predictions from the Koina
web service.  Koina is a model repository enabling the remote execution of
models.  Predictions are generated as a response to HTTP/S requests, the
standard protocol used for nearly all web traffic.")
    (license license:asl2.0)))

(define-public r-kodata
  (package
    (name "r-kodata")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KOdata" version
                              'experiment))
       (sha256
        (base32 "1asi4nqaa2iick9vg0kc03j3hp7k2amw4x6l49i3jmyll7w87l9b"))))
    (properties `((upstream-name . "KOdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/KOdata")
    (synopsis "LINCS Knock-Out Data Package")
    (description
     "This package contains consensus genomic signatures (CGS) for experimental
cell-line specific gene knock-outs as well as baseline gene expression data for
a subset of experimental cell-lines.  Intended for use with package KEGGlincs.")
    (license license:expat)))

(define-public r-knowyourcg
  (package
    (name "r-knowyourcg")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "knowYourCG" version))
       (sha256
        (base32 "0pvkvgwqc137f1jym6cqasfiy3ppf4llx5fggsv8ff8p1hak2x64"))))
    (properties `((upstream-name . "knowYourCG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-wheatmap
                             r-tibble
                             r-stringr
                             r-sesamedata
                             r-s4vectors
                             r-rlang
                             r-reshape2
                             r-magrittr
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zhou-lab/knowYourCG")
    (synopsis "Functional analysis of DNA methylome datasets")
    (description
     "@code{KnowYourCG} (KYCG) is a supervised learning framework designed for the
functional analysis of DNA methylation data.  Unlike existing tools that focus
on genes or genomic intervals, @code{KnowYourCG} directly targets @code{CpG}
dinucleotides, featuring automated supervised screenings of diverse biological
and technical influences, including sequence motifs, transcription factor
binding, histone modifications, replication timing, cell-type-specific
methylation, and trait-epigenome associations. @code{KnowYourCG} addresses the
challenges of data sparsity in various methylation datasets, including low-pass
Nanopore sequencing, single-cell DNA methylomes, 5-hydroxymethylation profiles,
spatial DNA methylation maps, and array-based datasets for epigenome-wide
association studies and epigenetic clocks.")
    (license license:expat)))

(define-public r-knowseq
  (package
    (name "r-knowseq")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KnowSeq" version))
       (sha256
        (base32 "0k39fh0npnlj240y59wmzgg8fbfz7fkbafg5y2npjic68lqsp9pv"))))
    (properties `((upstream-name . "KnowSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-sva
                             r-stringr
                             r-rmarkdown
                             r-rlist
                             r-reshape2
                             r-randomforest
                             r-r-utils
                             r-praznik
                             r-limma
                             r-kernlab
                             r-jsonlite
                             r-httr
                             r-hmisc
                             r-gridextra
                             r-ggplot2
                             r-edger
                             r-e1071
                             r-cqn
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/KnowSeq")
    (synopsis "KnowSeq R/Bioc package: The Smart Transcriptomic Pipeline")
    (description
     "@code{KnowSeq} proposes a novel methodology that comprises the most relevant
steps in the Transcriptomic gene expression analysis. @code{KnowSeq} expects to
serve as an integrative tool that allows to process and extract relevant
biomarkers, as well as to assess them through a Machine Learning approaches.
Finally, the last objective of @code{KnowSeq} is the biological knowledge
extraction from the biomarkers (Gene Ontology enrichment, Pathway listing and
Visualization and Evidences related to the addressed disease).  Although the
package allows analyzing all the data manually, the main strenght of
@code{KnowSeq} is the possibilty of carrying out an automatic and intelligent
HTML report that collect all the involved steps in one document.  It is
important to highligh that the pipeline is totally modular and flexible, hence
it can be started from whichever of the different steps. @code{KnowSeq} expects
to serve as a novel tool to help to the experts in the field to acquire robust
knowledge and conclusions for the data and diseases to study.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-kmcut
  (package
    (name "r-kmcut")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "kmcut" version))
       (sha256
        (base32 "18rbr8m5clgr1r2sw5kzbc31ikv9ibgckaygv1z3z50fi8klgv6i"))))
    (properties `((upstream-name . "kmcut")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-summarizedexperiment
                             r-s4vectors
                             r-pracma
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/kmcut")
    (synopsis
     "Optimized Kaplan Meier analysis and identification and validation of prognostic biomarkers")
    (description
     "The purpose of the package is to identify prognostic biomarkers and an optimal
numeric cutoff for each biomarker that can be used to stratify a group of test
subjects (samples) into two sub-groups with significantly different survival
(better vs. worse).  The package was developed for the analysis of gene
expression data, such as RNA-seq.  However, it can be used with any quantitative
variable that has a sufficiently large proportion of unique values.")
    (license license:artistic2.0)))

(define-public r-kissde
  (package
    (name "r-kissde")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "kissDE" version))
       (sha256
        (base32 "1wkmkwib59hlgdvcfjq46igcnmrxyrz3zpmn93bpk40is0n0yxyk"))))
    (properties `((upstream-name . "kissDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinycssloaders
                             r-shiny
                             r-matrixstats
                             r-gplots
                             r-ggplot2
                             r-foreach
                             r-factoextra
                             r-dt
                             r-dss
                             r-doparallel
                             r-deseq2
                             r-biobase
                             r-aods3
                             r-ade4))
    (home-page "https://github.com/lbbe-software/kissDE")
    (synopsis "Retrieves Condition-Specific Variants in RNA-Seq Data")
    (description
     "Retrieves condition-specific variants in RNA-seq data (SNVs,
alternative-splicings, indels).  It has been developed as a post-treatment of
@code{KisSplice} but can also be used with user's own data.")
    (license license:gpl2+)))

(define-public r-kinswingr
  (package
    (name "r-kinswingr")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KinSwingR" version))
       (sha256
        (base32 "0izs400ylnhzlqq0ln2v0977yixvncfv90lp9q4cxdh6332k6b54"))))
    (properties `((upstream-name . "KinSwingR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sqldf r-data-table r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/KinSwingR")
    (synopsis "KinSwingR: network-based kinase activity prediction")
    (description
     "@code{KinSwingR} integrates phosphosite data derived from mass-spectrometry data
and kinase-substrate predictions to predict kinase activity.  Several functions
allow the user to build PWM models of kinase-subtrates, statistically infer
PWM:substrate matches, and integrate these data to infer kinase activity.")
    (license license:gpl3)))

(define-public r-kidpack
  (package
    (name "r-kidpack")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "kidpack" version
                              'experiment))
       (sha256
        (base32 "1h73xym3kaxwn6c8g2fdkxijfb111x9cf7qgv52c43k9c0vbqql0"))))
    (properties `((upstream-name . "kidpack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "http://www.dkfz.de/mga")
    (synopsis "DKFZ kidney package")
    (description "kidney microarray data.")
    (license license:gpl2)))

(define-public r-keggorthology
  (package
    (name "r-keggorthology")
    (version "2.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "keggorthology" version))
       (sha256
        (base32 "01l9mii8liqnp0ghz1im5icwmw7i2q0228axjiz2ifnxffcf18iw"))))
    (properties `((upstream-name . "keggorthology")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-hgu95av2-db r-graph r-dbi r-annotationdbi))
    (home-page "https://bioconductor.org/packages/keggorthology")
    (synopsis "graph support for KO, KEGG Orthology")
    (description
     "graphical representation of the Feb 2010 KEGG Orthology.  The KEGG orthology is
a set of pathway IDs that are not to be confused with the KEGG ortholog IDs.")
    (license license:artistic2.0)))

(define-public r-kegglincs
  (package
    (name "r-kegglincs")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KEGGlincs" version))
       (sha256
        (base32 "1yl4vma9dsb2mw16r9n285chw3xgsjij1wmvd6msrspjc97cb37j"))))
    (properties `((upstream-name . "KEGGlincs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-xml
                             r-rjsonio
                             r-plyr
                             r-org-hs-eg-db
                             r-kodata
                             r-keggrest
                             r-kegggraph
                             r-igraph
                             r-httr
                             r-hgu133a-db
                             r-gtools
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/KEGGlincs")
    (synopsis
     "Visualize all edges within a KEGG pathway and overlay LINCS data")
    (description
     "See what is going on under the hood of KEGG pathways by explicitly re-creating
the pathway maps from information obtained from KGML files.")
    (license license:gpl3)))

(define-public r-keggdzpathwaysgeo
  (package
    (name "r-keggdzpathwaysgeo")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KEGGdzPathwaysGEO" version
                              'experiment))
       (sha256
        (base32 "09dkmlx6zacbgdw7y47459xy077g8i6lq93jxbp7c36cdcxmvb5w"))))
    (properties `((upstream-name . "KEGGdzPathwaysGEO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biocgenerics r-biobase))
    (home-page "https://bioconductor.org/packages/KEGGdzPathwaysGEO")
    (synopsis "KEGG Disease Datasets from GEO")
    (description
     "This is a collection of 24 data sets for which the phenotype is a disease with a
corresponding pathway in the KEGG database.This collection of datasets were used
as gold standard in comparing gene set analysis methods by the PADOG package.")
    (license license:gpl2)))

(define-public r-keggandmetacoredzpathwaysgeo
  (package
    (name "r-keggandmetacoredzpathwaysgeo")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KEGGandMetacoreDzPathwaysGEO" version
                              'experiment))
       (sha256
        (base32 "0kfal9fhk8qnkpplzfs8dwlgw33lgmwipk35jb456p0p6sz32lpa"))))
    (properties `((upstream-name . "KEGGandMetacoreDzPathwaysGEO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biocgenerics r-biobase))
    (home-page
     "https://bioconductor.org/packages/KEGGandMetacoreDzPathwaysGEO")
    (synopsis "Disease Datasets from GEO")
    (description
     "This is a collection of 18 data sets for which the phenotype is a disease with a
corresponding pathway in either KEGG or metacore database.This collection of
datasets were used as gold standard in comparing gene set analysis methods.")
    (license license:gpl2)))

(define-public r-kebabs
  (package
    (name "r-kebabs")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "kebabs" version))
       (sha256
        (base32 "1nzy5jbh545x9pc4vk7q0vraq9576yzg03wisavag8y7pn4k8k8f"))))
    (properties `((upstream-name . "kebabs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xvector
                             r-s4vectors
                             r-rcpp
                             r-matrix
                             r-liblinear
                             r-kernlab
                             r-iranges
                             r-e1071
                             r-biostrings
                             r-apcluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/UBod/kebabs")
    (synopsis "Kernel-Based Analysis of Biological Sequences")
    (description
     "The package provides functionality for kernel-based analysis of DNA, RNA, and
amino acid sequences via SVM-based methods.  As core functionality, kebabs
implements following sequence kernels: spectrum kernel, mismatch kernel, gappy
pair kernel, and motif kernel.  Apart from an efficient implementation of
standard position-independent functionality, the kernels are extended in a novel
way to take the position of patterns into account for the similarity measure.
Because of the flexibility of the kernel formulation, other kernels like the
weighted degree kernel or the shifted weighted degree kernel with constant
weighting of positions are included as special cases.  An annotation-specific
variant of the kernels uses annotation information placed along the sequence
together with the patterns in the sequence.  The package allows for the
generation of a kernel matrix or an explicit feature representation in dense or
sparse format for all available kernels which can be used with methods
implemented in other R packages.  With focus on SVM-based methods, kebabs
provides a framework which simplifies the usage of existing SVM implementations
in kernlab, e1071, and @code{LiblineaR}.  Binary and multi-class classification
as well as regression tasks can be used in a unified way without having to deal
with the different functions, parameters, and formats of the selected SVM. As
support for choosing hyperparameters, the package provides cross validation -
including grouped cross validation, grid search and model selection functions.
For easier biological interpretation of the results, the package computes
feature weights for all SVMs and prediction profiles which show the contribution
of individual sequence positions to the prediction result and indicate the
relevance of sequence sections for the learning result and the underlying
biological functions.")
    (license (license:fsdg-compatible "GPL (>= 2.1)"))))

(define-public r-kcsmart
  (package
    (name "r-kcsmart")
    (version "2.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KCsmart" version))
       (sha256
        (base32 "1ys7zpj87i21m7yg8afac85qmjrqqdlr6f7hys04zydpqzq3ldcv"))))
    (properties `((upstream-name . "KCsmart")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-siggenes r-multtest r-kernsmooth r-biocgenerics))
    (home-page "https://bioconductor.org/packages/KCsmart")
    (synopsis "Multi sample aCGH analysis package using kernel convolution")
    (description
     "Multi sample @code{aCGH} analysis package using kernel convolution.")
    (license license:gpl3)))

(define-public r-kboost
  (package
    (name "r-kboost")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KBoost" version))
       (sha256
        (base32 "1m352d1azcqsrjjrcz1s7c1bbqsdq8h8ak0p752ja8z6gcqhslf5"))))
    (properties `((upstream-name . "KBoost")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Luisiglm/KBoost")
    (synopsis
     "Inference of gene regulatory networks from gene expression data")
    (description
     "Reconstructing gene regulatory networks and transcription factor activity is
crucial to understand biological processes and holds potential for developing
personalized treatment.  Yet, it is still an open problem as state-of-art
algorithm are often not able to handle large amounts of data.  Furthermore, many
of the present methods predict numerous false positives and are unable to
integrate other sources of information such as previously known interactions.
Here we introduce KBoost, an algorithm that uses kernel PCA regression, boosting
and Bayesian model averaging for fast and accurate reconstruction of gene
regulatory networks.  KBoost can also use a prior network built on previously
known transcription factor targets.  We have benchmarked KBoost using three
different datasets against other high performing algorithms.  The results show
that our method compares favourably to other methods across datasets.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-katdetectr
  (package
    (name "r-katdetectr")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "katdetectr" version))
       (sha256
        (base32 "02dsxyxslqzyh57zf92wnlxlaw1nm9l7ykspkgbphsky4rchnd5q"))))
    (properties `((upstream-name . "katdetectr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-tidyr
                             r-tibble
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-rdpack
                             r-plyranges
                             r-maftools
                             r-iranges
                             r-ggtext
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-checkmate
                             r-changepoint-np
                             r-changepoint
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bsgenome
                             r-biocparallel
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/doi:10.18129/B9.bioc.katdetectr")
    (synopsis
     "Detection, Characterization and Visualization of Kataegis in Sequencing Data")
    (description
     "Kataegis refers to the occurrence of regional hypermutation and is a phenomenon
observed in a wide range of malignancies.  Using changepoint detection
katdetectr aims to identify putative kataegis foci from common data-formats
housing genomic variants.  Katdetectr has shown to be a robust package for the
detection, characterization and visualization of kataegis.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

