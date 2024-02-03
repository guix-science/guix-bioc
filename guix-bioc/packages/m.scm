(define-module (guix-bioc packages m)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages c)
  #:use-module (gnu packages python)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages i)
  #:use-module (gnu packages perl)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages t)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages machine-learning)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages q)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages w)
  #:use-module (gnu packages web)
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

(define-public r-myvariant
  (package
    (name "r-myvariant")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "myvariant" version))
       (sha256
        (base32 "0az7a7hg4xk0lrvnq3zk5zwyf8zdyby19xzwy73zzgqiaha0b245"))))
    (properties `((upstream-name . "myvariant")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-s4vectors
                             r-plyr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-hmisc
                             r-genomeinfodb))
    (home-page "https://bioconductor.org/packages/myvariant")
    (synopsis "Accesses MyVariant.info variant query and annotation services")
    (description
     "@code{MyVariant.info} is a comprehensive aggregation of variant annotation
resources.  myvariant is a wrapper for querying @code{MyVariant.info} services")
    (license license:artistic2.0)))

(define-public r-mygene
  (package
    (name "r-mygene")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mygene" version))
       (sha256
        (base32 "1a0jhcapr78yyx3z5dfsnz7bb9ahvnjq0qj9zzvdzyaxnzw0wvjm"))))
    (properties `((upstream-name . "mygene")))
    (build-system r-build-system)
    (propagated-inputs (list r-sqldf
                             r-s4vectors
                             r-plyr
                             r-jsonlite
                             r-httr
                             r-hmisc
                             r-genomicfeatures))
    (home-page "https://bioconductor.org/packages/mygene")
    (synopsis "Access MyGene.Info_ services")
    (description
     "@code{MyGene.Info}_ provides simple-to-use REST web services to query/retrieve
gene annotation data.  It's designed with simplicity and performance emphasized.
*mygene*, is an easy-to-use R wrapper to access @code{MyGene.Info}_ services.")
    (license license:artistic2.0)))

(define-public r-mwgcod-db
  (package
    (name "r-mwgcod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mwgcod.db" version
                              'annotation))
       (sha256
        (base32 "0h3ha3d7fml8754ixbd1pgq33jsxl9zivyfmakxy5971b888qiin"))))
    (properties `((upstream-name . "mwgcod.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mwgcod.db")
    (synopsis
     "Codelink Mouse Whole Genome Bioarray (~36 000 mouse gene targets) annotation data (chip mwgcod)")
    (description
     "Codelink Mouse Whole Genome Bioarray (~36 000 mouse gene targets) annotation
data (chip mwgcod) assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mwastools
  (package
    (name "r-mwastools")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MWASTools" version))
       (sha256
        (base32 "0h7c0w9adxrrbn7kd1p7pldcgwv3hmq957zkaa1q9asgdzmf4jd5"))))
    (properties `((upstream-name . "MWASTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-rcurl
                             r-qvalue
                             r-ppcor
                             r-keggrest
                             r-kegggraph
                             r-igraph
                             r-gridextra
                             r-glm2
                             r-ggplot2
                             r-complexheatmap
                             r-car
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MWASTools")
    (synopsis
     "MWASTools: an integrated pipeline to perform metabolome-wide association studies")
    (description
     "MWASTools provides a complete pipeline to perform metabolome-wide association
studies.  Key functionalities of the package include: quality control analysis
of metabonomic data; MWAS using different association models (partial
correlations; generalized linear models); model validation using non-parametric
bootstrapping; visualization of MWAS results; NMR metabolite identification
using STOCSY; and biological interpretation of MWAS results.")
    (license (license:fsdg-compatible "CC BY-NC-ND 4.0"))))

(define-public r-mvoutdata
  (package
    (name "r-mvoutdata")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mvoutData" version
                              'experiment))
       (sha256
        (base32 "17rbb19wv8dzgkrkhgabm3fgr3l2gzvjl34ichlcfalaa17wci3w"))))
    (properties `((upstream-name . "mvoutData")))
    (build-system r-build-system)
    (propagated-inputs (list r-lumi r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/mvoutData")
    (synopsis
     "affy and illumina raw data for assessing outlier detector performance")
    (description
     "affy and illumina raw data for assessing outlier detector performance")
    (license license:artistic2.0)))

(define-public r-musicatk
  (package
    (name "r-musicatk")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "musicatk" version))
       (sha256
        (base32 "0ql8lxc8148w8692w93v2c3x87zzy6m2v5df1krhsaswyl0anpkc"))))
    (properties `((upstream-name . "musicatk")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-uwot
                             r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-topicmodels
                             r-tidyverse
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-stringi
                             r-shiny
                             r-s4vectors
                             r-rlang
                             r-plotly
                             r-philentropy
                             r-nmf
                             r-mcmcprecision
                             r-matrixtests
                             r-mass
                             r-magrittr
                             r-maftools
                             r-iranges
                             r-gtools
                             r-gridextra
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-factoextra
                             r-dplyr
                             r-deconstructsigs
                             r-decomptumor2sig
                             r-data-table
                             r-complexheatmap
                             r-cluster
                             r-bsgenome-mmusculus-ucsc-mm9
                             r-bsgenome-mmusculus-ucsc-mm10
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/musicatk")
    (synopsis "Mutational Signature Comprehensive Analysis Toolkit")
    (description
     "Mutational signatures are carcinogenic exposures or aberrant cellular processes
that can cause alterations to the genome.  We created musicatk (MUtational
SIgnature Comprehensive Analysis @code{ToolKit}) to address shortcomings in
versatility and ease of use in other pre-existing computational tools.  Although
many different types of mutational data have been generated, current software
packages do not have a flexible framework to allow users to mix and match
different types of mutations in the mutational signature inference process.
Musicatk enables users to count and combine multiple mutation types, including
SBS, DBS, and indels.  Musicatk calculates replication strand, transcription
strand and combinations of these features along with discovery from unique and
proprietary genomic feature associated with any mutation type.  Musicatk also
implements several methods for discovery of new signatures as well as methods to
infer exposure given an existing set of signatures.  Musicatk provides functions
for visualization and downstream exploratory analysis including the ability to
compare signatures between cohorts and find matching signatures in COSMIC V2 or
COSMIC V3.")
    (license license:lgpl3)))

(define-public r-muscle
  (package
    (name "r-muscle")
    (version "3.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "muscle" version))
       (sha256
        (base32 "0wmj0bjwr6lf7lp4bwnv94rwl2ibvdb50fwriiy742q1mm8b765x"))))
    (properties `((upstream-name . "muscle")))
    (build-system r-build-system)
    (propagated-inputs (list r-biostrings))
    (home-page "http://www.drive5.com/muscle/")
    (synopsis "Multiple Sequence Alignment with MUSCLE")
    (description
     "MUSCLE performs multiple sequence alignments of nucleotide or amino acid
sequences.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-muscdata
  (package
    (name "r-muscdata")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "muscData" version
                              'experiment))
       (sha256
        (base32 "01jmd59zk4fkny984wv9iwd9bq56cq4mnqz1x9wcjkmgk5bnvwxa"))))
    (properties `((upstream-name . "muscData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-singlecellexperiment r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HelenaLC/muscData")
    (synopsis "Multi-sample multi-group scRNA-seq data")
    (description
     "Data package containing a collection of multi-sample multi-group
@code{scRNA-seq} datasets in @code{SingleCellExperiment} Bioconductor object
format.")
    (license license:expat)))

(define-public r-mungesumstats
  (package
    (name "r-mungesumstats")
    (version "1.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MungeSumstats" version))
       (sha256
        (base32 "0q7ifxxi1bgis1l24dna6xwra48c4lajajs48vlwj3iaa5nsicfk"))))
    (properties `((upstream-name . "MungeSumstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-stringr
                             r-rtracklayer
                             r-rcurl
                             r-r-utils
                             r-magrittr
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-googleauthr
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/neurogenomics/MungeSumstats")
    (synopsis "Standardise summary statistics from GWAS")
    (description
     "The *@code{MungeSumstats}* package is designed to facilitate the standardisation
of GWAS summary statistics.  It reformats inputted summary statisitics to
include SNP, CHR, BP and can look up these values if any are missing.  It also
pefrorms dozens of QC and filtering steps to ensure high data quality and
minimise inter-study differences.")
    (license license:artistic2.0)))

(define-public r-mumosa
  (package
    (name "r-mumosa")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mumosa" version))
       (sha256
        (base32 "1mmhfy8lh1yd02vgw9bg32850sb5l875as8bv3xgq55c78ishlgv"))))
    (properties `((upstream-name . "mumosa")))
    (build-system r-build-system)
    (propagated-inputs (list r-uwot
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-scuttle
                             r-scran
                             r-scaledmatrix
                             r-s4vectors
                             r-metapod
                             r-matrix
                             r-iranges
                             r-igraph
                             r-delayedmatrixstats
                             r-delayedarray
                             r-biocsingular
                             r-biocparallel
                             r-biocneighbors
                             r-biocgenerics
                             r-beachmat
                             r-batchelor))
    (native-inputs (list r-knitr))
    (home-page "http://bioconductor.org/packages/mumosa")
    (synopsis "Multi-Modal Single-Cell Analysis Methods")
    (description
     "Assorted utilities for multi-modal analyses of single-cell datasets.  Includes
functions to combine multiple modalities for downstream analysis, perform
MNN-based batch correction across multiple modalities, and to compute
correlations between assay values for different modalities.")
    (license license:gpl3)))

(define-public r-multiwgcna
  (package
    (name "r-multiwgcna")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiWGCNA" version))
       (sha256
        (base32 "1jp8amw31l45b2h9b138rmbzc43xx2swfs5pnlqladnnzwsbxvn3"))))
    (properties `((upstream-name . "multiWGCNA")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-reshape2
                             r-readr
                             r-patchwork
                             r-igraph
                             r-ggrepel
                             r-ggplot2
                             r-ggalluvial
                             r-flashclust
                             r-dplyr
                             r-dcanr
                             r-data-table
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/multiWGCNA")
    (synopsis "multiWGCNA")
    (description
     "An R package for deeping mining gene co-expression networks in multi-trait
expression data.  Provides functions for analyzing, comparing, and visualizing
WGCNA networks across conditions. @code{multiWGCNA} was designed to handle the
common case where there are multiple biologically meaningful sample traits, such
as disease vs wildtype across development or anatomical region.")
    (license license:gpl3)))

(define-public r-multiscan
  (package
    (name "r-multiscan")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiscan" version))
       (sha256
        (base32 "09shs3hpa285v3hsbrncljxs02dm10qcbnnx9ss6b16gbs6d34wi"))))
    (properties `((upstream-name . "multiscan")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/multiscan")
    (synopsis "R package for combining multiple scans")
    (description
     "Estimates gene expressions from several laser scans of the same microarray")
    (license license:gpl2+)))

(define-public r-multirnaflow
  (package
    (name "r-multirnaflow")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MultiRNAflow" version))
       (sha256
        (base32 "1vbqhd3hbna8l643v6q2la90pkbwa8whxvndyb9snqavwbqq2zjy"))))
    (properties `((upstream-name . "MultiRNAflow")))
    (build-system r-build-system)
    (propagated-inputs (list r-upsetr
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-reshape2
                             r-rcolorbrewer
                             r-plyr
                             r-plot3drgl
                             r-plot3d
                             r-mfuzz
                             r-gprofiler2
                             r-ggsci
                             r-ggrepel
                             r-ggplot2
                             r-ggalluvial
                             r-factominer
                             r-factoextra
                             r-deseq2
                             r-complexheatmap
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/loubator/MultiRNAflow")
    (synopsis
     "An R package for analysing RNA-seq raw counts with several biological conditions and different time points")
    (description
     "Our R package @code{MultiRNAflow} provides an easy to use unified framework
allowing to automatically make both unsupervised and supervised (DE) analysis
for datasets with an arbitrary number of biological conditions and time points.
In particular, our code makes a deep downstream analysis of DE information, e.g.
identifying temporal patterns across biological conditions and DE genes which
are specific to a biological condition for each time.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-multimodalexperiment
  (package
    (name "r-multimodalexperiment")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MultimodalExperiment" version))
       (sha256
        (base32 "19jpax2l69dayhm9pddbg4q7bq9c4xaxdfif93pw6kq63l8g2c1d"))))
    (properties `((upstream-name . "MultimodalExperiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-multiassayexperiment r-iranges
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MultimodalExperiment")
    (synopsis "Integrative Bulk and Single-Cell Experiment Container")
    (description
     "@code{MultimodalExperiment} is an S4 class that integrates bulk and single-cell
experiment data; it is optimally storage-efficient, and its methods are
exceptionally fast.  It effortlessly represents multimodal data of any nature
and features normalized experiment, subject, sample, and cell annotations, which
are related to underlying biological experiments through maps.  Its coordination
methods are opt-in and employ database-like join operations internally to
deliver fast and flexible management of multimodal data.")
    (license license:artistic2.0)))

(define-public r-multimir
  (package
    (name "r-multimir")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiMiR" version))
       (sha256
        (base32 "0mxih9nfjmgq3zd2c08ahwhnx3ahynj9phyrii6chllm3jcsfx15"))))
    (properties `((upstream-name . "multiMiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-tibble
                             r-rcurl
                             r-purrr
                             r-dplyr
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KechrisLab/multiMiR")
    (synopsis
     "Integration of multiple microRNA-target databases with their disease and drug associations")
    (description
     "This package provides a collection of @code{microRNAs/targets} from external
resources, including validated @code{microRNA-target} databases
(@code{miRecords}, @code{miRTarBase} and @code{TarBase}), predicted
@code{microRNA-target} databases (DIANA-@code{microT}, @code{ElMMo},
@code{MicroCosm}, @code{miRanda}, @code{miRDB}, @code{PicTar}, PITA and
@code{TargetScan}) and @code{microRNA-disease/drug} databases
(@code{miR2Disease}, Pharmaco-@code{miR} @code{VerSe} and @code{PhenomiR}).")
    (license license:expat)))

(define-public r-multimed
  (package
    (name "r-multimed")
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MultiMed" version))
       (sha256
        (base32 "0fxfhqyald2z7g3yqw9w1haxhlfvcfrxwlljg2s0a9b7rpryq14r"))))
    (properties `((upstream-name . "MultiMed")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MultiMed")
    (synopsis "Testing multiple biological mediators simultaneously")
    (description
     "This package implements methods for testing multiple mediators")
    (license (license:fsdg-compatible "GPL (>= 2) + file LICENSE"))))

(define-public r-multihiccompare
  (package
    (name "r-multihiccompare")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiHiCcompare" version))
       (sha256
        (base32 "152h62f41r2lay2zpnllsfamy0m63w5bi5gnyy7q32rhmq9z2k3b"))))
    (properties `((upstream-name . "multiHiCcompare")))
    (build-system r-build-system)
    (propagated-inputs (list r-qqman
                             r-pheatmap
                             r-pbapply
                             r-hiccompare
                             r-genomicranges
                             r-genomeinfodbdata
                             r-genomeinfodb
                             r-edger
                             r-dplyr
                             r-data-table
                             r-biocparallel
                             r-aggregation))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/multiHiCcompare")
    (synopsis
     "Normalize and detect differences between Hi-C datasets when replicates of each experimental condition are available")
    (description
     "@code{multiHiCcompare} provides functions for joint normalization and difference
detection in multiple Hi-C datasets.  This extension of the original
@code{HiCcompare} package now allows for Hi-C experiments with more than 2
groups and multiple samples per group. @code{multiHiCcompare} operates on
processed Hi-C data in the form of sparse upper triangular matrices.  It accepts
four column (chromosome, region1, region2, IF) tab-separated text files storing
chromatin interaction matrices. @code{multiHiCcompare} provides cyclic loess and
fast loess (fastlo) methods adapted to jointly normalizing Hi-C data.
Additionally, it provides a general linear model (GLM) framework adapting the
@code{edgeR} package to detect differences in Hi-C data in a distance dependent
manner.")
    (license license:expat)))

(define-public r-multigsea
  (package
    (name "r-multigsea")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiGSEA" version))
       (sha256
        (base32 "0p9x69ybwss3bdsym78ajlkwx7vgj4nfvyig9drij524r90kfpd8"))))
    (properties `((upstream-name . "multiGSEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rappdirs
                             r-metap
                             r-metaboliteidmapping
                             r-magrittr
                             r-graphite
                             r-fgsea
                             r-dplyr
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yigbt/multiGSEA")
    (synopsis
     "Combining GSEA-based pathway enrichment with multi omics data integration")
    (description
     "Extracted features from pathways derived from 8 different databases (KEGG,
Reactome, Biocarta, etc.) can be used on transcriptomic, proteomic, and/or
metabolomic level to calculate a combined GSEA-based enrichment score.")
    (license license:gpl3)))

(define-public r-multicrispr
  (package
    (name "r-multicrispr")
    (version "1.12.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multicrispr" version))
       (sha256
        (base32 "13ahvfxp5jkjrhdp3bz480h2k3m055brni22dbl3144f9lnyrw5b"))))
    (properties `((upstream-name . "multicrispr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringi
                             r-rtracklayer
                             r-reticulate
                             r-rbowtie
                             r-plyranges
                             r-magrittr
                             r-karyoploter
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-data-table
                             r-crisprseek
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-assertive-sets
                             r-assertive-reflection
                             r-assertive-numbers
                             r-assertive-files
                             r-assertive-base))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/loosolab/multicrispr")
    (synopsis "Multi-locus multi-purpose Crispr/Cas design")
    (description
     "This package is for designing Crispr/Cas9 and Prime Editing experiments.  It
contains functions to (1) define and transform genomic targets, (2) find spacers
(4) count offtarget (mis)matches, and (5) compute Doench2016/2014 targeting
efficiency.  Care has been taken for multicrispr to scale well towards large
target sets, enabling the design of large Crispr/Cas9 libraries.")
    (license license:gpl2)))

(define-public r-multiclust
  (package
    (name "r-multiclust")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiClust" version))
       (sha256
        (base32 "0lmnmh365dzk50klcgi1fqkhk7myjcvmkc29vwzs56ljd2zlw0hm"))))
    (properties `((upstream-name . "multiClust")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-mclust
                             r-dendextend
                             r-ctc
                             r-cluster
                             r-amap))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/multiClust")
    (synopsis
     "multiClust: An R-package for Identifying Biologically Relevant Clusters in Cancer Transcriptome Profiles")
    (description
     "Clustering is carried out to identify patterns in transcriptomics profiles to
determine clinically relevant subgroups of patients.  Feature (gene) selection
is a critical and an integral part of the process.  Currently, there are many
feature selection and clustering methods to identify the relevant genes and
perform clustering of samples.  However, choosing an appropriate methodology is
difficult.  In addition, extensive feature selection methods have not been
supported by the available packages.  Hence, we developed an integrative
R-package called @code{multiClust} that allows researchers to experiment with
the choice of combination of methods for gene selection and clustering with
ease.  Using @code{multiClust}, we identified the best performing clustering
methodology in the context of clinical outcome.  Our observations demonstrate
that simple methods such as variance-based ranking perform well on the majority
of data sets, provided that the appropriate number of genes is selected.
However, different gene ranking and selection methods remain relevant as no
methodology works for all studies.")
    (license license:gpl2+)))

(define-public r-mulcom
  (package
    (name "r-mulcom")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Mulcom" version))
       (sha256
        (base32 "15svf18a5r4hdpc69wmbihdg6hns5mmzrklh0sd6wjq72z8ij3j5"))))
    (properties `((upstream-name . "Mulcom")))
    (build-system r-build-system)
    (propagated-inputs (list r-fields r-biobase))
    (home-page "https://bioconductor.org/packages/Mulcom")
    (synopsis "Calculates Mulcom test")
    (description
     "Identification of differentially expressed genes and false discovery rate (FDR)
calculation by Multiple Comparison test.")
    (license license:gpl2)))

(define-public r-mugaexampledata
  (package
    (name "r-mugaexampledata")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MUGAExampleData" version
                              'experiment))
       (sha256
        (base32 "1q8bqqpc14iymmmmv87yqzkpjlzq4r801hjav8kymsw66zlqi0rq"))))
    (properties `((upstream-name . "MUGAExampleData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MUGAExampleData")
    (synopsis
     "Example {M}ouse {U}niversal {G}enotyping {A}rray data for genome reconstruction and quantitative trait locus mapping")
    (description
     "This package contains example data for the MUGA array that is used by the R
package DOQTL.")
    (license license:gpl3)))

(define-public r-mudata
  (package
    (name "r-mudata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MuData" version))
       (sha256
        (base32 "0fifviwyryms2355gv2m2psn7nkgswzpfa53q4ybrh05qigb2hsx"))))
    (properties `((upstream-name . "MuData")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rhdf5
                             r-multiassayexperiment
                             r-matrix
                             r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ilia-kats/MuData")
    (synopsis "Serialization for MultiAssayExperiment Objects")
    (description
     "Save @code{MultiAssayExperiments} to h5mu files supported by muon and mudata.
Muon is a Python framework for multimodal omics data analysis.  It uses an
HDF5-based format for data storage.")
    (license license:gpl3)))

(define-public r-mu6500subdcdf
  (package
    (name "r-mu6500subdcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu6500subdcdf" version
                              'annotation))
       (sha256
        (base32 "0xq4bgkv6iaivz696lz9rrz53dh8gd9zjvqdnz9c06pg7scfv6r1"))))
    (properties `((upstream-name . "mu6500subdcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu6500subdcdf")
    (synopsis "mu6500subdcdf")
    (description
     "This package provides a package containing an environment representing the
Mu6500@code{subD.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu6500subccdf
  (package
    (name "r-mu6500subccdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu6500subccdf" version
                              'annotation))
       (sha256
        (base32 "1pflw5cpk7ssrg5kjq81gj9z5jafd2mlm6sv4czxbmjpb6038d01"))))
    (properties `((upstream-name . "mu6500subccdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu6500subccdf")
    (synopsis "mu6500subccdf")
    (description
     "This package provides a package containing an environment representing the
Mu6500@code{subC.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu6500subbcdf
  (package
    (name "r-mu6500subbcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu6500subbcdf" version
                              'annotation))
       (sha256
        (base32 "0a0w5yldgjvj8pyw7ygn685pj95qdfm34c0sqvgqf7w7g5wm4jvk"))))
    (properties `((upstream-name . "mu6500subbcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu6500subbcdf")
    (synopsis "mu6500subbcdf")
    (description
     "This package provides a package containing an environment representing the
Mu6500@code{subB.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu6500subacdf
  (package
    (name "r-mu6500subacdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu6500subacdf" version
                              'annotation))
       (sha256
        (base32 "15y7x1jgzzc366dapa5gy44m98zpn8mfghjxh12k3k9ryd59lxn9"))))
    (properties `((upstream-name . "mu6500subacdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu6500subacdf")
    (synopsis "mu6500subacdf")
    (description
     "This package provides a package containing an environment representing the
Mu6500@code{subA.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu22v3-db
  (package
    (name "r-mu22v3-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Mu22v3.db" version
                              'annotation))
       (sha256
        (base32 "016dfa1pz5valjnqh9z73b931wk184vykv9xmz60xp2kj9ccrjzc"))))
    (properties `((upstream-name . "Mu22v3.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Mu22v3.db")
    (synopsis "FHCRC Genomics Shared Resource Mu22v3 Annotation Data (Mu22v3)")
    (description
     "FHCRC Genomics Shared Resource Mu22v3 Annotation Data (Mu22v3) assembled using
data from public repositories")
    (license license:artistic2.0)))

(define-public r-mu19ksubccdf
  (package
    (name "r-mu19ksubccdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu19ksubccdf" version
                              'annotation))
       (sha256
        (base32 "063v3fn06p1znwrdxn26lz7qz9sfzk10hgabimxw3rz5x0580d4l"))))
    (properties `((upstream-name . "mu19ksubccdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksubccdf")
    (synopsis "mu19ksubccdf")
    (description
     "This package provides a package containing an environment representing the
Mu19@code{KsubC.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu19ksubc-db
  (package
    (name "r-mu19ksubc-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu19ksubc.db" version
                              'annotation))
       (sha256
        (base32 "19ixhs75lsrykdqzb2cn1dz2f45nzcmpbp340ipp78maa89z3axr"))))
    (properties `((upstream-name . "mu19ksubc.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksubc.db")
    (synopsis
     "Affymetrix Affymetrix Mu19KsubC Array annotation data (chip mu19ksubc)")
    (description
     "Affymetrix Affymetrix Mu19@code{KsubC} Array annotation data (chip mu19ksubc)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mu19ksubbcdf
  (package
    (name "r-mu19ksubbcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu19ksubbcdf" version
                              'annotation))
       (sha256
        (base32 "1waizab2dn74y8b1w27l1yg29gi00v16fij1jm2yhik5cnjhhhk4"))))
    (properties `((upstream-name . "mu19ksubbcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksubbcdf")
    (synopsis "mu19ksubbcdf")
    (description
     "This package provides a package containing an environment representing the
Mu19@code{KsubB.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu19ksubb-db
  (package
    (name "r-mu19ksubb-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu19ksubb.db" version
                              'annotation))
       (sha256
        (base32 "1i7xl84mv8s93hqh9baa4sp5jhwmvhsm37379yjps1q5yyydci4i"))))
    (properties `((upstream-name . "mu19ksubb.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksubb.db")
    (synopsis
     "Affymetrix Affymetrix Mu19KsubB Array annotation data (chip mu19ksubb)")
    (description
     "Affymetrix Affymetrix Mu19@code{KsubB} Array annotation data (chip mu19ksubb)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mu19ksubacdf
  (package
    (name "r-mu19ksubacdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu19ksubacdf" version
                              'annotation))
       (sha256
        (base32 "0c1nhvnnn8v07m6rci2cml6i86rs77b1xnw7jmyndfl458vjlp09"))))
    (properties `((upstream-name . "mu19ksubacdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksubacdf")
    (synopsis "mu19ksubacdf")
    (description
     "This package provides a package containing an environment representing the
Mu19@code{KsubA.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu19ksuba-db
  (package
    (name "r-mu19ksuba-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu19ksuba.db" version
                              'annotation))
       (sha256
        (base32 "1js9zrbbzdrsl73qa1dvfqcrcaxsmlrj7ymyjiadzcg3g014z3lv"))))
    (properties `((upstream-name . "mu19ksuba.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksuba.db")
    (synopsis
     "Affymetrix Affymetrix Mu19KsubA Array annotation data (chip mu19ksuba)")
    (description
     "Affymetrix Affymetrix Mu19@code{KsubA} Array annotation data (chip mu19ksuba)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mu15v1-db
  (package
    (name "r-mu15v1-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Mu15v1.db" version
                              'annotation))
       (sha256
        (base32 "0qchqkbx6ybijab8qhflxj33kwksfll1d3d3917vydjac9fzw1lz"))))
    (properties `((upstream-name . "Mu15v1.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Mu15v1.db")
    (synopsis "FHCRC Genomics Shared Resource Mu15v1 Annotation Data (Mu15v1)")
    (description
     "FHCRC Genomics Shared Resource Mu15v1 Annotation Data (Mu15v1) assembled using
data from public repositories")
    (license license:artistic2.0)))

(define-public r-mu11ksubbprobe
  (package
    (name "r-mu11ksubbprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu11ksubbprobe" version
                              'annotation))
       (sha256
        (base32 "139kbrlxlw0r4z2iyy4qqcc70sb6nmsn0h7v33k5j6r52qz4hjxh"))))
    (properties `((upstream-name . "mu11ksubbprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu11ksubbprobe")
    (synopsis "Probe sequence data for microarrays of type mu11ksubb")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Mu11@code{KsubB\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-mu11ksubbcdf
  (package
    (name "r-mu11ksubbcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu11ksubbcdf" version
                              'annotation))
       (sha256
        (base32 "1dajsq041pg3g9c5j3sd0w6gypqpdva91rb4a7ni990nk45mg23k"))))
    (properties `((upstream-name . "mu11ksubbcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu11ksubbcdf")
    (synopsis "mu11ksubbcdf")
    (description
     "This package provides a package containing an environment representing the
Mu11@code{KsubB.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu11ksubb-db
  (package
    (name "r-mu11ksubb-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu11ksubb.db" version
                              'annotation))
       (sha256
        (base32 "0z6lbi437rvamwb6185f1brhayd70fw6dh6ga3ln2sinvbpkdh4w"))))
    (properties `((upstream-name . "mu11ksubb.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu11ksubb.db")
    (synopsis
     "Affymetrix Affymetrix Mu11KsubB Array annotation data (chip mu11ksubb)")
    (description
     "Affymetrix Affymetrix Mu11@code{KsubB} Array annotation data (chip mu11ksubb)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mu11ksubaprobe
  (package
    (name "r-mu11ksubaprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu11ksubaprobe" version
                              'annotation))
       (sha256
        (base32 "1p3kc06h83ivh06a8qqcbpgbsbdfp9nnwvqfxr6d1gdn15qcp96k"))))
    (properties `((upstream-name . "mu11ksubaprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu11ksubaprobe")
    (synopsis "Probe sequence data for microarrays of type mu11ksuba")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Mu11@code{KsubA\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-mu11ksubacdf
  (package
    (name "r-mu11ksubacdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu11ksubacdf" version
                              'annotation))
       (sha256
        (base32 "09xm3ah3zlssclblx663rlwrnmx3niabd5nf7zf7krhbpgcwhyim"))))
    (properties `((upstream-name . "mu11ksubacdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu11ksubacdf")
    (synopsis "mu11ksubacdf")
    (description
     "This package provides a package containing an environment representing the
Mu11@code{KsubA.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mu11ksuba-db
  (package
    (name "r-mu11ksuba-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mu11ksuba.db" version
                              'annotation))
       (sha256
        (base32 "06sfscqw82sjf5q2cd60bi2jclf2j3xn37555zwm6l602piqyqs2"))))
    (properties `((upstream-name . "mu11ksuba.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu11ksuba.db")
    (synopsis
     "Affymetrix Affymetrix Mu11KsubA Array annotation data (chip mu11ksuba)")
    (description
     "Affymetrix Affymetrix Mu11@code{KsubA} Array annotation data (chip mu11ksuba)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mtbls2
  (package
    (name "r-mtbls2")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mtbls2" version
                              'experiment))
       (sha256
        (base32 "1z4n5bykfk02b6gscwygy4r99fjk9cmiv8fzp2996q4mhzr7dh6c"))))
    (properties `((upstream-name . "mtbls2")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://www.ebi.ac.uk/metabolights/MTBLS2")
    (synopsis
     "MetaboLights MTBLS2: Comparative LC/MS-based profiling of silver nitrate-treated Arabidopsis thaliana leaves of wild-type and cyp79B2 cyp79B3 double knockout plants. Böttcher et al. (2004)")
    (description
     "Indole-3-acetaldoxime (IAOx) represents an early intermediate of the
biosynthesis of a variety of indolic secondary metabolites including the
phytoanticipin indol-3-ylmethyl glucosinolate and the phytoalexin camalexin
(3-thiazol-2'-yl-indole).  Arabidopsis thaliana cyp79B2 cyp79B3 double knockout
plants are completely impaired in the conversion of tryptophan to
indole-3-acetaldoxime and do not accumulate IAOx-derived metabolites any longer.
 Consequently, comparative analysis of wild-type and cyp79B2 cyp79B3 plant lines
has the potential to explore the complete range of IAOx-derived indolic
secondary metabolites.")
    (license license:cc0)))

(define-public r-mta10transcriptcluster-db
  (package
    (name "r-mta10transcriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mta10transcriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "1hk862b1r023l3h04n5qqqd5fmpvz4l4xypb9lvc40nxr8h6sw2a"))))
    (properties `((upstream-name . "mta10transcriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mta10transcriptcluster.db")
    (synopsis "Affymetrix mta10 annotation data (chip mta10transcriptcluster)")
    (description
     "Affymetrix mta10 annotation data (chip mta10transcriptcluster) assembled using
data from public repositories")
    (license license:artistic2.0)))

(define-public r-mta10probeset-db
  (package
    (name "r-mta10probeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mta10probeset.db" version
                              'annotation))
       (sha256
        (base32 "1kscmw99qsl34dwhl3izvqhyga65lymgv9fx81h9abq9x2dhr7im"))))
    (properties `((upstream-name . "mta10probeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mta10probeset.db")
    (synopsis "Affymetrix mta10 annotation data (chip mta10probeset)")
    (description
     "Affymetrix mta10 annotation data (chip mta10probeset) assembled using data from
public repositories")
    (license license:artistic2.0)))

(define-public r-msstatstmt
  (package
    (name "r-msstatstmt")
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsTMT" version))
       (sha256
        (base32 "00ykgnzwx15szwiqlcdfpnfh40mryj3zlbix3pysxj44svvz1vz4"))))
    (properties `((upstream-name . "MSstatsTMT")))
    (build-system r-build-system)
    (propagated-inputs (list r-msstatsconvert
                             r-msstats
                             r-lmertest
                             r-lme4
                             r-limma
                             r-ggplot2
                             r-data-table
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "http://msstats.org/msstatstmt/")
    (synopsis
     "Protein Significance Analysis in shotgun mass spectrometry-based proteomic experiments with tandem mass tag (TMT) labeling")
    (description
     "The package provides statistical tools for detecting differentially abundant
proteins in shotgun mass spectrometry-based proteomic experiments with tandem
mass tag (TMT) labeling.  It provides multiple functionalities, including aata
visualization, protein quantification and normalization, and statistical
modeling and inference.  Furthermore, it is inter-operable with other data
processing tools, such as Proteome Discoverer, @code{MaxQuant}, @code{OpenMS}
and @code{SpectroMine}.")
    (license license:artistic2.0)))

(define-public r-msstatsshiny
  (package
    (name "r-msstatsshiny")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsShiny" version))
       (sha256
        (base32 "0nk9hmzw3zsi2kjal505js5xj50xfxxcailhwfjig1jrpgqb4cq1"))))
    (properties `((upstream-name . "MSstatsShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid
                             r-tidyr
                             r-shinyjs
                             r-shinybusy
                             r-shinybs
                             r-shiny
                             r-readxl
                             r-msstatstmt
                             r-msstatsptm
                             r-msstatsconvert
                             r-msstats
                             r-marray
                             r-htmltools
                             r-hmisc
                             r-gplots
                             r-ggrepel
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MSstatsShiny")
    (synopsis "MSstats GUI for Statistical Anaylsis of Proteomics Experiments")
    (description
     "M@code{SstatsShiny} is an R-Shiny graphical user interface (GUI) integrated with
the R packages MSstats, M@code{SstatsTMT}, and M@code{SstatsPTM}.  It provides a
point and click end-to-end analysis pipeline applicable to a wide variety of
experimental designs.  These include data-dependedent acquisitions (DDA) which
are label-free or tandem mass tag (TMT)-based, as well as DIA, SRM, and PRM
acquisitions and those targeting post-translational modifications (PTMs).  The
application automatically saves users selections and builds an R script that
recreates their analysis, supporting reproducible data analysis.")
    (license license:artistic2.0)))

(define-public r-msstatsqcgui
  (package
    (name "r-msstatsqcgui")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsQCgui" version))
       (sha256
        (base32 "033ld5kns6w0gi8h7fzwvhv297kk9dqay31i1336ab9zss3l7wyp"))))
    (properties `((upstream-name . "MSstatsQCgui")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-plotly
                             r-msstatsqc
                             r-gridextra
                             r-ggextra
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "http://msstats.org/msstatsqc")
    (synopsis "graphical user interface for MSstatsQC package")
    (description
     "M@code{SstatsQCgui} is a Shiny app which provides longitudinal system
suitability monitoring and quality control tools for proteomic experiments.")
    (license (license:fsdg-compatible "Artistic License 2.0"))))

(define-public r-msstatsqc
  (package
    (name "r-msstatsqc")
    (version "2.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsQC" version))
       (sha256
        (base32 "0lf12y4v4fjm105lnpvh832y018cnn7zxkvjncb4xy5qgvy59n42"))))
    (properties `((upstream-name . "MSstatsQC")))
    (build-system r-build-system)
    (propagated-inputs (list r-qcmetrics
                             r-plotly
                             r-msnbase
                             r-ggplot2
                             r-ggextra
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "http://msstats.org/msstatsqc")
    (synopsis
     "Longitudinal system suitability monitoring and quality control for proteomic experiments")
    (description
     "M@code{SstatsQC} is an R package which provides longitudinal system suitability
monitoring and quality control tools for proteomic experiments.")
    (license (license:fsdg-compatible "Artistic License 2.0"))))

(define-public r-msstatsptm
  (package
    (name "r-msstatsptm")
    (version "2.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsPTM" version))
       (sha256
        (base32 "1sp2h3x5969n90nf9qhd0f0kfk9i689f1cvnkvj62f8ckfkciw9x"))))
    (properties `((upstream-name . "MSstatsPTM")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-rcpp
                             r-msstatstmt
                             r-msstatsconvert
                             r-msstats
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-checkmate
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MSstatsPTM")
    (synopsis
     "Statistical Characterization of Post-translational Modifications")
    (description
     "M@code{SstatsPTM} provides general statistical methods for quantitative
characterization of post-translational modifications (PTMs).  Supports DDA, DIA,
SRM, and tandem mass tag (TMT) labeling.  Typically, the analysis involves the
quantification of PTM sites (i.e., modified residues) and their corresponding
proteins, as well as the integration of the quantification results.
M@code{SstatsPTM} provides functions for summarization, estimation of PTM site
abundance, and detection of changes in PTMs across experimental conditions.")
    (license license:artistic2.0)))

(define-public r-msstatslobd
  (package
    (name "r-msstatslobd")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsLOBD" version))
       (sha256
        (base32 "1pvpvp3m76vrc1kwl8rniglkzqg8d6dv8kjidmp7mbpixljfa9yq"))))
    (properties `((upstream-name . "MSstatsLOBD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-minpack-lm r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MSstatsLOBD")
    (synopsis
     "Assay characterization: estimation of limit of blanc(LoB) and limit of detection(LOD)")
    (description
     "The M@code{SstatsLOBD} package allows calculation and visualization of limit of
blac (LOB) and limit of detection (LOD).  We define the LOB as the highest
apparent concentration of a peptide expected when replicates of a blank sample
containing no peptides are measured.  The LOD is defined as the measured
concentration value for which the probability of falsely claiming the absence of
a peptide in the sample is 0.05, given a probability 0.05 of falsely claiming
its presence.  These functionalities were previously a part of the MSstats
package.  The methodology is described in Galitzine (2018)
<doi:10.1074/mcp.RA117.000322>.")
    (license license:artistic2.0)))

(define-public r-msstatslip
  (package
    (name "r-msstatslip")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsLiP" version))
       (sha256
        (base32 "1n9z1xirkkglvivc19zqqvk5jwgzsm9424phldfj080p0aibjkmn"))))
    (properties `((upstream-name . "MSstatsLiP")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rcpp
                             r-purrr
                             r-msstatsptm
                             r-msstatsconvert
                             r-msstats
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-factoextra
                             r-dplyr
                             r-data-table
                             r-checkmate
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MSstatsLiP")
    (synopsis
     "LiP Significance Analysis in shotgun mass spectrometry-based proteomic experiments")
    (description
     "This package provides tools for @code{LiP} peptide and protein significance
analysis.  Provides functions for summarization, estimation of @code{LiP}
peptide abundance, and detection of changes across conditions.  Utilizes
functionality across the MSstats family of packages.")
    (license license:artistic2.0)))

(define-public r-msstatsconvert
  (package
    (name "r-msstatsconvert")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsConvert" version))
       (sha256
        (base32 "1xp57pf0j4ndy33lyr7i08qrsfqnsnywb5as0fjfpx1ncw44na4c"))))
    (properties `((upstream-name . "MSstatsConvert")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-log4r r-data-table r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MSstatsConvert")
    (synopsis
     "Import Data from Various Mass Spectrometry Signal Processing Tools to MSstats Format")
    (description
     "M@code{SstatsConvert} provides tools for importing reports of Mass Spectrometry
data processing tools into R format suitable for statistical analysis using the
MSstats and M@code{SstatsTMT} packages.")
    (license license:artistic2.0)))

(define-public r-msstatsbig
  (package
    (name "r-msstatsbig")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsBig" version))
       (sha256
        (base32 "0gaf22l8ccqff4vfy72s6swfp0p6675a83n1himpmh0nyb1mkwal"))))
    (properties `((upstream-name . "MSstatsBig")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparklyr
                             r-readr
                             r-msstatsconvert
                             r-msstats
                             r-dplyr
                             r-dbi
                             r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MSstatsBig")
    (synopsis "MSstats Preprocessing for Larger than Memory Data")
    (description
     "MSstats package provide tools for preprocessing, summarization and differential
analysis of mass spectrometry (MS) proteomics data.  Recently, some MS protocols
enable acquisition of data sets that result in larger than memory quantitative
data.  MSstats functions are not able to process such data.  M@code{SstatsBig}
package provides additional converter functions that enable processing larger
than memory data sets.")
    (license license:artistic2.0)))

(define-public r-msstats
  (package
    (name "r-msstats")
    (version "4.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstats" version))
       (sha256
        (base32 "153vg9kzi54lk9fmycw7rfmj9rixyvq6lsn76dp90m353hba476d"))))
    (properties `((upstream-name . "MSstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-statmod
                             r-rcpparmadillo
                             r-rcpp
                             r-preprocesscore
                             r-msstatsconvert
                             r-mass
                             r-marray
                             r-lme4
                             r-limma
                             r-gplots
                             r-ggrepel
                             r-ggplot2
                             r-data-table
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "http://msstats.org")
    (synopsis
     "Protein Significance Analysis in DDA, SRM and DIA for Label-free or Label-based Proteomics Experiments")
    (description
     "This package provides a set of tools for statistical relative protein
significance analysis in DDA, SRM and DIA experiments.")
    (license license:artistic2.0)))

(define-public r-msquality
  (package
    (name "r-msquality")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsQuality" version))
       (sha256
        (base32 "14wswjxdfvnlfahwgrzhflfn45r7hlca2ydxw3whr2l3h82iwilb"))))
    (properties `((upstream-name . "MsQuality")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-spectra
                             r-shinydashboard
                             r-shiny
                             r-rmzqc
                             r-protgenerics
                             r-plotly
                             r-msexperiment
                             r-msdata
                             r-htmlwidgets
                             r-ggplot2
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://www.github.com/tnaake/MsQuality/")
    (synopsis
     "MsQuality - Quality metric calculation from Spectra and MsExperiment objects")
    (description
     "The @code{MsQuality} provides functionality to calculate quality metrics for
mass spectrometry-derived, spectral data at the per-sample level.
@code{MsQuality} relies on the @code{mzQC} framework of quality metrics defined
by the Human Proteom Organization-Proteomics Standards Initiative (HUPO-PSI).
These metrics quantify the quality of spectral raw files using a controlled
vocabulary.  The package is especially addressed towards users that acquire mass
spectrometry data on a large scale (e.g. data sets from clinical settings
consisting of several thousands of samples).  The @code{MsQuality} package
allows to calculate low-level quality metrics that require minimum information
on mass spectrometry data: retention time, m/z values, and associated
intensities. @code{MsQuality} relies on the Spectra package, or alternatively
the @code{MsExperiment} package, and its infrastructure to store spectral data.")
    (license license:gpl3)))

(define-public r-msqrob2
  (package
    (name "r-msqrob2")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msqrob2" version))
       (sha256
        (base32 "1g2a01cxjmfbjhx0rr2dq1wl8vq9llhpyq8qwn36jz6s0k32b2f5"))))
    (properties `((upstream-name . "msqrob2")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-qfeatures
                             r-purrr
                             r-multiassayexperiment
                             r-matrix
                             r-mass
                             r-lme4
                             r-limma
                             r-codetools
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/statOmics/msqrob2")
    (synopsis "Robust statistical inference for quantitative LC-MS proteomics")
    (description
     "msqrob2 provides a robust linear mixed model framework for assessing
differential abundance in MS-based Quantitative proteomics experiments.  Our
workflows can start from raw peptide intensities or summarised protein
expression values.  The model parameter estimates can be stabilized by ridge
regression, empirical Bayes variance estimation and robust M-estimation.
msqrob2's hurde workflow can handle missing data without having to rely on
hard-to-verify imputation assumptions, and, outcompetes state-of-the-art methods
with and without imputation for both high and low missingness.  It builds on
QFeature infrastructure for quantitative mass spectrometry data to store the
model results together with the raw data and preprocessed data.")
    (license license:artistic2.0)))

(define-public r-msqc1
  (package
    (name "r-msqc1")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msqc1" version
                              'experiment))
       (sha256
        (base32 "1s6wfmrss67qz8lsiqbm3bsvw3zm9pczv0w6712dd2bd2mf2lirg"))))
    (properties `((upstream-name . "msqc1")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://panoramaweb.org/labkey/MSQC1.url")
    (synopsis "Sigma mix MSQC1 data")
    (description
     "contains eight technical replicate data set and a three replicate dilution
series of the MS Qual/Quant Quality Control Mix standard sample (Sigma-Aldrich,
Buchs, Switzerland) measured on five different mass spectrometer platforms at
the Functional Genomics Center Zurich.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-mspuritydata
  (package
    (name "r-mspuritydata")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msPurityData" version
                              'experiment))
       (sha256
        (base32 "1gf28bcj65vyvghdd2vqj3zsymw2y4jk8dhhkhh6ps18qh149ca0"))))
    (properties `((upstream-name . "msPurityData")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/msPurityData")
    (synopsis
     "Fragmentation spectral libraries and data to test the msPurity package")
    (description
     "Fragmentation spectral libraries and data to test the @code{msPurity} package")
    (license license:gpl2+)))

(define-public r-mspurity
  (package
    (name "r-mspurity")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msPurity" version))
       (sha256
        (base32 "14klzkpii892yn08kg9hwkwiprfrpfgn4dj52dyw8k4k30vri3gw"))))
    (properties `((upstream-name . "msPurity")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rsqlite
                             r-reshape2
                             r-rcpp
                             r-plyr
                             r-mzr
                             r-magrittr
                             r-ggplot2
                             r-foreach
                             r-fastcluster
                             r-dplyr
                             r-dosnow
                             r-dbplyr
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/computational-metabolomics/msPurity/")
    (synopsis
     "Automated Evaluation of Precursor Ion Purity for Mass Spectrometry Based Fragmentation in Metabolomics")
    (description
     "@code{msPurity} R package was developed to: 1) Assess the spectral quality of
fragmentation spectra by evaluating the \"precursor ion purity\".  2) Process
fragmentation spectra.  3) Perform spectral matching.  What is precursor ion
purity? -What we call \"Precursor ion purity\" is a measure of the contribution of
a selected precursor peak in an isolation window used for fragmentation.  The
simple calculation involves dividing the intensity of the selected precursor
peak by the total intensity of the isolation window.  When assessing MS/MS
spectra this calculation is done before and after the MS/MS scan of interest and
the purity is interpolated at the recorded time of the MS/MS acquisition.
Additionally, isotopic peaks can be removed, low abundance peaks are removed
that are thought to have limited contribution to the resulting MS/MS spectra and
the isolation efficiency of the mass spectrometer can be used to normalise the
intensities used for the calculation.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-msprep
  (package
    (name "r-msprep")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSPrep" version))
       (sha256
        (base32 "1fbnvsrs1mka3ssr9imk0zgsjjrbl5nczhg1g8hzmvw7dj5fijhi"))))
    (properties `((upstream-name . "MSPrep")))
    (build-system r-build-system)
    (propagated-inputs (list r-vim
                             r-tidyr
                             r-tibble
                             r-sva
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rlang
                             r-preprocesscore
                             r-pcamethods
                             r-missforest
                             r-magrittr
                             r-dplyr
                             r-crmn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KechrisLab/MSPrep")
    (synopsis
     "Package for Summarizing, Filtering, Imputing, and Normalizing Metabolomics Data")
    (description
     "Package performs summarization of replicates, filtering by frequency, several
different options for imputing missing data, and a variety of options for
transforming, batch correcting, and normalizing data.")
    (license license:gpl3)))

(define-public r-msmb
  (package
    (name "r-msmb")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSMB" version
                              'experiment))
       (sha256
        (base32 "1nq9y7c3y0q1040fzsg5hiavqq4n1778cry420f03db1yg40lns0"))))
    (properties `((upstream-name . "MSMB")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MSMB")
    (synopsis "Data sets for the book 'Modern Statistics for Biology'")
    (description
     "Data sets for the book Modern Statistics for Modern Biology', S.P. Holmes and W.
Huber.")
    (license license:lgpl2.0+)))

(define-public r-mslp
  (package
    (name "r-mslp")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mslp" version))
       (sha256
        (base32 "1i4afr1kvbwpp4xnijhdqhmn4cy82b8j97by50gwm63696g7qr6k"))))
    (properties `((upstream-name . "mslp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rankprod
                             r-randomforest
                             r-proc
                             r-org-hs-eg-db
                             r-magrittr
                             r-foreach
                             r-fmsb
                             r-dorng
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mslp")
    (synopsis "Predict synthetic lethal partners of tumour mutations")
    (description
     "An integrated pipeline to predict the potential synthetic lethality partners
(SLPs) of tumour mutations, based on gene expression, mutation profiling and
cell line genetic screens data.  It has builtd-in support for data from
@code{cBioPortal}.  The primary SLPs correlating with muations in WT and
compensating for the loss of function of mutations are predicted by random
forest based methods (GENIE3) and Rank Products, respectively.  Genetic screens
are employed to identfy consensus SLPs leads to reduced cell viability when
perturbed.")
    (license license:gpl3)))

(define-public r-msimpute
  (package
    (name "r-msimpute")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msImpute" version))
       (sha256
        (base32 "1akrn8k8k1s69gq2gpn1dw206cjd5xry3q2cfvhmxca8nhs7zpb0"))))
    (properties `((upstream-name . "msImpute")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-tidyr
                             r-softimpute
                             r-scran
                             r-reticulate
                             r-pdist
                             r-mvtnorm
                             r-matrixstats
                             r-limma
                             r-fnn
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/msImpute")
    (synopsis "Imputation of label-free mass spectrometry peptides")
    (description
     "@code{MsImpute} is a package for imputation of peptide intensity in proteomics
experiments.  It additionally contains tools for MAR/MNAR diagnosis and
assessment of distortions to the probability distribution of the data post
imputation.  The missing values are imputed by low-rank approximation of the
underlying data matrix if they are MAR (method = \"v2\"), by Barycenter approach
if missingness is MNAR (\"v2-mnar\"), or by Peptide Identity Propagation (PIP).")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-msgbsr
  (package
    (name "r-msgbsr")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msgbsR" version))
       (sha256
        (base32 "0m88mpr74r531gs8nlicr5bp8d4qyj7449mdn6pzkqpvx10ncrf6"))))
    (properties `((upstream-name . "msgbsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rsamtools
                             r-r-utils
                             r-plyr
                             r-iranges
                             r-ggplot2
                             r-ggbio
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-edger
                             r-easyrnaseq
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/msgbsR")
    (synopsis
     "msgbsR: methylation sensitive genotyping by sequencing (MS-GBS) R functions")
    (description "Pipeline for the anaysis of a MS-GBS experiment.")
    (license license:gpl2)))

(define-public r-msdatahub
  (package
    (name "r-msdatahub")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsDataHub" version))
       (sha256
        (base32 "03fkikbz13vfcdlca7kassprjjf2gb8jmism3kinpf0x291fc7cr"))))
    (properties `((upstream-name . "MsDataHub")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://rformassspectrometry.github.io/MsDataHub")
    (synopsis "Mass Spectrometry Data on ExperimentHub")
    (description
     "The @code{MsDataHub} package uses the @code{ExperimentHub} infrastructure to
distribute raw mass spectrometry data files, peptide spectrum matches or
quantitative data from proteomics and metabolomics experiments.")
    (license license:artistic2.0)))

(define-public r-msd16s
  (package
    (name "r-msd16s")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msd16s" version
                              'experiment))
       (sha256
        (base32 "0s7bbcxgly2xr21dkf88hpby5b4lhwy18jyji88dhqqq4jpbc8dk"))))
    (properties `((upstream-name . "msd16s")))
    (build-system r-build-system)
    (propagated-inputs (list r-metagenomeseq r-biobase))
    (home-page
     "http://www.cbcb.umd.edu/research/projects/GEMS-pathogen-discovery")
    (synopsis "Healthy and moderate to severe diarrhea 16S expression data")
    (description
     "Gut 16S sequencing expression data from 992 healthy and moderate-to-severe
diarrhetic samples used in Diarrhea in young children from low-income countries
leads to large-scale alterations in intestinal microbiota composition'.")
    (license license:artistic2.0)))

(define-public r-msbackendsql
  (package
    (name "r-msbackendsql")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendSql" version))
       (sha256
        (base32 "1j484ypgcyhgpvb8m97d954bljddl87hw6vzrcz610jbi26m7ia0"))))
    (properties `((upstream-name . "MsBackendSql")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-protgenerics
                             r-progress
                             r-mscoreutils
                             r-iranges
                             r-dbi
                             r-data-table
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RforMassSpectrometry/MsBackendSql")
    (synopsis "SQL-based Mass Spectrometry Data Backend")
    (description
     "SQL-based mass spectrometry (MS) data backend supporting also storange and
handling of very large data sets.  Objects from this package are supposed to be
used with the Spectra Bioconductor package.  Through the @code{MsBackendSql}
with its minimal memory footprint, this package thus provides an alternative MS
data representation for very large or remote MS data sets.")
    (license license:artistic2.0)))

(define-public r-msbackendrawfilereader
  (package
    (name "r-msbackendrawfilereader")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendRawFileReader" version))
       (sha256
        (base32 "0kh740c3d59a8l5b19j1mxyzvpla915a9p7qalmqn6qk5dmnjd30"))))
    (properties `((upstream-name . "MsBackendRawFileReader")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-rawrr
                             r-mscoreutils
                             r-iranges
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fgcz/MsBackendRawFileReader")
    (synopsis
     "Mass Spectrometry Backend for Reading Thermo Fisher Scientific raw Files")
    (description
     "implements a @code{MsBackend} for the Spectra package using Thermo Fisher
Scientific's @code{NewRawFileReader} .Net libraries.  The package is
generalizing the functionality introduced by the rawrr package Methods defined
in this package are supposed to extend the Spectra Bioconductor package.")
    (license license:gpl3)))

(define-public r-msbackendmsp
  (package
    (name "r-msbackendmsp")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendMsp" version))
       (sha256
        (base32 "1z36lsgmn2gbwmmazxj51rf7bkjk6b6kkfpqp71c05k40vc8nx4y"))))
    (properties `((upstream-name . "MsBackendMsp")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectra r-s4vectors r-mscoreutils r-iranges
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RforMassSpectrometry/MsBackendMsp")
    (synopsis "Mass Spectrometry Data Backend for NIST msp Files")
    (description
     "Mass spectrometry (MS) data backend supporting import and handling of MS/MS
spectra from NIST MSP Format (msp) files.  Import of data from files with
different MSP *flavours* is supported.  Objects from this package add support
for MSP files to Bioconductor's Spectra package.  This package is thus not
supposed to be used without the Spectra package that provides a complete
infrastructure for MS data handling.")
    (license license:artistic2.0)))

(define-public r-msbackendmgf
  (package
    (name "r-msbackendmgf")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendMgf" version))
       (sha256
        (base32 "0yzxfar77j0byq91hpnffgzvi3i7c06i2lm0myq4dg2b228hxqyl"))))
    (properties `((upstream-name . "MsBackendMgf")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectra r-s4vectors r-mscoreutils r-iranges
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RforMassSpectrometry/MsBackendMgf")
    (synopsis
     "Mass Spectrometry Data Backend for Mascot Generic Format (mgf) Files")
    (description
     "Mass spectrometry (MS) data backend supporting import and export of MS/MS
spectra data from Mascot Generic Format (mgf) files.  Objects defined in this
package are supposed to be used with the Spectra Bioconductor package.  This
package thus adds mgf file support to the Spectra package.")
    (license license:artistic2.0)))

(define-public r-msbackendmassbank
  (package
    (name "r-msbackendmassbank")
    (version "1.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendMassbank" version))
       (sha256
        (base32 "18s754jp3nlczmlyva2izr9qf2d9hmpnns3g6rpqy2nxj6zsqxdd"))))
    (properties `((upstream-name . "MsBackendMassbank")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-protgenerics
                             r-mscoreutils
                             r-iranges
                             r-dbi
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RforMassSpectrometry/MsBackendMassbank")
    (synopsis "Mass Spectrometry Data Backend for MassBank record Files")
    (description
     "Mass spectrometry (MS) data backend supporting import and export of MS/MS
library spectra from @code{MassBank} record files.  Different backends are
available that allow handling of data in plain @code{MassBank} text file format
or allow also to interact directly with @code{MassBank} SQL databases.  Objects
from this package are supposed to be used with the Spectra Bioconductor package.
 This package thus adds @code{MassBank} support to the Spectra package.")
    (license license:artistic2.0)))

(define-public r-msa2dist
  (package
    (name "r-msa2dist")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSA2dist" version))
       (sha256
        (base32 "1y1d6rp9bcx9acc21rak0dh93dm06f7qv6zzy5nqd1dgs77vhb1s"))))
    (properties `((upstream-name . "MSA2dist")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-seqinr
                             r-rlang
                             r-rcppthread
                             r-rcpp
                             r-iranges
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-biostrings
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.gwdg.de/mpievolbio-it/MSA2dist")
    (synopsis
     "MSA2dist calculates pairwise distances between all sequences of a DNAStringSet or a AAStringSet using a custom score matrix and conducts codon based analysis")
    (description
     "MSA2dist calculates pairwise distances between all sequences of a
DNA@code{StringSet} or a AA@code{StringSet} using a custom score matrix and
conducts codon based analysis.  It uses scoring matrices to be used in these
pairwise distance calcualtions which can be adapted to any scoring for DNA or AA
characters.  E.g.  by using literal distances MSA2dist calculates pairwise IUPAC
distances.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-mqmetrics
  (package
    (name "r-mqmetrics")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MQmetrics" version))
       (sha256
        (base32 "15jkmdj2k5h8vbi332y7b4xzm2330g2s13l6lf2d1v9pg5aqrisq"))))
    (properties `((upstream-name . "MQmetrics")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-rmarkdown
                             r-rlang
                             r-reshape2
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-plyr
                             r-magrittr
                             r-knitr
                             r-gtable
                             r-gridextra
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-gghalves
                             r-ggforce
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MQmetrics")
    (synopsis "Quality Control of Protemics Data")
    (description
     "The package MQmetrics (@code{MaxQuant} metrics) provides a workflow to analyze
the quality and reproducibility of your proteomics mass spectrometry analysis
from @code{MaxQuant.Input} data are extracted from several @code{MaxQuant}
output tables and produces a pdf report.  It includes several visualization
tools to check numerous parameters regarding the quality of the runs.  It also
includes two functions to visualize the @code{iRT} peptides from Biognosys in
case they were spiked in the samples.")
    (license license:gpl3)))

(define-public r-mpranalyze
  (package
    (name "r-mpranalyze")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MPRAnalyze" version))
       (sha256
        (base32 "06v3lppp2qxpj0snrn42yyljkpsb5xd7gd6ziiiizs62wahg6g29"))))
    (properties `((upstream-name . "MPRAnalyze")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-progress r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/YosefLab/MPRAnalyze")
    (synopsis "Statistical Analysis of MPRA data")
    (description
     "MPRAnalyze provides statistical framework for the analysis of data generated by
Massively Parallel Reporter Assays (MPRAs), used to directly measure enhancer
activity.  MPRAnalyze can be used for quantification of enhancer activity,
classification of active enhancers and comparative analyses of enhancer activity
between conditions.  MPRAnalyze construct a nested pair of generalized linear
models (GLMs) to relate the DNA and RNA observations, easily adjustable to
various experimental designs and conditions, and provides a set of rigorous
statistical testig schemes.")
    (license license:gpl3)))

(define-public r-mpra
  (package
    (name "r-mpra")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mpra" version))
       (sha256
        (base32 "0zadlalkswj0793b66fs6cxincnhn245xdkz32ngcahqdfiv7kbq"))))
    (properties `((upstream-name . "mpra")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-statmod
                             r-scales
                             r-s4vectors
                             r-limma
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hansenlab/mpra")
    (synopsis "Analyze massively parallel reporter assays")
    (description
     "This package provides tools for data management, count preprocessing, and
differential analysis in massively parallel report assays (MPRA).")
    (license license:artistic2.0)))

(define-public r-mpfe
  (package
    (name "r-mpfe")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MPFE" version))
       (sha256
        (base32 "08y87lg3xysycya2x5xz9ybm3x4vz7kblan9xaa42nf6fy92fs5i"))))
    (properties `((upstream-name . "MPFE")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MPFE")
    (synopsis
     "Estimation of the amplicon methylation pattern distribution from bisulphite sequencing data")
    (description
     "Estimate distribution of methylation patterns from a table of counts from a
bisulphite sequencing experiment given a non-conversion rate and read error
rate.")
    (license license:gpl3+)))

(define-public r-mpedbarray-db
  (package
    (name "r-mpedbarray-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mpedbarray.db" version
                              'annotation))
       (sha256
        (base32 "04pwchivzb19awnnqr9an0nl49rgdva58ip1fkgbavp3vlirxv4i"))))
    (properties `((upstream-name . "mpedbarray.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mpedbarray.db")
    (synopsis "FHCRC Nelson Lab mpedbarray Annotation Data (mpedbarray)")
    (description
     "FHCRC Nelson Lab mpedbarray Annotation Data (mpedbarray) assembled using data
from public repositories")
    (license license:artistic2.0)))

(define-public r-mousethymusageing
  (package
    (name "r-mousethymusageing")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MouseThymusAgeing" version
                              'experiment))
       (sha256
        (base32 "19p7a0k565yz5201klib85z2gwqss0ywbv66sh0bvk4g5cmd9k0y"))))
    (properties `((upstream-name . "MouseThymusAgeing")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-singlecellexperiment
                             r-s4vectors r-experimenthub r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MouseThymusAgeing")
    (synopsis "Single-cell Transcriptomics Data of the Ageing Mouse Thymus")
    (description
     "This package provides data access to counts matrices and meta-data for
single-cell RNA sequencing data of thymic epithlial cells across mouse ageing
using SMARTseq2 and 10X Genommics chemistries.  Access is provided as a data
package via @code{ExperimentHub}.  It is designed to facilitate the re-use of
data from Baran-Gale _et al._ in a consistent format that includes relevant and
informative meta-data.")
    (license license:gpl3)))

(define-public r-mousefm
  (package
    (name "r-mousefm")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MouseFM" version))
       (sha256
        (base32 "1mr0mm9hsb672sx0zin3mcz4sswydp4j3vb0sqy83169pbkd1050"))))
    (properties `((upstream-name . "MouseFM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-scales
                             r-rlist
                             r-reshape2
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-gtools
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-curl
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MouseFM")
    (synopsis "In-silico methods for genetic finemapping in inbred mice")
    (description
     "This package provides methods for genetic finemapping in inbred mice by taking
advantage of their very high homozygosity rate (>95%).")
    (license license:gpl3)))

(define-public r-mousechrloc
  (package
    (name "r-mousechrloc")
    (version "2.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouseCHRLOC" version
                              'annotation))
       (sha256
        (base32 "0xylgnz43xmjnqdwv7pn034wfs61va21lvcpn9igdik2s42ykpp2"))))
    (properties `((upstream-name . "mouseCHRLOC")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/mouseCHRLOC")
    (synopsis "data package containing annotation data for mouseCHRLOC")
    (description
     "Annotation data file for @code{mouseCHRLOC} assembled using data from public
data repositories")
    (license (license:fsdg-compatible "The Artistic License, Version 2.0"))))

(define-public r-mouse430a2probe
  (package
    (name "r-mouse430a2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse430a2probe" version
                              'annotation))
       (sha256
        (base32 "1f7a6mvcpv57h7kfj1qzkcwh7mdl2w9z6ysmrgan9037rd0652sz"))))
    (properties `((upstream-name . "mouse430a2probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse430a2probe")
    (synopsis "Probe sequence data for microarrays of type mouse430a2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Mouse430A\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-mouse430a2frmavecs
  (package
    (name "r-mouse430a2frmavecs")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse430a2frmavecs" version
                              'annotation))
       (sha256
        (base32 "0bb9fqz4kkw78dw9mbkn1pp6wp7lmyqpcg8gdjg9j9aichbqbnh8"))))
    (properties `((upstream-name . "mouse430a2frmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/mouse430a2frmavecs")
    (synopsis "Vectors used by frma for microarrays of type mouse430a2")
    (description
     "This package was created by @code{frmaTools} version 1.19.3 and
hgu133ahsentrezgcdf version 19.0.0.")
    (license license:gpl2+)))

(define-public r-mouse430a2cdf
  (package
    (name "r-mouse430a2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse430a2cdf" version
                              'annotation))
       (sha256
        (base32 "0530znylp4xqld8kak84d6lnc8r62p413d4kkn4j99kmmvx3l9rn"))))
    (properties `((upstream-name . "mouse430a2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse430a2cdf")
    (synopsis "mouse430a2cdf")
    (description
     "This package provides a package containing an environment representing the
Mouse430A_2.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-mouse430a2-db
  (package
    (name "r-mouse430a2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse430a2.db" version
                              'annotation))
       (sha256
        (base32 "1wxy9p9xmph3bimrz6fi9qyhf737alpqmb9ayyr5xk1fvj71c511"))))
    (properties `((upstream-name . "mouse430a2.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse430a2.db")
    (synopsis
     "Affymetrix Affymetrix Mouse430A_2 Array annotation data (chip mouse430a2)")
    (description
     "Affymetrix Affymetrix Mouse430A_2 Array annotation data (chip mouse430a2)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mouse4302probe
  (package
    (name "r-mouse4302probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse4302probe" version
                              'annotation))
       (sha256
        (base32 "11mn9j98m3xfk5sn9cb2r92zckm6acplc66c5xn44nazf29pf9n1"))))
    (properties `((upstream-name . "mouse4302probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse4302probe")
    (synopsis "Probe sequence data for microarrays of type mouse4302")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Mouse430\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-mouse4302frmavecs
  (package
    (name "r-mouse4302frmavecs")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse4302frmavecs" version
                              'annotation))
       (sha256
        (base32 "04clwkfz1gqqwrnqbavkka3hv480w6vi6c4q947qqnhw8j5jjp7s"))))
    (properties `((upstream-name . "mouse4302frmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/mouse4302frmavecs")
    (synopsis "Vectors used by frma for microarrays of type mouse4302")
    (description
     "This package was created by @code{frmaTools} version 1.19.3 and
hgu133ahsentrezgcdf version 19.0.0.")
    (license license:gpl2+)))

(define-public r-mouse4302cdf
  (package
    (name "r-mouse4302cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse4302cdf" version
                              'annotation))
       (sha256
        (base32 "1mpyma4x8zfs2fmmx57xw4cfs2cf9lhw71nc3icl72d7vmwidswc"))))
    (properties `((upstream-name . "mouse4302cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse4302cdf")
    (synopsis "mouse4302cdf")
    (description
     "This package provides a package containing an environment representing the
Mouse430_2.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-mouse4302barcodevecs
  (package
    (name "r-mouse4302barcodevecs")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse4302barcodevecs" version
                              'experiment))
       (sha256
        (base32 "1l2blxqsxy27lkrgd08r6a3j8va54hzhl5lx0i9bxpj1i9xiwkr6"))))
    (properties `((upstream-name . "mouse4302barcodevecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/mouse4302barcodevecs")
    (synopsis "mouse4302 data for barcode")
    (description
     "Data used by the barcode package for microarrays of type mouse4302.")
    (license license:gpl2+)))

(define-public r-mouse4302-db
  (package
    (name "r-mouse4302-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse4302.db" version
                              'annotation))
       (sha256
        (base32 "0rf22kfj6y96ap0gcwq3mnpv6fj0yax37gf51sfi0wkmp95k7rcs"))))
    (properties `((upstream-name . "mouse4302.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse4302.db")
    (synopsis
     "Affymetrix Affymetrix Mouse430_2 Array annotation data (chip mouse4302)")
    (description
     "Affymetrix Affymetrix Mouse430_2 Array annotation data (chip mouse4302)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mouse-db0
  (package
    (name "r-mouse-db0")
    (version "3.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse.db0" version
                              'annotation))
       (sha256
        (base32 "092rjbkrqbkg1997vb4zpyjldv8c541kkx7q95pdpk5qx5aapwqy"))))
    (properties `((upstream-name . "mouse.db0")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse.db0")
    (synopsis "Base Level Annotation databases for mouse")
    (description
     "Base annotation databases for mouse, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-motifcounter
  (package
    (name "r-motifcounter")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "motifcounter" version))
       (sha256
        (base32 "0ng283g3shm2aahyjn29mxv3f30xfncc8gg99wchzcrlm5cgwpy7"))))
    (properties `((upstream-name . "motifcounter")))
    (build-system r-build-system)
    (propagated-inputs (list r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/motifcounter")
    (synopsis "R package for analysing TFBSs in DNA sequences")
    (description
     "motifcounter provides motif matching, motif counting and motif enrichment
functionality based on position frequency matrices.  The main features of the
packages include the utilization of higher-order background models and
accounting for self-overlapping motif matches when determining motif enrichment.
 The background model allows to capture dinucleotide (or higher-order
nucleotide) composition adequately which may reduced model biases and misleading
results compared to using simple GC background models.  When conducting a motif
enrichment analysis based on the motif match count, the package relies on a
compound Poisson distribution or alternatively a combinatorial model.  These
distribution account for self-overlapping motif structures as exemplified by
repeat-like or palindromic motifs, and allow to determine the p-value and
fold-enrichment for a set of observed motif matches.")
    (license license:gpl2)))

(define-public r-motif2site
  (package
    (name "r-motif2site")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Motif2Site" version))
       (sha256
        (base32 "0s659f3py10d4qwvv325jydix6wjndhwnhi89jip5r8nqp6svih4"))))
    (properties `((upstream-name . "Motif2Site")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-mixtools
                             r-mass
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-edger
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Motif2Site")
    (synopsis
     "Detect binding sites from motifs and ChIP-seq experiments, and compare binding sites across conditions")
    (description
     "Detect binding sites using motifs IUPAC sequence or bed coordinates and
@code{ChIP-seq} experiments in bed or bam format.  Combine/compare binding sites
across experiments, tissues, or conditions.  All normalization and differential
steps are done using TMM-GLM method.  Signal decomposition is done by setting
motifs as the centers of the mixture of normal distribution curves.")
    (license license:gpl2)))

(define-public r-mosim
  (package
    (name "r-mosim")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOSim" version))
       (sha256
        (base32 "0pwxkkkbw65142xp26lig3xmfcc11sb1kz68qnif716jqzd2y5a9"))))
    (properties `((upstream-name . "MOSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-matrixstats
                             r-lazyeval
                             r-iranges
                             r-hiddenmarkov
                             r-ggplot2
                             r-dplyr
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ConesaLab/MOSim")
    (synopsis "Multi-Omics Simulation (MOSim)")
    (description
     "MOSim package simulates multi-omic experiments that mimic regulatory mechanisms
within the cell, allowing flexible experimental design including time course and
multiple groups.")
    (license license:gpl3)))

(define-public r-mosbi
  (package
    (name "r-mosbi")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mosbi" version))
       (sha256
        (base32 "1vpkkc4c35plalah133fy5wfga8j2qrl53q7086x40812mpmc1yc"))))
    (properties `((upstream-name . "mosbi")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-rcppparallel
                             r-rcpp
                             r-rcolorbrewer
                             r-qubic
                             r-isa2
                             r-igraph
                             r-fabia
                             r-biclust
                             r-bh
                             r-akmbiclust))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mosbi")
    (synopsis "Molecular Signature identification using Biclustering")
    (description
     "This package is a implementation of biclustering ensemble method @code{MoSBi}
(Molecular signature Identification from Biclustering). @code{MoSBi} provides
standardized interfaces for biclustering results and can combine their results
with a multi-algorithm ensemble approach to compute robust ensemble biclusters
on molecular omics data.  This is done by computing similarity networks of
biclusters and filtering for overlaps using a custom error model.  After that,
the louvain modularity it used to extract bicluster communities from the
similarity network, which can then be converted to ensemble biclusters.
Additionally, @code{MoSBi} includes several network visualization methods to
give an intuitive and scalable overview of the results. @code{MoSBi} comes with
several biclustering algorithms, but can be easily extended to new biclustering
algorithms.")
    (license (license:fsdg-compatible "AGPL-3 + file LICENSE"))))

(define-public r-mosaicsexample
  (package
    (name "r-mosaicsexample")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mosaicsExample" version
                              'experiment))
       (sha256
        (base32 "02x97k7s5l3ca1xws4xplmc3x14wjy0rx1kl5jmy59ncc2lwik4r"))))
    (properties `((upstream-name . "mosaicsExample")))
    (build-system r-build-system)
    (home-page "http://groups.google.com/group/mosaics_user_group")
    (synopsis
     "Example data for the mosaics package, which implements MOSAiCS and MOSAiCS-HMM, a statistical framework to analyze one-sample or two-sample ChIP-seq data for transcription factor binding and histone modification")
    (description
     "Data for the mosaics package, consisting of (1) chromosome 22 @code{ChIP} and
control sample data from a @code{ChIP-seq} experiment of STAT1 binding and
H3K4me3 modification in MCF7 cell line from ENCODE database (HG19) and (2)
chromosome 21 @code{ChIP} and control sample data from a @code{ChIP-seq}
experiment of STAT1 binding, with mappability, GC content, and sequence
ambiguity scores of human genome HG18.")
    (license license:gpl2+)))

(define-public r-mosaics
  (package
    (name "r-mosaics")
    (version "2.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mosaics" version))
       (sha256
        (base32 "1si5f9w7jfdnfspnwghny78gdc4xbbq1gaiia2yl43v9236fk6q5"))))
    (properties `((upstream-name . "mosaics")))
    (build-system r-build-system)
    (inputs (list perl))
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-rcpp
                             r-mass
                             r-lattice
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb))
    (home-page "http://groups.google.com/group/mosaics_user_group")
    (synopsis
     "MOSAiCS (MOdel-based one and two Sample Analysis and Inference for ChIP-Seq)")
    (description
     "This package provides functions for fitting MOS@code{AiCS} and
MOS@code{AiCS-HMM}, a statistical framework to analyze one-sample or two-sample
@code{ChIP-seq} data of transcription factor binding and histone modification.")
    (license license:gpl2+)))

(define-public r-moonlightr
  (package
    (name "r-moonlightr")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MoonlightR" version))
       (sha256
        (base32 "1zmmxjig7kmfw50p7pdy0v6p3kcfjl655svg8yrlap9y750bywzr"))))
    (properties `((upstream-name . "MoonlightR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tcgabiolinks
                             r-summarizedexperiment
                             r-rismed
                             r-rcolorbrewer
                             r-randomforest
                             r-parmigene
                             r-limma
                             r-hiver
                             r-gplots
                             r-geoquery
                             r-foreach
                             r-dose
                             r-doparallel
                             r-clusterprofiler
                             r-circlize
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ELELAB/MoonlightR")
    (synopsis "Identify oncogenes and tumor suppressor genes from omics data")
    (description
     "Motivation: The understanding of cancer mechanism requires the identification of
genes playing a role in the development of the pathology and the
characterization of their role (notably oncogenes and tumor suppressors).
Results: We present an R/bioconductor package called @code{MoonlightR} which
returns a list of candidate driver genes for specific cancer types on the basis
of TCGA expression data.  The method first infers gene regulatory networks and
then carries out a functional enrichment analysis (FEA) (implementing an
upstream regulator analysis, URA) to score the importance of well-known
biological processes with respect to the studied cancer type.  Eventually, by
means of random forests, @code{MoonlightR} predicts two specific roles for the
candidate driver genes: i) tumor suppressor genes (TSGs) and ii) oncogenes
(OCGs).  As a consequence, this methodology does not only identify genes playing
a dual role (e.g. TSG in one cancer type and OCG in another) but also helps in
elucidating the biological processes underlying their specific roles.  In
particular, @code{MoonlightR} can be used to discover OCGs and TSGs in the same
cancer type.  This may help in answering the question whether some genes change
role between early stages (I, II) and late stages (III, IV) in breast cancer.
In the future, this analysis could be useful to determine the causes of
different resistances to chemotherapeutic treatments.")
    (license license:gpl3+)))

(define-public r-moonlight2r
  (package
    (name "r-moonlight2r")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Moonlight2R" version))
       (sha256
        (base32 "02g9dszw9f1q0maxm4ik7p22w4flxv1wx95dy6i541kh26ma61p3"))))
    (properties `((upstream-name . "Moonlight2R")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-tidyr
                             r-tidyheatmap
                             r-tibble
                             r-stringr
                             r-seqminer
                             r-rtracklayer
                             r-rismed
                             r-readr
                             r-rcolorbrewer
                             r-randomforest
                             r-qpdf
                             r-purrr
                             r-parmigene
                             r-org-hs-eg-db
                             r-magrittr
                             r-hiver
                             r-gplots
                             r-geoquery
                             r-genomicranges
                             r-fuzzyjoin
                             r-foreach
                             r-easypubmed
                             r-dplyr
                             r-dose
                             r-doparallel
                             r-complexheatmap
                             r-clusterprofiler
                             r-circlize
                             r-biobase
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ELELAB/Moonlight2R")
    (synopsis "Identify oncogenes and tumor suppressor genes from omics data")
    (description
     "The understanding of cancer mechanism requires the identification of genes
playing a role in the development of the pathology and the characterization of
their role (notably oncogenes and tumor suppressors).  We present an updated
version of the R/bioconductor package called @code{MoonlightR}, namely
Moonlight2R, which returns a list of candidate driver genes for specific cancer
types on the basis of omics data integration.  The Moonlight framework contains
a primary layer where gene expression data and information about biological
processes are integrated to predict genes called oncogenic mediators, divided
into putative tumor suppressors and putative oncogenes.  This is done through
functional enrichment analyses, gene regulatory networks and upstream regulator
analyses to score the importance of well-known biological processes with respect
to the studied cancer type.  By evaluating the effect of the oncogenic mediators
on biological processes or through random forests, the primary layer predicts
two putative roles for the oncogenic mediators: i) tumor suppressor genes (TSGs)
and ii) oncogenes (OCGs).  As gene expression data alone is not enough to
explain the deregulation of the genes, a second layer of evidence is needed.  We
have automated the integration of a secondary mutational layer through new
functionalities in Moonlight2R. These functionalities analyze mutations in the
cancer cohort and classifies these into driver and passenger mutations using the
driver mutation prediction tool, CScape-somatic.  Those oncogenic mediators with
at least one driver mutation are retained as the driver genes.  As a
consequence, this methodology does not only identify genes playing a dual role
(e.g. TSG in one cancer type and OCG in another) but also helps in elucidating
the biological processes underlying their specific roles.  In particular,
Moonlight2R can be used to discover OCGs and TSGs in the same cancer type.  This
may for instance help in answering the question whether some genes change role
between early stages (I, II) and late stages (III, IV).  In the future, this
analysis could be useful to determine the causes of different resistances to
chemotherapeutic treatments.")
    (license license:gpl3)))

(define-public r-monalisa
  (package
    (name "r-monalisa")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "monaLisa" version))
       (sha256
        (base32 "1gk1h6z84ybmxl856mmyvxm7434aq1sh8bbl35if7awzkj436hkr"))))
    (properties `((upstream-name . "monaLisa")))
    (build-system r-build-system)
    (propagated-inputs (list r-xvector
                             r-vioplot
                             r-tfbstools
                             r-summarizedexperiment
                             r-stabs
                             r-s4vectors
                             r-iranges
                             r-glmnet
                             r-genomicranges
                             r-genomeinfodb
                             r-complexheatmap
                             r-circlize
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fmicompbio/monaLisa")
    (synopsis "Binned Motif Enrichment Analysis and Visualization")
    (description
     "Useful functions to work with sequence motifs in the analysis of genomics data.
These include methods to annotate genomic regions or sequences with predicted
motif hits and to identify motifs that drive observed changes in accessibility
or expression.  Functions to produce informative visualizations of the obtained
results are also provided.")
    (license license:gpl3+)))

(define-public r-moma
  (package
    (name "r-moma")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOMA" version))
       (sha256
        (base32 "1ksh2ikbzppcdncy0fi09kpkm13jrmnv7azpgjy51qns0525c9fc"))))
    (properties `((upstream-name . "MOMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-reshape2
                             r-readr
                             r-rcolorbrewer
                             r-qvalue
                             r-multiassayexperiment
                             r-mkmisc
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-complexheatmap
                             r-cluster
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MOMA")
    (synopsis "Multi Omic Master Regulator Analysis")
    (description
     "This package implements the inference of candidate master regulator proteins
from multi-omics data (MOMA) algorithm, as well as ancillary analysis and
visualization functions.")
    (license license:gpl3)))

(define-public r-moleculeexperiment
  (package
    (name "r-moleculeexperiment")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MoleculeExperiment" version))
       (sha256
        (base32 "1863f9ig7j5q7dnrdx3lbwck4g48ac81yqa2054fyhq9xcqaxa2b"))))
    (properties `((upstream-name . "MoleculeExperiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-spatialexperiment
                             r-s4vectors
                             r-rlang
                             r-rjson
                             r-rhdf5
                             r-purrr
                             r-matrix
                             r-magrittr
                             r-ggplot2
                             r-ebimage
                             r-dplyr
                             r-data-table
                             r-cli
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SydneyBioX/MoleculeExperiment")
    (synopsis
     "Prioritising a molecule-level storage of Spatial Transcriptomics Data")
    (description
     "@code{MoleculeExperiment} contains functions to create and work with objects
from the new @code{MoleculeExperiment} class.  We introduce this class for
analysing molecule-based spatial transcriptomics data (e.g., Xenium by 10X,
Cosmx SMI by Nanostring, and Merscope by Vizgen).  This allows researchers to
analyse spatial transcriptomics data at the molecule level, and to have
standardised data formats accross vendors.")
    (license license:expat)))

(define-public r-mogsa
  (package
    (name "r-mogsa")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogsa" version))
       (sha256
        (base32 "0byq6cq9hs4ryhhx6i1ll8cr3i1072ifp9v98p3xvcgfaqig6ydw"))))
    (properties `((upstream-name . "mogsa")))
    (build-system r-build-system)
    (propagated-inputs (list r-svd
                             r-gseabase
                             r-graphite
                             r-gplots
                             r-genefilter
                             r-corpcor
                             r-cluster
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mogsa")
    (synopsis
     "Multiple omics data integrative clustering and gene set analysis")
    (description
     "This package provide a method for doing gene set analysis based on multiple
omics data.")
    (license license:gpl2)))

(define-public r-mogene21sttranscriptcluster-db
  (package
    (name "r-mogene21sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene21sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "02g2n5nkxi9lqw9h7sbkblk99zd57lkrldqb1fmi9zww59qwagrv"))))
    (properties `((upstream-name . "mogene21sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/mogene21sttranscriptcluster.db")
    (synopsis
     "Affymetrix mogene21 annotation data (chip mogene21sttranscriptcluster)")
    (description
     "Affymetrix mogene21 annotation data (chip mogene21sttranscriptcluster) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mogene21stprobeset-db
  (package
    (name "r-mogene21stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene21stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "172bhzqqw5hz76bw8vqwx2qpw4f6rwbcm6savmkxmmhzb2nq60z5"))))
    (properties `((upstream-name . "mogene21stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene21stprobeset.db")
    (synopsis "Affymetrix mogene21 annotation data (chip mogene21stprobeset)")
    (description
     "Affymetrix mogene21 annotation data (chip mogene21stprobeset) assembled using
data from public repositories")
    (license license:artistic2.0)))

(define-public r-mogene20sttranscriptcluster-db
  (package
    (name "r-mogene20sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene20sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "1bpzpba9aifc7w6qbrh6rnc636k6z1r9gz03sxvc3aa3977p9xag"))))
    (properties `((upstream-name . "mogene20sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/mogene20sttranscriptcluster.db")
    (synopsis
     "Affymetrix mogene20 annotation data (chip mogene20sttranscriptcluster)")
    (description
     "Affymetrix mogene20 annotation data (chip mogene20sttranscriptcluster) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mogene20stprobeset-db
  (package
    (name "r-mogene20stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene20stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "0v16la20n39m6gsy51w61df2rhndzivszasswrc1mm465ksmhgng"))))
    (properties `((upstream-name . "mogene20stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene20stprobeset.db")
    (synopsis "Affymetrix mogene20 annotation data (chip mogene20stprobeset)")
    (description
     "Affymetrix mogene20 annotation data (chip mogene20stprobeset) assembled using
data from public repositories")
    (license license:artistic2.0)))

(define-public r-mogene11sttranscriptcluster-db
  (package
    (name "r-mogene11sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene11sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "0yj71cs8qzv8pbricaljwpqz3fi98mianyxk4bd1fi6faiwnj0xv"))))
    (properties `((upstream-name . "mogene11sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/mogene11sttranscriptcluster.db")
    (synopsis
     "Affymetrix mogene11 annotation data (chip mogene11sttranscriptcluster)")
    (description
     "Affymetrix mogene11 annotation data (chip mogene11sttranscriptcluster) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mogene11stprobeset-db
  (package
    (name "r-mogene11stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene11stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "0wxli72widbakvcvhqc0md7ys0c36gmc047p9n9d8z3vs3g1fhvs"))))
    (properties `((upstream-name . "mogene11stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene11stprobeset.db")
    (synopsis "Affymetrix mogene11 annotation data (chip mogene11stprobeset)")
    (description
     "Affymetrix mogene11 annotation data (chip mogene11stprobeset) assembled using
data from public repositories")
    (license license:artistic2.0)))

(define-public r-mogene10stv1probe
  (package
    (name "r-mogene10stv1probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene10stv1probe" version
                              'annotation))
       (sha256
        (base32 "1qjnsf6cv23gnqdpcy1xqxy807y91fnaiyh95hg99v932pvika6a"))))
    (properties `((upstream-name . "mogene10stv1probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene10stv1probe")
    (synopsis "Probe sequence data for microarrays of type mogene10stv1")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was @code{MoGene-1\\_0-st-v1\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-mogene10stv1cdf
  (package
    (name "r-mogene10stv1cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene10stv1cdf" version
                              'annotation))
       (sha256
        (base32 "1zhq08zsghck39ly7ymcjanzgw3xy1hqw435hwcrrlipv6i4lbmj"))))
    (properties `((upstream-name . "mogene10stv1cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene10stv1cdf")
    (synopsis "mogene10stv1cdf")
    (description
     "This package provides a package containing an environment representing the
@code{MoGene-1_0-st-v1.cdf} file.")
    (license license:lgpl2.0+)))

(define-public r-mogene10sttranscriptcluster-db
  (package
    (name "r-mogene10sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene10sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "1l9k0vj6p9q5rj2hgw9bdcpmbcslvqaks1jm3bxb2m7h4fazsncd"))))
    (properties `((upstream-name . "mogene10sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/mogene10sttranscriptcluster.db")
    (synopsis
     "Affymetrix mogene10 annotation data (chip mogene10sttranscriptcluster)")
    (description
     "Affymetrix mogene10 annotation data (chip mogene10sttranscriptcluster) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mogene10stprobeset-db
  (package
    (name "r-mogene10stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene10stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "0hqgazgiq28y9hn86zdviv1zv9x3mkkgvh05x0d9nxlhhzxyxj9m"))))
    (properties `((upstream-name . "mogene10stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene10stprobeset.db")
    (synopsis "Affymetrix mogene10 annotation data (chip mogene10stprobeset)")
    (description
     "Affymetrix mogene10 annotation data (chip mogene10stprobeset) assembled using
data from public repositories")
    (license license:artistic2.0)))

(define-public r-mogene-1-0-st-v1frmavecs
  (package
    (name "r-mogene-1-0-st-v1frmavecs")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogene.1.0.st.v1frmavecs" version
                              'annotation))
       (sha256
        (base32 "00lyakg7dhsm3jkh011mfq1vy439mds64zpm6fgyq592x3k9w2ah"))))
    (properties `((upstream-name . "mogene.1.0.st.v1frmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/mogene.1.0.st.v1frmavecs")
    (synopsis
     "Vectors used by frma for microarrays of type mogene.1.0.st.v1frmavecs")
    (description
     "This package was created by @code{frmaTools} version 1.13.0.")
    (license license:gpl2+)))

(define-public r-mogamun
  (package
    (name "r-mogamun")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOGAMUN" version))
       (sha256
        (base32 "0x7waxamd7hykjcphx4xhl392rjfp2pkhn98gpg60224am7yclav"))))
    (properties `((upstream-name . "MOGAMUN")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-runit r-rcy3 r-igraph r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/elvanov/MOGAMUN")
    (synopsis
     "MOGAMUN: A Multi-Objective Genetic Algorithm to Find Active Modules in Multiplex Biological Networks")
    (description
     "MOGAMUN is a multi-objective genetic algorithm that identifies active modules in
a multiplex biological network.  This allows analyzing different biological
networks at the same time.  MOGAMUN is based on NSGA-II (Non-Dominated Sorting
Genetic Algorithm, version II), which we adapted to work on networks.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-mofadata
  (package
    (name "r-mofadata")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOFAdata" version
                              'experiment))
       (sha256
        (base32 "1pl593dlf87g88bdabqqn2a9b1vkgg4znp1l9wbyk49a35l2rqy1"))))
    (properties `((upstream-name . "MOFAdata")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MOFAdata")
    (synopsis "Data package for Multi-Omics Factor Analysis (MOFA)")
    (description
     "This package provides a collection of datasets to accompany the R package MOFA
and illustrate running and analysing MOFA models.")
    (license license:lgpl3)))

(define-public r-mofa2
  (package
    (name "r-mofa2")
    (version "1.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOFA2" version))
       (sha256
        (base32 "1vryfj2ikc0c3md2pg4jyg0n3jj6lh0rwm9069v42172pbwc0ikp"))))
    (properties `((upstream-name . "MOFA2")))
    (build-system r-build-system)
    (inputs (list python-scikit-learn
                  python-scipy
                  python
                  python-pandas
                  python-numpy
                  python-h5py))
    (propagated-inputs (list r-uwot
                             r-tidyr
                             r-stringi
                             r-rtsne
                             r-rhdf5
                             r-reticulate
                             r-reshape2
                             r-rcolorbrewer
                             r-pheatmap
                             r-magrittr
                             r-hdf5array
                             r-ggrepel
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-delayedarray
                             r-cowplot
                             r-corrplot
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://biofam.github.io/MOFA2/index.html")
    (synopsis "Multi-Omics Factor Analysis v2")
    (description
     "The MOFA2 package contains a collection of tools for training and analysing
multi-omic factor analysis (MOFA).  MOFA is a probabilistic factor model that
aims to identify principal axes of variation from data sets that can comprise
multiple omic layers and/or groups of samples.  Additional time or space
information on the samples can be incorporated using the MEFISTO framework,
which is part of MOFA2.  Downstream analysis functions to inspect molecular
features underlying each factor, vizualisation, imputation etc are available.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-moexexonprobesetlocation
  (package
    (name "r-moexexonprobesetlocation")
    (version "1.15.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MoExExonProbesetLocation" version
                              'annotation))
       (sha256
        (base32 "0bvj3bji4bwwmxjz4b57n1aqypdibdmry30rfwmlxss1hav96sl7"))))
    (properties `((upstream-name . "MoExExonProbesetLocation")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/MoExExonProbesetLocation")
    (synopsis "Probe sequence data for microarrays of type MoEx")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.7.17.  The exon-level probeset genome location was retrieved from Netaffx
using @code{AffyCompatible}.")
    (license license:lgpl2.0+)))

(define-public r-moex10sttranscriptcluster-db
  (package
    (name "r-moex10sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moex10sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "05x687d8gv8yh8rwqfz962ij9rk6k4vzf0bn868zn2j7cykh129d"))))
    (properties `((upstream-name . "moex10sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/moex10sttranscriptcluster.db")
    (synopsis
     "Affymetrix moex10 annotation data (chip moex10sttranscriptcluster)")
    (description
     "Affymetrix moex10 annotation data (chip moex10sttranscriptcluster) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-moex10stprobeset-db
  (package
    (name "r-moex10stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moex10stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "1a4jparn4l9v89y1g1xq7w4z1qqz7s2y6c4fjr7vbs8kfk43d3rd"))))
    (properties `((upstream-name . "moex10stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moex10stprobeset.db")
    (synopsis "Affymetrix moex10 annotation data (chip moex10stprobeset)")
    (description
     "Affymetrix moex10 annotation data (chip moex10stprobeset) assembled using data
from public repositories")
    (license license:artistic2.0)))

(define-public r-moe430bprobe
  (package
    (name "r-moe430bprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moe430bprobe" version
                              'annotation))
       (sha256
        (base32 "1nziw3pj4picz0aazblpqkbw82wq3vdajh9i78yfvlz1bwb2vpfi"))))
    (properties `((upstream-name . "moe430bprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moe430bprobe")
    (synopsis "Probe sequence data for microarrays of type moe430b")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was MOE430B\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-moe430bcdf
  (package
    (name "r-moe430bcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moe430bcdf" version
                              'annotation))
       (sha256
        (base32 "0yl5pkqj37188k2yvvsqhnhm2vx523r11sry976bwzcadlicfhvb"))))
    (properties `((upstream-name . "moe430bcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moe430bcdf")
    (synopsis "moe430bcdf")
    (description
     "This package provides a package containing an environment representing the
MOE430B.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-moe430b-db
  (package
    (name "r-moe430b-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moe430b.db" version
                              'annotation))
       (sha256
        (base32 "06hycpzsavrgy196d5vx1y3xqqr1w4x40byqvfzxnd5cah26yqa2"))))
    (properties `((upstream-name . "moe430b.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moe430b.db")
    (synopsis
     "Affymetrix Affymetrix MOE430B Array annotation data (chip moe430b)")
    (description
     "Affymetrix Affymetrix MOE430B Array annotation data (chip moe430b) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-moe430aprobe
  (package
    (name "r-moe430aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moe430aprobe" version
                              'annotation))
       (sha256
        (base32 "1paiwgjzlq4c04wy8fpnnxj7n5asiw6z2mz0rjrifja9lgyilq50"))))
    (properties `((upstream-name . "moe430aprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moe430aprobe")
    (synopsis "Probe sequence data for microarrays of type moe430a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was MOE430A\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-moe430acdf
  (package
    (name "r-moe430acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moe430acdf" version
                              'annotation))
       (sha256
        (base32 "0n4dc2racw68nmfz6arl7f0yh9f3mlkvilsl694zrxw2ysbq1d70"))))
    (properties `((upstream-name . "moe430acdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moe430acdf")
    (synopsis "moe430acdf")
    (description
     "This package provides a package containing an environment representing the
MOE430A.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-moe430a-db
  (package
    (name "r-moe430a-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moe430a.db" version
                              'annotation))
       (sha256
        (base32 "1qc9gcirhmmwj9c4wfcj4f6j5dldf5s1z3nz3w0c95ywmy60sb43"))))
    (properties `((upstream-name . "moe430a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moe430a.db")
    (synopsis
     "Affymetrix Affymetrix MOE430A Array annotation data (chip moe430a)")
    (description
     "Affymetrix Affymetrix MOE430A Array annotation data (chip moe430a) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-modcon
  (package
    (name "r-modcon")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ModCon" version))
       (sha256
        (base32 "179z85phvkpld0hirigx2nf2sy0y0jsqxgml4s1rkircfm6768jw"))))
    (properties `((upstream-name . "ModCon")))
    (build-system r-build-system)
    (inputs (list perl))
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/caggtaagtat/ModCon")
    (synopsis
     "Modifying splice site usage by changing the mRNP code, while maintaining the genetic code")
    (description
     "Collection of functions to calculate a nucleotide sequence surrounding for
splice donors sites to either activate or repress donor usage.  The proposed
alternative nucleotide sequence encodes the same amino acid and could be applied
e.g. in reporter systems to silence or activate cryptic splice donor sites.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-moda
  (package
    (name "r-moda")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MODA" version))
       (sha256
        (base32 "1axm6lfg6wv3rm35ajsc4cjaqbriyb4hzj3sr8ks6h131fn7sjw2"))))
    (properties `((upstream-name . "MODA")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-rcolorbrewer
                             r-igraph
                             r-dynamictreecut
                             r-cluster
                             r-amountain))
    (home-page "https://bioconductor.org/packages/MODA")
    (synopsis
     "MODA: MOdule Differential Analysis for weighted gene co-expression network")
    (description
     "MODA can be used to estimate and construct condition-specific gene co-expression
networks, and identify differentially expressed subnetworks as conserved or
condition specific modules which are potentially associated with relevant
biological processes.")
    (license license:gpl2+)))

(define-public r-mobilitytransformr
  (package
    (name "r-mobilitytransformr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MobilityTransformR" version))
       (sha256
        (base32 "1292fk08zi1zf0hdj56vzdgv9h9nr16vmbzypqkam7lvqqnig49h"))))
    (properties `((upstream-name . "MobilityTransformR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xcms r-spectra r-msnbase r-metabocoreutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LiesaSalzer/MobilityTransformR")
    (synopsis "Effective mobility scale transformation of CE-MS(/MS) data")
    (description
     "@code{MobilityTransformR} collects a tool set for effective mobility scale
transformation of CE-MS/MS data in order to increase reproducibility.  It
provides functionality to determine the migration times from mobility markers
that have been added to the analysis and performs the transformation based on
these markers. @code{MobilityTransformR} supports the conversion of numeric
vectors, Spectra-objects, and M@code{SnOnDiskExp}.")
    (license license:artistic2.0)))

(define-public r-moanin
  (package
    (name "r-moanin")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moanin" version))
       (sha256
        (base32 "1k9m0q1bpbdpb2hm57y0lygx1mj0q1xh30x9sz7s5q9fpnabybrh"))))
    (properties `((upstream-name . "moanin")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-viridis
                             r-topgo
                             r-summarizedexperiment
                             r-s4vectors
                             r-reshape2
                             r-nmi
                             r-matrixstats
                             r-mass
                             r-limma
                             r-edger
                             r-clusterr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/moanin")
    (synopsis "An R Package for Time Course RNASeq Data Analysis")
    (description
     "Simple and efficient workflow for time-course gene expression data, built on
publictly available open-source projects hosted on CRAN and bioconductor.
moanin provides helper functions for all the steps required for analysing
time-course data using functional data analysis: (1) functional modeling of the
timecourse data; (2) differential expression analysis; (3) clustering; (4)
downstream analysis.")
    (license (license:fsdg-compatible "BSD 3-clause License + file LICENSE"))))

(define-public r-mnem
  (package
    (name "r-mnem")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mnem" version))
       (sha256
        (base32 "1p6da0jl3c9yx68bzc41z3xry8vf399fzinf01c20yfql4g17c07"))))
    (properties `((upstream-name . "mnem")))
    (build-system r-build-system)
    (propagated-inputs (list r-wesanderson
                             r-tsne
                             r-snowfall
                             r-rgraphviz
                             r-rcppeigen
                             r-rcpp
                             r-naturalsort
                             r-matrixstats
                             r-linnorm
                             r-lattice
                             r-graph
                             r-ggplot2
                             r-flexclust
                             r-e1071
                             r-data-table
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cbg-ethz/mnem/")
    (synopsis "Mixture Nested Effects Models")
    (description
     "Mixture Nested Effects Models (mnem) is an extension of Nested Effects Models
and allows for the analysis of single cell perturbation data provided by methods
like Perturb-Seq (Dixit et al., 2016) or Crop-Seq (Datlinger et al., 2017).  In
those experiments each of many cells is perturbed by a knock-down of a specific
gene, i.e.  several cells are perturbed by a knock-down of gene A, several by a
knock-down of gene B, ...  and so forth.  The observed read-out has to be
multi-trait and in the case of the Perturb-/Crop-Seq gene are expression
profiles for each cell.  mnem uses a mixture model to simultaneously cluster the
cell population into k clusters and and infer k networks causally linking the
perturbed genes for each cluster.  The mixture components are inferred via an
expectation maximization algorithm.")
    (license license:gpl3)))

(define-public r-mmdiffbamsubset
  (package
    (name "r-mmdiffbamsubset")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MMDiffBamSubset" version
                              'experiment))
       (sha256
        (base32 "1awhcc4zjmzwqc35xv1l2alybbnv1b16bbxn85xywdq0qyj8zgxp"))))
    (properties `((upstream-name . "MMDiffBamSubset")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MMDiffBamSubset")
    (synopsis "Example ChIP-Seq data for the MMDiff package")
    (description
     "Subset of BAM files, including WT_2.bam, Null_2.bam, Resc_2.bam, Input.bam from
the \"Cfp1\" experiment (see Clouaire et al., Genes Dev.  2012).  Data is
available under @code{ArrayExpress} accession numbers E-ERAD-79.  Additionally,
corresponding subset of peaks called by MACS")
    (license license:lgpl2.0+)))

(define-public r-mmdiff2
  (package
    (name "r-mmdiff2")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MMDiff2" version))
       (sha256
        (base32 "0lamw826kl57ffascr54cvjmxi70gqx21nnsfhdadbkqvzrcfwyh"))))
    (properties `((upstream-name . "MMDiff2")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-s4vectors
                             r-rsamtools
                             r-rcolorbrewer
                             r-locfit
                             r-ggplot2
                             r-genomicranges
                             r-bsgenome
                             r-biostrings
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MMDiff2")
    (synopsis "Statistical Testing for ChIP-Seq data sets")
    (description
     "This package detects statistically significant differences between read
enrichment profiles in different @code{ChIP-Seq} samples.  To take advantage of
shape differences it uses Kernel methods (Maximum Mean Discrepancy, MMD).")
    (license license:artistic2.0)))

(define-public r-mmappr2data
  (package
    (name "r-mmappr2data")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MMAPPR2data" version
                              'experiment))
       (sha256
        (base32 "16ang08nc4jw8m4faacd0rhv47h5wlp771nd6d8bn1r6d5b9si3w"))))
    (properties `((upstream-name . "MMAPPR2data")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsamtools))
    (native-inputs (list r-knitr))
    (home-page "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3613585/")
    (synopsis "Sample Data for MMAPPR2")
    (description
     "This package contains data for illustration purposes in the MMAPPR2 package,
namely simulated BAM files containing RNA-Seq data for a mutation in the slc24a5
gene, taken from the GRCz11 genome.  Also contains reference sequence and
annotation files for the region.")
    (license license:gpl3)))

(define-public r-mmagilentdesign026655-db
  (package
    (name "r-mmagilentdesign026655-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MmAgilentDesign026655.db" version
                              'annotation))
       (sha256
        (base32 "00d0yjcb5id7zacx4bzdwy4q6f4qvnnx8ph4d4xz1fmcbspz2qiz"))))
    (properties `((upstream-name . "MmAgilentDesign026655.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/MmAgilentDesign026655.db")
    (synopsis
     "Agilent Chips that use Agilent design number 026655 annotation data (chip MmAgilentDesign026655)")
    (description
     "Agilent Chips that use Agilent design number 026655 annotation data (chip
@code{MmAgilentDesign026655}) assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mm24kresogen-db
  (package
    (name "r-mm24kresogen-db")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mm24kresogen.db" version
                              'annotation))
       (sha256
        (base32 "0kf9cilhfpfl9cws1b08ic11fnqscdvbja4m16sm4xjyfd2kskfp"))))
    (properties `((upstream-name . "mm24kresogen.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mm24kresogen.db")
    (synopsis
     "RNG_MRC Mouse Pangenomic 24k Set annotation data (chip mm24kresogen)")
    (description
     "RNG_MRC Mouse Pangenomic 24k Set annotation data (chip mm24kresogen) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mlseq
  (package
    (name "r-mlseq")
    (version "2.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MLSeq" version))
       (sha256
        (base32 "1q6qwizqyfplyvkhbkp4m4ssmglkr26xdp8r79ana06hrc3k6hin"))))
    (properties `((upstream-name . "MLSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-venndiagram
                             r-testthat
                             r-summarizedexperiment
                             r-sseq
                             r-plyr
                             r-pamr
                             r-limma
                             r-ggplot2
                             r-foreach
                             r-edger
                             r-deseq2
                             r-caret
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MLSeq")
    (synopsis "Machine Learning Interface for RNA-Seq Data")
    (description
     "This package applies several machine learning methods, including SVM,
@code{bagSVM}, Random Forest and CART to RNA-Seq data.")
    (license (license:fsdg-compatible "GPL(>=2)"))))

(define-public r-mlp
  (package
    (name "r-mlp")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MLP" version))
       (sha256
        (base32 "0hh6q2x841dhdig1f2fg4y8wn1q25lvdznh0630qsz9ciaig94wh"))))
    (properties `((upstream-name . "MLP")))
    (build-system r-build-system)
    (propagated-inputs (list r-gplots r-annotationdbi))
    (home-page "https://bioconductor.org/packages/MLP")
    (synopsis "Mean Log P Analysis")
    (description
     "Pathway analysis based on p-values associated to genes from a genes expression
analysis of interest.  Utility functions enable to extract pathways from the
Gene Ontology Biological Process (GOBP), Molecular Function (GOMF) and Cellular
Component (GOCC), Kyoto Encyclopedia of Genes of Genomes (KEGG) and Reactome
databases.  Methodology, and helper functions to display the results as a table,
barplot of pathway significance, Gene Ontology graph and pathway significance
are available.")
    (license license:gpl3)))

(define-public r-mitoclone2
  (package
    (name "r-mitoclone2")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mitoClone2" version))
       (sha256
        (base32 "18zkfnz099p4xh8qkxc2xj75ndraby8ycz6dfq281ly6inyd58r6"))))
    (properties `((upstream-name . "mitoClone2")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-s4vectors
                             r-rhtslib
                             r-reshape2
                             r-pheatmap
                             r-ggplot2
                             r-genomicranges
                             r-deepsnv))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/benstory/mitoClone2")
    (synopsis
     "Clonal Population Identification in Single-Cell RNA-Seq Data using Mitochondrial and Somatic Mutations")
    (description
     "This package primarily identifies variants in mitochondrial genomes from BAM
alignment files.  It filters these variants to remove RNA editing events then
estimates their evolutionary relationship (i.e.  their phylogenetic tree) and
groups single cells into clones.  It also visualizes the mutations and providing
additional genomic context.")
    (license license:gpl3)))

(define-public r-mitch
  (package
    (name "r-mitch")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mitch" version))
       (sha256
        (base32 "0i64zzr04zpl3rcm93sl5bhwfam3n378p4frgqrgypm21aycisx2"))))
    (properties `((upstream-name . "mitch")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown
                             r-reshape2
                             r-plyr
                             r-mass
                             r-knitr
                             r-kableextra
                             r-gridextra
                             r-gplots
                             r-ggplot2
                             r-ggally
                             r-echarts4r
                             r-beeswarm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/markziemann/mitch")
    (synopsis "Multi-Contrast Gene Set Enrichment Analysis")
    (description
     "mitch is an R package for multi-contrast enrichment analysis.  At it’s heart, it
uses a rank-MANOVA based statistical approach to detect sets of genes that
exhibit enrichment in the multidimensional space as compared to the background.
The rank-MANOVA concept dates to work by Cox and Mann
(https://doi.org/10.1186/1471-2105-13-S16-S12).  mitch is useful for pathway
analysis of profiling studies with one, two or more contrasts, or in studies
with multiple omics profiling, for example proteomic, transcriptomic, epigenomic
analysis of the same samples.  mitch is perfectly suited for pathway level
differential analysis of @code{scRNA-seq} data.  The main strengths of mitch are
that it can import datasets easily from many upstream tools and has advanced
plotting features to visualise these enrichments.")
    (license (license:fsdg-compatible "CC BY-SA 4.0 + file LICENSE"))))

(define-public r-mistyr
  (package
    (name "r-mistyr")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mistyR" version))
       (sha256
        (base32 "128ggdhsm9d1sslahvzzhqb73s16vf7474sxc9lcajy5l4m3rw7k"))))
    (properties `((upstream-name . "mistyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlist
                             r-rlang
                             r-ridge
                             r-readr
                             r-ranger
                             r-r-utils
                             r-purrr
                             r-ggplot2
                             r-furrr
                             r-filelock
                             r-dplyr
                             r-distances
                             r-digest
                             r-deldir
                             r-caret
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://saezlab.github.io/mistyR/")
    (synopsis "Multiview Intercellular SpaTial modeling framework")
    (description
     "@code{mistyR} is an implementation of the Multiview Intercellular
@code{SpaTialmodeling} framework (MISTy).  MISTy is an explainable machine
learning framework for knowledge extraction and analysis of single-cell, highly
multiplexed, spatially resolved data.  MISTy facilitates an in-depth
understanding of marker interactions by profiling the intra- and intercellular
relationships.  MISTy is a flexible framework able to process a custom number of
views.  Each of these views can describe a different spatial context, i.e.,
define a relationship among the observed expressions of the markers, such as
intracellular regulation or paracrine regulation, but also, the views can also
capture cell-type specific relationships, capture relations between functional
footprints or focus on relations between different anatomical regions.  Each
MISTy view is considered as a potential source of variability in the measured
marker expressions.  Each MISTy view is then analyzed for its contribution to
the total expression of each marker and is explained in terms of the
interactions with other measurements that led to the observed contribution.")
    (license license:gpl3)))

(define-public r-missrows
  (package
    (name "r-missrows")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "missRows" version))
       (sha256
        (base32 "13xfzfi6xvcjb7i3dvd606vs1l2dwj2srxfqs26prc6qz064qjpy"))))
    (properties `((upstream-name . "missRows")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-plyr r-multiassayexperiment
                             r-gtools r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/missRows")
    (synopsis "Handling Missing Individuals in Multi-Omics Data Integration")
    (description
     "The @code{missRows} package implements the MI-MFA method to deal with missing
individuals ('biological units') in multi-omics data integration.  The MI-MFA
method generates multiple imputed datasets from a Multiple Factor Analysis
model, then the yield results are combined in a single consensus solution.  The
package provides functions for estimating coordinates of individuals and
variables, imputing missing individuals, and various diagnostic plots to inspect
the pattern of missingness and visualize the uncertainty due to missing values.")
    (license license:artistic2.0)))

(define-public r-mirtarrnaseq
  (package
    (name "r-mirtarrnaseq")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirTarRnaSeq" version))
       (sha256
        (base32 "0lfx1vp689nvmjz2c5sfdy8ww36nrcnjmliv0d7440bc1rk4lywl"))))
    (properties `((upstream-name . "mirTarRnaSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-reshape2
                             r-r-utils
                             r-purrr
                             r-pscl
                             r-pheatmap
                             r-mass
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-corrplot
                             r-catools
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mirTarRnaSeq")
    (synopsis "mirTarRnaSeq")
    (description
     "@code{mirTarRnaSeq} R package can be used for interactive @code{mRNA}
@code{miRNA} sequencing statistical analysis.  This package utilizes expression
or differential expression @code{mRNA} and @code{miRNA} sequencing results and
performs interactive correlation and various GLMs (Regular GLM, Multivariate
GLM, and Interaction GLMs ) analysis between @code{mRNA} and @code{miRNA}
expriments.  These experiments can be time point experiments, and or condition
expriments.")
    (license license:expat)))

(define-public r-mirnatarget
  (package
    (name "r-mirnatarget")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNATarget" version
                              'experiment))
       (sha256
        (base32 "0qlazpmar9wi0gbh2qpkz8f44vzzg79iia1sgry42xbykx7bzx0y"))))
    (properties `((upstream-name . "miRNATarget")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/miRNATarget")
    (synopsis
     "gene target tabale of miRNA for human/mouse used for MiRaGE package")
    (description
     "gene target tabale of @code{miRNA} for human/mouse used for @code{MiRaGE}
package")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-mirnatap-db
  (package
    (name "r-mirnatap-db")
    (version "0.99.10")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNAtap.db" version
                              'annotation))
       (sha256
        (base32 "1j4igmyb9f4fa0a72hkmq3f7xgvyv38wai3mds5sd6mfgfc3brs3"))))
    (properties `((upstream-name . "miRNAtap.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-mirnatap r-dbi r-annotationdbi))
    (home-page "https://bioconductor.org/packages/miRNAtap.db")
    (synopsis "Data for miRNAtap")
    (description "This package holds the database for @code{miRNAtap}.")
    (license license:gpl2)))

(define-public r-mirnatap
  (package
    (name "r-mirnatap")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNAtap" version))
       (sha256
        (base32 "1jc9xlhfp8pcnrrrgf7pdzgfz6sl617czv6mp74ydsnl0yc33hnj"))))
    (properties `((upstream-name . "miRNAtap")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sqldf
                             r-rsqlite
                             r-plyr
                             r-dbi
                             r-annotationdbi))
    (home-page "https://bioconductor.org/packages/miRNAtap")
    (synopsis "miRNAtap: microRNA Targets - Aggregated Predictions")
    (description
     "The package facilitates implementation of workflows requiring @code{miRNA}
predictions, it allows to integrate ranked @code{miRNA} target predictions from
multiple sources available online and aggregate them with various methods which
improves quality of predictions above any of the single sources.  Currently
predictions are available for Homo sapiens, Mus musculus and Rattus norvegicus
(the last one through homology translation).")
    (license license:gpl2)))

(define-public r-mirnapath
  (package
    (name "r-mirnapath")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNApath" version))
       (sha256
        (base32 "1rmhx8qb9lk67icacsl5klvl16rkdlpln1pahdjn2rcnn0j4ry59"))))
    (properties `((upstream-name . "miRNApath")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/miRNApath")
    (synopsis "miRNApath: Pathway Enrichment for miRNA Expression Data")
    (description
     "This package provides pathway enrichment techniques for @code{miRNA} expression
data.  Specifically, the set of methods handles the many-to-many relationship
between @code{miRNAs} and the multiple genes they are predicted to target (and
thus affect.) It also handles the gene-to-pathway relationships separately.
Both steps are designed to preserve the additive effects of @code{miRNAs} on
genes, many @code{miRNAs} affecting one gene, one @code{miRNA} affecting
multiple genes, or many @code{miRNAs} affecting many genes.")
    (license license:lgpl2.1)))

(define-public r-mirnameconverter
  (package
    (name "r-mirnameconverter")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNAmeConverter" version))
       (sha256
        (base32 "1ndd80xsq7qjgmn738nf5vhz68mxni1waah6iwd57iiyl45fkj29"))))
    (properties `((upstream-name . "miRNAmeConverter")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-mirbaseversions-db r-dbi
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/miRNAmeConverter")
    (synopsis "Convert miRNA Names to Different miRBase Versions")
    (description
     "Translating mature @code{miRNA} names to different @code{miRBase} versions,
sequence retrieval, checking names for validity and detecting @code{miRBase}
version of a given set of names (data from http://www.mirbase.org/).")
    (license license:artistic2.0)))

(define-public r-mirna20cdf
  (package
    (name "r-mirna20cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirna20cdf" version
                              'annotation))
       (sha256
        (base32 "05yvi7jibj8fiak7z03gjv07xagpda3gy19namyy4iiq3w7ya2fj"))))
    (properties `((upstream-name . "mirna20cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mirna20cdf")
    (synopsis "mirna20cdf")
    (description
     "This package provides a package containing an environment representing the
@code{miRNA-2_0.cdf} file.")
    (license license:lgpl2.0+)))

(define-public r-mirna10probe
  (package
    (name "r-mirna10probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirna10probe" version
                              'annotation))
       (sha256
        (base32 "0f6jfzmj9h4g60lnkdi65grl3ncn19qnrwcxsdhqgiw3ll19cbj7"))))
    (properties `((upstream-name . "mirna10probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mirna10probe")
    (synopsis "Probe sequence data for microarrays of type mirna10")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was @code{miRNA-1\\_0\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-mirna10cdf
  (package
    (name "r-mirna10cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirna10cdf" version
                              'annotation))
       (sha256
        (base32 "146gc1dx071vawn29k2m31zpi3wdwykss4qh8znpmbp5qcja4hyb"))))
    (properties `((upstream-name . "mirna10cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mirna10cdf")
    (synopsis "mirna10cdf")
    (description
     "This package provides a package containing an environment representing the
@code{miRNA-1_0.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mirna102xgaincdf
  (package
    (name "r-mirna102xgaincdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirna102xgaincdf" version
                              'annotation))
       (sha256
        (base32 "03q71dq6b0plivj5bgpgx0pnqdwfgplakyk5ggj4w7kqwmr5k17i"))))
    (properties `((upstream-name . "mirna102xgaincdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mirna102xgaincdf")
    (synopsis "mirna102xgaincdf")
    (description
     "This package provides a package containing an environment representing the
@code{miRNA-1_0_2Xgain.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-mirlab
  (package
    (name "r-mirlab")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRLAB" version))
       (sha256
        (base32 "18rhi4bk1rxnsdbrgnyqdrs4h4nbvb7ndvz4rz8mgj1f2nnr1fc5"))))
    (properties `((upstream-name . "miRLAB")))
    (build-system r-build-system)
    (propagated-inputs (list r-tcgabiolinks
                             r-summarizedexperiment
                             r-stringr
                             r-rcurl
                             r-pcalg
                             r-org-hs-eg-db
                             r-limma
                             r-invariantcausalprediction
                             r-impute
                             r-httr
                             r-hmisc
                             r-gplots
                             r-gostats
                             r-glmnet
                             r-entropy
                             r-energy
                             r-dplyr
                             r-ctc
                             r-category))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pvvhoang/miRLAB")
    (synopsis "Dry lab for exploring miRNA-mRNA relationships")
    (description
     "Provide tools exploring @code{miRNA-mRNA} relationships, including popular
@code{miRNA} target prediction methods, ensemble methods that integrate
individual methods, functions to get data from online resources, functions to
validate the results, and functions to conduct enrichment analyses.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-mirintegrator
  (package
    (name "r-mirintegrator")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirIntegrator" version))
       (sha256
        (base32 "1wpdyk97ca0jw8k6n11cy1imy2y3s15hvdv068sp87bapjzfj2fi"))))
    (properties `((upstream-name . "mirIntegrator")))
    (build-system r-build-system)
    (propagated-inputs (list r-rontotools
                             r-rgraphviz
                             r-org-hs-eg-db
                             r-graph
                             r-ggplot2
                             r-annotationdbi))
    (home-page "http://datad.github.io/mirIntegrator/")
    (synopsis
     "Integrating microRNA expression into signaling pathways for pathway analysis")
    (description
     "This package provides tools for augmenting signaling pathways to perform pathway
analysis of @code{microRNA} and @code{mRNA} expression levels.")
    (license license:gpl3+)))

(define-public r-mircompdata
  (package
    (name "r-mircompdata")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRcompData" version
                              'experiment))
       (sha256
        (base32 "15w8vldxp5wp0vqfy3k7s8imjvmdaibgiw0p2li5sx2j0g6i27g6"))))
    (properties `((upstream-name . "miRcompData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/miRcompData")
    (synopsis "Data used in the miRcomp package")
    (description
     "Raw amplification data from a large @code{microRNA} mixture / dilution study.
These data are used by the @code{miRcomp} package to assess the performance of
methods that estimate expression from the amplification curves.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-mircomp
  (package
    (name "r-mircomp")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRcomp" version))
       (sha256
        (base32 "04qpmxj75fh7g67vw5vp79aj5b4n4ppm228ykah5pnpk0swf4kpm"))))
    (properties `((upstream-name . "miRcomp")))
    (build-system r-build-system)
    (propagated-inputs (list r-mircompdata r-kernsmooth r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/miRcomp")
    (synopsis
     "Tools to assess and compare miRNA expression estimatation methods")
    (description
     "Based on a large @code{miRNA} dilution study, this package provides tools to
read in the raw amplification data and use these data to assess the performance
of methods that estimate expression from the amplification curves.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-mirbaseversions-db
  (package
    (name "r-mirbaseversions-db")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRBaseVersions.db" version
                              'annotation))
       (sha256
        (base32 "09n0309glsj53g6wainl5m0vwnlx71ija5zmlqd0cpbhdis5zihw"))))
    (properties `((upstream-name . "miRBaseVersions.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-gtools r-dbi r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/miRBaseVersions.db")
    (synopsis
     "Collection of mature miRNA names of 22 different miRBase release versions")
    (description
     "Annotation package containing all available @code{miRNA} names from 22 versions
(data from http://www.mirbase.org/).")
    (license license:artistic2.0)))

(define-public r-mirbase-db
  (package
    (name "r-mirbase-db")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirbase.db" version
                              'annotation))
       (sha256
        (base32 "0l7ah1ia7q1h16av2v1qa9nqpr0604z5dlrq37kd0aiz8dcxyddk"))))
    (properties `((upstream-name . "mirbase.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mirbase.db")
    (synopsis "miRBase: the microRNA database")
    (description
     "@code{miRBase}: the @code{microRNA} database assembled using data from
@code{miRBase} (http://www.mirbase.org/).")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-mirage
  (package
    (name "r-mirage")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MiRaGE" version))
       (sha256
        (base32 "1zl1xpcgsdrlfvrfbxlgz9y09mrqv91128xywajbaljrb8r2wqka"))))
    (properties `((upstream-name . "MiRaGE")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-biocmanager r-biocgenerics
                             r-biobase r-annotationdbi))
    (home-page "https://bioconductor.org/packages/MiRaGE")
    (synopsis "MiRNA Ranking by Gene Expression")
    (description
     "The package contains functions for inferece of target gene regulation by
@code{miRNA}, based on only target gene expression profile.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-mira
  (package
    (name "r-mira")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MIRA" version))
       (sha256
        (base32 "03srd513r7l5xpvbv03vksddw1hqiwpqxzims85jvzdl2fvyikx2"))))
    (properties `((upstream-name . "MIRA")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-data-table
                             r-bsseq
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://databio.org/mira")
    (synopsis "Methylation-Based Inference of Regulatory Activity")
    (description
     "DNA methylation contains information about the regulatory state of the cell.
MIRA aggregates genome-scale DNA methylation data into a DNA methylation profile
for a given region set with shared biological annotation.  Using this profile,
MIRA infers and scores the collective regulatory activity for the region set.
MIRA facilitates regulatory analysis in situations where classical regulatory
assays would be difficult and allows public sources of region sets to be
leveraged for novel insight into the regulatory state of DNA methylation
datasets.")
    (license license:gpl3)))

(define-public r-miqc
  (package
    (name "r-miqc")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miQC" version))
       (sha256
        (base32 "131pnlkk72b4x42aij8bwq8rknfxk0hz1lj6rlvgy2w95fbs12g0"))))
    (properties `((upstream-name . "miQC")))
    (build-system r-build-system)
    (propagated-inputs (list r-singlecellexperiment r-ggplot2 r-flexmix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/greenelab/miQC")
    (synopsis
     "Flexible, probabilistic metrics for quality control of scRNA-seq data")
    (description
     "Single-cell RNA-sequencing (@code{scRNA-seq}) has made it possible to profile
gene expression in tissues at high resolution.  An important preprocessing step
prior to performing downstream analyses is to identify and remove cells with
poor or degraded sample quality using quality control (QC) metrics.  Two widely
used QC metrics to identify a ‘low-quality’ cell are (i) if the cell includes a
high proportion of reads that map to mitochondrial DNA encoded genes
(@code{mtDNA}) and (ii) if a small number of genes are detected. @code{miQC} is
data-driven QC metric that jointly models both the proportion of reads mapping
to @code{mtDNA} and the number of detected genes with mixture models in a
probabilistic framework to predict the low-quality cells in a given dataset.")
    (license license:bsd-3)))

(define-public r-mipp
  (package
    (name "r-mipp")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MiPP" version))
       (sha256
        (base32 "1zv1yx310mjzm215vr78765s3dl8srs6mrs20dajnim09qkfshc2"))))
    (properties `((upstream-name . "MiPP")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-e1071 r-biobase))
    (home-page
     "http://www.healthsystem.virginia.edu/internet/hes/biostat/bioinformatics/")
    (synopsis "Misclassification Penalized Posterior Classification")
    (description
     "This package finds optimal sets of genes that seperate samples into two or more
classes.")
    (license license:gpl2+)))

(define-public r-minionsummarydata
  (package
    (name "r-minionsummarydata")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "minionSummaryData" version
                              'experiment))
       (sha256
        (base32 "1pkg77i5xi96yqn7i3xchwknh5lii35hyms8rjqqzamjr7g16ifs"))))
    (properties `((upstream-name . "minionSummaryData")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/minionSummaryData")
    (synopsis
     "Summarised MinION sequencing data published by Ashton et al. 2015")
    (description
     "Summarised @code{MinION} sequencing data for Salmonella Typhi published by
Ashton et al.  in 2015.  Three replicate runs are each provided as Fast5Summary
objects.")
    (license license:expat)))

(define-public r-minimumdistance
  (package
    (name "r-minimumdistance")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MinimumDistance" version))
       (sha256
        (base32 "1gbvjq5xk7q1m10m8mmy2fxrh49q25xik0jmvjln8lng8n98xviz"))))
    (properties `((upstream-name . "MinimumDistance")))
    (build-system r-build-system)
    (propagated-inputs (list r-vanillaice
                             r-summarizedexperiment
                             r-s4vectors
                             r-oligoclasses
                             r-matrixstats
                             r-matrixgenerics
                             r-lattice
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-foreach
                             r-ff
                             r-dnacopy
                             r-data-table
                             r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/MinimumDistance")
    (synopsis "Package for De Novo CNV Detection in Case-Parent Trios")
    (description
     "Analysis of de novo copy number variants in trios from high-dimensional
genotyping platforms.")
    (license license:artistic2.0)))

(define-public r-minfidataepic
  (package
    (name "r-minfidataepic")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "minfiDataEPIC" version
                              'experiment))
       (sha256
        (base32 "1m2wl7x48rjjl3sh8r42wmw761r55821jjvbxjs7lycbmgd162ph"))))
    (properties `((upstream-name . "minfiDataEPIC")))
    (build-system r-build-system)
    (propagated-inputs (list r-minfi r-illuminahumanmethylationepicmanifest
                             r-illuminahumanmethylationepicanno-ilm10b2-hg19))
    (home-page "https://bioconductor.org/packages/minfiDataEPIC")
    (synopsis "Example data for the Illumina Methylation EPIC array")
    (description
     "Data from 3 technical replicates of the cell line GM12878 from the EPIC
methylation array.")
    (license license:artistic2.0)))

(define-public r-mineica
  (package
    (name "r-mineica")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MineICA" version))
       (sha256
        (base32 "1czahm7d4cyic4n2h60pkyymapw79v1dd34qc3c6his9h33mhw35"))))
    (properties `((upstream-name . "MineICA")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-scales
                             r-rgraphviz
                             r-rcolorbrewer
                             r-plyr
                             r-mclust
                             r-marray
                             r-lumihumanall-db
                             r-lumi
                             r-jade
                             r-igraph
                             r-hmisc
                             r-gtools
                             r-graph
                             r-gostats
                             r-ggplot2
                             r-fpc
                             r-foreach
                             r-fastica
                             r-colorspace
                             r-cluster
                             r-biomart
                             r-biocgenerics
                             r-biobase
                             r-annotationdbi
                             r-annotate))
    (home-page "https://bioconductor.org/packages/MineICA")
    (synopsis "Analysis of an ICA decomposition obtained on genomics data")
    (description
     "The goal of @code{MineICA} is to perform Independent Component Analysis (ICA) on
multiple transcriptome datasets, integrating additional data (e.g molecular,
clinical and pathological).  This Integrative ICA helps the biological
interpretation of the components by studying their association with variables
(e.g sample annotations) and gene sets, and enables the comparison of components
from different datasets using correlation-based graph.")
    (license license:gpl2)))

(define-public r-mina
  (package
    (name "r-mina")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mina" version))
       (sha256
        (base32 "07znbjz4rcs478crp3yyawg06g6z8181arj1kmhs70id687lh0l8"))))
    (properties `((upstream-name . "mina")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rspectra
                             r-reshape2
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-plyr
                             r-paralleldist
                             r-mcl
                             r-hmisc
                             r-ggplot2
                             r-foreach
                             r-bigmemory
                             r-biganalytics
                             r-apcluster))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mina")
    (synopsis "Microbial community dIversity and Network Analysis")
    (description
     "An increasing number of microbiome datasets have been generated and analyzed
with the help of rapidly developing sequencing technologies.  At present,
analysis of taxonomic profiling data is mainly conducted using composition-based
methods, which ignores interactions between community members.  Besides this, a
lack of efficient ways to compare microbial interaction networks limited the
study of community dynamics.  To better understand how community diversity is
affected by complex interactions between its members, we developed a framework
(Microbial community @code{dIversity} and Network Analysis, mina), a
comprehensive framework for microbial community diversity analysis and network
comparison.  By defining and integrating network-derived community features, we
greatly reduce noise-to-signal ratio for diversity analyses.  A bootstrap and
permutation-based method was implemented to assess community network
dissimilarities and extract discriminative features in a statistically
principled way.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-mimager
  (package
    (name "r-mimager")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mimager" version))
       (sha256
        (base32 "00qwk5gbrgwsz1hdn3kj3pc8jn20ljlcz43cqan8x9ffkhj4axhh"))))
    (properties `((upstream-name . "mimager")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-s4vectors
                             r-preprocesscore
                             r-oligoclasses
                             r-oligo
                             r-gtable
                             r-dbi
                             r-biocgenerics
                             r-biobase
                             r-affyplm
                             r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aaronwolen/mimager")
    (synopsis "mimager: The Microarray Imager")
    (description
     "Easily visualize and inspect microarrays for spatial artifacts.")
    (license license:expat)))

(define-public r-midashla
  (package
    (name "r-midashla")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "midasHLA" version))
       (sha256
        (base32 "02971sczxayglv6fa5yc8gx9w8r6vxsyc29qv1is7jj0yr14dq27"))))
    (properties `((upstream-name . "midasHLA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-stringi
                             r-s4vectors
                             r-rlang
                             r-qdaptools
                             r-multiassayexperiment
                             r-magrittr
                             r-knitr
                             r-kableextra
                             r-hardyweinberg
                             r-formattable
                             r-dplyr
                             r-broom
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/midasHLA")
    (synopsis
     "R package for immunogenomics data handling and association analysis")
    (description
     "@code{MiDAS} is a R package for immunogenetics data transformation and
statistical analysis. @code{MiDAS} accepts input data in the form of HLA alleles
and KIR types, and can transform it into biologically meaningful variables,
enabling HLA amino acid fine mapping, analyses of HLA evolutionary divergence,
KIR gene presence, as well as validated HLA-KIR interactions.  Further, it
allows comprehensive statistical association analysis workflows with phenotypes
of diverse measurement scales. @code{MiDAS} closes a gap between the inference
of immunogenetic variation and its efficient utilization to make relevant
discoveries related to T cell, Natural Killer cell, and disease biology.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-micsqtl
  (package
    (name "r-micsqtl")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MICSQTL" version))
       (sha256
        (base32 "1q711hvhf1cjvkyvifxcl5xmyrr4rxj6djxiqqdsyrwffsj9iy7g"))))
    (properties `((upstream-name . "MICSQTL")))
    (build-system r-build-system)
    (propagated-inputs (list r-toast
                             r-tca
                             r-summarizedexperiment
                             r-s4vectors
                             r-purrr
                             r-nnls
                             r-magrittr
                             r-glue
                             r-ggridges
                             r-ggpubr
                             r-ggplot2
                             r-dirmult
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MICSQTL")
    (synopsis
     "MICSQTL (Multi-omic deconvolution, Integration and Cell-type-specific Quantitative Trait Loci)")
    (description
     "Our pipeline, MICSQTL, utilizes @code{scRNA-seq} reference and bulk
transcriptomes to estimate cellular composition in the matched bulk proteomes.
The expression of genes and proteins at either bulk level or cell type level can
be integrated by Angle-based Joint and Individual Variation Explained (AJIVE)
framework.  Meanwhile, MICSQTL can perform cell-type-specic quantitative trait
loci (QTL) mapping to proteins or transcripts based on the input of bulk
expression data and the estimated cellular composition per molecule type,
without the need for single cell sequencing.  We use matched
transcriptome-proteome from human brain frontal cortex tissue samples to
demonstrate the input and output of our tool.")
    (license license:gpl3)))

(define-public r-microstasis
  (package
    (name "r-microstasis")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microSTASIS" version))
       (sha256
        (base32 "0rm202xdjr24521sw004w7fk0p325dwxiykyx90d6dif9xjrg94w"))))
    (properties `((upstream-name . "microSTASIS")))
    (build-system r-build-system)
    (propagated-inputs (list r-treesummarizedexperiment
                             r-stringr
                             r-rlang
                             r-ggside
                             r-ggplot2
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1093/bib/bbac055")
    (synopsis "Microbiota STability ASsessment via Iterative cluStering")
    (description
     "The toolkit µSTASIS', or @code{microSTASIS}, has been developed for the
stability analysis of microbiota in a temporal framework by leveraging on
iterative clustering.  Concretely, the core function uses Hartigan-Wong k-means
algorithm as many times as possible for stressing out paired samples from the
same individuals to test if they remain together for multiple numbers of
clusters over a whole data set of individuals.  Moreover, the package includes
multiple functions to subset samples from paired times, validate the results or
visualize the output.")
    (license license:gpl3)))

(define-public r-micrornaome
  (package
    (name "r-micrornaome")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microRNAome" version
                              'experiment))
       (sha256
        (base32 "09b0260qxdhx7sax1xmg8nz8mf0nv4yh70ibd8cyxj8fpnzifnhh"))))
    (properties `((upstream-name . "microRNAome")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment))
    (home-page "https://bioconductor.org/packages/microRNAome")
    (synopsis "SummarizedExperiment for the microRNAome project")
    (description
     "This package provides a @code{SummarizedExperiment} object of read counts for
@code{microRNAs} across tissues, cell-types, and cancer cell-lines.  The read
count matrix was prepared and provided by the author of the study: Towards the
human cellular @code{microRNAome}.")
    (license license:gpl2+)))

(define-public r-microrna
  (package
    (name "r-microrna")
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microRNA" version))
       (sha256
        (base32 "0sn8a95yjvr7vn2imvymlfpldqrsd25c7p1q64ihhkvz4kbjb1zv"))))
    (properties `((upstream-name . "microRNA")))
    (build-system r-build-system)
    (propagated-inputs (list r-biostrings))
    (home-page "https://bioconductor.org/packages/microRNA")
    (synopsis "Data and functions for dealing with microRNAs")
    (description
     "Different data resources for @code{microRNAs} and some functions for
manipulating them.")
    (license license:artistic2.0)))

(define-public r-microbiotaprocess
  (package
    (name "r-microbiotaprocess")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MicrobiotaProcess" version))
       (sha256
        (base32 "0gkjg3pqdwfxf203wwxags1xh91rb2rry5f6j1y8ah2bsky15z0l"))))
    (properties `((upstream-name . "MicrobiotaProcess")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-vegan
                             r-treeio
                             r-tidytree
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-rlang
                             r-plyr
                             r-pillar
                             r-patchwork
                             r-mass
                             r-magrittr
                             r-ggtreeextra
                             r-ggtree
                             r-ggstar
                             r-ggsignif
                             r-ggrepel
                             r-ggplot2
                             r-ggfun
                             r-foreach
                             r-dtplyr
                             r-dplyr
                             r-data-table
                             r-coin
                             r-cli
                             r-biostrings
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/YuLab-SMU/MicrobiotaProcess/")
    (synopsis
     "comprehensive R package for managing and analyzing microbiome and other ecological data within the tidy framework")
    (description
     "@code{MicrobiotaProcess} is an R package for analysis, visualization and
biomarker discovery of microbial datasets.  It introduces MPSE class, this make
it more interoperable with the existing computing ecosystem.  Moreover, it
introduces a tidy microbiome data structure paradigm and analysis grammar.  It
provides a wide variety of microbiome data analysis procedures under the unified
and common framework (tidy-like framework).")
    (license license:gpl3+)))

(define-public r-microbiomeprofiler
  (package
    (name "r-microbiomeprofiler")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MicrobiomeProfiler" version))
       (sha256
        (base32 "1xl1kx89jgf68gdq23aflgcfyqy584gdm35237dvbqgra4aizlad"))))
    (properties `((upstream-name . "MicrobiomeProfiler")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shinycustomloader
                             r-shiny
                             r-magrittr
                             r-htmltools
                             r-gson
                             r-golem
                             r-ggplot2
                             r-enrichplot
                             r-dt
                             r-config
                             r-clusterprofiler))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/YuLab-SMU/MicrobiomeProfiler/")
    (synopsis
     "An R/shiny package for microbiome functional enrichment analysis")
    (description
     "This is an R/shiny package to perform functional enrichment analysis for
microbiome data.  This package was based on @code{clusterProfiler}.  Moreover,
@code{MicrobiomeProfiler} support KEGG enrichment analysis, COG enrichment
analysis, Microbe-Disease association enrichment analysis, Metabo-Pathway
analysis.")
    (license license:gpl2)))

(define-public r-microbiomemarker
  (package
    (name "r-microbiomemarker")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microbiomeMarker" version))
       (sha256
        (base32 "15qsal51b29ryxvjvfqwx7xh525cg3scv7kn6fh9rwdpi97hx7ff"))))
    (properties `((upstream-name . "microbiomeMarker")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-vegan
                             r-tidytree
                             r-tidyr
                             r-tibble
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-proc
                             r-plotroc
                             r-phyloseq
                             r-patchwork
                             r-multtest
                             r-metagenomeseq
                             r-mass
                             r-magrittr
                             r-limma
                             r-iranges
                             r-ggtree
                             r-ggsignif
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-deseq2
                             r-complexheatmap
                             r-coin
                             r-caret
                             r-biostrings
                             r-biomformat
                             r-biocparallel
                             r-biocgenerics
                             r-biobase
                             r-ancombc
                             r-aldex2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yiluheihei/microbiomeMarker")
    (synopsis "microbiome biomarker analysis toolkit")
    (description
     "To date, a number of methods have been developed for microbiome marker discovery
based on metagenomic profiles, e.g. L@code{EfSe}.  However, all of these methods
have its own advantages and disadvantages, and none of them is considered
standard or universal.  Moreover, different programs or softwares may be
development using different programming languages, even in different operating
systems.  Here, we have developed an all-in-one R package
@code{microbiomeMarker} that integrates commonly used differential analysis
methods as well as three machine learning-based approaches, including Logistic
regression, Random forest, and Support vector machine, to facilitate the
identification of microbiome markers.")
    (license license:gpl3)))

(define-public r-microbiomeexplorer
  (package
    (name "r-microbiomeexplorer")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microbiomeExplorer" version))
       (sha256
        (base32 "0byy4r5fhvhwnlxnhb0gbiskjq2q3gj3ibh4anlxpzv55q4shrsd"))))
    (properties `((upstream-name . "microbiomeExplorer")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-shinywidgets
                             r-shinyjs
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-rmarkdown
                             r-rlang
                             r-reshape2
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-plotly
                             r-metagenomeseq
                             r-matrixstats
                             r-magrittr
                             r-lubridate
                             r-limma
                             r-knitr
                             r-heatmaply
                             r-forcats
                             r-dt
                             r-dplyr
                             r-deseq2
                             r-car
                             r-broom
                             r-biomformat
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/microbiomeExplorer")
    (synopsis "Microbiome Exploration App")
    (description
     "The @code{MicrobiomeExplorer} R package is designed to facilitate the analysis
and visualization of marker-gene survey feature data.  It allows a user to
perform and visualize typical microbiome analytical workflows either through the
command line or an interactive Shiny application included with the package.  In
addition to applying common analytical workflows the application enables
automated analysis report generation.")
    (license license:expat)))

(define-public r-microbiomedatasets
  (package
    (name "r-microbiomedatasets")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microbiomeDataSets" version
                              'experiment))
       (sha256
        (base32 "1i118r0wfq2y57h3m1l3nzhrixmkq0dsc1dfkbfi83xl29ijhjn9"))))
    (properties `((upstream-name . "microbiomeDataSets")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-treesummarizedexperiment
                             r-summarizedexperiment
                             r-multiassayexperiment
                             r-experimenthub
                             r-biostrings
                             r-biocgenerics
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/microbiomeDataSets")
    (synopsis "Experiment Hub based microbiome datasets")
    (description
     "@code{microbiomeDataSets} is a collection of microbiome datasets loaded from
Bioconductor'S @code{ExperimentHub} infrastructure.  The datasets serve as
reference for workflows and vignettes published adjacent to the microbiome
analysis tools on Bioconductor.  Additional datasets can be added overtime and
additions from authors are welcome.")
    (license license:cc0)))

(define-public r-microbiomedasim
  (package
    (name "r-microbiomedasim")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microbiomeDASim" version))
       (sha256
        (base32 "1wc15hymh7vzdxd6pxwdlxikpppdyi1pgjc0vmj7wa3y4d11v0pk"))))
    (properties `((upstream-name . "microbiomeDASim")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm
                             r-phyloseq
                             r-pbapply
                             r-mvtnorm
                             r-metagenomeseq
                             r-matrix
                             r-mass
                             r-ggplot2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/williazo/microbiomeDASim")
    (synopsis "Microbiome Differential Abundance Simulation")
    (description
     "This package provides a toolkit for simulating differential microbiome data
designed for longitudinal analyses.  Several functional forms may be specified
for the mean trend.  Observations are drawn from a multivariate normal model.
The objective of this package is to be able to simulate data in order to
accurately compare different longitudinal methods for differential abundance.")
    (license license:expat)))

(define-public r-microbiomebenchmarkdata
  (package
    (name "r-microbiomebenchmarkdata")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MicrobiomeBenchmarkData" version
                              'experiment))
       (sha256
        (base32 "1546ccbnz86scdslf17rzsvyc7h0pb4mw77b17jicfwr8h4qff25"))))
    (properties `((upstream-name . "MicrobiomeBenchmarkData")))
    (build-system r-build-system)
    (propagated-inputs (list r-treesummarizedexperiment r-summarizedexperiment
                             r-s4vectors r-biocfilecache r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/MicrobiomeBenchmarkData")
    (synopsis "Datasets for benchmarking in microbiome research")
    (description
     "The @code{MicrobiomeBenchmarkData} package provides functionality to access
microbiome datasets suitable for benchmarking.  These datasets have some
biological truth, which allows to have expected results for comparison.  The
datasets come from various published sources and are provided as
@code{TreeSummarizedExperiment} objects.  Currently, only datasets suitable for
benchmarking differential abundance methods are available.")
    (license license:artistic2.0)))

(define-public r-michip
  (package
    (name "r-michip")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MiChip" version))
       (sha256
        (base32 "0ig5c7fbgjpabvx7m5x6ki08cg0vdhkyd8g5yb36y2w580qi55sn"))))
    (properties `((upstream-name . "MiChip")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/MiChip")
    (synopsis "MiChip Parsing and Summarizing Functions")
    (description
     "This package takes the @code{MiChip} @code{miRNA} microarray .grp scanner output
files and parses these out, providing summary and plotting functions	to analyse
@code{MiChip} hybridizations.  A set of hybridizations is packaged into an
@code{ExpressionSet} allowing it to be used by other	@code{BioConductor}
packages.")
    (license license:gpl2+)))

(define-public r-miaviz
  (package
    (name "r-miaviz")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miaViz" version))
       (sha256
        (base32 "1i6ihx6r33lg0cw7k0mhzygsglfzwvmvwi49ilc32lh3lflqqksp"))))
    (properties `((upstream-name . "miaViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-treesummarizedexperiment
                             r-tidytree
                             r-tidyr
                             r-tidygraph
                             r-tibble
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-scater
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-mia
                             r-ggtree
                             r-ggrepel
                             r-ggraph
                             r-ggplot2
                             r-ggnewscale
                             r-dplyr
                             r-dirichletmultinomial
                             r-delayedarray
                             r-biocparallel
                             r-biocgenerics
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/miaViz")
    (synopsis "Microbiome Analysis Plotting and Visualization")
    (description
     "The @code{miaViz} package implements functions to visualize
@code{TreeSummarizedExperiment} objects especially in the context of microbiome
analysis.  Part of the mia family of R/Bioconductor packages.")
    (license (list license:artistic2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-miasim
  (package
    (name "r-miasim")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miaSim" version))
       (sha256
        (base32 "1k53d71jpm3a8vd5f5b0s2v7d722k3jvay2g782p28i73q77scxk"))))
    (properties `((upstream-name . "miaSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-treesummarizedexperiment
                             r-summarizedexperiment
                             r-s4vectors
                             r-powerlaw
                             r-matrixgenerics
                             r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/microbiome/miaSim")
    (synopsis "Microbiome Data Simulation")
    (description
     "Microbiome time series simulation with generalized Lotka-Volterra model,
Self-Organized Instability (SOI), and other models.  Hubbell's Neutral model is
used to determine the abundance matrix.  The resulting abundance matrix is
applied to (Tree)@code{SummarizedExperiment} objects.")
    (license (list license:artistic2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-mi16cod-db
  (package
    (name "r-mi16cod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mi16cod.db" version
                              'annotation))
       (sha256
        (base32 "1v64plvn173hdvjyy491qh2wd4mgbpwr27iq7lab9b3w1g3b1a82"))))
    (properties `((upstream-name . "mi16cod.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mi16cod.db")
    (synopsis
     "Codelink Mouse Inflammation 16 Bioarray annotation data (chip mi16cod)")
    (description
     "Codelink Mouse Inflammation 16 Bioarray annotation data (chip mi16cod) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgug4122a-db
  (package
    (name "r-mgug4122a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgug4122a.db" version
                              'annotation))
       (sha256
        (base32 "0x4mrjqd9wnppkp757f3azllbjiilxfds3cpbcrfsi07l8lf4mxx"))))
    (properties `((upstream-name . "mgug4122a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgug4122a.db")
    (synopsis
     "Agilent \"Mouse Genome, Whole\" annotation data (chip mgug4122a)")
    (description
     "Agilent \"Mouse Genome, Whole\" annotation data (chip mgug4122a) assembled using
data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgug4121a-db
  (package
    (name "r-mgug4121a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgug4121a.db" version
                              'annotation))
       (sha256
        (base32 "0947crjk8nj4bzgwz7anran7y2qhd1v8bp9f59ja3628rgjx6cz5"))))
    (properties `((upstream-name . "mgug4121a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgug4121a.db")
    (synopsis "Agilent Mouse annotation data (chip mgug4121a)")
    (description
     "Agilent Mouse annotation data (chip mgug4121a) assembled using data from public
repositories")
    (license license:artistic2.0)))

(define-public r-mgug4120a-db
  (package
    (name "r-mgug4120a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgug4120a.db" version
                              'annotation))
       (sha256
        (base32 "1qnzpww4wy926j4i10rfddng8ygav86ig9c301qwvw0ly235f0vx"))))
    (properties `((upstream-name . "mgug4120a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgug4120a.db")
    (synopsis "Agilent annotation data (chip mgug4120a)")
    (description
     "Agilent annotation data (chip mgug4120a) assembled using data from public
repositories")
    (license license:artistic2.0)))

(define-public r-mgug4104a-db
  (package
    (name "r-mgug4104a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgug4104a.db" version
                              'annotation))
       (sha256
        (base32 "1aqs943lff3q1g2dfl9cyxfpm8swkjcb4spi5drgw39g9m8p3dp8"))))
    (properties `((upstream-name . "mgug4104a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgug4104a.db")
    (synopsis "Agilent annotation data (chip mgug4104a)")
    (description
     "Agilent annotation data (chip mgug4104a) assembled using data from public
repositories")
    (license license:artistic2.0)))

(define-public r-mguatlas5k-db
  (package
    (name "r-mguatlas5k-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mguatlas5k.db" version
                              'annotation))
       (sha256
        (base32 "08lw02r9wpc06pq82934dlfsrjjsaqchrsyghc8pgk6iqq1c3f9r"))))
    (properties `((upstream-name . "mguatlas5k.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mguatlas5k.db")
    (synopsis
     "Clontech BD Atlas Long Oligos Mouse 5K annotation data (chip mguatlas5k)")
    (description
     "Clontech BD Atlas Long Oligos Mouse 5K annotation data (chip mguatlas5k)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgu74cv2probe
  (package
    (name "r-mgu74cv2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74cv2probe" version
                              'annotation))
       (sha256
        (base32 "0rx2cigsi4bnm48vl0bbfh6k3k3cs8nv0x7k7j9vq5z9dniyzqf6"))))
    (properties `((upstream-name . "mgu74cv2probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74cv2probe")
    (synopsis "Probe sequence data for microarrays of type mgu74cv2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was MG-U74Cv2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-mgu74cv2cdf
  (package
    (name "r-mgu74cv2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74cv2cdf" version
                              'annotation))
       (sha256
        (base32 "18k1kahfwix3cs6kh2aml2mi39l3vjr526ajksljjk46n0bsf1r2"))))
    (properties `((upstream-name . "mgu74cv2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74cv2cdf")
    (synopsis "mgu74cv2cdf")
    (description
     "This package provides a package containing an environment representing the
MG_U74Cv2.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-mgu74cv2-db
  (package
    (name "r-mgu74cv2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74cv2.db" version
                              'annotation))
       (sha256
        (base32 "072brqii2ya2ppqbp71r61j6xh2syfhnfgnh3452dyjf2xc48klr"))))
    (properties `((upstream-name . "mgu74cv2.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74cv2.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74Cv2 Array annotation data (chip mgu74cv2)")
    (description
     "Affymetrix Affymetrix MG_U74Cv2 Array annotation data (chip mgu74cv2) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgu74cprobe
  (package
    (name "r-mgu74cprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74cprobe" version
                              'annotation))
       (sha256
        (base32 "0ib5iyyp6mms5cszarczs82y2779d3cssz7hih1wm0vddbby40km"))))
    (properties `((upstream-name . "mgu74cprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74cprobe")
    (synopsis "Probe sequence data for microarrays of type mgu74c")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was MG-U74C\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-mgu74ccdf
  (package
    (name "r-mgu74ccdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74ccdf" version
                              'annotation))
       (sha256
        (base32 "01dbsxmv7r1r2n348gcdpkxqmciqyrf3s0handp3hl33s6pd8xbj"))))
    (properties `((upstream-name . "mgu74ccdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74ccdf")
    (synopsis "mgu74ccdf")
    (description
     "This package provides a package containing an environment representing the
MG_U74C.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-mgu74c-db
  (package
    (name "r-mgu74c-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74c.db" version
                              'annotation))
       (sha256
        (base32 "1s09n64m46qmsl0drlr383rb20gvq62xzqg3l8jk1mja2mpl41ji"))))
    (properties `((upstream-name . "mgu74c.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74c.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74C Array annotation data (chip mgu74c)")
    (description
     "Affymetrix Affymetrix MG_U74C Array annotation data (chip mgu74c) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgu74bv2probe
  (package
    (name "r-mgu74bv2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74bv2probe" version
                              'annotation))
       (sha256
        (base32 "1kn4549s0kj0jpg7yx4lkc8gvxdfm7p21b6yy52ymhfgbv431sl6"))))
    (properties `((upstream-name . "mgu74bv2probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74bv2probe")
    (synopsis "Probe sequence data for microarrays of type mgu74bv2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was MG-U74Bv2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-mgu74bv2cdf
  (package
    (name "r-mgu74bv2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74bv2cdf" version
                              'annotation))
       (sha256
        (base32 "05w0dh194lncda9qdkmg52znjrnlnjc15fzplw147nyablq5m109"))))
    (properties `((upstream-name . "mgu74bv2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74bv2cdf")
    (synopsis "mgu74bv2cdf")
    (description
     "This package provides a package containing an environment representing the
MG_U74Bv2.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-mgu74bv2-db
  (package
    (name "r-mgu74bv2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74bv2.db" version
                              'annotation))
       (sha256
        (base32 "1r35rhh11q8s1d9mva4qky8sjh04hpk1ziavx77b5mw6aza1ckh4"))))
    (properties `((upstream-name . "mgu74bv2.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74bv2.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74Bv2 Array annotation data (chip mgu74bv2)")
    (description
     "Affymetrix Affymetrix MG_U74Bv2 Array annotation data (chip mgu74bv2) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgu74bprobe
  (package
    (name "r-mgu74bprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74bprobe" version
                              'annotation))
       (sha256
        (base32 "0igrdbp2hmn550rcfvrscmvykbpm9sbnfa29walv1v57jy6wl7fl"))))
    (properties `((upstream-name . "mgu74bprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74bprobe")
    (synopsis "Probe sequence data for microarrays of type mgu74b")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was MG-U74B\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-mgu74bcdf
  (package
    (name "r-mgu74bcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74bcdf" version
                              'annotation))
       (sha256
        (base32 "0sivgn6srmak7k6p8sj382lsanc34xj5b6182ggnp872y8v6zx5b"))))
    (properties `((upstream-name . "mgu74bcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74bcdf")
    (synopsis "mgu74bcdf")
    (description
     "This package provides a package containing an environment representing the
MG_U74B.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-mgu74b-db
  (package
    (name "r-mgu74b-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74b.db" version
                              'annotation))
       (sha256
        (base32 "0h8riyk7816ydqhlah3lnlqqzpv6xca3flyzp889kh7j5r9d4792"))))
    (properties `((upstream-name . "mgu74b.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74b.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74B Array annotation data (chip mgu74b)")
    (description
     "Affymetrix Affymetrix MG_U74B Array annotation data (chip mgu74b) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgu74av2probe
  (package
    (name "r-mgu74av2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74av2probe" version
                              'annotation))
       (sha256
        (base32 "02wf1xymaxd3hfyrbwxfw12klzf5c28md0h45rf41vzia0mkvr2z"))))
    (properties `((upstream-name . "mgu74av2probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74av2probe")
    (synopsis "Probe sequence data for microarrays of type mgu74av2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was MG-U74Av2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-mgu74av2cdf
  (package
    (name "r-mgu74av2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74av2cdf" version
                              'annotation))
       (sha256
        (base32 "1cw5q8vkmd80g0dxv38qdki39h255bssf27yf0lf0jig9ra5w34n"))))
    (properties `((upstream-name . "mgu74av2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74av2cdf")
    (synopsis "mgu74av2cdf")
    (description
     "This package provides a package containing an environment representing the
MG_U74Av2.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-mgu74av2-db
  (package
    (name "r-mgu74av2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74av2.db" version
                              'annotation))
       (sha256
        (base32 "0mnnzqhqswwbh140mcwsy5bz0l7affzznhkby5jvvmj9mq7pd15d"))))
    (properties `((upstream-name . "mgu74av2.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74av2.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74Av2 Array annotation data (chip mgu74av2)")
    (description
     "Affymetrix Affymetrix MG_U74Av2 Array annotation data (chip mgu74av2) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgu74aprobe
  (package
    (name "r-mgu74aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74aprobe" version
                              'annotation))
       (sha256
        (base32 "0813s2w5s9ahaqn91mkwzfckclv5jdphq17j2qwyzd4xqyxrmsbi"))))
    (properties `((upstream-name . "mgu74aprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74aprobe")
    (synopsis "Probe sequence data for microarrays of type mgu74a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was MG-U74A\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-mgu74acdf
  (package
    (name "r-mgu74acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74acdf" version
                              'annotation))
       (sha256
        (base32 "187k8y1dnnyw926h090gmkk1081sa91fn113lysll3460dqn3ylg"))))
    (properties `((upstream-name . "mgu74acdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74acdf")
    (synopsis "mgu74acdf")
    (description
     "This package provides a package containing an environment representing the
MG_U74A.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-mgu74a-db
  (package
    (name "r-mgu74a-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgu74a.db" version
                              'annotation))
       (sha256
        (base32 "1xksybvhfyclxfbabm6haxy0z4izb29qlxd36s3llr3x839wa3kv"))))
    (properties `((upstream-name . "mgu74a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74a.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74A Array annotation data (chip mgu74a)")
    (description
     "Affymetrix Affymetrix MG_U74A Array annotation data (chip mgu74a) assembled
using data from public repositories")
    (license license:artistic2.0)))

(define-public r-mgsa
  (package
    (name "r-mgsa")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgsa" version))
       (sha256
        (base32 "130d3k6m78k67qikwzisabqdmb9s2z5d2dypv8ia0lhyp77yk8b9"))))
    (properties `((upstream-name . "mgsa")))
    (build-system r-build-system)
    (propagated-inputs (list r-gplots))
    (home-page "https://github.com/sba1/mgsa-bioc")
    (synopsis "Model-based gene set analysis")
    (description
     "Model-based Gene Set Analysis (MGSA) is a Bayesian modeling approach for gene
set enrichment.  The package mgsa implements MGSA and tools to use MGSA together
with the Gene Ontology.")
    (license license:artistic2.0)))

(define-public r-mgfr
  (package
    (name "r-mgfr")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MGFR" version))
       (sha256
        (base32 "08k1as0wh1a2z1d2m659y6khl2cqa6v6p6sxf913ak4kk3ibab0a"))))
    (properties `((upstream-name . "MGFR")))
    (build-system r-build-system)
    (propagated-inputs (list r-biomart r-annotate))
    (home-page "https://bioconductor.org/packages/MGFR")
    (synopsis "Marker Gene Finder in RNA-seq data")
    (description
     "The package is designed to detect marker genes from RNA-seq data.")
    (license license:gpl3)))

(define-public r-mgfm
  (package
    (name "r-mgfm")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MGFM" version))
       (sha256
        (base32 "02a1w5m9840s0x700dwvpvq7f96fyygdjpsrcfxdfsr491zamc2r"))))
    (properties `((upstream-name . "MGFM")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi r-annotate))
    (home-page "https://bioconductor.org/packages/MGFM")
    (synopsis "Marker Gene Finder in Microarray gene expression data")
    (description
     "The package is designed to detect marker genes from Microarray gene expression
data sets")
    (license license:gpl3)))

(define-public r-mfa
  (package
    (name "r-mfa")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mfa" version))
       (sha256
        (base32 "0h8qsl62zqn0d2mwxqn246khdfay85alf6p39yp94qv90kvgp62f"))))
    (properties `((upstream-name . "mfa")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rcpp
                             r-mcmcpack
                             r-mcmcglmm
                             r-magrittr
                             r-ggplot2
                             r-ggmcmc
                             r-dplyr
                             r-coda
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mfa")
    (synopsis
     "Bayesian hierarchical mixture of factor analyzers for modelling genomic bifurcations")
    (description
     "MFA models genomic bifurcations using a Bayesian hierarchical mixture of factor
analysers.")
    (license license:gpl2+)))

(define-public r-metnet
  (package
    (name "r-metnet")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetNet" version))
       (sha256
        (base32 "17086dx5zdcp5lflhrzfpcjxbimrkq4ylxgiwjb6r2qwkhx9vq44"))))
    (properties `((upstream-name . "MetNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stabs
                             r-s4vectors
                             r-rlang
                             r-psych
                             r-parmigene
                             r-ggplot2
                             r-genie3
                             r-genenet
                             r-dplyr
                             r-corpcor
                             r-bnlearn
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MetNet")
    (synopsis
     "Inferring metabolic networks from untargeted high-resolution mass spectrometry data")
    (description
     "@code{MetNet} contains functionality to infer metabolic network topologies from
quantitative data and high-resolution mass/charge information.  Using
statistical models (including correlation, mutual information, regression and
Bayes statistics) and quantitative data (intensity values of features) adjacency
matrices are inferred that can be combined to a consensus matrix.  Mass
differences calculated between mass/charge values of features will be matched
against a data frame of supplied mass/charge differences referring to
transformations of enzymatic activities.  In a third step, the two levels of
information are combined to form a adjacency matrix inferred from both
quantitative and structure information.")
    (license license:gpl3+)))

(define-public r-metid
  (package
    (name "r-metid")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetID" version))
       (sha256
        (base32 "13d5d6fansnqsv0bm4mxz6jwb41kkn0ay3p6s6w6j8xksaafl7ql"))))
    (properties `((upstream-name . "MetID")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-matrix r-igraph r-devtools
                             r-chemminer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ressomlab/MetID")
    (synopsis "Network-based prioritization of putative metabolite IDs")
    (description
     "This package uses an innovative network-based approach that will enhance our
ability to determine the identities of significant ions detected by LC-MS.")
    (license license:artistic2.0)))

(define-public r-methylsig
  (package
    (name "r-methylsig")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylSig" version))
       (sha256
        (base32 "1v8pfv5c7i9r1vrrbdi75w79gazq4qma4wpgzq1bhba3pjh8w1bc"))))
    (properties `((upstream-name . "methylSig")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-dss
                             r-delayedmatrixstats
                             r-delayedarray
                             r-bsseq))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/methylSig")
    (synopsis
     "MethylSig: Differential Methylation Testing for WGBS and RRBS Data")
    (description
     "@code{MethylSig} is a package for testing for differentially methylated
cytosines (DMCs) or regions (DMRs) in whole-genome bisulfite sequencing (WGBS)
or reduced representation bisulfite sequencing (RRBS) experiments.
@code{MethylSig} uses a beta binomial model to test for significant differences
between groups of samples.  Several options exist for either site-specific or
sliding window tests, and variance estimation.")
    (license license:gpl3)))

(define-public r-methylseqdata
  (package
    (name "r-methylseqdata")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethylSeqData" version
                              'experiment))
       (sha256
        (base32 "0bw450ada6nnz19d2b9qvx0szyldswrsmy21vsm0dw7idh4xfj6c"))))
    (properties `((upstream-name . "MethylSeqData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rhdf5
                             r-iranges
                             r-hdf5array
                             r-genomicranges
                             r-genomeinfodb
                             r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MethylSeqData")
    (synopsis "Collection of Public DNA Methylation Sequencing Datasets")
    (description
     "Base-level (i.e.  cytosine-level) counts for a collection of public
bisulfite-seq datasets (e.g., WGBS and RRBS), provided as
@code{SummarizedExperiment} objects with sample- and base-level metadata.")
    (license license:cc0)))

(define-public r-methylseekr
  (package
    (name "r-methylseekr")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethylSeekR" version))
       (sha256
        (base32 "0zsiaqz7awb94cazm3dn1bykwjgaw674q14p05dfgjpyjr7zxdgf"))))
    (properties `((upstream-name . "MethylSeekR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtracklayer
                             r-mhsmm
                             r-iranges
                             r-genomicranges
                             r-geneplotter
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/MethylSeekR")
    (synopsis "Segmentation of Bis-seq data")
    (description
     "This is a package for the discovery of regulatory regions from Bis-seq data")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-methylscaper
  (package
    (name "r-methylscaper")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylscaper" version))
       (sha256
        (base32 "1akigwx3k0xdnq70219qg69nvmshbryq0z6glq1dz2wic4gghdlw"))))
    (properties `((upstream-name . "methylscaper")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-shinyjs
                             r-shinyfiles
                             r-shiny
                             r-seriation
                             r-seqinr
                             r-rfast
                             r-data-table
                             r-biostrings
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/methylscaper")
    (synopsis "Visualization of Methylation Data")
    (description
     "methylscaper is an R package for processing and visualizing data jointly
profiling methylation and chromatin accessibility (MAPit, NOMe-seq,
@code{scNMT-seq}, @code{nanoNOMe}, etc.).  The package supports both single-cell
and single-molecule data, and a common interface for jointly visualizing both
data types through the generation of ordered representational methylation-state
matrices.  The Shiny app allows for an interactive seriation process of
refinement and re-weighting that optimally orders the cells or DNA molecules to
discover methylation patterns and nucleosome positioning.")
    (license license:gpl2)))

(define-public r-methylpipe
  (package
    (name "r-methylpipe")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylPipe" version))
       (sha256
        (base32 "1ayy6jf0jrd2lk16j3a7k3qnm8h8w76bkb7gsvx1bbchsk050880"))))
    (properties `((upstream-name . "methylPipe")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rsamtools
                             r-marray
                             r-iranges
                             r-gviz
                             r-gplots
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-data-table
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/methylPipe")
    (synopsis "Base resolution DNA methylation data analysis")
    (description
     "Memory efficient analysis of base resolution DNA methylation data in both the
@code{CpG} and non-@code{CpG} sequence context.  Integration of DNA methylation
data derived from any methodology providing base- or low-resolution data.")
    (license (license:fsdg-compatible "GPL(>=2)"))))

(define-public r-methylmnm
  (package
    (name "r-methylmnm")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylMnM" version))
       (sha256
        (base32 "0nbn6xdv8wcs7bxaym2nc3ryhjj574pamm66yc3blx413q5wfsnq"))))
    (properties `((upstream-name . "methylMnM")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod r-edger))
    (home-page "https://bioconductor.org/packages/methylMnM")
    (synopsis "detect different methylation level (DMR)")
    (description
     "To give the exactly p-value and q-value of @code{MeDIP-seq} and MRE-seq data for
different samples comparation.")
    (license license:gpl3)))

(define-public r-methylmix
  (package
    (name "r-methylmix")
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethylMix" version))
       (sha256
        (base32 "14qh696ya8g1ay4iwypcacfrvql3iw9b0pp7mn85hb5ppfsrjqfr"))))
    (properties `((upstream-name . "MethylMix")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpmm
                             r-rcurl
                             r-rcolorbrewer
                             r-r-matlab
                             r-limma
                             r-impute
                             r-ggplot2
                             r-foreach
                             r-digest
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MethylMix")
    (synopsis "MethylMix: Identifying methylation driven cancer genes")
    (description
     "@code{MethylMix} is an algorithm implemented to identify hyper and
hypomethylated genes for a disease. @code{MethylMix} is based on a beta mixture
model to identify methylation states and compares them with the normal DNA
methylation state. @code{MethylMix} uses a novel statistic, the Differential
Methylation value or DM-value defined as the difference of a methylation state
with the normal methylation state.  Finally, matched gene expression data is
used to identify, besides differential, functional methylation states by
focusing on methylation changes that effect gene expression.  References:
Gevaert 0. @code{MethylMix}: an R package for identifying DNA methylation-driven
genes.  Bioinformatics (Oxford, England).  2015;31(11):1839-41.
doi:10.1093/bioinformatics/btv020.  Gevaert O, Tibshirani R, Plevritis SK.
Pancancer analysis of DNA methylation-driven genes using @code{MethylMix}.
Genome Biology.  2015;16(1):17.  doi:10.1186/s13059-014-0579-8.")
    (license license:gpl2)))

(define-public r-methylinheritance
  (package
    (name "r-methylinheritance")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylInheritance" version))
       (sha256
        (base32 "0aiv9cy2fg5vgnkihqyyp9476d36n7spyfbvq8cnhhhka7q771iy"))))
    (properties `((upstream-name . "methylInheritance")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rebus
                             r-methylkit
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/adeschen/methylInheritance")
    (synopsis
     "Permutation-Based Analysis associating Conserved Differentially Methylated Elements Across Multiple Generations to a Treatment Effect")
    (description
     "Permutation analysis, based on Monte Carlo sampling, for testing the hypothesis
that the number of conserved differentially methylated elements, between several
generations, is associated to an effect inherited from a treatment and that
stochastic effect can be dismissed.")
    (license license:artistic2.0)))

(define-public r-methylgsa
  (package
    (name "r-methylgsa")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylGSA" version))
       (sha256
        (base32 "037wfcdva8jqfrmy7kkdzp74izw2lgnawhg5576p66qvp1fwf2gi"))))
    (properties `((upstream-name . "methylGSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-shiny
                             r-robustrankaggreg
                             r-reactome-db
                             r-org-hs-eg-db
                             r-missmethyl
                             r-illuminahumanmethylationepicanno-ilm10b4-hg19
                             r-illuminahumanmethylation450kanno-ilmn12-hg19
                             r-go-db
                             r-ggplot2
                             r-clusterprofiler
                             r-biocparallel
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reese3928/methylGSA")
    (synopsis
     "Gene Set Analysis Using the Outcome of Differential Methylation")
    (description
     "The main functions for @code{methylGSA} are methylglm and @code{methylRRA}.
@code{methylGSA} implements logistic regression adjusting number of probes as a
covariate. @code{methylRRA} adjusts multiple p-values of each gene by Robust
Rank Aggregation.  For more detailed help information, please see the vignette.")
    (license license:gpl2)))

(define-public r-methylclock
  (package
    (name "r-methylclock")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylclock" version))
       (sha256
        (base32 "1njym21ndva58kg7gqfw1d7ri4421rilflg1kn8hbgyayjrlhcl1"))))
    (properties `((upstream-name . "methylclock")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-tibble
                             r-rpmm
                             r-rcpp
                             r-quadprog
                             r-preprocesscore
                             r-planet
                             r-performanceanalytics
                             r-minfi
                             r-methylclockdata
                             r-impute
                             r-gridextra
                             r-ggpubr
                             r-ggpmisc
                             r-ggplot2
                             r-experimenthub
                             r-dynamictreecut
                             r-dplyr
                             r-devtools
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/isglobal-brge/methylclock")
    (synopsis "Methylclock - DNA methylation-based clocks")
    (description
     "This package allows to estimate chronological and gestational DNA methylation
(DNAm) age as well as biological age using different methylation clocks.
Chronological DNAm age (in years) : Horvath's clock, Hannum's clock, BNN,
Horvath's skin+blood clock, @code{PedBE} clock and Wu's clock.  Gestational DNAm
age : Knight's clock, Bohlin's clock, Mayne's clock and Lee's clocks.
Biological DNAm clocks : Levine's clock and Telomere Length's clock.")
    (license license:expat)))

(define-public r-methylcc
  (package
    (name "r-methylcc")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylCC" version))
       (sha256
        (base32 "1grb6d83gi4583jzg12wqkgr1dp2bxysdwd4lirzvnvhpwnfmbhw"))))
    (properties `((upstream-name . "methylCC")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-quadprog
                             r-plyranges
                             r-minfi
                             r-magrittr
                             r-iranges
                             r-illuminahumanmethylation450kmanifest
                             r-illuminahumanmethylation450kanno-ilmn12-hg19
                             r-genomicranges
                             r-genefilter
                             r-flowsorted-blood-450k
                             r-dplyr
                             r-bumphunter
                             r-bsseq
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stephaniehicks/methylCC/")
    (synopsis
     "Estimate the cell composition of whole blood in DNA methylation samples")
    (description
     "This package provides a tool to estimate the cell composition of DNA methylation
whole blood sample measured on any platform technology (microarray and
sequencing).")
    (license license:gpl3)))

(define-public r-methylaiddata
  (package
    (name "r-methylaiddata")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethylAidData" version
                              'experiment))
       (sha256
        (base32 "0kn20wsij54c3i2w3yai97qqmnbawsz0326ai5zrlkalkra4w1r9"))))
    (properties `((upstream-name . "MethylAidData")))
    (build-system r-build-system)
    (propagated-inputs (list r-methylaid))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MethylAidData")
    (synopsis
     "MethylAid-summarized data for 2800 Illumina 450k array samples and 2620 EPIC array samples")
    (description
     "This package provides a data package containing summarized Illumina 450k array
data on 2800 samples and summarized EPIC data for 2620 samples.  The data can be
use as a background data set in the interactive application.")
    (license license:gpl2+)))

(define-public r-methtargetedngs
  (package
    (name "r-methtargetedngs")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethTargetedNGS" version))
       (sha256
        (base32 "05s8zpiqpw5qx5k2qf3vkxj69ag67gkl5mb8dxq7jpwzx51kdvwc"))))
    (properties `((upstream-name . "MethTargetedNGS")))
    (build-system r-build-system)
    (inputs (list hmmer))
    (propagated-inputs (list r-stringr r-seqinr r-gplots r-biostrings))
    (home-page "https://bioconductor.org/packages/MethTargetedNGS")
    (synopsis
     "Perform Methylation Analysis on Next Generation Sequencing Data")
    (description
     "Perform step by step methylation analysis of Next Generation Sequencing data.")
    (license license:artistic2.0)))

(define-public r-methrix
  (package
    (name "r-methrix")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methrix" version))
       (sha256
        (base32 "1yydmp3iaxbny25mfr3018f1kjvqi6zhrh0c8hvzznbkvyxvgkn2"))))
    (properties `((upstream-name . "methrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-matrixstats
                             r-iranges
                             r-hdf5array
                             r-ggplot2
                             r-genomicranges
                             r-delayedmatrixstats
                             r-delayedarray
                             r-data-table
                             r-bsgenome))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CompEpigen/methrix")
    (synopsis
     "Fast and efficient summarization of generic bedGraph files from Bisufite sequencing")
    (description
     "Bedgraph files generated by Bisulfite pipelines often come in various flavors.
Critical downstream step requires summarization of these files into
methylation/coverage matrices.  This step of data aggregation is done by
Methrix, including many other useful downstream functions.")
    (license license:expat)))

(define-public r-methreg
  (package
    (name "r-methreg")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethReg" version))
       (sha256
        (base32 "1hql25dlvr7f923zngyymacdpz3zvsrzzvmc4rdc5a7w4y7ibl2n"))))
    (properties `((upstream-name . "MethReg")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-sfsmisc
                             r-sesamedata
                             r-sesame
                             r-s4vectors
                             r-rlang
                             r-readr
                             r-pscl
                             r-progress
                             r-plyr
                             r-matrix
                             r-mass
                             r-iranges
                             r-ggpubr
                             r-ggplot2
                             r-genomicranges
                             r-experimenthub
                             r-dplyr
                             r-delayedarray
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MethReg")
    (synopsis
     "Assessing the regulatory potential of DNA methylation regions or sites on gene transcription")
    (description
     "Epigenome-wide association studies (EWAS) detects a large number of DNA
methylation differences, often hundreds of differentially methylated regions and
thousands of @code{CpGs}, that are significantly associated with a disease, many
are located in non-coding regions.  Therefore, there is a critical need to
better understand the functional impact of these @code{CpG} methylations and to
further prioritize the significant changes. @code{MethReg} is an R package for
integrative modeling of DNA methylation, target gene expression and
transcription factor binding sites data, to systematically identify and rank
functional @code{CpG} methylations. @code{MethReg} evaluates, prioritizes and
annotates @code{CpG} sites with high regulatory potential using matched
methylation and gene expression data, along with external TF-target interaction
databases based on manually curation, @code{ChIP-seq} experiments or gene
regulatory network analysis.")
    (license license:gpl3)))

(define-public r-methped
  (package
    (name "r-methped")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethPed" version))
       (sha256
        (base32 "1xhaf7zhwga86max98hi5zq4d7dl8rcvky3p9pxzw7ld5s6n9r2j"))))
    (properties `((upstream-name . "MethPed")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MethPed")
    (synopsis
     "DNA methylation classifier tool for the identification of pediatric brain tumor subtypes")
    (description
     "Classification of pediatric tumors into biologically defined subtypes is
challenging and multifaceted approaches are needed.  For this aim, we developed
a diagnostic classifier based on DNA methylation profiles.  We offer
@code{MethPed} as an easy-to-use toolbox that allows researchers and clinical
diagnosticians to test single samples as well as large cohorts for subclass
prediction of pediatric brain tumors.  The current version of @code{MethPed} can
classify the following tumor diagnoses/subgroups: Diffuse Intrinsic Pontine
Glioma (DIPG), Ependymoma, Embryonal tumors with multilayered rosettes (ETMR),
Glioblastoma (GBM), Medulloblastoma (MB) - Group 3 (MB_Gr3), Group 4 (MB_Gr3),
Group WNT (MB_WNT), Group SHH (MB_SHH) and Pilocytic Astrocytoma
(@code{PiloAstro}).")
    (license license:gpl2)))

(define-public r-methinheritsim
  (package
    (name "r-methinheritsim")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methInheritSim" version))
       (sha256
        (base32 "11sgw15dc0dl4wx3z5wwsk4qdccd91hjg66i1rwhcf1v08xw2w8w"))))
    (properties `((upstream-name . "methInheritSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-msm
                             r-methylkit
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/belleau/methInheritSim")
    (synopsis "Simulating Whole-Genome Inherited Bisulphite Sequencing Data")
    (description
     "Simulate a multigeneration methylation case versus control experiment with
inheritance relation using a real control dataset.")
    (license license:artistic2.0)))

(define-public r-methimpute
  (package
    (name "r-methimpute")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methimpute" version))
       (sha256
        (base32 "0sdvxbkivkpsg22s4vxhds9z8m5nxrsn8khcv04jm3cf8x1zzvqn"))))
    (properties `((upstream-name . "methimpute")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-rcpp
                             r-minpack-lm
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/methimpute")
    (synopsis
     "Imputation-guided re-construction of complete methylomes from WGBS data")
    (description
     "This package implements functions for calling methylation for all cytosines in
the genome.")
    (license license:artistic2.0)))

(define-public r-metcirc
  (package
    (name "r-metcirc")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetCirc" version))
       (sha256
        (base32 "1ilv3g6p1mjss6a0jc7ik2kr4h3gjsm1z6aawvs9wq4jcpy2d8r5"))))
    (properties `((upstream-name . "MetCirc")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectra
                             r-shiny
                             r-scales
                             r-s4vectors
                             r-mscoreutils
                             r-ggplot2
                             r-circlize
                             r-amap))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MetCirc")
    (synopsis
     "Navigating mass spectral similarity in high-resolution MS/MS metabolomics data metabolomics data")
    (description
     "@code{MetCirc} comprises a workflow to interactively explore high-resolution
MS/MS metabolomics data. @code{MetCirc} uses the Spectra object infrastructure
defined in the package Spectra that stores MS/MS spectra. @code{MetCirc} offers
functionality to calculate similarity between precursors based on the normalised
dot product, neutral losses or user-defined functions and visualise similarities
in a circular layout.  Within the interactive framework the user can annotate
MS/MS features based on their similarity to (known) related MS/MS features.")
    (license license:gpl3+)))

(define-public r-metaseqr2
  (package
    (name "r-metaseqr2")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaseqR2" version))
       (sha256
        (base32 "1sg9a8v6ij6g3xmr55xngaj2l2y6zcf56gz17mzqpkgx0jfq1465"))))
    (properties `((upstream-name . "metaseqR2")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-vsn
                             r-venndiagram
                             r-survcomp
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rtracklayer
                             r-rsqlite
                             r-rsamtools
                             r-rmdformats
                             r-rmarkdown
                             r-qvalue
                             r-pander
                             r-nbpseq
                             r-matrix
                             r-mass
                             r-magrittr
                             r-log4r
                             r-locfit
                             r-limma
                             r-lattice
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-htmltools
                             r-heatmaply
                             r-harmonicmeanp
                             r-gplots
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-genefilter
                             r-edger
                             r-edaseq
                             r-dt
                             r-dss
                             r-deseq2
                             r-corrplot
                             r-biostrings
                             r-biomart
                             r-biocparallel
                             r-biocgenerics
                             r-biobase
                             r-absseq))
    (native-inputs (list r-knitr))
    (home-page "http://www.fleming.gr")
    (synopsis
     "An R package for the analysis and result reporting of RNA-Seq data by combining multiple statistical algorithms")
    (description
     "This package provides an interface to several normalization and statistical
testing packages for RNA-Seq gene expression data.  Additionally, it creates
several diagnostic plots, performs meta-analysis by combinining the results of
several statistical tests and reports the results in an interactive way.")
    (license license:gpl3+)))

(define-public r-metaseq
  (package
    (name "r-metaseq")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaSeq" version))
       (sha256
        (base32 "1xvlyg83jd0ykb3c3kvm05s9919bsmc6v324n3da231c2vpyzl0n"))))
    (properties `((upstream-name . "metaSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-snow r-rcpp r-noiseq))
    (home-page "https://bioconductor.org/packages/metaSeq")
    (synopsis "Meta-analysis of RNA-Seq count data in multiple studies")
    (description
     "The probabilities by one-sided NOISeq are combined by Fisher's method or
Stouffer's method")
    (license license:artistic2.0)))

(define-public r-metascope
  (package
    (name "r-metascope")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaScope" version
                              'experiment))
       (sha256
        (base32 "0wpp2h3zldvcw9r8bjbbpcvkd3hgh11dp8qalcbm36kx4djc2d1a"))))
    (properties `((upstream-name . "MetaScope")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-taxize
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-readr
                             r-rbowtie2
                             r-qlcmatrix
                             r-multiassayexperiment
                             r-matrix
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-biostrings
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MetaScope")
    (synopsis
     "Tools and functions for preprocessing 16S and metagenomic sequencing microbiome data")
    (description
     "This package contains tools and methods for preprocessing microbiome data.
Functionality includes library generation, demultiplexing, alignment, and
microbe identification.  It is in part an R translation of the @code{PathoScope}
2.0 pipeline.")
    (license license:gpl3+)))

(define-public r-metapone
  (package
    (name "r-metapone")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metapone" version))
       (sha256
        (base32 "14038jfkyh2hgqdmii3nfwfj7idy1sqm5ac3lczn480lzf90frjg"))))
    (properties `((upstream-name . "metapone")))
    (build-system r-build-system)
    (propagated-inputs (list r-markdown
                             r-ggrepel
                             r-ggplot2
                             r-fields
                             r-fgsea
                             r-fdrtool
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/metapone")
    (synopsis
     "Conducts pathway test of metabolomics data using a weighted permutation test")
    (description
     "The package conducts pathway testing from untargetted metabolomics data.  It
requires the user to supply feature-level test results, from case-control
testing, regression, or other suitable feature-level tests for the study design.
 Weights are given to metabolic features based on how many metabolites they
could potentially match to.  The package can combine positive and negative mode
results in pathway tests.")
    (license license:artistic2.0)))

(define-public r-metaphor
  (package
    (name "r-metaphor")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaPhOR" version))
       (sha256
        (base32 "1nzwhjcs35bz626b1i3akdfvvshmw3aj6ghrgsfhir4fw8rvdig5"))))
    (properties `((upstream-name . "MetaPhOR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-recordlinkage
                             r-rcy3
                             r-pheatmap
                             r-ggrepel
                             r-ggplot2
                             r-clusterprofiler))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MetaPhOR")
    (synopsis "Metabolic Pathway Analysis of RNA")
    (description
     "@code{MetaPhOR} was developed to enable users to assess metabolic dysregulation
using transcriptomic-level data (RNA-sequencing and Microarray data) and produce
publication-quality figures.  A list of differentially expressed genes (DEGs),
which includes fold change and p value, from DESeq2 or limma, can be used as
input, with sample size for @code{MetaPhOR}, and will produce a data frame of
scores for each KEGG pathway.  These scores represent the magnitude and
direction of transcriptional change within the pathway, along with estimated
p-values.@code{MetaPhOR} then uses these scores to visualize metabolic profiles
within and between samples through a variety of mechanisms, including: bubble
plots, heatmaps, and pathway models.")
    (license license:artistic2.0)))

(define-public r-metamsdata
  (package
    (name "r-metamsdata")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaMSdata" version
                              'experiment))
       (sha256
        (base32 "18gixjk80zzvjg39av6rhbl9zpvnx09fd6gcbnsjxag7vmk88d1d"))))
    (properties `((upstream-name . "metaMSdata")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/metaMSdata")
    (synopsis "Example CDF data for the metaMS package")
    (description "Example CDF data for the @code{metaMS} package")
    (license license:gpl2+)))

(define-public r-metams
  (package
    (name "r-metams")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaMS" version))
       (sha256
        (base32 "0l3fi4gp77a8vbhi3k5syaz0ycr9f3ch0dkqripbq8sw076cdh2r"))))
    (properties `((upstream-name . "metaMS")))
    (build-system r-build-system)
    (propagated-inputs (list r-xcms r-robustbase r-matrix r-camera
                             r-biocgenerics))
    (home-page "https://github.com/yguitton/metaMS")
    (synopsis "MS-based metabolomics annotation pipeline")
    (description
     "MS-based metabolomics data processing and compound annotation pipeline.")
    (license license:gpl2+)))

(define-public r-metahdep
  (package
    (name "r-metahdep")
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metahdep" version))
       (sha256
        (base32 "0hd91zd99c0dkzw419p3m8dyy1fm6ivg9ba654acqz5zxiav1agv"))))
    (properties `((upstream-name . "metahdep")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/metahdep")
    (synopsis "Hierarchical Dependence in Meta-Analysis")
    (description
     "This package provides tools for meta-analysis in the presence of hierarchical
(and/or sampling) dependence, including with gene expression studies")
    (license license:gpl3)))

(define-public r-metagxpancreas
  (package
    (name "r-metagxpancreas")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaGxPancreas" version
                              'experiment))
       (sha256
        (base32 "0a5daghij0c6ykdh2vvd0gmrinqbvnn2hm8apga768ib04ylhb13"))))
    (properties `((upstream-name . "MetaGxPancreas")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-s4vectors r-impute
                             r-experimenthub r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MetaGxPancreas")
    (synopsis "Transcriptomic Pancreatic Cancer Datasets")
    (description
     "This package provides a collection of pancreatic Cancer transcriptomic datasets
that are part of the @code{MetaGxData} package compendium.  This package
contains multiple pancreas cancer datasets that have been downloaded from
various resources and turned into @code{SummarizedExperiment} objects.  The
details of how the authors normalized the data can be found in the experiment
data section of the objects.  Additionally, the location the data was obtained
from can be found in the url variables of the experiment data portion of each
SE.")
    (license license:artistic2.0)))

(define-public r-metagxovarian
  (package
    (name "r-metagxovarian")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaGxOvarian" version
                              'experiment))
       (sha256
        (base32 "0k144fi1i9c1rlsif2pfk4lyzk25lkpfp1c4yanqqzbij8z50y6k"))))
    (properties `((upstream-name . "MetaGxOvarian")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-lattice
                             r-impute
                             r-experimenthub
                             r-biobase
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MetaGxOvarian")
    (synopsis "Transcriptomic Ovarian Cancer Datasets")
    (description
     "This package provides a collection of Ovarian Cancer Transcriptomic Datasets
that are part of the @code{MetaGxData} package compendium.")
    (license license:artistic2.0)))

(define-public r-metagxbreast
  (package
    (name "r-metagxbreast")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaGxBreast" version
                              'experiment))
       (sha256
        (base32 "0b0s7g4ijqlsfbr8wdrs1g54hba9ry6i1af71ly0v6l7ff0j65r1"))))
    (properties `((upstream-name . "MetaGxBreast")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-lattice
                             r-impute
                             r-experimenthub
                             r-biobase
                             r-annotationhub))
    (home-page "https://bioconductor.org/packages/MetaGxBreast")
    (synopsis "Transcriptomic Breast Cancer Datasets")
    (description
     "This package provides a collection of Breast Cancer Transcriptomic Datasets that
are part of the @code{MetaGxData} package compendium.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-metagene2
  (package
    (name "r-metagene2")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metagene2" version))
       (sha256
        (base32 "1w4k4hhs28n2yjp2i96550zfiz6f679nkad3n2i4gm54yz42z4a0"))))
    (properties `((upstream-name . "metagene2")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtracklayer
                             r-rsamtools
                             r-reshape2
                             r-r6
                             r-purrr
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ArnaudDroitLab/metagene2")
    (synopsis "package to produce metagene plots")
    (description
     "This package produces metagene plots to compare coverages of sequencing
experiments at selected groups of genomic regions.  It can be used for such
analyses as assessing the binding of DNA-interacting proteins at promoter
regions or surveying antisense transcription over the length of a gene.  The
metagene2 package can manage all aspects of the analysis, from normalization of
coverages to plot facetting according to experimental metadata.  Bootstraping
analysis is used to provide confidence intervals of per-sample mean coverages.")
    (license license:artistic2.0)))

(define-public r-metacyto
  (package
    (name "r-metacyto")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaCyto" version))
       (sha256
        (base32 "17fwdzxp9v9sm4rbyhh2zv5jhx1ax8cxls2b3g3yp9xk2hgwf816"))))
    (properties `((upstream-name . "MetaCyto")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-metafor
                             r-ggplot2
                             r-flowsom
                             r-flowcore
                             r-fastcluster
                             r-cluster))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://bioconductor.org/packages/MetaCyto")
    (synopsis "MetaCyto: A package for meta-analysis of cytometry data")
    (description
     "This package provides functions for preprocessing, automated gating and
meta-analysis of cytometry data.  It also provides functions that facilitate the
collection of cytometry data from the @code{ImmPort} database.")
    (license license:gpl2+)))

(define-public r-metacca
  (package
    (name "r-metacca")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaCCA" version))
       (sha256
        (base32 "1mxybpdqmg9w3q36g0xwx4vl006v5nfgj7cmfjm9r1khka8vij13"))))
    (properties `((upstream-name . "metaCCA")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1093/bioinformatics/btw052")
    (synopsis
     "Summary Statistics-Based Multivariate Meta-Analysis of Genome-Wide Association Studies Using Canonical Correlation Analysis")
    (description
     "@code{metaCCA} performs multivariate analysis of a single or multiple GWAS based
on univariate regression coefficients.  It allows multivariate representation of
both phenotype and genotype. @code{metaCCA} extends the statistical technique of
canonical correlation analysis to the setting where original individual-level
records are not available, and employs a covariance shrinkage algorithm to
achieve robustness.")
    (license license:expat)))

(define-public r-metabosignal
  (package
    (name "r-metabosignal")
    (version "1.32.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaboSignal" version))
       (sha256
        (base32 "1x28992n37fxqhxi9kaj80457lr8dzy780k8ja27gniid4x20gdm"))))
    (properties `((upstream-name . "MetaboSignal")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcurl
                             r-org-hs-eg-db
                             r-mygene
                             r-mwastools
                             r-keggrest
                             r-kegggraph
                             r-igraph
                             r-hpar
                             r-ensdb-hsapiens-v75
                             r-biomart
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MetaboSignal")
    (synopsis
     "MetaboSignal: a network-based approach to overlay and explore metabolic and signaling KEGG pathways")
    (description
     "@code{MetaboSignal} is an R package that allows merging, analyzing and
customizing metabolic and signaling KEGG pathways.  It is a network-based
approach designed to explore the topological relationship between genes
(signaling- or enzymatic-genes) and metabolites, representing a powerful tool to
investigate the genetic landscape and regulatory networks of metabolic
phenotypes.")
    (license license:gpl3)))

(define-public r-metabomxtr
  (package
    (name "r-metabomxtr")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metabomxtr" version))
       (sha256
        (base32 "130zh8r7cpgwp15nk98ymj734q24aa6aakqyvxra3nmn82d0fi4w"))))
    (properties `((upstream-name . "metabomxtr")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr
                             r-optimx
                             r-multtest
                             r-ggplot2
                             r-formula
                             r-biocparallel
                             r-biobase))
    (home-page "https://bioconductor.org/packages/metabomxtr")
    (synopsis
     "package to run mixture models for truncated metabolomics data with normal or lognormal distributions")
    (description
     "The functions in this package return optimized parameter estimates and log
likelihoods for mixture models of truncated data with normal or lognormal
distributions.")
    (license license:gpl2)))

(define-public r-metabolomicsworkbenchr
  (package
    (name "r-metabolomicsworkbenchr")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metabolomicsWorkbenchR" version))
       (sha256
        (base32 "1fgciy2phpvv1jki47cijpcdfjpw92isj424wxn1ld3r7q4kn4b3"))))
    (properties `((upstream-name . "metabolomicsWorkbenchR")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-struct
                             r-multiassayexperiment
                             r-jsonlite
                             r-httr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/metabolomicsWorkbenchR")
    (synopsis "Metabolomics Workbench in R")
    (description
     "This package provides functions for interfacing with the Metabolomics Workbench
RESTful API. Study, compound, protein and gene information can be searched for
using the API. Methods to obtain study data in common Bioconductor formats such
as @code{SummarizedExperiment} and @code{MultiAssayExperiment} are also
included.")
    (license license:gpl3)))

(define-public r-metaboliteidmapping
  (package
    (name "r-metaboliteidmapping")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaboliteIDmapping" version
                              'annotation))
       (sha256
        (base32 "0nflpvla3wn8i2gaja5wwjkxk0jich95f5ws3rnhh2a6rx3xi3ql"))))
    (properties `((upstream-name . "metaboliteIDmapping")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yigbt/metaboliteIDmapping")
    (synopsis "Mapping of Metabolite IDs from Different Sources")
    (description
     "The package provides a comprehensive mapping table of nine different Metabolite
ID formats and their common name.  The data has been collected and merged from
four publicly available source, including HMDB, Comptox Dashboard, @code{ChEBI},
and the graphite Bioconductor R package.")
    (license license:gpl3)))

(define-public r-metaboannotation
  (package
    (name "r-metaboannotation")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaboAnnotation" version))
       (sha256
        (base32 "1galm8z0gz6mkqy9gr6ynhbpxbxngbrvg6p6kp3mywn6h9m7p8vv"))))
    (properties `((upstream-name . "MetaboAnnotation")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-spectra
                             r-s4vectors
                             r-qfeatures
                             r-protgenerics
                             r-mscoreutils
                             r-metabocoreutils
                             r-compounddb
                             r-biocparallel
                             r-biocgenerics
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RforMassSpectrometry/MetaboAnnotation")
    (synopsis "Utilities for Annotation of Metabolomics Data")
    (description
     "High level functions to assist in annotation of (metabolomics) data sets.  These
include functions to perform simple tentative annotations based on mass matching
but also functions to consider m/z and retention times for annotation of LC-MS
features given that respective reference values are available.  In addition, the
function provides high-level functions to simplify matching of LC-MS/MS spectra
against spectral libraries and objects and functionality to represent and manage
such matched data.")
    (license license:artistic2.0)))

(define-public r-metabinr
  (package
    (name "r-metabinr")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metabinR" version))
       (sha256
        (base32 "0i9kg4ca7l66zljydl9v6aa07rzwp3nq9cagm8dniq54qm59s93l"))))
    (properties `((upstream-name . "metabinR")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gkanogiannis/metabinR")
    (synopsis "Abundance and Compositional Based Binning of Metagenomes")
    (description
     "Provide functions for performing abundance and compositional based binning on
metagenomic samples, directly from FASTA or FASTQ files.  Functions are
implemented in Java and called via @code{rJava}.  Parallel implementation that
operates directly on input FASTA/FASTQ files for fast execution.")
    (license license:gpl3)))

(define-public r-metabcombiner
  (package
    (name "r-metabcombiner")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metabCombiner" version))
       (sha256
        (base32 "1iiizafp002xdy4lyj6h26izn1jmcydrw0h61c4i6n60fmaksjdq"))))
    (properties `((upstream-name . "metabCombiner")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-s4vectors
                             r-rlang
                             r-mgcv
                             r-matrixstats
                             r-dplyr
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/metabCombiner")
    (synopsis "Method for Combining LC-MS Metabolomics Feature Measurements")
    (description
     "This package aligns LC-HRMS metabolomics datasets acquired from biologically
similar specimens analyzed under similar, but not necessarily identical,
conditions.  Peak-picked and simply aligned metabolomics feature tables
(consisting of m/z, rt, and per-sample abundance measurements, plus optional
identifiers & adduct annotations) are accepted as input.  The package outputs a
combined table of feature pair alignments, organized into groups of similar m/z,
and ranked by a similarity score.  Input tables are assumed to be acquired using
similar (but not necessarily identical) analytical methods.")
    (license license:gpl3)))

(define-public r-messina
  (package
    (name "r-messina")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "messina" version))
       (sha256
        (base32 "09c5jrxis9iza5lp7m3k4q4vwy4jlvl6vzd52nvayx8mbk5jcf2f"))))
    (properties `((upstream-name . "messina")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcpp r-plyr r-ggplot2 r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/messina")
    (synopsis
     "Single-gene classifiers and outlier-resistant detection of differential expression for two-group and survival problems")
    (description
     "Messina is a collection of algorithms for constructing optimally robust
single-gene classifiers, and for identifying differential expression in the
presence of outliers or unknown sample subgroups.  The methods have application
in identifying lead features to develop into clinical tests (both diagnostic and
prognostic), and in identifying differential expression when a fraction of
samples show unusual patterns of expression.")
    (license (license:fsdg-compatible "EPL (>= 1.0)"))))

(define-public r-meskit
  (package
    (name "r-meskit")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MesKit" version))
       (sha256
        (base32 "16gwrj7i70bnfp69vaal08sq8brcwjj48jaaizz5ch8i9rwhwyb6"))))
    (properties `((upstream-name . "MesKit")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-s4vectors
                             r-rcolorbrewer
                             r-pracma
                             r-phangorn
                             r-mclust
                             r-iranges
                             r-ggridges
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-cowplot
                             r-complexheatmap
                             r-circlize
                             r-biostrings
                             r-ape
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MesKit")
    (synopsis
     "tool kit for dissecting cancer evolution from multi-region derived tumor biopsies via somatic alterations")
    (description
     "@code{MesKit} provides commonly used analysis and visualization modules based on
mutational data generated by multi-region sequencing (MRS).  This package allows
to depict mutational profiles, measure heterogeneity within or between tumors
from the same patient, track evolutionary dynamics, as well as characterize
mutational patterns on different levels.  Shiny application was also developed
for a need of GUI-based analysis.  As a handy tool, @code{MesKit} can facilitate
the interpretation of tumor heterogeneity and the understanding of evolutionary
relationship between regions in MRS study.")
    (license license:gpl3)))

(define-public r-meshr
  (package
    (name "r-meshr")
    (version "2.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "meshr" version))
       (sha256
        (base32 "10ss1ydyxwiijq3212lswzwfhy1d5mdmgbjfaj8gdnvznnxfzs6l"))))
    (properties `((upstream-name . "meshr")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rsqlite
                             r-rmarkdown
                             r-meshdbi
                             r-markdown
                             r-knitr
                             r-fdrtool
                             r-category
                             r-biocstyle
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/meshr")
    (synopsis "Tools for conducting enrichment analysis of MeSH")
    (description
     "This package provides a set of annotation maps describing the entire @code{MeSH}
assembled using data from @code{MeSH}.")
    (license license:artistic2.0)))

(define-public r-meshes
  (package
    (name "r-meshes")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "meshes" version))
       (sha256
        (base32 "0l1l679qjpf5i8d86rmlziam1x67pnymj1iqcmbci20rqr415i3j"))))
    (properties `((upstream-name . "meshes")))
    (build-system r-build-system)
    (propagated-inputs (list r-yulab-utils
                             r-meshdbi
                             r-gosemsim
                             r-enrichplot
                             r-dose
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://yulab-smu.top/biomedical-knowledge-mining-book/")
    (synopsis "MeSH Enrichment and Semantic analyses")
    (description
     "@code{MeSH} (Medical Subject Headings) is the NLM controlled vocabulary used to
manually index articles for MEDLINE/@code{PubMed}. @code{MeSH} terms were
associated by Entrez Gene ID by three methods, gendoo, gene2pubmed and RBBH.
This association is fundamental for enrichment and semantic analyses.  meshes
supports enrichment analysis (over-representation and gene set enrichment
analysis) of gene list or whole expression profile.  The semantic comparisons of
@code{MeSH} terms provide quantitative ways to compute similarities between
genes and gene groups.  meshes implemented five methods proposed by Resnik,
Schlicker, Jiang, Lin and Wang respectively and supports more than 70 species.")
    (license license:artistic2.0)))

(define-public r-meshdbi
  (package
    (name "r-meshdbi")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MeSHDbi" version))
       (sha256
        (base32 "132lmrfkjsdivavzksvbiwfskbmvybrgcm2ym2b9gghinldyfjr8"))))
    (properties `((upstream-name . "MeSHDbi")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-biobase r-annotationdbi))
    (home-page "https://bioconductor.org/packages/MeSHDbi")
    (synopsis "DBI to construct MeSH-related package from sqlite file")
    (description
     "The package is unified implementation of @code{MeSH.db}, @code{MeSH.AOR.db}, and
@code{MeSH.PCR.db} and also is interface to construct Gene-@code{MeSH} package
(@code{MeSH.XXX.eg.db}). @code{loadMeSHDbiPkg} import sqlite file and generate
@code{MeSH.XXX.eg.db}.")
    (license license:artistic2.0)))

(define-public r-mergeomics
  (package
    (name "r-mergeomics")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Mergeomics" version))
       (sha256
        (base32 "0q324acmy6g02wq6s9qw0n643dfjl7cf9v1y7crk27liaqm0sj03"))))
    (properties `((upstream-name . "Mergeomics")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/Mergeomics")
    (synopsis "Integrative network analysis of omics data")
    (description
     "The Mergeomics pipeline serves as a flexible framework for integrating
multidimensional omics-disease associations, functional genomics, canonical
pathways and gene-gene interaction networks to generate mechanistic hypotheses.
It includes two main parts, 1) Marker set enrichment analysis (MSEA); 2)
Weighted Key Driver Analysis (@code{wKDA}).")
    (license license:gpl2+)))

(define-public r-merfishdata
  (package
    (name "r-merfishdata")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MerfishData" version
                              'experiment))
       (sha256
        (base32 "055wmm0r8wyv8i2kil5f5lh5n2kjw36q4yrpqswf0fvdsvvrpaak"))))
    (properties `((upstream-name . "MerfishData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-experimenthub
                             r-ebimage
                             r-bumpymatrix
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ccb-hms/MerfishData")
    (synopsis "Collection of public MERFISH datasets")
    (description
     "@code{MerfishData} is an @code{ExperimentHub} package that serves publicly
available datasets obtained with Multiplexed Error-Robust Fluorescence in situ
Hybridization (MERFISH).  MERFISH is a massively multiplexed single-molecule
imaging technology capable of simultaneously measuring the copy number and
spatial distribution of hundreds to tens of thousands of RNA species in
individual cells.  The scope of the package is to provide MERFISH data for
benchmarking and analysis.")
    (license license:artistic2.0)))

(define-public r-memes
  (package
    (name "r-memes")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "memes" version))
       (sha256
        (base32 "11c7smsggxrg3v0awkx9j4gy8gr986yncqcqr01xjldzvz0b2r25"))))
    (properties `((upstream-name . "memes")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-usethis
                             r-universalmotif
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-readr
                             r-purrr
                             r-processx
                             r-patchwork
                             r-matrixstats
                             r-magrittr
                             r-ggseqlogo
                             r-ggplot2
                             r-genomicranges
                             r-dplyr
                             r-cmdfun
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://snystrom.github.io/memes/")
    (synopsis
     "motif matching, comparison, and de novo discovery using the MEME Suite")
    (description
     "This package provides a seamless interface to the MEME Suite family of tools for
motif analysis.  memes provides data aware utilities for using GRanges objects
as entrypoints to motif analysis, data structures for examining & editing motif
lists, and novel data visualizations.  memes functions and data structures are
amenable to both base R and tidyverse workflows.")
    (license license:expat)))

(define-public r-melissa
  (package
    (name "r-melissa")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Melissa" version))
       (sha256
        (base32 "0zz27dff78p5hysfvwqjjjjl6x5d5z222pfdx9cni4qnib4v1s36"))))
    (properties `((upstream-name . "Melissa")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-rocr
                             r-mvtnorm
                             r-mcmcpack
                             r-mclust
                             r-matrixcalc
                             r-magrittr
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-doparallel
                             r-data-table
                             r-cowplot
                             r-bprmeth
                             r-biocstyle
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Melissa")
    (synopsis "Bayesian clustering and imputationa of single cell methylomes")
    (description
     "Melissa is a Baysian probabilistic model for jointly clustering and imputing
single cell methylomes.  This is done by taking into account local correlations
via a Generalised Linear Model approach and global similarities using a mixture
modelling approach.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-meebodata
  (package
    (name "r-meebodata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEEBOdata" version
                              'experiment))
       (sha256
        (base32 "0ni928njn0hm38njgbnz223pvpq1318si12z5d56h3cczi2f3a37"))))
    (properties `((upstream-name . "MEEBOdata")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MEEBOdata")
    (synopsis "MEEBO set and MEEBO controls")
    (description "R objects describing the MEEBO set.")
    (license license:lgpl2.0+)))

(define-public r-medme
  (package
    (name "r-medme")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEDME" version))
       (sha256
        (base32 "01fyrfx7mfz2qb0lj92cxj2piy78zqfpi7gnw2x2bn4mdjqpqpjh"))))
    (properties `((upstream-name . "MEDME")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-drc r-biostrings))
    (home-page "https://bioconductor.org/packages/MEDME")
    (synopsis "Modelling Experimental Data from MeDIP Enrichment")
    (description
     "MEDME allows the prediction of absolute and relative methylation levels based on
measures obtained by @code{MeDIP-microarray} experiments")
    (license license:gpl2+)))

(define-public r-medipsdata
  (package
    (name "r-medipsdata")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEDIPSData" version
                              'experiment))
       (sha256
        (base32 "1lrxg5vrfqxrnnpn8m3ypk3ikc6pa7pszxfi08gaa3a4c2glcc4m"))))
    (properties `((upstream-name . "MEDIPSData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MEDIPSData")
    (synopsis "Example data for MEDIPS and QSEA packages")
    (description
     "Example data for MEDIPS and QSEA packages, consisting of chromosome 22
@code{MeDIP} and control/Input sample data.  Additionally, the package contains
@code{MeDIP} seq data from 3 NSCLC samples and adjacent normal tissue (chr
20-22).  All data has been aligned to human genome hg19.")
    (license license:gpl2+)))

(define-public r-medips
  (package
    (name "r-medips")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEDIPS" version))
       (sha256
        (base32 "17girgyqcb6mxwkmbxdg7fn7sg2jddf5xgy7yl11gwa5a3k42ph8"))))
    (properties `((upstream-name . "MEDIPS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtracklayer
                             r-rsamtools
                             r-preprocesscore
                             r-iranges
                             r-gtools
                             r-genomicranges
                             r-edger
                             r-dnacopy
                             r-bsgenome
                             r-biostrings
                             r-biomart))
    (home-page "https://bioconductor.org/packages/MEDIPS")
    (synopsis "DNA IP-seq data analysis")
    (description
     "MEDIPS was developed for analyzing data derived from methylated DNA
immunoprecipitation (@code{MeDIP}) experiments followed by sequencing
(@code{MeDIP-seq}).  However, MEDIPS provides functionalities for the analysis
of any kind of quantitative sequencing data (e.g. @code{ChIP-seq}, MBD-seq,
CMS-seq and others) including calculation of differential coverage between
groups of samples and saturation and correlation analysis.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-medicagoprobe
  (package
    (name "r-medicagoprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "medicagoprobe" version
                              'annotation))
       (sha256
        (base32 "0w6j1pfkvb3npc8srpjifq2ywnqxhc9q090jqzmkx22x36cw9cl5"))))
    (properties `((upstream-name . "medicagoprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/medicagoprobe")
    (synopsis "Probe sequence data for microarrays of type medicago")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Medicago\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-medicagocdf
  (package
    (name "r-medicagocdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "medicagocdf" version
                              'annotation))
       (sha256
        (base32 "1clz679cc887x98c6jk93cphijkbg5r2nd9idrj5901yvh6p9n5q"))))
    (properties `((upstream-name . "medicagocdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/medicagocdf")
    (synopsis "medicagocdf")
    (description
     "This package provides a package containing an environment representing the
Medicago.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-meb
  (package
    (name "r-meb")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEB" version))
       (sha256
        (base32 "18vf3cyw5ld7a95ksa4g2v0rrcrdk0dyw0jjiyywd1kmnkkv8s8g"))))
    (properties `((upstream-name . "MEB")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrswor
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-scater
                             r-edger
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MEB")
    (synopsis
     "normalization-invariant minimum enclosing ball method to detect differentially expressed genes for RNA-seq and scRNA-seq data")
    (description
     "This package provides a method to identify differential expression genes in the
same or different species.  Given that non-DE genes have some similarities in
features, a scaling-free minimum enclosing ball (SFMEB) model is built to cover
those non-DE genes in feature space, then those DE genes, which are enormously
different from non-DE genes, being regarded as outliers and rejected outside the
ball.  The method on this package is described in the article A minimum
enclosing ball method to detect differential expression genes for RNA-seq data'.
 The SFMEB method is extended to the @code{scMEB} method that considering two or
more potential types of cells or unknown labels @code{scRNA-seq} dataset DEGs
identification.")
    (license license:gpl2)))

(define-public r-meat
  (package
    (name "r-meat")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEAT" version))
       (sha256
        (base32 "0hd1yv7vfxifhadn6v8wvri96j0v3b3wma0245ky9svh79baswd0"))))
    (properties `((upstream-name . "MEAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-watermelon
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-rpmm
                             r-minfi
                             r-impute
                             r-glmnet
                             r-dynamictreecut
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sarah-voisin/MEAT")
    (synopsis "Muscle Epigenetic Age Test")
    (description
     "This package estimates epigenetic age in skeletal muscle, using DNA methylation
data generated with the Illumina Infinium technology (HM27, HM450 and HMEPIC).")
    (license license:expat)))

(define-public r-measurementerror-cor
  (package
    (name "r-measurementerror-cor")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MeasurementError.cor" version))
       (sha256
        (base32 "0hpcd026pw9xk0g2z25b7236daimy9rn21l3v58icrdzkgxk2xif"))))
    (properties `((upstream-name . "MeasurementError.cor")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MeasurementError.cor")
    (synopsis "Measurement Error model estimate for correlation coefficient")
    (description
     "Two-stage measurement error model for correlation estimation with smaller bias
than the usual sample correlation")
    (license license:lgpl2.0+)))

(define-public r-meal
  (package
    (name "r-meal")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEAL" version))
       (sha256
        (base32 "0vwb3wag7hsi25c9r4j1yp0lh5ssgnrdbw3f5gbkxswd3vi8sh2p"))))
    (properties `((upstream-name . "MEAL")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-summarizedexperiment
                             r-smartsva
                             r-s4vectors
                             r-permute
                             r-multidataset
                             r-missmethyl
                             r-minfi
                             r-matrixstats
                             r-limma
                             r-isva
                             r-iranges
                             r-gviz
                             r-ggplot2
                             r-genomicranges
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MEAL")
    (synopsis "Perform methylation analysis")
    (description
     "Package to integrate methylation and expression data.  It can also perform
methylation or expression analysis alone.  Several plotting functionalities are
included as well as a new region analysis based on redundancy analysis.  Effect
of SNPs on a region can also be estimated.")
    (license license:artistic2.0)))

(define-public r-mdts
  (package
    (name "r-mdts")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MDTS" version))
       (sha256
        (base32 "1d898xiwjmn1lhy6gdav7p0f7w1wrhi5545j6fi835nhfw53mphj"))))
    (properties `((upstream-name . "MDTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-dnacopy
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MDTS")
    (synopsis "Detection of de novo deletion in targeted sequencing trios")
    (description
     "This package provides a package for the detection of de novo copy number
deletions in targeted sequencing of trios with high sensitivity and positive
predictive value.")
    (license license:artistic2.0)))

(define-public r-mdp
  (package
    (name "r-mdp")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mdp" version))
       (sha256
        (base32 "0zislz6737kddhcz5chns12p8aaqybmg7gyww1n1f3zhy1m9rfzx"))))
    (properties `((upstream-name . "mdp")))
    (build-system r-build-system)
    (propagated-inputs (list r-gridextra r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://mdp.sysbio.tools/")
    (synopsis
     "Molecular Degree of Perturbation calculates scores for transcriptome data samples based on their perturbation from controls")
    (description
     "The Molecular Degree of Perturbation webtool quantifies the heterogeneity of
samples.  It takes a data.frame of omic data that contains at least two classes
(control and test) and assigns a score to all samples based on how perturbed
they are compared to the controls.  It is based on the Molecular Distance to
Health (Pankla et al.  2009), and expands on this algorithm by adding the
options to calculate the z-score using the modified z-score (using median
absolute deviation), change the z-score zeroing threshold, and look at genes
that are most perturbed in the test versus control classes.")
    (license license:gpl3)))

(define-public r-mcsurvdata
  (package
    (name "r-mcsurvdata")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mcsurvdata" version
                              'experiment))
       (sha256
        (base32 "06k500vivc8anxv1x639acjv55w5r6pc2ghmszkh42h1q7a27r68"))))
    (properties `((upstream-name . "mcsurvdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub r-biobase r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/adricaba/mcsurvdata")
    (synopsis "Meta cohort survival data")
    (description
     "This package stores two merged @code{expressionSet} objects that contain the
gene expression profile and clinical information of -a- six breast cancer
cohorts and -b- four colorectal cancer cohorts.  Breast cancer data are employed
in the vignette of the hrunbiased package for survival analysis of gene
signatures.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-mcseadata
  (package
    (name "r-mcseadata")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mCSEAdata" version
                              'experiment))
       (sha256
        (base32 "0la86384k9f0r8mgh6an023bx1sjklglgm9rwzg33hcc58lb02ki"))))
    (properties `((upstream-name . "mCSEAdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mCSEAdata")
    (synopsis "Data package for mCSEA package")
    (description
     "Data objects necessary to some @code{mCSEA} package functions.  There are also
example data objects to illustrate @code{mCSEA} package functionality.")
    (license license:gpl2)))

(define-public r-mcsea
  (package
    (name "r-mcsea")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mCSEA" version))
       (sha256
        (base32 "1icvd7v8zhp420wq3776lixf7hzjwyfhc9h3micl4cg8hxz0r8kc"))))
    (properties `((upstream-name . "mCSEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-mcseadata
                             r-limma
                             r-iranges
                             r-homo-sapiens
                             r-gviz
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-fgsea
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mCSEA")
    (synopsis "Methylated CpGs Set Enrichment Analysis")
    (description
     "Identification of diferentially methylated regions (DMRs) in predefined regions
(promoters, @code{CpG} islands...) from the human genome using Illumina's 450K
or EPIC microarray data.  Provides methods to rank @code{CpG} probes based on
linear models and includes plotting functions.")
    (license license:gpl2)))

(define-public r-mcbiclust
  (package
    (name "r-mcbiclust")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MCbiclust" version))
       (sha256
        (base32 "1jbhlykxb0l28mmlzmh4pa85jh95jd9imvy2jp7rpkgmjdi8ndrb"))))
    (properties `((upstream-name . "MCbiclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-scales
                             r-org-hs-eg-db
                             r-go-db
                             r-ggplot2
                             r-ggally
                             r-cluster
                             r-biocparallel
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MCbiclust")
    (synopsis
     "Massive correlating biclusters for gene expression data and associated methods")
    (description
     "Custom made algorithm and associated methods for finding, visualising and
analysing biclusters in large gene expression data sets.  Algorithm is based on
with a supplied gene set of size n, finding the maximum strength correlation
matrix containing m samples from the data set.")
    (license license:gpl2)))

(define-public r-mbttest
  (package
    (name "r-mbttest")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBttest" version))
       (sha256
        (base32 "1m7byr93kbb7d2nx3cv2v72vg8rwvr5b59n6wpdlx1lg167dlp2k"))))
    (properties `((upstream-name . "MBttest")))
    (build-system r-build-system)
    (propagated-inputs (list r-gtools r-gplots))
    (home-page "https://bioconductor.org/packages/MBttest")
    (synopsis "Multiple Beta t-Tests")
    (description
     "MBttest method was developed from beta t-test method of Baggerly et al(2003).
Compared to @code{baySeq} (Hard castle and Kelly 2010), DESeq (Anders and Huber
2010) and exact test (Robinson and Smyth 2007, 2008) and the GLM of
@code{McCarthy} et al(2012), MBttest is of high work efficiency,that is, it has
high power, high conservativeness of FDR estimation and high stability.  MBttest
is suit- able to transcriptomic data, tag data, SAGE data (count data) from
small samples or a few replicate libraries.  It can be used to identify genes,
@code{mRNA} isoforms or tags differentially expressed between two conditions.")
    (license license:gpl3)))

(define-public r-mbqtl
  (package
    (name "r-mbqtl")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mbQTL" version))
       (sha256
        (base32 "01j7mrjdgf5pv8599a08wq2bnpzxg7k6jm7s1vpnragssp4ml7jh"))))
    (properties `((upstream-name . "mbQTL")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-readxl
                             r-pheatmap
                             r-metagenomeseq
                             r-matrixeqtl
                             r-ggplot2
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "\"https://github.com/Mercedeh66/mbQTL\"")
    (synopsis "mbQTL: A package for SNP-Taxa mGWAS analysis")
    (description
     "@code{mbQTL} is a statistical R package for simultaneous 16@code{srRNA,16srDNA}
(microbial) and variant, SNP, SNV (host) relationship, correlation, regression
studies.  We apply linear, logistic and correlation based statistics to identify
the relationships of taxa, genus, species and variant, SNP, SNV in the infected
host.  We produce various statistical significance measures such as P values,
FDR, BC and probability estimation to show significance of these relationships.
Further we provide various visualization function for ease and clarification of
the results of these analysis.  The package is compatible with dataframe,
MRexperiment and text formats.")
    (license license:expat)))

(define-public r-mbqn
  (package
    (name "r-mbqn")
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBQN" version))
       (sha256
        (base32 "0shy9b1qj5fr7qs6c03ygqs3whv2d4ik59qxsgmcs880rhxxw4x2"))))
    (properties `((upstream-name . "MBQN")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-summarizedexperiment
                             r-rmarkdown
                             r-rcurl
                             r-rappdirs
                             r-preprocesscore
                             r-paireddata
                             r-limma
                             r-ggplot2
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arianeschad/mbqn")
    (synopsis "Mean/Median-balanced quantile normalization")
    (description
     "Modified quantile normalization for omics or other matrix-like data distorted in
location and scale.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-mbpcr
  (package
    (name "r-mbpcr")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mBPCR" version))
       (sha256
        (base32 "03h1wxjhvk19rrl9h8hpp78c9srxablv9sx6vjm868w12az4x0qh"))))
    (properties `((upstream-name . "mBPCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-oligoclasses r-gwastools r-biobase))
    (home-page "http://www.idsia.ch/~paola/mBPCR")
    (synopsis
     "Bayesian Piecewise Constant Regression for DNA copy number estimation")
    (description
     "It contains functions for estimating the DNA copy number profile using
@code{mBPCR} with the aim of detecting regions with copy number changes.")
    (license license:gpl2+)))

(define-public r-mbcb
  (package
    (name "r-mbcb")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBCB" version))
       (sha256
        (base32 "1hjylg7rkynwgxvh07rcwzg1awfcv7xvg2l5pyzyl7fxgczmn7px"))))
    (properties `((upstream-name . "MBCB")))
    (build-system r-build-system)
    (propagated-inputs (list r-tcltk2 r-preprocesscore))
    (home-page "http://www.utsouthwestern.edu")
    (synopsis "MBCB (Model-based Background Correction for Beadarray)")
    (description
     "This package provides a model-based background correction method, which
incorporates the negative control beads to pre-process Illumina @code{BeadArray}
data.")
    (license license:gpl2+)))

(define-public r-mbased
  (package
    (name "r-mbased")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBASED" version))
       (sha256
        (base32 "0gdjpp8g1wbyzriv3mgny0hxnas71gdv8f1mykmja65wr9lhkx8x"))))
    (properties `((upstream-name . "MBASED")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-runit r-genomicranges
                             r-biocparallel r-biocgenerics))
    (home-page "https://bioconductor.org/packages/MBASED")
    (synopsis
     "Package containing functions for ASE analysis using Meta-analysis Based Allele-Specific Expression Detection")
    (description
     "The package implements MBASED algorithm for detecting allele-specific gene
expression from RNA count data, where allele counts at individual loci (SNVs)
are integrated into a gene-specific measure of ASE, and utilizes simulations to
appropriately assess the statistical significance of observed ASE.")
    (license license:artistic2.0)))

(define-public r-mbamethyl
  (package
    (name "r-mbamethyl")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBAmethyl" version))
       (sha256
        (base32 "022w2lvdzrwvnrcr80gmnypxk0djyp3w5qi4ml1bkh1ixhdbic47"))))
    (properties `((upstream-name . "MBAmethyl")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MBAmethyl")
    (synopsis "Model-based analysis of DNA methylation data")
    (description
     "This package provides a function for reconstructing DNA methylation values from
raw measurements.  It iteratively implements the group fused lars to smooth
related-by-location methylation values and the constrained least squares to
remove probe affinity effect across multiple sequences.")
    (license license:artistic2.0)))

(define-public r-matter
  (package
    (name "r-matter")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "matter" version))
       (sha256
        (base32 "0a6fs90vakkc6zqz6i99cs7al9vabv2wzmlp5ywsnn9b8z56j886"))))
    (properties `((upstream-name . "matter")))
    (build-system r-build-system)
    (propagated-inputs (list r-protgenerics
                             r-matrix
                             r-irlba
                             r-digest
                             r-biocparallel
                             r-biocgenerics
                             r-biglm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kuwisdelu/matter")
    (synopsis "Out-of-memory dense and sparse signal arrays")
    (description
     "Memory-efficient file-based data structures for dense and sparse vectors,
matrices, arrays, and lists with applications to nonuniformly sampled signals
and spectra.")
    (license license:artistic2.0)))

(define-public r-matrixrider
  (package
    (name "r-matrixrider")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MatrixRider" version))
       (sha256
        (base32 "021z613zvk00j3bh4gx2lml4b2lbs7s5x582f7yb0x8k9mi1wij3"))))
    (properties `((upstream-name . "MatrixRider")))
    (build-system r-build-system)
    (propagated-inputs (list r-xvector r-tfbstools r-s4vectors r-iranges
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/MatrixRider")
    (synopsis
     "Obtain total affinity and occupancies for binding site matrices on a given sequence")
    (description
     "Calculates a single number for a whole sequence that reflects the propensity of
a DNA binding protein to interact with it.  The DNA binding protein has to be
described with a PFM matrix, for example gotten from Jaspar.")
    (license license:gpl3)))

(define-public r-matrixqcvis
  (package
    (name "r-matrixqcvis")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MatrixQCvis" version))
       (sha256
        (base32 "0drpj0n1rvm77ls1rjkp17hi5x4rhwvjs6mywscsphn57xkjwjv9"))))
    (properties `((upstream-name . "MatrixQCvis")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-vsn
                             r-upsetr
                             r-umap
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-shinyjs
                             r-shinyhelper
                             r-shinydashboard
                             r-shiny
                             r-rtsne
                             r-rmarkdown
                             r-rlang
                             r-proda
                             r-plotly
                             r-pcamethods
                             r-mass
                             r-limma
                             r-imputelcmd
                             r-impute
                             r-htmlwidgets
                             r-hmisc
                             r-ggplot2
                             r-experimenthub
                             r-dplyr
                             r-complexheatmap))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MatrixQCvis")
    (synopsis
     "Shiny-based interactive data-quality exploration for omics data")
    (description
     "Data quality assessment is an integral part of preparatory data analysis to
ensure sound biological information retrieval.  We present here the
@code{MatrixQCvis} package, which provides shiny-based interactive visualization
of data quality metrics at the per-sample and per-feature level.  It is broadly
applicable to quantitative omics data types that come in matrix-like format
(features x samples).  It enables the detection of low-quality samples, drifts,
outliers and batch effects in data sets.  Visualizations include amongst others
bar- and violin plots of the (count/intensity) values, mean vs standard
deviation plots, MA plots, empirical cumulative distribution function (ECDF)
plots, visualizations of the distances between samples, and multiple types of
dimension reduction plots.  Furthermore, @code{MatrixQCvis} allows for
differential expression analysis based on the limma (moderated t-tests) and
@code{proDA} (Wald tests) packages. @code{MatrixQCvis} builds upon the popular
Bioconductor @code{SummarizedExperiment} S4 class and enables thus the facile
integration into existing workflows.  The package is especially tailored towards
metabolomics and proteomics mass spectrometry data, but also allows to assess
the data quality of other data types that can be represented in a
@code{SummarizedExperiment} object.")
    (license license:gpl3)))

(define-public r-matchbox
  (package
    (name "r-matchbox")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "matchBox" version))
       (sha256
        (base32 "185idvl851zsdh10f6dz8sff5anxq8apmf7awg9vq0j8mrpd149i"))))
    (properties `((upstream-name . "matchBox")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/matchBox")
    (synopsis
     "Utilities to compute, compare, and plot the agreement between ordered vectors of features (ie. distinct genomic experiments). The package includes Correspondence-At-the-TOP (CAT) analysis")
    (description
     "The @code{matchBox} package enables comparing ranked vectors of features,
merging multiple datasets, removing redundant features, using CAT-plots and Venn
diagrams, and computing statistical significance.")
    (license license:artistic2.0)))

(define-public r-mastr
  (package
    (name "r-mastr")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mastR" version))
       (sha256
        (base32 "0870g11mk90v1gh1cp37x93kqhb93jjnfis1qfhny194340v3c28"))))
    (properties `((upstream-name . "mastR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-seuratobject
                             r-patchwork
                             r-org-hs-eg-db
                             r-msigdb
                             r-matrix
                             r-limma
                             r-gseabase
                             r-ggpubr
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-biobase
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://davislaboratory.github.io/mastR")
    (synopsis "Markers Automated Screening Tool in R")
    (description
     "@code{mastR} is an R package designed for automated screening of signatures of
interest for specific research questions.  The package is developed for
generating refined lists of signature genes from multiple group comparisons
based on the results from @code{edgeR} and limma differential expression (DE)
analysis workflow.  It also takes into account the background noise of
tissue-specificity, which is often ignored by other marker generation tools.
This package is particularly useful for the identification of group markers in
various biological and medical applications, including cancer research and
developmental biology.")
    (license license:expat)))

(define-public r-massir
  (package
    (name "r-massir")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "massiR" version))
       (sha256
        (base32 "16v0fydncmaa4xqg2m6mg1h5n9b3fc3r9mmxl1ip7ylr836v2g5l"))))
    (properties `((upstream-name . "massiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-gplots r-diptest r-cluster r-biobase))
    (home-page "https://bioconductor.org/packages/massiR")
    (synopsis "massiR: MicroArray Sample Sex Identifier")
    (description
     "Predicts the sex of samples in gene expression microarray datasets")
    (license license:gpl3)))

(define-public r-massarray
  (package
    (name "r-massarray")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MassArray" version))
       (sha256
        (base32 "1d1b1rvicm2p96qz47svwxl1jky37p7653545fh6j8nhzqlk68ng"))))
    (properties `((upstream-name . "MassArray")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MassArray")
    (synopsis "Analytical Tools for MassArray Data")
    (description
     "This package is designed for the import, quality control, analysis, and
visualization of methylation data generated using Sequenom's @code{MassArray}
platform.  The tools herein contain a highly detailed amplicon prediction for
optimal assay design.  Also included are quality control measures of data, such
as primer dimer and bisulfite conversion efficiency estimation.  Methylation
data are calculated using the same algorithms contained in the @code{EpiTyper}
software package.  Additionally, automatic SNP-detection can be used to flag
potentially confounded data from specific CG sites.  Visualization includes
barplots of methylation data as well as UCSC Genome Browser-compatible BED
tracks.  Multiple assays can be positionally combined for integrated analysis.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-maskbad
  (package
    (name "r-maskbad")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maskBAD" version))
       (sha256
        (base32 "11kr4ali92scgsfm6757ylmvcvxsxvgh7pdlj77bwprgvsl53x5y"))))
    (properties `((upstream-name . "maskBAD")))
    (build-system r-build-system)
    (propagated-inputs (list r-gcrma r-affy))
    (home-page "https://bioconductor.org/packages/maskBAD")
    (synopsis "Masking probes with binding affinity differences")
    (description
     "Package includes functions to analyze and mask microarray expression data.")
    (license license:gpl2+)))

(define-public r-masigpro
  (package
    (name "r-masigpro")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maSigPro" version))
       (sha256
        (base32 "02i2gnfj54z8j4ir93ambf25wz609aqh22bkwid0wca895nrarx8"))))
    (properties `((upstream-name . "maSigPro")))
    (build-system r-build-system)
    (propagated-inputs (list r-venn r-mclust r-mass r-biobase))
    (home-page "https://bioconductor.org/packages/maSigPro")
    (synopsis
     "Significant Gene Expression Profile Differences in Time Course Gene Expression Data")
    (description
     "@code{maSigPro} is a regression based approach to find genes for which there are
significant gene expression profile differences between experimental groups in
time course microarray and RNA-Seq experiments.")
    (license license:gpl2+)))

(define-public r-martini
  (package
    (name "r-martini")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "martini" version))
       (sha256
        (base32 "0ffpbn93jlig43m0gzfi0vgqr6kn013xbsfgd8wlpg34saz3x1y4"))))
    (properties `((upstream-name . "martini")))
    (build-system r-build-system)
    (propagated-inputs (list r-snpstats
                             r-rcppeigen
                             r-rcpp
                             r-memoise
                             r-matrix
                             r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hclimente/martini")
    (synopsis "GWAS Incorporating Networks")
    (description
     "martini deals with the low power inherent to GWAS studies by using prior
knowledge represented as a network.  SNPs are the vertices of the network, and
the edges represent biological relationships between them (genomic adjacency,
belonging to the same gene, physical interaction between protein products).  The
network is scanned using S@code{ConES}, which looks for groups of SNPs maximally
associated with the phenotype, that form a close subnetwork.")
    (license license:gpl3)))

(define-public r-marr
  (package
    (name "r-marr")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "marr" version))
       (sha256
        (base32 "1q9xbyc9wsrhpirddnhpnw0z33cpjzj3689vgpnxdkx9s64jr1ld"))))
    (properties `((upstream-name . "marr")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rlang
                             r-rcpp
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/marr")
    (synopsis "Maximum rank reproducibility")
    (description
     "marr (Maximum Rank Reproducibility) is a nonparametric approach that detects
reproducible signals using a maximal rank statistic for high-dimensional
biological data.  In this R package, we implement functions that measures the
reproducibility of features per sample pair and sample pairs per feature in
high-dimensional biological replicate experiments.  The user-friendly plot
functions in this package also plot histograms of the reproducibility of
features per sample pair and sample pairs per feature.  Furthermore, our
approach also allows the users to select optimal filtering threshold values for
the identification of reproducible features and sample pairs based on output
visualization checks (histograms).  This package also provides the subset of
data filtered by reproducible features and/or sample pairs.")
    (license license:gpl3+)))

(define-public r-marinerdata
  (package
    (name "r-marinerdata")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "marinerData" version
                              'experiment))
       (sha256
        (base32 "00m1r6ijhykq96d86h17asngdm8a1ss2213nd6n6lsj4dshr74a0"))))
    (properties `((upstream-name . "marinerData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/marinerData")
    (synopsis "ExperimentHub data for the mariner package")
    (description
     "Subsampled Hi-C in HEK cells expressing the NHA9 fusion with an F to S mutated
IDR (\"FS\") or without any mutations to the IDR (\"Wildtype\" or \"WT\").  These
files are used for testing mariner functions and some examples.")
    (license license:gpl3)))

(define-public r-mariner
  (package
    (name "r-mariner")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mariner" version))
       (sha256
        (base32 "12zj4y6fy38r6iiz7gp9z9sdz99ixy43is9hwp4l026q401ckdqh"))))
    (properties `((upstream-name . "mariner")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-strawr
                             r-s4vectors
                             r-rlang
                             r-rhdf5
                             r-rcolorbrewer
                             r-purrr
                             r-progress
                             r-plyranges
                             r-plotgardener
                             r-magrittr
                             r-iranges
                             r-interactionset
                             r-hdf5array
                             r-glue
                             r-genomicranges
                             r-genomeinfodb
                             r-delayedarray
                             r-dbscan
                             r-data-table
                             r-colourvalues
                             r-biocparallel
                             r-biocmanager
                             r-biocgenerics
                             r-assertthat
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "http://ericscottdavis.com/mariner/")
    (synopsis "Mariner: Explore the Hi-Cs")
    (description
     "This package provides tools for manipulating paired ranges and working with Hi-C
data in R. Functionality includes manipulating/merging paired regions,
generating paired ranges, extracting/aggregating interactions from `.hic` files,
and visualizing the results.  Designed for compatibility with plotgardener for
visualization.")
    (license license:gpl3)))

(define-public r-maqcsubsetilm
  (package
    (name "r-maqcsubsetilm")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAQCsubsetILM" version
                              'experiment))
       (sha256
        (base32 "1bb158bmy7195wnj0wap08g621xbzflvj30pv4l7mwc54lm1vqfx"))))
    (properties `((upstream-name . "MAQCsubsetILM")))
    (build-system r-build-system)
    (propagated-inputs (list r-lumi r-biobase))
    (home-page "https://bioconductor.org/packages/MAQCsubsetILM")
    (synopsis "MAQC data subset for the Illumina platform")
    (description "MAQC data subset for the Illumina platform")
    (license license:artistic2.0)))

(define-public r-maqcsubset
  (package
    (name "r-maqcsubset")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAQCsubset" version
                              'experiment))
       (sha256
        (base32 "1qqn4mf2jrdkn28n1npzag50m24j29nm0adcj276s8fgwdayv434"))))
    (properties `((upstream-name . "MAQCsubset")))
    (build-system r-build-system)
    (propagated-inputs (list r-lumi r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/MAQCsubset")
    (synopsis "Experimental Data Package: MAQCsubset")
    (description
     "Data Package automatically created on Sun Nov 19 15:59:29 2006.")
    (license license:artistic2.0)))

(define-public r-maqcexpression4plex
  (package
    (name "r-maqcexpression4plex")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maqcExpression4plex" version
                              'experiment))
       (sha256
        (base32 "0ihwmzndj3yxs75x3h9w03ydvy08hmi0pzy561mjsyhdrrb8i4dc"))))
    (properties `((upstream-name . "maqcExpression4plex")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/maqcExpression4plex")
    (synopsis "Sample Expression Data - MAQC / HG18 - NimbleGen")
    (description
     "Data from human (HG18) 4plex @code{NimbleGen} array.  It has 24k genes with 3
60mer probes per gene.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-mapscape
  (package
    (name "r-mapscape")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mapscape" version))
       (sha256
        (base32 "157xi3r5fjsby2affd5yq112i6w80g8q3xiv4s7xg6zy57309f4k"))))
    (properties `((upstream-name . "mapscape")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-stringr r-jsonlite r-htmlwidgets r-base64enc))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/mapscape")
    (synopsis "mapscape")
    (description
     "@code{MapScape} integrates clonal prevalence, clonal hierarchy, anatomic and
mutational information to provide interactive visualization of spatial clonal
evolution.  There are four inputs to @code{MapScape}: (i) the clonal phylogeny,
(ii) clonal prevalences, (iii) an image reference, which may be a medical image
or drawing and (iv) pixel locations for each sample on the referenced image.
Optionally, @code{MapScape} can accept a data table of mutations for each clone
and their variant allele frequencies in each sample.  The output of
@code{MapScape} consists of a cropped anatomical image surrounded by two
representations of each tumour sample.  The first, a cellular aggregate,
visually displays the prevalence of each clone.  The second shows a skeleton of
the clonal phylogeny while highlighting only those clones present in the sample.
 Together, these representations enable the analyst to visualize the
distribution of clones throughout anatomic space.")
    (license license:gpl3)))

(define-public r-mapredictdsc
  (package
    (name "r-mapredictdsc")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maPredictDSC" version))
       (sha256
        (base32 "099pmf3jdpnsvcg46q09pr2qdh0znzr2dcrlbh61ys1yh12vplf5"))))
    (properties `((upstream-name . "maPredictDSC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rocr
                             r-roc
                             r-mass
                             r-lungcanceracvssccgeo
                             r-limma
                             r-hgu133plus2-db
                             r-gcrma
                             r-e1071
                             r-class
                             r-caret
                             r-annotationdbi
                             r-affy))
    (home-page "http://bioinformaticsprb.med.wayne.edu/maPredictDSC")
    (synopsis
     "Phenotype prediction using microarray data: approach of the best overall team in the IMPROVER Diagnostic Signature Challenge")
    (description
     "This package implements the classification pipeline of the best overall team
(Team221) in the IMPROVER Diagnostic Signature Challenge.  Additional
functionality is added to compare 27 combinations of data preprocessing, feature
selection and classifier types.")
    (license license:gpl2)))

(define-public r-mapkldata
  (package
    (name "r-mapkldata")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mAPKLData" version
                              'experiment))
       (sha256
        (base32 "0vhysi7wyw7d3vbq4qcq3i3ic953awppg2bix40ywz1459b5p43g"))))
    (properties `((upstream-name . "mAPKLData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/mAPKLData")
    (synopsis "Gene expression data for testing of the package mAPKL")
    (description
     "Gene expression data from a breast cancer study published by Turashvili et al.
in 2007, provided as an @code{eSet}.")
    (license license:artistic2.0)))

(define-public r-mantelcorr
  (package
    (name "r-mantelcorr")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MantelCorr" version))
       (sha256
        (base32 "0jzng0vwsm47kjrvig57zkynvz71kz4xvi4fn4an71927mgh52j0"))))
    (properties `((upstream-name . "MantelCorr")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MantelCorr")
    (synopsis "Compute Mantel Cluster Correlations")
    (description
     "Computes Mantel cluster correlations from a (p x n) numeric data matrix (e.g.
microarray gene-expression data).")
    (license license:gpl2+)))

(define-public r-mammaprintdata
  (package
    (name "r-mammaprintdata")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mammaPrintData" version
                              'experiment))
       (sha256
        (base32 "0bm1lfdjhav34rqvkvygkllmwibjh0f34p58vml3ljjdhgghawrq"))))
    (properties `((upstream-name . "mammaPrintData")))
    (build-system r-build-system)
    (home-page "http://luigimarchionni.org/breastTSP.html")
    (synopsis "RGLists from the Glas and Buyse breast cancer studies")
    (description
     "Gene expression data for the two breast cancer cohorts published by Glas and
Buyse in 2006.  This cohorts were used to implement and validate the
@code{mammaPrint} breast cancer test.")
    (license license:artistic2.0)))

(define-public r-malaria-db0
  (package
    (name "r-malaria-db0")
    (version "3.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "malaria.db0" version
                              'annotation))
       (sha256
        (base32 "1zp2j7vbws2a56xkngfl248xskpj5r58q7sxx6xjipdjk8n13vf3"))))
    (properties `((upstream-name . "malaria.db0")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/malaria.db0")
    (synopsis "Base Level Annotation databases for malaria")
    (description
     "Base annotation databases for malaria, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-maizeprobe
  (package
    (name "r-maizeprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maizeprobe" version
                              'annotation))
       (sha256
        (base32 "01h5dv5i0zaqlphkii9ipxy9wswv1srgprrpr5vmi01c9d98qsk0"))))
    (properties `((upstream-name . "maizeprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/maizeprobe")
    (synopsis "Probe sequence data for microarrays of type maize")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Maize\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-maizecdf
  (package
    (name "r-maizecdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maizecdf" version
                              'annotation))
       (sha256
        (base32 "0yfz5gjhsq4wz6j63s1b1hxjz03gsmrlfs2cdc8smq6azp3zdid4"))))
    (properties `((upstream-name . "maizecdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/maizecdf")
    (synopsis "maizecdf")
    (description
     "This package provides a package containing an environment representing the
Maize.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-mait
  (package
    (name "r-mait")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAIT" version))
       (sha256
        (base32 "1kljw50mzdmd9b35qjkagzilhhdf4dzv8n96g36jj7k4952d1h6g"))))
    (properties `((upstream-name . "MAIT")))
    (build-system r-build-system)
    (propagated-inputs (list r-xcms
                             r-rcpp
                             r-plsgenomics
                             r-pls
                             r-mass
                             r-gplots
                             r-e1071
                             r-class
                             r-caret
                             r-camera
                             r-agricolae))
    (home-page "https://bioconductor.org/packages/MAIT")
    (synopsis "Statistical Analysis of Metabolomic Data")
    (description
     "The MAIT package contains functions to perform end-to-end statistical analysis
of LC/MS Metabolomic Data.  Special emphasis is put on peak annotation and in
modular function design of the functions.")
    (license license:gpl2)))

(define-public r-mai
  (package
    (name "r-mai")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAI" version))
       (sha256
        (base32 "0wiax2lij7k00havwzja120fvn65wkq57mv7kvwkgfya97k73g27"))))
    (properties `((upstream-name . "MAI")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-summarizedexperiment
                             r-s4vectors
                             r-pcamethods
                             r-missforest
                             r-future-apply
                             r-future
                             r-foreach
                             r-e1071
                             r-doparallel
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KechrisLab/MAI")
    (synopsis "Mechanism-Aware Imputation")
    (description
     "This package provides a two-step approach to imputing missing data in
metabolomics.  Step 1 uses a random forest classifier to classify missing values
as either Missing Completely at Random/Missing At Random (MCAR/MAR) or Missing
Not At Random (MNAR).  MCAR/MAR are combined because it is often difficult to
distinguish these two missing types in metabolomics data.  Step 2 imputes the
missing values based on the classified missing mechanisms, using the appropriate
imputation algorithms.  Imputation algorithms tested and available for MCAR/MAR
include Bayesian Principal Component Analysis (BPCA), Multiple Imputation
No-Skip K-Nearest Neighbors (Multi_@code{nsKNN}), and Random Forest.  Imputation
algorithms tested and available for MNAR include @code{nsKNN} and a single
imputation approach for imputation of metabolites where left-censoring is
present.")
    (license license:gpl3)))

(define-public r-magrene
  (package
    (name "r-magrene")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "magrene" version))
       (sha256
        (base32 "0y3q5pdvcp1ns00ycmqilf9fbgl57j9917vck7anib9sqkbdncgf"))))
    (properties `((upstream-name . "magrene")))
    (build-system r-build-system)
    (propagated-inputs (list r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/almeidasilvaf/magrene")
    (synopsis "Motif Analysis In Gene Regulatory Networks")
    (description
     "magrene allows the identification and analysis of graph motifs in (duplicated)
gene regulatory networks (GRNs), including lambda, V, PPI V, delta, and bifan
motifs.  GRNs can be tested for motif enrichment by comparing motif frequencies
to a null distribution generated from degree-preserving simulated GRNs.  Motif
frequencies can be analyzed in the context of gene duplications to explore the
impact of small-scale and whole-genome duplications on gene regulatory networks.
 Finally, users can calculate interaction similarity for gene pairs based on the
Sorensen-Dice similarity index.")
    (license license:gpl3)))

(define-public r-magpie
  (package
    (name "r-magpie")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "magpie" version))
       (sha256
        (base32 "0qn62kllwd2ip2iszvxwr8088n5r0krnja80gw1xhfzs6s2gxcbi"))))
    (properties `((upstream-name . "magpie")))
    (build-system r-build-system)
    (propagated-inputs (list r-tress
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-reshape2
                             r-rcolorbrewer
                             r-openxlsx
                             r-matrixstats
                             r-matrix
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-deseq2
                             r-biocparallel
                             r-aod
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dxd429/magpie")
    (synopsis
     "MeRIP-Seq data Analysis for Genomic Power Investigation and Evaluation")
    (description
     "This package aims to perform power analysis for the @code{MeRIP-seq} study.  It
calculates FDR, FDC, power, and precision under various study design parameters,
including but not limited to sample size, sequencing depth, and testing method.
It can also output results into .xlsx files or produce corresponding figures of
choice.")
    (license license:expat)))

(define-public r-mageckflute
  (package
    (name "r-mageckflute")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAGeCKFlute" version))
       (sha256
        (base32 "0bjylxdaw5695673yqrgx37s475w035djr9az3s1z9xd89ksv0xr"))))
    (properties `((upstream-name . "MAGeCKFlute")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-pathview
                             r-msigdbr
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-enrichplot
                             r-dose
                             r-depmap
                             r-clusterprofiler
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MAGeCKFlute")
    (synopsis
     "Integrative Analysis Pipeline for Pooled CRISPR Functional Genetic Screens")
    (description
     "CRISPR (clustered regularly interspaced short palindrome repeats) coupled with
nuclease Cas9 (CRISPR/Cas9) screens represent a promising technology to
systematically evaluate gene functions.  Data analysis for CRISPR/Cas9 screens
is a critical process that includes identifying screen hits and exploring
biological functions for these hits in downstream analysis.  We have previously
developed two algorithms, MA@code{GeCK} and MA@code{GeCK-VISPR}, to analyze
CRISPR/Cas9 screen data in various scenarios.  These two algorithms allow users
to perform quality control, read count generation and normalization, and
calculate beta score to evaluate gene selection performance.  In downstream
analysis, the biological functional analysis is required for understanding
biological functions of these identified genes with different screening
purposes.  Here, We developed MA@code{GeCKFlute} for supporting downstream
analysis.  MA@code{GeCKFlute} provides several strategies to remove potential
biases within @code{sgRNA-level} read counts and gene-level beta scores.  The
downstream analysis with the package includes identifying essential,
non-essential, and target-associated genes, and performing biological functional
category analysis, pathway enrichment analysis and protein complex enrichment
analysis of these genes.  The package also visualizes genes in multiple ways to
benefit users exploring screening data.  Collectively, MA@code{GeCKFlute}
enables accurate identification of essential, non-essential, and targeted genes,
as well as their related biological functions.  This vignette explains the use
of the package and demonstrates typical workflows.")
    (license license:gpl3+)))

(define-public r-magar
  (package
    (name "r-magar")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAGAR" version))
       (sha256
        (base32 "1yk3c2gkkvbzvf4svixbg5mnb7hrdiyxprf9ixaqhhs2jic88cms"))))
    (properties `((upstream-name . "MAGAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-upsetr
                             r-snpstats
                             r-rnbeads-hg19
                             r-rnbeads
                             r-rjson
                             r-reshape2
                             r-plyr
                             r-jsonlite
                             r-impute
                             r-igraph
                             r-hdf5array
                             r-ff
                             r-doparallel
                             r-data-table
                             r-crlmm
                             r-bigstatsr
                             r-argparse))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MPIIComputationalEpigenetics/MAGAR")
    (synopsis
     "MAGAR: R-package to compute methylation Quantitative Trait Loci (methQTL) from DNA methylation and genotyping data")
    (description
     "\"Methylation-Aware Genotype Association in R\" (MAGAR) computes @code{methQTL}
from DNA methylation and genotyping data from matched samples.  MAGAR uses a
linear modeling stragety to call @code{CpGs/SNPs} that are @code{methQTLs}.
MAGAR accounts for the local correlation structure of @code{CpGs}.")
    (license license:gpl3)))

(define-public r-mafdb-topmed-freeze5-hg38
  (package
    (name "r-mafdb-topmed-freeze5-hg38")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.TOPMed.freeze5.hg38" version
                              'annotation))
       (sha256
        (base32 "0yd9r26l2s3ykw5d2lndnx4m1h401g7hsnkk0wywczdc1xa39y4n"))))
    (properties `((upstream-name . "MafDb.TOPMed.freeze5.hg38")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/MafDb.TOPMed.freeze5.hg38")
    (synopsis "Minor allele frequency data from TOPMed for hg38")
    (description
     "Store minor allele frequency data from NHLBI TOPMed for the human genome version
hg38.")
    (license license:artistic2.0)))

(define-public r-mafdb-topmed-freeze5-hg19
  (package
    (name "r-mafdb-topmed-freeze5-hg19")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.TOPMed.freeze5.hg19" version
                              'annotation))
       (sha256
        (base32 "1fxq5jq4g6rys909v0a4lbrcgfdk844wgihn0ary509w8ifdkxdv"))))
    (properties `((upstream-name . "MafDb.TOPMed.freeze5.hg19")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/MafDb.TOPMed.freeze5.hg19")
    (synopsis "Minor allele frequency data from TOPMed for hg19")
    (description
     "Store minor allele frequency data from NHLBI TOPMed for the human genome version
hg19.")
    (license license:artistic2.0)))

(define-public r-mafdb-gnomadex-r2-1-hs37d5
  (package
    (name "r-mafdb-gnomadex-r2-1-hs37d5")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.gnomADex.r2.1.hs37d5" version
                              'annotation))
       (sha256
        (base32 "0y42ncmilijdxsgqsmskz7gff3il3fdf2kpflknmz1z9kybzaday"))))
    (properties `((upstream-name . "MafDb.gnomADex.r2.1.hs37d5")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/MafDb.gnomADex.r2.1.hs37d5")
    (synopsis
     "Minor allele frequency data from gnomAD exomes release 2.1 for hs37d5")
    (description
     "Store minor allele frequency data from the Genome Aggregation Database
(@code{gnomAD} exomes release 2.1) for the human genome version hs37d5.")
    (license license:artistic2.0)))

(define-public r-mafdb-gnomadex-r2-1-grch38
  (package
    (name "r-mafdb-gnomadex-r2-1-grch38")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.gnomADex.r2.1.GRCh38" version
                              'annotation))
       (sha256
        (base32 "1v0sdjmn9z8gqn4yj4v04zycj3ngr32r04zqmkp6y41hcgdr8lxw"))))
    (properties `((upstream-name . "MafDb.gnomADex.r2.1.GRCh38")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/MafDb.gnomADex.r2.1.GRCh38")
    (synopsis
     "Minor allele frequency data from gnomAD exomes release 2.1 for GRCh38")
    (description
     "Store minor allele frequency data from the Genome Aggregation Database
(@code{gnomAD} exomes release 2.1) for the human genome version GRCh38.")
    (license license:artistic2.0)))

(define-public r-mafdb-exac-r1-0-nontcga-hs37d5
  (package
    (name "r-mafdb-exac-r1-0-nontcga-hs37d5")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.ExAC.r1.0.nonTCGA.hs37d5" version
                              'annotation))
       (sha256
        (base32 "1srwc9n9x0ilipqwvm95khy4w2dnn1fkxyrrlcqfwv96gl7141x5"))))
    (properties `((upstream-name . "MafDb.ExAC.r1.0.nonTCGA.hs37d5")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/MafDb.ExAC.r1.0.nonTCGA.hs37d5")
    (synopsis
     "Minor allele frequency data from ExAC release 1.0 subset of nonTCGA exomes for hs37d5")
    (description
     "Store minor allele frequency data from the Exome Aggregation Consortium
(@code{ExAC} release 1.0 subset of @code{nonTCGA} exomes) for the human genome
version hs37d5.")
    (license license:artistic2.0)))

(define-public r-mafdb-exac-r1-0-nontcga-grch38
  (package
    (name "r-mafdb-exac-r1-0-nontcga-grch38")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.ExAC.r1.0.nonTCGA.GRCh38" version
                              'annotation))
       (sha256
        (base32 "16rsm24nlz7jdnqk1p0avn9dlxkbbjd50nja5pcg0z18m30srlya"))))
    (properties `((upstream-name . "MafDb.ExAC.r1.0.nonTCGA.GRCh38")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/MafDb.ExAC.r1.0.nonTCGA.GRCh38")
    (synopsis
     "Minor allele frequency data from ExAC release 1.0 subset of nonTCGA exomes for GRCh38")
    (description
     "Store minor allele frequency data from the Exome Aggregation Consortium
(@code{ExAC} release 1.0 subset of @code{nonTCGA} exomes) for the human genome
version GRCh38.")
    (license license:artistic2.0)))

(define-public r-mafdb-exac-r1-0-hs37d5
  (package
    (name "r-mafdb-exac-r1-0-hs37d5")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.ExAC.r1.0.hs37d5" version
                              'annotation))
       (sha256
        (base32 "18czbllphsccb2hs02g6jz517ylxsvx12czwh4xz7vym6q4br0cz"))))
    (properties `((upstream-name . "MafDb.ExAC.r1.0.hs37d5")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/MafDb.ExAC.r1.0.hs37d5")
    (synopsis "Minor allele frequency data from ExAC release 1.0 for hs37d5")
    (description
     "Store minor allele frequency data from the Exome Aggregation Consortium
(@code{ExAC} release 1.0) for the human genome version hs37d5.")
    (license license:artistic2.0)))

(define-public r-mafdb-exac-r1-0-grch38
  (package
    (name "r-mafdb-exac-r1-0-grch38")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.ExAC.r1.0.GRCh38" version
                              'annotation))
       (sha256
        (base32 "02mlwkx9kal4h1q1h3c2pdragir9bh63vg1wyagmh8capf19zx5c"))))
    (properties `((upstream-name . "MafDb.ExAC.r1.0.GRCh38")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/MafDb.ExAC.r1.0.GRCh38")
    (synopsis "Minor allele frequency data from ExAC release 1.0 for GRCh38")
    (description
     "Store minor allele frequency data from the Exome Aggregation Consortium
(@code{ExAC} release 1.0) for the human genome version GRCh38.")
    (license license:artistic2.0)))

(define-public r-mafdb-1kgenomes-phase1-hs37d5
  (package
    (name "r-mafdb-1kgenomes-phase1-hs37d5")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.1Kgenomes.phase1.hs37d5" version
                              'annotation))
       (sha256
        (base32 "0vsjik59qa36w402bcrd5z27wc9vyp4gl0ffcwskd9iwjqim0phi"))))
    (properties `((upstream-name . "MafDb.1Kgenomes.phase1.hs37d5")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/MafDb.1Kgenomes.phase1.hs37d5")
    (synopsis
     "Minor allele frequency data from 1000 Genomes Phase 1 for hs37d5")
    (description
     "Store minor allele frequency data from the Phase 1 of the 1000 Genomes Project
for the human genome version hs37d5.")
    (license license:artistic2.0)))

(define-public r-mafdb-1kgenomes-phase1-grch38
  (package
    (name "r-mafdb-1kgenomes-phase1-grch38")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MafDb.1Kgenomes.phase1.GRCh38" version
                              'annotation))
       (sha256
        (base32 "057531mvxip32lyqak4hh964ms0cil29p5cch5fpjw5vbbzidrlc"))))
    (properties `((upstream-name . "MafDb.1Kgenomes.phase1.GRCh38")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicscores
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/MafDb.1Kgenomes.phase1.GRCh38")
    (synopsis
     "Minor allele frequency data from 1000 Genomes Phase 1 for GRCh38")
    (description
     "Store minor allele frequency data from the Phase 1 of the 1000 Genomes Project
for the human genome version GRCh38.")
    (license license:artistic2.0)))

(define-public r-madseq
  (package
    (name "r-madseq")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MADSEQ" version))
       (sha256
        (base32 "10bgj9z1l0l9nmz8hdag9ngy9xwz1hj1jvhk26y2pqli6d6448yx"))))
    (properties `((upstream-name . "MADSEQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-zlibbioc
                             r-vgam
                             r-vcfr
                             r-variantannotation
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rjags
                             r-preprocesscore
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-coda
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ykong2/MADSEQ")
    (synopsis
     "Mosaic Aneuploidy Detection and Quantification using Massive Parallel Sequencing Data")
    (description
     "The MADSEQ package provides a group of hierarchical Bayeisan models for the
detection of mosaic aneuploidy, the inference of the type of aneuploidy and also
for the quantification of the fraction of aneuploid cells in the sample.")
    (license (license:fsdg-compatible "GPL(>=2)"))))

(define-public r-macsr
  (package
    (name "r-macsr")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MACSr" version))
       (sha256
        (base32 "1mnbxhmgh8ca5drspvsskf554kp31a2s35f9f05j49zzjrzma74p"))))
    (properties `((upstream-name . "MACSr")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-s4vectors r-reticulate r-experimenthub
                             r-basilisk r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MACSr")
    (synopsis "MACS: Model-based Analysis for ChIP-Seq")
    (description
     "The Model-based Analysis of @code{ChIP-Seq} (MACS) is a widely used toolkit for
identifying transcript factor binding sites.  This package is an R wrapper of
the lastest MACS3.")
    (license license:bsd-3)))

(define-public r-macsquantifyr
  (package
    (name "r-macsquantifyr")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MACSQuantifyR" version))
       (sha256
        (base32 "0y9xjk06lxf9bwlpzf73xj175858hpdgcyqdk9qjzlik0g1aksd1"))))
    (properties `((upstream-name . "MACSQuantifyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-rvest
                             r-rmarkdown
                             r-readxl
                             r-prettydoc
                             r-png
                             r-latticeextra
                             r-lattice
                             r-gridextra
                             r-ggrepel
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MACSQuantifyR")
    (synopsis "Fast treatment of MACSQuantify FACS data")
    (description
     "Automatically process the metadata of MACSQuantify FACS sorter.  It runs
multiple modules: i) imports of raw file and graphical selection of duplicates
in well plate, ii) computes statistics on data and iii) can compute combination
index.")
    (license license:artistic2.0)))

(define-public r-macsdata
  (package
    (name "r-macsdata")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MACSdata" version
                              'experiment))
       (sha256
        (base32 "117jy39rn972hzwcckx5wdsrsxfzhwbx4wb6air4l7xcb6qmfrj1"))))
    (properties `((upstream-name . "MACSdata")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/MACSdata")
    (synopsis "Test datasets for the MACSr package")
    (description
     "Test datasets from the MACS3 test examples are use in the examples of the
`MACSr` package.  All 9 datasets are uploaded to the `@code{ExperimentHub`}.
The original data can be found at: https://github.com/macs3-project/MACS/.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-macorrplot
  (package
    (name "r-macorrplot")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maCorrPlot" version))
       (sha256
        (base32 "0gpj4r9fnv4dlqkzyq47n0n9dwzd9d6ry46vzxlkdjla811wz3pb"))))
    (properties `((upstream-name . "maCorrPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page
     "http://www.pubmedcentral.gov/articlerender.fcgi?tool=pubmed&pubmedid=15799785")
    (synopsis "Visualize artificial correlation in microarray data")
    (description
     "Graphically displays correlation in microarray data that is due to insufficient
normalization")
    (license license:gpl2+)))

(define-public r-macat
  (package
    (name "r-macat")
    (version "1.76.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "macat" version))
       (sha256
        (base32 "1xmlh1bnhaxp2zjimrhyzz0ldl2sv4j0lrrvqdhlk8jbm5j4hzy8"))))
    (properties `((upstream-name . "macat")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase r-annotate))
    (home-page "https://bioconductor.org/packages/macat")
    (synopsis "MicroArray Chromosome Analysis Tool")
    (description
     "This library contains functions to investigate links between differential gene
expression and the chromosomal localization of the genes.  MACAT is motivated by
the common observation of phenomena involving large chromosomal regions in tumor
cells.  MACAT is the implementation of a statistical approach for identifying
significantly differentially expressed chromosome regions.  The functions have
been tested on a publicly available data set about acute lymphoblastic leukemia
(Yeoh et al.Cancer Cell 2002), which is provided in the library stjudem'.")
    (license license:artistic2.0)))

(define-public r-macarron
  (package
    (name "r-macarron")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Macarron" version))
       (sha256
        (base32 "19zn8s6d6g9zaid77nkpy0fcvmvkxpgjzj435p8lj068mw4pi9b7"))))
    (properties `((upstream-name . "Macarron")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-wgcna
                             r-summarizedexperiment
                             r-rjsonio
                             r-rcurl
                             r-psych
                             r-plyr
                             r-maaslin2
                             r-logging
                             r-ff
                             r-dynamictreecut
                             r-delayedarray
                             r-data-table
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "http://huttenhower.sph.harvard.edu/macarron")
    (synopsis
     "Prioritization of potentially bioactive metabolic features from epidemiological and environmental metabolomics datasets")
    (description
     "Macarron is a workflow for the prioritization of potentially bioactive
metabolites from metabolomics experiments.  Prioritization integrates strengths
of evidences of bioactivity such as covariation with a known metabolite,
abundance relative to a known metabolite and association with an environmental
or phenotypic indicator of bioactivity.  Broadly, the workflow consists of
stratified clustering of metabolic spectral features which co-vary in abundance
in a condition, transfer of functional annotations, estimation of relative
abundance and differential abundance analysis to identify associations between
features and phenotype/condition.")
    (license license:expat)))

(define-public r-m6aboost
  (package
    (name "r-m6aboost")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "m6Aboost" version))
       (sha256
        (base32 "0sssf37pjnn4iafhf6jkcms00lzwmxb8qbzn76spm135fkyljm7k"))))
    (properties `((upstream-name . "m6Aboost")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-iranges
                             r-genomicranges
                             r-experimenthub
                             r-dplyr
                             r-bsgenome
                             r-biostrings
                             r-adabag))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ZarnackGroup/m6Aboost")
    (synopsis "m6Aboost")
    (description
     "This package can help user to run the m6Aboost model on their own @code{miCLIP2}
data.  The package includes functions to assign the read counts and get the
features to run the m6Aboost model.  The @code{miCLIP2} data should be stored in
a GRanges object.  More details can be found in the vignette.")
    (license license:artistic2.0)))

(define-public r-m3drop
  (package
    (name "r-m3drop")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "M3Drop" version))
       (sha256
        (base32 "0xn458kc7hwhlf1jfzz6x5wlzb5pps2fa2n52jsp9zifsrk2zpkz"))))
    (properties `((upstream-name . "M3Drop")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod
                             r-reldist
                             r-rcolorbrewer
                             r-numderiv
                             r-matrixstats
                             r-matrix
                             r-irlba
                             r-hmisc
                             r-gplots
                             r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tallulandrews/M3Drop")
    (synopsis "Michaelis-Menten Modelling of Dropouts in single-cell RNASeq")
    (description
     "This package fits a Michaelis-Menten model to the pattern of dropouts in
single-cell RNASeq data.  This model is used as a null to identify significantly
variable (i.e.  differentially expressed) genes for use in downstream analysis,
such as clustering cells.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-m3dexampledata
  (package
    (name "r-m3dexampledata")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "M3DExampleData" version
                              'experiment))
       (sha256
        (base32 "0rp1zp14wvfwy67m0ph8amm41frj76gfylacdbdjyblcpdgzzlnq"))))
    (properties `((upstream-name . "M3DExampleData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/M3DExampleData")
    (synopsis "M3Drop Example Data")
    (description "Example data for M3Drop package.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-m20kcod-db
  (package
    (name "r-m20kcod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "m20kcod.db" version
                              'annotation))
       (sha256
        (base32 "1p2sm5j4b50iqzwcb984qrh74c3hf6yml7b8mvxlhhhvxz4iy1np"))))
    (properties `((upstream-name . "m20kcod.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/m20kcod.db")
    (synopsis
     "Codelink UniSet Mouse 20k I Bioarray annotation data (chip m20kcod)")
    (description
     "Codelink @code{UniSet} Mouse 20k I Bioarray annotation data (chip m20kcod)
assembled using data from public repositories")
    (license license:artistic2.0)))

(define-public r-m10kcod-db
  (package
    (name "r-m10kcod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "m10kcod.db" version
                              'annotation))
       (sha256
        (base32 "0fqfzjii536xlgpj1z3bgld1269qdh89ynzmrq6l366pj5im0nah"))))
    (properties `((upstream-name . "m10kcod.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/m10kcod.db")
    (synopsis
     "Codelink UniSet Mouse I Bioarray (~10 000 mouse gene targets) annotation data (chip m10kcod)")
    (description
     "Codelink @code{UniSet} Mouse I Bioarray (~10 000 mouse gene targets) annotation
data (chip m10kcod) assembled using data from public repositories")
    (license license:artistic2.0)))

