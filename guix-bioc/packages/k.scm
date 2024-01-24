(define-module (guix-bioc packages k)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
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

(define-public r-kodata
  (package
    (name "r-kodata")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KOdata" version
                              'experiment))
       (sha256
        (base32 "1dflsvfz7c2ahs60s4wx8mc9ar8qrz9ax8g9m67jchygcmqs4jla"))))
    (properties `((upstream-name . "KOdata")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/KOdata")
    (synopsis "LINCS Knock-Out Data Package")
    (description
     "This package contains consensus genomic signatures (CGS) for experimental
cell-line specific gene knock-outs as well as baseline gene expression data for
a subset of experimental cell-lines.  Intended for use with package KEGGlincs.")
    (license license:expat)))

(define-public r-knowseq
  (package
    (name "r-knowseq")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KnowSeq" version))
       (sha256
        (base32 "0665wwm8skhh7vqgg2kx2izbd3ks0zkar1m73fqj33rx7fjrqbzb"))))
    (properties `((upstream-name . "KnowSeq")))
    (build-system r-build-system)
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

(define-public r-kissde
  (package
    (name "r-kissde")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "kissDE" version))
       (sha256
        (base32 "0zq0wll048rnqxhwby29g70d8clxz4qdqfp0kxq6gbd9l6xyq511"))))
    (properties `((upstream-name . "kissDE")))
    (build-system r-build-system)
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
    (home-page "https://bioconductor.org/packages/kissDE")
    (synopsis "Retrieves Condition-Specific Variants in RNA-Seq Data")
    (description
     "Retrieves condition-specific variants in RNA-seq data (SNVs,
alternative-splicings, indels).  It has been developed as a post-treatment of
@code{KisSplice} but can also be used with user's own data.")
    (license license:gpl2+)))

(define-public r-kinswingr
  (package
    (name "r-kinswingr")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KinSwingR" version))
       (sha256
        (base32 "04vy8da4cza30ivf8jbrmysz71i7dwp787fazn4xr83jvs5vxgp5"))))
    (properties `((upstream-name . "KinSwingR")))
    (build-system r-build-system)
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "kidpack" version
                              'experiment))
       (sha256
        (base32 "15c7ahrpjapqp90nanpkjb9hbcv42a84xg939fgpzkpgc7ch0m9k"))))
    (properties `((upstream-name . "kidpack")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "http://www.dkfz.de/mga")
    (synopsis "DKFZ kidney package")
    (description "kidney microarray data")
    (license license:gpl2)))

(define-public r-keggorthology
  (package
    (name "r-keggorthology")
    (version "2.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "keggorthology" version))
       (sha256
        (base32 "0nb6q4l8hzbfjs2njdqwbn5g2vayfc41bbxf8dsfy1njm3r1km29"))))
    (properties `((upstream-name . "keggorthology")))
    (build-system r-build-system)
    (propagated-inputs (list r-hgu95av2-db r-graph r-graph r-dbi
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/keggorthology")
    (synopsis "graph support for KO, KEGG Orthology")
    (description
     "graphical representation of the Feb 2010 KEGG Orthology.  The KEGG orthology is
a set of pathway IDs that are not to be confused with the KEGG ortholog IDs.")
    (license license:artistic2.0)))

(define-public r-kegglincs
  (package
    (name "r-kegglincs")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KEGGlincs" version))
       (sha256
        (base32 "06rgmq28g1hw8r6isn1f5y9jiszmckvbicdlkna9x9wh9jzp0q5i"))))
    (properties `((upstream-name . "KEGGlincs")))
    (build-system r-build-system)
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KEGGdzPathwaysGEO" version
                              'experiment))
       (sha256
        (base32 "05s6cq27cdw9w9laq5hxjiynjavd873w2idpwa1k4kw0rdsni8cb"))))
    (properties `((upstream-name . "KEGGdzPathwaysGEO")))
    (build-system r-build-system)
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KEGGandMetacoreDzPathwaysGEO" version
                              'experiment))
       (sha256
        (base32 "1rmn5zx5p4c8is5dd80nppl1r8ciyccwhiir0312bpaaplyc9qks"))))
    (properties `((upstream-name . "KEGGandMetacoreDzPathwaysGEO")))
    (build-system r-build-system)
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "kebabs" version))
       (sha256
        (base32 "17lilr40qdz8vjsb7m4il2q44rd6pskw8bhzxybq8rhd83c15753"))))
    (properties `((upstream-name . "kebabs")))
    (build-system r-build-system)
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
    (home-page "https://bioconductor.org/packages/kebabs")
    (synopsis "Kernel-Based Analysis Of Biological Sequences")
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
    (version "2.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KCsmart" version))
       (sha256
        (base32 "081j7n4c03pvwq5p99cb9y9acy13isvcrrnk5yqrxzyh95n13wbr"))))
    (properties `((upstream-name . "KCsmart")))
    (build-system r-build-system)
    (propagated-inputs (list r-siggenes r-multtest r-kernsmooth r-biocgenerics))
    (home-page "https://bioconductor.org/packages/KCsmart")
    (synopsis "Multi sample aCGH analysis package using kernel convolution")
    (description
     "Multi sample @code{aCGH} analysis package using kernel convolution")
    (license license:gpl3)))

(define-public r-kboost
  (package
    (name "r-kboost")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "KBoost" version))
       (sha256
        (base32 "1sbd104v35wbx148csavk6d1vi8nh53knj4jvl0454q49x2dlchi"))))
    (properties `((upstream-name . "KBoost")))
    (build-system r-build-system)
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "katdetectr" version))
       (sha256
        (base32 "0i1aq7binhlqbknpwcpj4nn4dh3x6i9brg4yvgcz13rd1ak08p9z"))))
    (properties `((upstream-name . "katdetectr")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-tidyr
                             r-tibble
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

