(define-module (guix-bioc packages m)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages g)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages compression)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages c)
  #:use-module (gnu packages python)
  #:use-module (guix-cran packages h)
  #:use-module (gnu packages bioinformatics)
  #:use-module (guix-cran packages a)
  #:use-module (gnu packages perl)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages t)
  #:use-module (gnu packages c)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages machine-learning)
  #:use-module (guix-cran packages b)
  #:use-module (gnu packages package-management)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages q)
  #:use-module (gnu packages web)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages w)
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "myvariant" version))
       (sha256
        (base32 "0lfpkl5y22gg4185ldgkc0y4jxpyvdl83mnzmj9m2qprszbk69r8"))))
    (properties `((upstream-name . "myvariant")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-seqinfo
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
resources.  myvariant is a wrapper for querying @code{MyVariant.info} services.")
    (license license:artistic2.0)))

(define-public r-mygene
  (package
    (name "r-mygene")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mygene" version))
       (sha256
        (base32 "0a142c95975yphffn8xcg76j0l0ywjw2h0r6jqpm65knhhrn009s"))))
    (properties `((upstream-name . "mygene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-sqldf
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mwgcod.db")
    (synopsis
     "Codelink Mouse Whole Genome Bioarray (~36 000 mouse gene targets) annotation data (chip mwgcod)")
    (description
     "Codelink Mouse Whole Genome Bioarray (~36 000 mouse gene targets) annotation
data (chip mwgcod) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-mwastools
  (package
    (name "r-mwastools")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MWASTools" version))
       (sha256
        (base32 "16d1vkw3wl9mspbfgsyzwpz1pz1krlz8g9g3159qqfmh7fwlwqpm"))))
    (properties `((upstream-name . "MWASTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mvoutData" version
                              'experiment))
       (sha256
        (base32 "1s9ih74dgbj1lbazbmf9kawk2s9vxhm21hnwbm3y73s11sp201wm"))))
    (properties `((upstream-name . "mvoutData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lumi r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/mvoutData")
    (synopsis
     "affy and illumina raw data for assessing outlier detector performance")
    (description
     "affy and illumina raw data for assessing outlier detector performance.")
    (license license:artistic2.0)))

(define-public r-mutscan
  (package
    (name "r-mutscan")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mutscan" version))
       (sha256
        (base32 "1xqfbljy61ir2blglvisqbgyn490mxbn6kfn68l0cjkvpz13wl51"))))
    (properties `((upstream-name . "mutscan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-xfun
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-s4vectors
                             r-rmarkdown
                             r-rlang
                             r-rcpp
                             r-matrix
                             r-limma
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-ggally
                             r-edger
                             r-dt
                             r-dplyr
                             r-delayedarray
                             r-csaw
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fmicompbio/mutscan")
    (synopsis "Preprocessing and Analysis of Deep Mutational Scanning Data")
    (description
     "This package provides functionality for processing and statistical analysis of
multiplexed assays of variant effect (MAVE) and similar data.  The package
contains functions covering the full workflow from raw FASTQ files to
publication-ready visualizations.  A broad range of library designs can be
processed with a single, unified interface.")
    (license license:expat)))

(define-public r-muspadata
  (package
    (name "r-muspadata")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "muSpaData" version
                              'experiment))
       (sha256
        (base32 "1fdh8kpw7jjbn2y0v7nwszrkr6wbmwa6qbcbg7p0h606g2i1jbxg"))))
    (properties `((upstream-name . "muSpaData")))
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
    (home-page "https://github.com/peicai/muSpaData")
    (synopsis
     "Multi-sample multi-group spatially resolved transcriptomic data")
    (description
     "Data package containing a multi-sample multi-group spatial dataset in
@code{SpatialExperiment} Bioconductor object format.")
    (license license:expat)))

(define-public r-musicatk
  (package
    (name "r-musicatk")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "musicatk" version))
       (sha256
        (base32 "1a3npb4b5a10jp09bx53636hv1xbw2fw60k0iqs7hr7r85rd25m1"))))
    (properties `((upstream-name . "musicatk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-plotly
                             r-philentropy
                             r-nmf
                             r-mcmcprecision
                             r-matrixtests
                             r-matrix
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
    (home-page "https://www.camplab.net/musicatk/")
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
    (version "3.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "muscle" version))
       (sha256
        (base32 "08ajymh02nlsa3ks5qhnz3d59a1mdsn6vgyslzvib6g0x6ka7z42"))))
    (properties `((upstream-name . "muscle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "muscData" version
                              'experiment))
       (sha256
        (base32 "1fqr21y5ac30i1riz07rnaqz4qd5hkmj7hcx60mvkmc77nbyn4kh"))))
    (properties `((upstream-name . "muscData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.18.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MungeSumstats" version))
       (sha256
        (base32 "1sar0pjyf21gv17i04dhlj83cyxkj4n7ypiaz6489a38d6arjb17"))))
    (properties `((upstream-name . "MungeSumstats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-stringr
                             r-rtracklayer
                             r-rcurl
                             r-r-utils
                             r-iranges
                             r-ieugwasr
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mumosa" version))
       (sha256
        (base32 "16p50lz5qnpdaa56h98a01czsn1pz12mm6z0426qz2yp14wmmi2q"))))
    (properties `((upstream-name . "mumosa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-multiwgcnadata
  (package
    (name "r-multiwgcnadata")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiWGCNAdata" version
                              'experiment))
       (sha256
        (base32 "11h4llyzm8wh70nznqpvrf94prjv1j2pmrqwwsc9zqnl0q6zfdp3"))))
    (properties `((upstream-name . "multiWGCNAdata")))
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
    (home-page "https://bioconductor.org/packages/multiWGCNAdata")
    (synopsis "Data Package for multiWGCNA")
    (description
     "Stores expression profiling data from experiments compatible with the
@code{multiWGCNA} R package.  This includes human postmortem microarray data
from patients and controls (GSE28521), astrocyte Ribotag RNA-seq data from EAE
and wildtype mice (GSE100329), and mouse RNA-seq data from tau pathology
(@code{rTg4510}) and wildtype control mice (GSE125957).  These data can be
accessed using the @code{ExperimentHub} workflow (see @code{multiWGCNA}
vignettes).")
    (license license:artistic2.0)))

(define-public r-multiwgcna
  (package
    (name "r-multiwgcna")
    (version "1.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiWGCNA" version))
       (sha256
        (base32 "06njw4dz3fjh6g703z2k2cphrvmwf4azfg4w86iin6j67f361vz1"))))
    (properties `((upstream-name . "multiWGCNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-multistateqtl
  (package
    (name "r-multistateqtl")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multistateQTL" version))
       (sha256
        (base32 "0jllxhr2pnd4p2yhpplnf784k0gcg3zh5k7593mpxcpjgrhp87b5"))))
    (properties `((upstream-name . "multistateQTL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-summarizedexperiment
                             r-s4vectors
                             r-qtlexperiment
                             r-matrixstats
                             r-mashr
                             r-ggplot2
                             r-fitdistrplus
                             r-dplyr
                             r-data-table
                             r-complexheatmap
                             r-collapse
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dunstone-a/multistateQTL")
    (synopsis "Toolkit for the analysis of multi-state QTL data")
    (description
     "This package provides a collection of tools for doing various analyses of
multi-state QTL data, with a focus on visualization and interpretation.  The
package @code{multistateQTL} contains functions which can remove or impute
missing data, identify significant associations, as well as categorise features
into global, multi-state or unique.  The analysis results are stored in a
QTLExperiment object, which is based on the @code{SummarisedExperiment}
framework.")
    (license license:gpl3)))

(define-public r-multiscan
  (package
    (name "r-multiscan")
    (version "1.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiscan" version))
       (sha256
        (base32 "1spl6myhmn8zkhif8bwvdlzhm4jc648qlw928xlc60v2x5y3qb3b"))))
    (properties `((upstream-name . "multiscan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/multiscan")
    (synopsis "R package for combining multiple scans")
    (description
     "Estimates gene expressions from several laser scans of the same microarray.")
    (license license:gpl2+)))

(define-public r-multirnaflow
  (package
    (name "r-multirnaflow")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MultiRNAflow" version))
       (sha256
        (base32 "0h4jy154jq7g76a7bnirmpi7rjzzfdslw54sdzzrd7shr3amg4wd"))))
    (properties `((upstream-name . "MultiRNAflow")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-upsetr
                             r-summarizedexperiment
                             r-s4vectors
                             r-rlang
                             r-reshape2
                             r-plot3drgl
                             r-plot3d
                             r-mfuzz
                             r-gprofiler2
                             r-ggrepel
                             r-ggplotify
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
     "An R package for integrated analysis of temporal RNA-seq data with multiple biological conditions")
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MultimodalExperiment" version))
       (sha256
        (base32 "1dv4bq17p1jwk4ympjd7902wmbqp641s87c8kdkr0c7qx5q7ibdj"))))
    (properties `((upstream-name . "MultimodalExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiMiR" version))
       (sha256
        (base32 "02dj6aslq2vaafdsd3rfvlbfdg7bahy214w3ld0yi22chypm5m29"))))
    (properties `((upstream-name . "multiMiR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MultiMed" version))
       (sha256
        (base32 "0pn5bavnq3gsyln89p6zrwn44147c9wjpkc04drk65hv9329yh3q"))))
    (properties `((upstream-name . "MultiMed")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/MultiMed")
    (synopsis "Testing multiple biological mediators simultaneously")
    (description
     "This package implements methods for testing multiple mediators.")
    (license (license:fsdg-compatible "GPL (>= 2) + file LICENSE"))))

(define-public r-multihiccompare
  (package
    (name "r-multihiccompare")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiHiCcompare" version))
       (sha256
        (base32 "10vqacbx18vwdk23zkib9ccbs47vpvj8x7sbckhnan9y4zvdfd1j"))))
    (properties `((upstream-name . "multiHiCcompare")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiGSEA" version))
       (sha256
        (base32 "0z2pscdc1il9lywckadyv3ljqkijhi4xfdvaks2z7p3dsrxs14sw"))))
    (properties `((upstream-name . "multiGSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multicrispr" version))
       (sha256
        (base32 "06ac6r9psmwx65x64clbsmsw6kzbdsbxvw9y1da23pzs37fpd1cc"))))
    (properties `((upstream-name . "multicrispr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringi
                             r-seqinfo
                             r-rtracklayer
                             r-reticulate
                             r-rbowtie
                             r-plyranges
                             r-magrittr
                             r-karyoploter
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-data-table
                             r-crisprseek
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bhagwataditya/multicrispr")
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "multiClust" version))
       (sha256
        (base32 "0xpjx9wv2vkq3r2r1lpjvagac93hrw9q1r3y32zzk05pakrn5fxr"))))
    (properties `((upstream-name . "multiClust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-muleadata
  (package
    (name "r-muleadata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "muleaData" version
                              'experiment))
       (sha256
        (base32 "0p5ckxgi94x252ysj60mfm718rl3c66gvahl4ad9ks3nh955zmy4"))))
    (properties `((upstream-name . "muleaData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ELTEbioinformatics/muleaData")
    (synopsis
     "Genes Sets for Functional Enrichment Analysis with the 'mulea' R Package")
    (description
     "@code{ExperimentHubData} package for the mulea comprehensive overrepresentation
and functional enrichment analyser R package.  Here we provide ontologies (gene
sets) in a data.frame for 27 different organisms, ranging from Escherichia coli
to human, all acquired from publicly available data sources.  Each ontology is
provided with multiple gene and protein identifiers.  Please see the NEWS file
for a list of changes in each version.")
    (license license:expat)))

(define-public r-mulcom
  (package
    (name "r-mulcom")
    (version "1.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Mulcom" version))
       (sha256
        (base32 "1wy30yl3wl1a42mn447dsrlsswi55y00f3rrzpfyv85ap8sx2imw"))))
    (properties `((upstream-name . "Mulcom")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MUGAExampleData" version
                              'experiment))
       (sha256
        (base32 "1f0mr6vr8w5sf2rpv3g6n9jig2chd72bcm6sxl9zi9gjf5m62c76"))))
    (properties `((upstream-name . "MUGAExampleData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MuData" version))
       (sha256
        (base32 "0b6289ladkm5c70i4rkw3hc7kxf038n3ryjs9fr44rb1q4mq940n"))))
    (properties `((upstream-name . "MuData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Mu22v3.db")
    (synopsis "FHCRC Genomics Shared Resource Mu22v3 Annotation Data (Mu22v3)")
    (description
     "FHCRC Genomics Shared Resource Mu22v3 Annotation Data (Mu22v3) assembled using
data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksubc.db")
    (synopsis
     "Affymetrix Affymetrix Mu19KsubC Array annotation data (chip mu19ksubc)")
    (description
     "Affymetrix Affymetrix Mu19@code{KsubC} Array annotation data (chip mu19ksubc)
assembled using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksubb.db")
    (synopsis
     "Affymetrix Affymetrix Mu19KsubB Array annotation data (chip mu19ksubb)")
    (description
     "Affymetrix Affymetrix Mu19@code{KsubB} Array annotation data (chip mu19ksubb)
assembled using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu19ksuba.db")
    (synopsis
     "Affymetrix Affymetrix Mu19KsubA Array annotation data (chip mu19ksuba)")
    (description
     "Affymetrix Affymetrix Mu19@code{KsubA} Array annotation data (chip mu19ksuba)
assembled using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Mu15v1.db")
    (synopsis "FHCRC Genomics Shared Resource Mu15v1 Annotation Data (Mu15v1)")
    (description
     "FHCRC Genomics Shared Resource Mu15v1 Annotation Data (Mu15v1) assembled using
data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu11ksubb.db")
    (synopsis
     "Affymetrix Affymetrix Mu11KsubB Array annotation data (chip mu11ksubb)")
    (description
     "Affymetrix Affymetrix Mu11@code{KsubB} Array annotation data (chip mu11ksubb)
assembled using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mu11ksuba.db")
    (synopsis
     "Affymetrix Affymetrix Mu11KsubA Array annotation data (chip mu11ksuba)")
    (description
     "Affymetrix Affymetrix Mu11@code{KsubA} Array annotation data (chip mu11ksuba)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-mtbls2
  (package
    (name "r-mtbls2")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mtbls2" version
                              'experiment))
       (sha256
        (base32 "0v85jrh094dcrqnrjmn65c33zyxl839nr9540fdjs1s6fvsck76r"))))
    (properties `((upstream-name . "mtbls2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mta10transcriptcluster.db")
    (synopsis "Affymetrix mta10 annotation data (chip mta10transcriptcluster)")
    (description
     "Affymetrix mta10 annotation data (chip mta10transcriptcluster) assembled using
data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mta10probeset.db")
    (synopsis "Affymetrix mta10 annotation data (chip mta10probeset)")
    (description
     "Affymetrix mta10 annotation data (chip mta10probeset) assembled using data from
public repositories.")
    (license license:artistic2.0)))

(define-public r-msstatstmt
  (package
    (name "r-msstatstmt")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsTMT" version))
       (sha256
        (base32 "020h4w7xph1b4fzmhpwg2dxz0lx87ml17h9wlbabgixys9jrs4hq"))))
    (properties `((upstream-name . "MSstatsTMT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plotly
                             r-msstatsconvert
                             r-msstats
                             r-lmertest
                             r-lme4
                             r-limma
                             r-htmltools
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
    (version "1.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsShiny" version))
       (sha256
        (base32 "1216zj3h3q847hxi5g0dzaigpgi8mk18294f3j7dfj9vynckh4q1"))))
    (properties `((upstream-name . "MSstatsShiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uuid
                             r-tidyr
                             r-shinyjs
                             r-shinydashboard
                             r-shinybusy
                             r-shinybs
                             r-shiny
                             r-readxl
                             r-plotly
                             r-msstatstmt
                             r-msstatsresponse
                             r-msstatsptm
                             r-msstatsconvert
                             r-msstatsbionet
                             r-msstats
                             r-mockery
                             r-marray
                             r-htmltools
                             r-hmisc
                             r-gplots
                             r-ggrepel
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table
                             r-arrow))
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

(define-public r-msstatsresponse
  (package
    (name "r-msstatsresponse")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsResponse" version))
       (sha256
        (base32 "1cbgkszjy7ywrdl31swi31yd8ndbkdz9k5wnxylfq1yii15yal03"))))
    (properties `((upstream-name . "MSstatsResponse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-dplyr r-data-table r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Vitek-Lab/MSstatsResponse")
    (synopsis "Statistical Methods for Chemoproteomics Dose-Response Analysis")
    (description
     "This package provides tools for detecting drug-protein interactions and
estimating IC50 values from chemoproteomics data.  Implements semi-parametric
isotonic regression, bootstrapping, and curve fitting to evaluate compound
effects on protein abundance.")
    (license license:artistic2.0)))

(define-public r-msstatsqcgui
  (package
    (name "r-msstatsqcgui")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsQCgui" version))
       (sha256
        (base32 "0n10hkb5yds7jbv2q0p59rkia210y38frc5s49bb3z0mm1mg4kbb"))))
    (properties `((upstream-name . "MSstatsQCgui")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsQC" version))
       (sha256
        (base32 "1672v4xgb108idm82n125sm048knaahp41msmwhjrrl59v7w7nw7"))))
    (properties `((upstream-name . "MSstatsQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsPTM" version))
       (sha256
        (base32 "063q6bj0caxihnx9s66s0rkw9fxfhra53hfg0bfwd1iydgf10294"))))
    (properties `((upstream-name . "MSstatsPTM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-rcpp
                             r-plotly
                             r-msstatstmt
                             r-msstatsconvert
                             r-msstats
                             r-htmltools
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsLOBD" version))
       (sha256
        (base32 "00czbv3rsg3nnwhvjwl27vm9bcywmmg7y16qnwjpx7hzdsznpyik"))))
    (properties `((upstream-name . "MSstatsLOBD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsLiP" version))
       (sha256
        (base32 "19441shsymqvxzgkj0n1ypyga43514q06cphfyrhy6zcja0zrlcs"))))
    (properties `((upstream-name . "MSstatsLiP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rcpp
                             r-purrr
                             r-plotly
                             r-msstatsptm
                             r-msstatsconvert
                             r-msstats
                             r-htmltools
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsConvert" version))
       (sha256
        (base32 "0f8rf7mniv3r30910ilhnrcaffmqddkp4n4syq9aqdn7fl630s0b"))))
    (properties `((upstream-name . "MSstatsConvert")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi r-rcpp r-log4r r-data-table r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MSstatsConvert")
    (synopsis
     "Import Data from Various Mass Spectrometry Signal Processing Tools to MSstats Format")
    (description
     "M@code{SstatsConvert} provides tools for importing reports of Mass Spectrometry
data processing tools into R format suitable for statistical analysis using the
MSstats and M@code{SstatsTMT} packages.")
    (license license:artistic2.0)))

(define-public r-msstatsbionet
  (package
    (name "r-msstatsbionet")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsBioNet" version))
       (sha256
        (base32 "0vaxm03xhzsvirkmzblg6qw89rxgi6g7w60csh1yyp08zcqhpmli"))))
    (properties `((upstream-name . "MSstatsBioNet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rcy3
                             r-r2r
                             r-msstats
                             r-jsonlite
                             r-httr))
    (native-inputs (list r-knitr))
    (home-page "http://msstats.org")
    (synopsis "Network Analysis for MS-based Proteomics Experiments")
    (description
     "This package provides a set of tools for network analysis using mass
spectrometry-based proteomics data and network databases.  The package takes as
input the output of MSstats differential abundance analysis and provides
functions to perform enrichment analysis and visualization in the context of
prior knowledge from past literature.  Notably, this package integrates with
INDRA, which is a database of biological networks extracted from the literature
using text mining techniques.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-msstatsbig
  (package
    (name "r-msstatsbig")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstatsBig" version))
       (sha256
        (base32 "1032wdivn85wjbmj7whyyhjw3cqld2s5b38kdviif3qnw95zc7h7"))))
    (properties `((upstream-name . "MSstatsBig")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "4.18.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSstats" version))
       (sha256
        (base32 "1k9709pas6z200gr1v5wknpc57205cjz9g61liqpi91w822g4rgp"))))
    (properties `((upstream-name . "MSstats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-statmod
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-preprocesscore
                             r-plotly
                             r-msstatsconvert
                             r-mass
                             r-marray
                             r-lme4
                             r-limma
                             r-htmltools
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsQuality" version))
       (sha256
        (base32 "07cb36mrz11r6hpl5cwk3a5myagmslxik0jis8rxbsihkmilpb2r"))))
    (properties `((upstream-name . "MsQuality")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-spectra
                             r-shinydashboard
                             r-shiny
                             r-rmzqc
                             r-rlang
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msqrob2" version))
       (sha256
        (base32 "0kd452vjwzqizfmqma7770bfcdsn22hk9xfhs37zqj806cadc0sn"))))
    (properties `((upstream-name . "msqrob2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msqc1" version
                              'experiment))
       (sha256
        (base32 "0njigw0qy1jwb3xi5h5jak9wyvn7fyy41vy1l5cyc64bdrx7i1ms"))))
    (properties `((upstream-name . "msqc1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msPurityData" version
                              'experiment))
       (sha256
        (base32 "1b5pqq7bk4hxcvpr3svz0i9a2xpis420xc630v2klf76g28z4zsc"))))
    (properties `((upstream-name . "msPurityData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/msPurityData")
    (synopsis
     "Fragmentation spectral libraries and data to test the msPurity package")
    (description
     "Fragmentation spectral libraries and data to test the @code{msPurity} package.")
    (license license:gpl2+)))

(define-public r-mspurity
  (package
    (name "r-mspurity")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msPurity" version))
       (sha256
        (base32 "004wmqqxdpdbhax112v4hidp1bxyq3h8c307cvryyz4gahqfsr0p"))))
    (properties `((upstream-name . "msPurity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSPrep" version))
       (sha256
        (base32 "0qdlzixhqlbjiln3w1qy9cx1r4slc2p0pfhqlcxrbhr4mmwpwqk3"))))
    (properties `((upstream-name . "MSPrep")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-mspms
  (package
    (name "r-mspms")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mspms" version))
       (sha256
        (base32 "1nipbivljfcr87lfxp2iz6x2zfambk4s7jqyv951vywlq3p8f6pb"))))
    (properties `((upstream-name . "mspms")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-rstatix
                             r-rlang
                             r-readr
                             r-qfeatures
                             r-purrr
                             r-magrittr
                             r-limma
                             r-heatmaply
                             r-ggseqlogo
                             r-ggpubr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/baynec2/mspms")
    (synopsis "Tools for the analysis of MSP-MS data")
    (description
     "This package provides functions for the analysis of data generated by the
multiplex substrate profiling by mass spectrometry for proteases (MSP-MS)
method.  Data exported from upstream proteomics software is accepted as input
and subsequently processed for analysis.  Tools for statistical analysis,
visualization, and interpretation of the data are provided.")
    (license license:expat)))

(define-public r-msmb
  (package
    (name "r-msmb")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSMB" version
                              'experiment))
       (sha256
        (base32 "0c51n1sygxpz7y01rdkvh9ssacmhl9h29zbpimk9gywwaf1cvcrn"))))
    (properties `((upstream-name . "MSMB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mslp" version))
       (sha256
        (base32 "0pfncr3fdcccd8pi73l5n3qpwg4m2a53grsk8izm5839xc16mwpq"))))
    (properties `((upstream-name . "mslp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msImpute" version))
       (sha256
        (base32 "1gjh519b7adrczha2cfh33yqg6rz3fn27m5bydqkf1gw5hilq9wx"))))
    (properties `((upstream-name . "msImpute")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msgbsR" version))
       (sha256
        (base32 "12gbzwvf5rdv8dl29wi8qrrzvl62vncd8q76h3x5bxwbp4dnjzrd"))))
    (properties `((upstream-name . "msgbsR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seqinfo
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsDataHub" version))
       (sha256
        (base32 "09rfj583b1vz3p328pnlrzj7mxg6804ia1q84p9y5pvzcb0z17fv"))))
    (properties `((upstream-name . "MsDataHub")))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "msd16s" version
                              'experiment))
       (sha256
        (base32 "1l31xrfwnznjnx31mlj8bh2v890lyczzcvlm5mlsjbcqpd3zj6rv"))))
    (properties `((upstream-name . "msd16s")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-metagenomeseq r-biobase))
    (home-page
     "http://www.cbcb.umd.edu/research/projects/GEMS-pathogen-discovery")
    (synopsis "Healthy and moderate to severe diarrhea 16S expression data")
    (description
     "Gut 16S sequencing expression data from 992 healthy and moderate-to-severe
diarrhetic samples used in Diarrhea in young children from low-income countries
leads to large-scale alterations in intestinal microbiota composition'.")
    (license license:artistic2.0)))

(define-public r-msbackendrawfilereader
  (package
    (name "r-msbackendrawfilereader")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendRawFileReader" version))
       (sha256
        (base32 "1169db99imv14brygihhfmb1qc3cmhmlwqi5snj5fc8vk46y59c1"))))
    (properties `((upstream-name . "MsBackendRawFileReader")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-rawrr
                             r-protgenerics
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendMsp" version))
       (sha256
        (base32 "1mqrn6kq6hrnymv80ypls7mmpzjh0zy3b44d1ayikm5ilyg57dki"))))
    (properties `((upstream-name . "MsBackendMsp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-protgenerics
                             r-mscoreutils
                             r-iranges
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendMgf" version))
       (sha256
        (base32 "0hycd0jj3bc5h3lcgxpm6ysy2mzk3jp0rxq1hrgyqpz1s9zigbsy"))))
    (properties `((upstream-name . "MsBackendMgf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-protgenerics
                             r-mscoreutils
                             r-iranges
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

(define-public r-msbackendmetabolights
  (package
    (name "r-msbackendmetabolights")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendMetaboLights" version))
       (sha256
        (base32 "0lwiwsc184kmh6chxvhcwpn3wcfw1iir7d2gdqlnn48ckzhs0nml"))))
    (properties `((upstream-name . "MsBackendMetaboLights")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-protgenerics
                             r-progress
                             r-curl
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RforMassSpectrometry/MsBackendMetaboLights")
    (synopsis "Retrieve Mass Spectrometry Data from MetaboLights")
    (description
     "@code{MetaboLights} is one of the main public repositories for storage of
metabolomics experiments, which includes analysis results as well as raw data.
The @code{MsBackendMetaboLights} package provides functionality to retrieve and
represent mass spectrometry (MS) data from @code{MetaboLights}.  Data files are
downloaded and cached locally avoiding repetitive downloads.  MS data from
metabolomics experiments can thus be directly and seamlessly integrated into
R-based analysis workflows with the Spectra and @code{MsBackendMetaboLights}
package.")
    (license license:artistic2.0)))

(define-public r-msbackendmassbank
  (package
    (name "r-msbackendmassbank")
    (version "1.18.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MsBackendMassbank" version))
       (sha256
        (base32 "0jk9q3pf5dsrj2m1lsbz2fn4ngk0aasms644jz2hm0vhr038nycj"))))
    (properties `((upstream-name . "MsBackendMassbank")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spectra
                             r-s4vectors
                             r-protgenerics
                             r-mscoreutils
                             r-iranges
                             r-dbi
                             r-data-table
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MSA2dist" version))
       (sha256
        (base32 "1rdqnk8l2b2p69yyvfa9ybv0ghxz2qks5rnczg10brmksf50g749"))))
    (properties `((upstream-name . "MSA2dist")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-seqinr
                             r-rlang
                             r-rcppthread
                             r-rcpp
                             r-pwalign
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
pairwise distance calculations which can be adapted to any scoring for DNA or AA
characters.  E.g.  by using literal distances MSA2dist calculates pairwise IUPAC
distances.  DNA@code{StringSet} alignments can be analysed as codon alignments
to look for synonymous and nonsynonymous substitutions (@code{dN/dS}) in a
parallelised fashion using a variety of substitution models.  Non-aligned coding
sequences can be directly used to construct pairwise codon alignments
(global/local) and calculate @code{dN/dS} without any external dependencies.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-mpranalyze
  (package
    (name "r-mpranalyze")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MPRAnalyze" version))
       (sha256
        (base32 "08c6v1lngv3wypl552n95pkhvq6an22g6wpy4dvrmwxg1layjf93"))))
    (properties `((upstream-name . "MPRAnalyze")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mpra" version))
       (sha256
        (base32 "0yqk8h7l7q4q0g4h39q1gbsfb1lqvcxrfbmn2wnl6chzbf71yszd"))))
    (properties `((upstream-name . "mpra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MPFE" version))
       (sha256
        (base32 "01v6ick1i5ix7b71glx56fxbal5ndrv5b2yq2lwzxp26wfq28kas"))))
    (properties `((upstream-name . "MPFE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mpedbarray.db")
    (synopsis "FHCRC Nelson Lab mpedbarray Annotation Data (mpedbarray)")
    (description
     "FHCRC Nelson Lab mpedbarray Annotation Data (mpedbarray) assembled using data
from public repositories.")
    (license license:artistic2.0)))

(define-public r-mpac
  (package
    (name "r-mpac")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MPAC" version))
       (sha256
        (base32 "0n7cq12q5p913bca7495lnbcksqiww1vdxg0ysfl0ii39q4189ff"))))
    (properties `((upstream-name . "MPAC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-survminer
                             r-survival
                             r-summarizedexperiment
                             r-stringr
                             r-singlecellexperiment
                             r-scran
                             r-scales
                             r-s4vectors
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-fitdistrplus
                             r-fgsea
                             r-data-table
                             r-complexheatmap
                             r-circlize
                             r-bluster
                             r-biocsingular
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pliu55/MPAC")
    (synopsis "Multi-omic Pathway Analysis of Cells")
    (description
     "Multi-omic Pathway Analysis of Cells (MPAC), integrates multi-omic data for
understanding cellular mechanisms.  It predicts novel patient groups with
distinct pathway profiles as well as identifying key pathway proteins with
potential clinical associations.  From CNA and RNA-seq data, it determines
genes’ DNA and RNA states (i.e., repressed, normal, or activated), which serve
as the input for PARADIGM to calculate Inferred Pathway Levels (IPLs).  It also
permutes DNA and RNA states to create a background distribution to filter IPLs
as a way to remove events observed by chance.  It provides multiple methods for
downstream analysis and visualization.")
    (license license:gpl3)))

(define-public r-mousethymusageing
  (package
    (name "r-mousethymusageing")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MouseThymusAgeing" version
                              'experiment))
       (sha256
        (base32 "0l6nzjh61l6gwhia1pvqmqdbpmd2lb8f7zxvmalvq6994361d00i"))))
    (properties `((upstream-name . "MouseThymusAgeing")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MouseFM" version))
       (sha256
        (base32 "1kyagqg0rs5pzqqjn8fsdbmkaj9vzq6jqvrmyjswibxdasgy8vwm"))))
    (properties `((upstream-name . "MouseFM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-seqinfo
                             r-scales
                             r-rlist
                             r-reshape2
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-gtools
                             r-ggplot2
                             r-genomicranges
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
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/mouseCHRLOC")
    (synopsis "data package containing annotation data for mouseCHRLOC")
    (description
     "Annotation data file for @code{mouseCHRLOC} assembled using data from public
data repositories.")
    (license (license:fsdg-compatible "The Artistic License, Version 2.0"))))

(define-public r-mouseagingdata
  (package
    (name "r-mouseagingdata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MouseAgingData" version
                              'experiment))
       (sha256
        (base32 "1kkmk1bxzhj1d8aps3xhz6sv65pb017x097l9ffv60hs7xh9i84v"))))
    (properties `((upstream-name . "MouseAgingData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-singlecellexperiment r-experimenthub
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ccb-hms/MouseAgingData")
    (synopsis
     "Multi-omics data access for studies investigating the effects of aging")
    (description
     "The @code{MouseAgingData} package provides analysis-ready data resources from
different studies focused on aging and rejuvenation in mice.  The package
currently provides two 10x Genomics single-cell RNA-seq datasets.  The first
study profiled the aging mouse brain measured across 37,089 cells (Ximerakis et
al., 2019).  The second study investigated parabiosis by profiling a total of
105,329 cells (Ximerakis & Holton et al., 2023).  The datasets are provided as
@code{SingleCellExperiment} objects and provide raw UMI counts and cell
metadata.")
    (license license:artistic2.0)))

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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse430a2.db")
    (synopsis
     "Affymetrix Affymetrix Mouse430A_2 Array annotation data (chip mouse430a2)")
    (description
     "Affymetrix Affymetrix Mouse430A_2 Array annotation data (chip mouse430a2)
assembled using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse4302barcodevecs" version
                              'experiment))
       (sha256
        (base32 "1w4rqhmzsy1hs3x8jycx1qvwsr0050d45p74sj6088kxwhn3yahm"))))
    (properties `((upstream-name . "mouse4302barcodevecs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse4302.db")
    (synopsis
     "Affymetrix Affymetrix Mouse430_2 Array annotation data (chip mouse4302)")
    (description
     "Affymetrix Affymetrix Mouse430_2 Array annotation data (chip mouse4302)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-mouse-db0
  (package
    (name "r-mouse-db0")
    (version "3.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mouse.db0" version
                              'annotation))
       (sha256
        (base32 "0dqc2yyw35wdq382135nxkrrk1225hw29mnzqn5gzvv50zljbxz2"))))
    (properties `((upstream-name . "mouse.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mouse.db0")
    (synopsis "Base Level Annotation databases for mouse")
    (description
     "Base annotation databases for mouse, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-motiftestr
  (package
    (name "r-motiftestr")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "motifTestR" version))
       (sha256
        (base32 "1p20qq93s628h8dakrh4i00gmsz1mgx58h8cf1wg3zzxd38i21il"))))
    (properties `((upstream-name . "motifTestR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-universalmotif
                             r-seqinfo
                             r-s4vectors
                             r-rlang
                             r-patchwork
                             r-matrixstats
                             r-iranges
                             r-harmonicmeanp
                             r-ggplot2
                             r-genomicranges
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/smped/motifTestR")
    (synopsis "Perform key tests for binding motifs in sequence data")
    (description
     "Taking a set of sequence motifs as PWMs, test a set of sequences for
over-representation of these motifs, as well as any positional features within
the set of motifs.  Enrichment analysis can be undertaken using multiple
statistical approaches.  The package also contains core functions to prepare
data for analysis, and to visualise results.")
    (license license:gpl3)))

(define-public r-motifpeeker
  (package
    (name "r-motifpeeker")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MotifPeeker" version))
       (sha256
        (base32 "0s16b0zpksm52w6kszhah6shrh69wxww847qq1fv9xrmrg8zryax"))))
    (properties `((upstream-name . "MotifPeeker")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-universalmotif
                             r-tidyr
                             r-summarizedexperiment
                             r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rmarkdown
                             r-purrr
                             r-plotly
                             r-memes
                             r-iranges
                             r-htmlwidgets
                             r-htmltools
                             r-heatmaply
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments
                             r-dt
                             r-dplyr
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/neurogenomics/MotifPeeker")
    (synopsis
     "Benchmarking Epigenomic Profiling Methods Using Motif Enrichment")
    (description
     "@code{MotifPeeker} is used to compare and analyse datasets from epigenomic
profiling methods with motif enrichment as the key benchmark.  The package
outputs an HTML report consisting of three sections: (1.  General Metrics)
Overview of peaks-related general metrics for the datasets (F@code{RiP} scores,
peak widths and motif-summit distances). (2.  Known Motif Enrichment Analysis)
Statistics for the frequency of user-provided motifs enriched in the datasets.
(3.  De-Novo Motif Enrichment Analysis) Statistics for the frequency of de-novo
discovered motifs enriched in the datasets and compared with known motifs.")
    (license license:gpl3+)))

(define-public r-motifcounter
  (package
    (name "r-motifcounter")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "motifcounter" version))
       (sha256
        (base32 "1mbda7hccy43ar1ii5ldn2qvbvzbmdx686kic3y6kxd03frmjb94"))))
    (properties `((upstream-name . "motifcounter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Motif2Site" version))
       (sha256
        (base32 "1jgdh9gqlm0lydgk1l1946fhnb2ma8v63841bzaj3bw8j4876vjh"))))
    (properties `((upstream-name . "Motif2Site")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOSim" version))
       (sha256
        (base32 "16mq70imxcp1xkvz2dyvzdcm3h1k6l2s1awmlw58ipk0ycsfsx49"))))
    (properties `((upstream-name . "MOSim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-stringr
                             r-stringi
                             r-signac
                             r-seurat
                             r-scran
                             r-s4vectors
                             r-rlang
                             r-rcpp
                             r-matrixstats
                             r-lazyeval
                             r-iranges
                             r-hiddenmarkov
                             r-ggplot2
                             r-edger
                             r-dplyr
                             r-cpp11))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ConesaLab/MOSim")
    (synopsis "Multi-Omics Simulation (MOSim)")
    (description
     "MOSim package simulates multi-omic experiments that mimic regulatory mechanisms
within the cell, allowing flexible experimental design including time course and
multiple groups.")
    (license license:gpl3)))

(define-public r-mosclip
  (package
    (name "r-mosclip")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOSClip" version))
       (sha256
        (base32 "1a7lkc2v2w12mzfmsakj4398xv7f8bjijsvsvczjglm24dbiijs4"))))
    (properties `((upstream-name . "MOSClip")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survminer
                             r-survival
                             r-superexacttest
                             r-s4vectors
                             r-reshape
                             r-rcolorbrewer
                             r-qpgraph
                             r-pheatmap
                             r-org-hs-eg-db
                             r-nbclust
                             r-multiassayexperiment
                             r-matrix
                             r-igraph
                             r-gridextra
                             r-grbase
                             r-graphite
                             r-graph
                             r-ggplotify
                             r-ggplot2
                             r-factominer
                             r-elasticnet
                             r-coxrobust
                             r-corpcor
                             r-complexheatmap
                             r-circlize
                             r-checkmate
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CaluraLab/MOSClip/")
    (synopsis "Multi Omics Survival Clip")
    (description
     "Topological pathway analysis tool able to integrate multi-omics data.  It finds
survival-associated modules or significant modules for two-class analysis.  This
tool have two main methods: pathway tests and module tests.  The latter method
allows the user to dig inside the pathways itself.")
    (license license:agpl3)))

(define-public r-mosbi
  (package
    (name "r-mosbi")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mosbi" version))
       (sha256
        (base32 "1bpiy4kh3md4y8qfk5z9k503mp3jk0gwh1v7i82x890l5s4bxz01"))))
    (properties `((upstream-name . "mosbi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mosaicsExample" version
                              'experiment))
       (sha256
        (base32 "12qdjlq0sn0h47qi57xqx8gg28ydkjxnvl5lm91dcbfpr9x5fm0r"))))
    (properties `((upstream-name . "mosaicsExample")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mosaics" version))
       (sha256
        (base32 "1fw8kkk3qgsffwrmcjrkjrq8l9hxilmjvgwxlspp3rzr0rwwc2v7"))))
    (properties `((upstream-name . "mosaics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list perl))
    (propagated-inputs (list r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-rcpp
                             r-mass
                             r-lattice
                             r-iranges
                             r-genomicranges
                             r-genomicalignments))
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MoonlightR" version))
       (sha256
        (base32 "1mlg7aczp8wafdmwjq9znra80w8h469dvsiqqpf5bhhbq8lax7qp"))))
    (properties `((upstream-name . "MoonlightR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Moonlight2R" version))
       (sha256
        (base32 "1kp3jymwb5sz95qjpamf364yn00vklwvlvrviyb1gl9plyx0kv15"))))
    (properties `((upstream-name . "Moonlight2R")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (inputs (list))
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tidyheatmap
                             r-tibble
                             r-stringr
                             r-seqminer
                             r-rtracklayer
                             r-rlang
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
                             r-ggplot2
                             r-geoquery
                             r-genomicranges
                             r-fuzzyjoin
                             r-foreach
                             r-experimenthub
                             r-epimix
                             r-easypubmed
                             r-dplyr
                             r-dose
                             r-doparallel
                             r-data-table
                             r-complexheatmap
                             r-clusterprofiler
                             r-circlize
                             r-biocgenerics
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
chemotherapeutic treatments.  An additional mechanistic layer evaluates if there
are mutations affecting the protein stability of the transcription factors (TFs)
of the TSGs and OCGs, as that may have an effect on the expression of the genes.")
    (license license:gpl3)))

(define-public r-monalisa
  (package
    (name "r-monalisa")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "monaLisa" version))
       (sha256
        (base32 "08sjacip97ng2bna1faz1gx98mjxnrskjb14al7l7f5wkc16mkki"))))
    (properties `((upstream-name . "monaLisa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xvector
                             r-tidyr
                             r-tfbstools
                             r-summarizedexperiment
                             r-stabs
                             r-seqinfo
                             r-s4vectors
                             r-rsqlite
                             r-rlang
                             r-iranges
                             r-glmnet
                             r-ggplot2
                             r-genomicranges
                             r-complexheatmap
                             r-cli
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOMA" version))
       (sha256
        (base32 "0306d52fvb98vwaalw786vh1cb0b0swd8pkvbc642cylbb0aq9l2"))))
    (properties `((upstream-name . "MOMA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MoleculeExperiment" version))
       (sha256
        (base32 "0g30rqj98dagyxl7wl84imszrb7fh0c0cd2g41x1spviirwga1zm"))))
    (properties `((upstream-name . "MoleculeExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mogsa" version))
       (sha256
        (base32 "05n8q7iw1qp1sxjvrh96wpynqv58jm3wiggwkpw0hygz95a5wkxn"))))
    (properties `((upstream-name . "mogsa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/mogene21sttranscriptcluster.db")
    (synopsis
     "Affymetrix mogene21 annotation data (chip mogene21sttranscriptcluster)")
    (description
     "Affymetrix mogene21 annotation data (chip mogene21sttranscriptcluster) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene21stprobeset.db")
    (synopsis "Affymetrix mogene21 annotation data (chip mogene21stprobeset)")
    (description
     "Affymetrix mogene21 annotation data (chip mogene21stprobeset) assembled using
data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/mogene20sttranscriptcluster.db")
    (synopsis
     "Affymetrix mogene20 annotation data (chip mogene20sttranscriptcluster)")
    (description
     "Affymetrix mogene20 annotation data (chip mogene20sttranscriptcluster) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene20stprobeset.db")
    (synopsis "Affymetrix mogene20 annotation data (chip mogene20stprobeset)")
    (description
     "Affymetrix mogene20 annotation data (chip mogene20stprobeset) assembled using
data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/mogene11sttranscriptcluster.db")
    (synopsis
     "Affymetrix mogene11 annotation data (chip mogene11sttranscriptcluster)")
    (description
     "Affymetrix mogene11 annotation data (chip mogene11sttranscriptcluster) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene11stprobeset.db")
    (synopsis "Affymetrix mogene11 annotation data (chip mogene11stprobeset)")
    (description
     "Affymetrix mogene11 annotation data (chip mogene11stprobeset) assembled using
data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/mogene10sttranscriptcluster.db")
    (synopsis
     "Affymetrix mogene10 annotation data (chip mogene10sttranscriptcluster)")
    (description
     "Affymetrix mogene10 annotation data (chip mogene10sttranscriptcluster) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mogene10stprobeset.db")
    (synopsis "Affymetrix mogene10 annotation data (chip mogene10stprobeset)")
    (description
     "Affymetrix mogene10 annotation data (chip mogene10stprobeset) assembled using
data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/mogene.1.0.st.v1frmavecs")
    (synopsis
     "Vectors used by frma for microarrays of type mogene.1.0.st.v1frmavecs")
    (description
     "This package was created by @code{frmaTools} version 1.13.0.")
    (license license:gpl2+)))

(define-public r-mogamun
  (package
    (name "r-mogamun")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOGAMUN" version))
       (sha256
        (base32 "18qqxgs3qy6r3rksqinck68mkcj1kh2gxrxaqlxd8xbhd0ixri1r"))))
    (properties `((upstream-name . "MOGAMUN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOFAdata" version
                              'experiment))
       (sha256
        (base32 "1jf38p14q76fdkxmnsf2k6vax84qbg5h810kmni3jgcyk93rlph4"))))
    (properties `((upstream-name . "MOFAdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MOFA2" version))
       (sha256
        (base32 "0xck3z9w8823dkvkpvnx3fcryr2wfk9dfzp1hdlggq08msf8samd"))))
    (properties `((upstream-name . "MOFA2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list python-scikit-learn
                  python-scipy
                  python
                  python-pandas
                  python-numpy
                  python-h5py
                  argparse))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/moex10sttranscriptcluster.db")
    (synopsis
     "Affymetrix moex10 annotation data (chip moex10sttranscriptcluster)")
    (description
     "Affymetrix moex10 annotation data (chip moex10sttranscriptcluster) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moex10stprobeset.db")
    (synopsis "Affymetrix moex10 annotation data (chip moex10stprobeset)")
    (description
     "Affymetrix moex10 annotation data (chip moex10stprobeset) assembled using data
from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moe430b.db")
    (synopsis
     "Affymetrix Affymetrix MOE430B Array annotation data (chip moe430b)")
    (description
     "Affymetrix Affymetrix MOE430B Array annotation data (chip moe430b) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/moe430a.db")
    (synopsis
     "Affymetrix Affymetrix MOE430A Array annotation data (chip moe430a)")
    (description
     "Affymetrix Affymetrix MOE430A Array annotation data (chip moe430a) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-modcon
  (package
    (name "r-modcon")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ModCon" version))
       (sha256
        (base32 "0vg663nhmj1xmxh7bi5v9z0rcps3bl7qs6v6dd7wp6ybv8vkr5g1"))))
    (properties `((upstream-name . "ModCon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MODA" version))
       (sha256
        (base32 "19f3nwr7czq7qw6lbmvck312w5dvk8ycad0a4n623r79xccgjs5y"))))
    (properties `((upstream-name . "MODA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-mobilerna
  (package
    (name "r-mobilerna")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mobileRNA" version))
       (sha256
        (base32 "0l1hhqfp9i5l93j2gf2wmm9cbx4cd2rp3f4lq6wjhgnnhzmmkc84"))))
    (properties `((upstream-name . "mobileRNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list samtools htseq hisat2 conda))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-summarizedexperiment
                             r-simdesign
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-reticulate
                             r-rcolorbrewer
                             r-progress
                             r-pheatmap
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-edger
                             r-dplyr
                             r-deseq2
                             r-data-table
                             r-biostrings
                             r-bioseq
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/mobileRNA")
    (synopsis
     "mobileRNA: Investigate the RNA mobilome & population-scale changes")
    (description
     "Genomic analysis can be utilised to identify differences between RNA populations
in two conditions, both in production and abundance.  This includes the
identification of RNAs produced by multiple genomes within a biological system.
For example, RNA produced by pathogens within a host or mobile RNAs in plant
graft systems.  The @code{mobileRNA} package provides methods to pre-process,
analyse and visualise the @code{sRNA} and @code{mRNA} populations based on the
premise of mapping reads to all genotypes at the same time.")
    (license license:expat)))

(define-public r-moanin
  (package
    (name "r-moanin")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "moanin" version))
       (sha256
        (base32 "1l95lhknp72zzsg28jnfv421pvlqdx4mjarddv3blkc8bm72lp5r"))))
    (properties `((upstream-name . "moanin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mnem" version))
       (sha256
        (base32 "0crjbx3kzf2r06601n4f0dd6b46pm3f3azsffblh32rmny28c348"))))
    (properties `((upstream-name . "mnem")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MMDiffBamSubset" version
                              'experiment))
       (sha256
        (base32 "1g9inkba5v2a34ymr2iphr27q9xxx1xmswd8pvivcl7mxinylwin"))))
    (properties `((upstream-name . "MMDiffBamSubset")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/MMDiffBamSubset")
    (synopsis "Example ChIP-Seq data for the MMDiff package")
    (description
     "Subset of BAM files, including WT_2.bam, Null_2.bam, Resc_2.bam, Input.bam from
the \"Cfp1\" experiment (see Clouaire et al., Genes Dev.  2012).  Data is
available under @code{ArrayExpress} accession numbers E-ERAD-79.  Additionally,
corresponding subset of peaks called by MACS.")
    (license license:lgpl2.0+)))

(define-public r-mmdiff2
  (package
    (name "r-mmdiff2")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MMDiff2" version))
       (sha256
        (base32 "18kj3ddhqwg9x623gfp8zc4mhfhqpi95f571rrfm30hiw1p6s6vr"))))
    (properties `((upstream-name . "MMDiff2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/MmAgilentDesign026655.db")
    (synopsis
     "Agilent Chips that use Agilent design number 026655 annotation data (chip MmAgilentDesign026655)")
    (description
     "Agilent Chips that use Agilent design number 026655 annotation data (chip
@code{MmAgilentDesign026655}) assembled using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mm24kresogen.db")
    (synopsis
     "RNG_MRC Mouse Pangenomic 24k Set annotation data (chip mm24kresogen)")
    (description
     "RNG_MRC Mouse Pangenomic 24k Set annotation data (chip mm24kresogen) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-mlseq
  (package
    (name "r-mlseq")
    (version "2.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MLSeq" version))
       (sha256
        (base32 "0wmygr2ss4h8pjynqa32d53f46sdmglgjcmnr6vifp915f4aa3gj"))))
    (properties `((upstream-name . "MLSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MLP" version))
       (sha256
        (base32 "0q24amdsz4zpwf3vs9xcjbba8a3q4p9g54zqacxmjpd989f1ikvd"))))
    (properties `((upstream-name . "MLP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-mitology
  (package
    (name "r-mitology")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mitology" version))
       (sha256
        (base32 "0h8smm994dlbszw61858slhy99d3rsbx9fmlmflagvj28yiajz6z"))))
    (properties `((upstream-name . "mitology")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-reactomepa
                             r-org-hs-eg-db
                             r-magrittr
                             r-ggtree
                             r-ggplot2
                             r-complexheatmap
                             r-clusterprofiler
                             r-circlize
                             r-ape
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CaluraLab/mitology")
    (synopsis "Study of mitochondrial activity from RNA-seq data")
    (description
     "mitology allows to study the mitochondrial activity throught high-throughput
RNA-seq data.  It is based on a collection of genes whose proteins localize in
to the mitochondria.  From these, mitology provides a reorganization of the
pathways related to mitochondria activity from Reactome and Gene Ontology.
Further a ready-to-use implementation of @code{MitoCarta3.0} pathways is
included.")
    (license license:agpl3)))

(define-public r-mitoclone2
  (package
    (name "r-mitoclone2")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mitoClone2" version))
       (sha256
        (base32 "0rsz3f1gw39hzlf48a2vxsyasipff2dq7nfx4wxi3csr0v2sr7ds"))))
    (properties `((upstream-name . "mitoClone2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-s4vectors
                             r-rhtslib
                             r-reshape2
                             r-pheatmap
                             r-matrix
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
    (version "1.22.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mitch" version))
       (sha256
        (base32 "05a37yb29gyqxhp957g1hdp4x76x73bklpwrcb0kgivpssgqq42s"))))
    (properties `((upstream-name . "mitch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown
                             r-reshape2
                             r-plyr
                             r-network
                             r-mass
                             r-knitr
                             r-kableextra
                             r-gridextra
                             r-gplots
                             r-ggplot2
                             r-ggally
                             r-echarts4r
                             r-dplyr
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
differential analysis of @code{scRNA-seq} data.  We have an established routine
for pathway enrichment of Infinium Methylation Array data (see vignette).  The
main strengths of mitch are that it can import datasets easily from many
upstream tools and has advanced plotting features to visualise these
enrichments.")
    (license (license:fsdg-compatible "CC BY-SA 4.0 + file LICENSE"))))

(define-public r-mistyr
  (package
    (name "r-mistyr")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mistyR" version))
       (sha256
        (base32 "0hrmw9lnz6pdqhvfmg5gkpx90k05iha5dgzqm30jxpbzq6jwaqcf"))))
    (properties `((upstream-name . "mistyR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-mist
  (package
    (name "r-mist")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mist" version))
       (sha256
        (base32 "07w5dh2fnkxf11jgdpnc354714gkwj9k7m23d2hbwhrvzzrmjsvs"))))
    (properties `((upstream-name . "mist")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-mvtnorm
                             r-mcmcpack
                             r-matrix
                             r-car
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://https://github.com/dxd429/mist")
    (synopsis "Differential Methylation Analysis for scDNAm Data")
    (description
     "mist (Methylation Inference for Single-cell along Trajectory) is a hierarchical
Bayesian framework for modeling DNA methylation trajectories and performing
differential methylation (DM) analysis in single-cell DNA methylation
(@code{scDNAm}) data.  It estimates developmental-stage-specific variations,
identifies genomic features with drastic changes along pseudotime, and, for two
phenotypic groups, detects features with distinct temporal methylation patterns.
 mist uses Gibbs sampling to estimate parameters for temporal changes and
stage-specific variations.")
    (license license:expat)))

(define-public r-missrows
  (package
    (name "r-missrows")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "missRows" version))
       (sha256
        (base32 "1p3hgp6w8rjaa83jk75c7f4qv1cblinc21sn88pp99lva7ml7ppr"))))
    (properties `((upstream-name . "missRows")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirTarRnaSeq" version))
       (sha256
        (base32 "0569hc22mmpaaiyh799ijfhi7zfq45vif25cy8wgk2zfvd73fhza"))))
    (properties `((upstream-name . "mirTarRnaSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-mirsponger
  (package
    (name "r-mirsponger")
    (version "2.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRspongeR" version))
       (sha256
        (base32 "1q9y8zh4xv74wig5c6s6am3wlcwlf2vs24cw05d41dnbwdb91abd"))))
    (properties `((upstream-name . "miRspongeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-sponge
                             r-reactomepa
                             r-rcpp
                             r-rcolorbrewer
                             r-org-hs-eg-db
                             r-mcl
                             r-igraph
                             r-foreach
                             r-dose
                             r-doparallel
                             r-corpcor
                             r-clusterprofiler))
    (native-inputs (list r-knitr))
    (home-page "<https://github.com/zhangjunpeng411/miRspongeR>")
    (synopsis "Identification and analysis of miRNA sponge regulation")
    (description
     "This package provides several functions to explore @code{miRNA} sponge (also
called @code{ceRNA} or @code{miRNA} decoy) regulation from putative
@code{miRNA-target} interactions or/and transcriptomics data (including bulk,
single-cell and spatial gene expression data).  It provides eight popular
methods for identifying @code{miRNA} sponge interactions, and an integrative
method to integrate @code{miRNA} sponge interactions from different methods, as
well as the functions to validate @code{miRNA} sponge interactions, and infer
@code{miRNA} sponge modules, conduct enrichment analysis of @code{miRNA} sponge
modules, and conduct survival analysis of @code{miRNA} sponge modules.  By using
a sample control variable strategy, it provides a function to infer
sample-specific @code{miRNA} sponge interactions.  In terms of sample-specific
@code{miRNA} sponge interactions, it implements three similarity methods to
construct sample-sample correlation network.")
    (license license:gpl3)))

(define-public r-mirsm
  (package
    (name "r-mirsm")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRSM" version))
       (sha256
        (base32 "1643mfcfa7a8zmn4pkrgxvr4qhzqwxh91rg8ww17vcqgli3imvf1"))))
    (properties `((upstream-name . "miRSM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wgcna
                             r-summarizedexperiment
                             r-sombrero
                             r-rqubic
                             r-rjava
                             r-reactomepa
                             r-rcpp
                             r-rcolorbrewer
                             r-ppclust
                             r-pma
                             r-org-hs-eg-db
                             r-nmf
                             r-mclust
                             r-mcl
                             r-matrixcorrelation
                             r-isa2
                             r-igraph
                             r-ibbig
                             r-gseabase
                             r-gfa
                             r-flashclust
                             r-fabia
                             r-energy
                             r-dynamictreecut
                             r-dose
                             r-dbscan
                             r-clusterprofiler
                             r-biobase
                             r-biclust
                             r-bicare))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zhangjunpeng411/miRSM")
    (synopsis "Inferring miRNA sponge modules in heterogeneous data")
    (description
     "The package aims to identify @code{miRNA} sponge or @code{ceRNA} modules in
heterogeneous data.  It provides several functions to study @code{miRNA} sponge
modules at single-sample and multi-sample levels, including popular methods for
inferring gene modules (candidate @code{miRNA} sponge or @code{ceRNA} modules),
and two functions to identify @code{miRNA} sponge modules at single-sample and
multi-sample levels, as well as several functions to conduct modular analysis of
@code{miRNA} sponge modules.")
    (license license:gpl3)))

(define-public r-mirnatarget
  (package
    (name "r-mirnatarget")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNATarget" version
                              'experiment))
       (sha256
        (base32 "0i3a3ibrkhi2xvcs1bv7vna1p67av686jfhd4hfscvnl6fzjngna"))))
    (properties `((upstream-name . "miRNATarget")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/miRNATarget")
    (synopsis
     "gene target tabale of miRNA for human/mouse used for MiRaGE package")
    (description
     "gene target tabale of @code{miRNA} for human/mouse used for @code{MiRaGE}
package.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite r-mirnatap r-dbi r-annotationdbi))
    (home-page "https://bioconductor.org/packages/miRNAtap.db")
    (synopsis "Data for miRNAtap")
    (description "This package holds the database for @code{miRNAtap}.")
    (license license:gpl2)))

(define-public r-mirnatap
  (package
    (name "r-mirnatap")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNAtap" version))
       (sha256
        (base32 "13grr33knsgimxb74nmsjahih33zxcq2i2b1ghzxz47c2pc7k721"))))
    (properties `((upstream-name . "miRNAtap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNApath" version))
       (sha256
        (base32 "09jdm41iqg9ivka8ypyqjfqd7rpm7g5llwk4y9r7jykhjwh2j6d0"))))
    (properties `((upstream-name . "miRNApath")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRNAmeConverter" version))
       (sha256
        (base32 "025590pfljckxp2bvb83g974sxi8zprbhgixkcglb5szxpvsr1j5"))))
    (properties `((upstream-name . "miRNAmeConverter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRLAB" version))
       (sha256
        (base32 "17sg5y6xk3szvjcn5cd2jq3n5p47df0hckk9pdzsc2ac7z7vvljr"))))
    (properties `((upstream-name . "miRLAB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-mirit
  (package
    (name "r-mirit")
    (version "1.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MIRit" version))
       (sha256
        (base32 "0jhvgdj2vmxzrdr7gbmlliq8p8pvm6h4z0mv721qdfq2cpxp5h67"))))
    (properties `((upstream-name . "MIRit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-rgraphviz
                             r-rcpp
                             r-multiassayexperiment
                             r-limma
                             r-httr
                             r-graphite
                             r-graph
                             r-ggpubr
                             r-ggplot2
                             r-geneset
                             r-genekitr
                             r-fgsea
                             r-edger
                             r-deseq2
                             r-biocparallel
                             r-biocfilecache
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jacopo-ronchi/MIRit")
    (synopsis
     "Integrate microRNA and gene expression to decipher pathway complexity")
    (description
     "MIRit is an R package that provides several methods for investigating the
relationships between @code{miRNAs} and genes in different biological
conditions.  In particular, MIRit allows to explore the functions of
dysregulated @code{miRNAs}, and makes it possible to identify @code{miRNA-gene}
regulatory axes that control biological pathways, thus enabling the users to
unveil the complexity of @code{miRNA} biology.  MIRit is an all-in-one framework
that aims to help researchers in all the central aspects of an integrative
@code{miRNA-mRNA} analyses, from differential expression analysis to network
characterization.")
    (license license:gpl3+)))

(define-public r-mirintegrator
  (package
    (name "r-mirintegrator")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mirIntegrator" version))
       (sha256
        (base32 "0y8xqjcfmz7f89501vmm4n94p88z61ibdz8jn1gl2csnp2i6p781"))))
    (properties `((upstream-name . "mirIntegrator")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRcompData" version
                              'experiment))
       (sha256
        (base32 "1vd7jm0pnav1npjz6h0b0m3nl5g6kahh0l71hlsncibyfa2fpdyz"))))
    (properties `((upstream-name . "miRcompData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRcomp" version))
       (sha256
        (base32 "0g2s82wzvd2zlzlgscwmyi918brklrjhb9b2fljxr8rc25hiy8sm"))))
    (properties `((upstream-name . "miRcomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite r-gtools r-dbi r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/miRBaseVersions.db")
    (synopsis
     "Collection of mature miRNA names of 22 different miRBase release versions")
    (description
     "Annotation package containing all available @code{miRNA} names from 22 versions
(data from http://www.mirbase.org/).")
    (license license:artistic2.0)))

(define-public r-mirbaseconverter
  (package
    (name "r-mirbaseconverter")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miRBaseConverter" version))
       (sha256
        (base32 "09710mz03lnvh45969nbzwdfl699yzmf745kwm8yzkl2djgipb6q"))))
    (properties `((upstream-name . "miRBaseConverter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/taoshengxu/miRBaseConverter")
    (synopsis
     "comprehensive and high-efficiency tool for converting and retrieving the information of miRNAs in different miRBase versions")
    (description
     "This package provides a comprehensive tool for converting and retrieving the
@code{miRNA} Name, Accession, Sequence, Version, History and Family information
in different @code{miRBase} versions.  It can process a huge number of
@code{miRNAs} in a short time without other depends.")
    (license license:gpl2+)))

(define-public r-mirage
  (package
    (name "r-mirage")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MiRaGE" version))
       (sha256
        (base32 "0zl37d9adbra11ma4pra78w76vfdli1ljs8sv729dyn2h2vmjh1q"))))
    (properties `((upstream-name . "MiRaGE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MIRA" version))
       (sha256
        (base32 "0984rwhhz19mc3q7y4cpcz0vzfaiw6n5i4x3qv0412bmivpjp2kh"))))
    (properties `((upstream-name . "MIRA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miQC" version))
       (sha256
        (base32 "1iw726i35icmzx7qjlh4gddng96h6yrzg6iy8pqi64ys4i1fvirb"))))
    (properties `((upstream-name . "miQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MiPP" version))
       (sha256
        (base32 "0y8dcf69c39capj45j276dhlcjxwvxny5bb5w4w9gp2l4gm3nraq"))))
    (properties `((upstream-name . "MiPP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-e1071 r-biobase))
    (home-page
     "http://www.healthsystem.virginia.edu/internet/hes/biostat/bioinformatics/")
    (synopsis "Misclassification Penalized Posterior Classification")
    (description
     "This package finds optimal sets of genes that seperate samples into two or more
classes.")
    (license license:gpl2+)))

(define-public r-minimumdistance
  (package
    (name "r-minimumdistance")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MinimumDistance" version))
       (sha256
        (base32 "15s7a7w78p29a4a8p408r887pnl3l6wcsj1zjh0hjwvirn13v4hi"))))
    (properties `((upstream-name . "MinimumDistance")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vanillaice
                             r-summarizedexperiment
                             r-seqinfo
                             r-s4vectors
                             r-oligoclasses
                             r-matrixstats
                             r-matrixgenerics
                             r-lattice
                             r-iranges
                             r-genomicranges
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

(define-public r-mineica
  (package
    (name "r-mineica")
    (version "1.49.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MineICA" version))
       (sha256
        (base32 "0fnlyrx6a1m8l2zqphlkdsqdkcl4h5mv2fan0ig23k0qcv7cxyzs"))))
    (properties `((upstream-name . "MineICA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mina" version))
       (sha256
        (base32 "1pqjir3f8r8rmhg78agccvc0yqwch1nyyanpps6r6d2qlhb5xd16"))))
    (properties `((upstream-name . "mina")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mimager" version))
       (sha256
        (base32 "081gpygmy0m9pgggznpcq2dw209vx76ip8ayyn9as699fpqiy1ks"))))
    (properties `((upstream-name . "mimager")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "midasHLA" version))
       (sha256
        (base32 "1naxs3khgnz937n7kjfszpryjfj0ymrrl1nyikz07myrkzn0cxam"))))
    (properties `((upstream-name . "midasHLA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MICSQTL" version))
       (sha256
        (base32 "1w8pffapjy26vmwvhh58890nj8pjb2105hdf4gmfvh4zn5rvr41c"))))
    (properties `((upstream-name . "MICSQTL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-micrornaome
  (package
    (name "r-micrornaome")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microRNAome" version
                              'experiment))
       (sha256
        (base32 "0yf0cysdkvfk0yjp1i14d0hi9pqz10v17qqq8afa8y8syqnrc0ay"))))
    (properties `((upstream-name . "microRNAome")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microRNA" version))
       (sha256
        (base32 "0bwgqbxqx4y84vazc9fa5p3jpys8wyq24wcs82rlha72y9527f9i"))))
    (properties `((upstream-name . "microRNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MicrobiotaProcess" version))
       (sha256
        (base32 "0lf3z2pcvvy905qanm2a7ryr2kb74rnghmn2ghq0669hqgdihh0x"))))
    (properties `((upstream-name . "MicrobiotaProcess")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MicrobiomeProfiler" version))
       (sha256
        (base32 "0qqv2vkag5a3rp2wcf3kxk99dwymd0p828g12v301d65g5jzlp93"))))
    (properties `((upstream-name . "MicrobiomeProfiler")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yulab-utils
                             r-shinywidgets
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

(define-public r-microbiomeexplorer
  (package
    (name "r-microbiomeexplorer")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microbiomeExplorer" version))
       (sha256
        (base32 "0kjbady0qdavjszs1vcb9gmri885mick26ml8426y513ng15h95c"))))
    (properties `((upstream-name . "microbiomeExplorer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microbiomeDataSets" version
                              'experiment))
       (sha256
        (base32 "1qwngw67dniv096na16z5j0wrm7vm70apmknmvp5icjai84fbl38"))))
    (properties `((upstream-name . "microbiomeDataSets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "microbiomeDASim" version))
       (sha256
        (base32 "1gwn93vd73fi8d2kgqkznc2gi52hywja7jdnzw8l16w4m5isjh2n"))))
    (properties `((upstream-name . "microbiomeDASim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MicrobiomeBenchmarkData" version
                              'experiment))
       (sha256
        (base32 "0lbxi4zrfg1bkgml65pv5z045q1aj9b7kibvm4y5dbwiysy8v37h"))))
    (properties `((upstream-name . "MicrobiomeBenchmarkData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MiChip" version))
       (sha256
        (base32 "0bjvg2jyfif03vx53xznhdnmx2s4nfv05l6kbq907rv84ji692b8"))))
    (properties `((upstream-name . "MiChip")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miaViz" version))
       (sha256
        (base32 "1zqicbb6bmx9whw0knmbf2z9ghypyrqf0rcjfvayfjb5gk404aba"))))
    (properties `((upstream-name . "miaViz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-treesummarizedexperiment
                             r-tidytree
                             r-tidytext
                             r-tidyr
                             r-tidygraph
                             r-tibble
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-scater
                             r-scales
                             r-s4vectors
                             r-rlang
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
    (home-page "https://github.com/microbiome/miaViz")
    (synopsis "Microbiome Analysis Plotting and Visualization")
    (description
     "The @code{miaViz} package implements functions to visualize
@code{TreeSummarizedExperiment} objects especially in the context of microbiome
analysis.  Part of the mia family of R/Bioconductor packages.")
    (license (list license:artistic2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-miatime
  (package
    (name "r-miatime")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miaTime" version))
       (sha256
        (base32 "1glkmlf7vcbvvn9zscq79npcysyws2rj6ww70sbgpl98jbfnla4b"))))
    (properties `((upstream-name . "miaTime")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-treesummarizedexperiment
                             r-tidyr
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-mia
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/microbiome/miaTime")
    (synopsis "Microbiome Time Series Analysis")
    (description
     "The `@code{miaTime`} package provides tools for microbiome time series analysis
based on (Tree)@code{SummarizedExperiment} infrastructure.")
    (license (list license:artistic2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-miasim
  (package
    (name "r-miasim")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miaSim" version))
       (sha256
        (base32 "0smnz25wq9vjpf7a86awfwp519ivc44d91ifj85g20priv6aj65m"))))
    (properties `((upstream-name . "miaSim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-miadash
  (package
    (name "r-miadash")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "miaDash" version))
       (sha256
        (base32 "0xjb277vl403f968f2lxasp6xvid7iai6wgng67q6c0a4y5fhzli"))))
    (properties `((upstream-name . "miaDash")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-treesummarizedexperiment
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-shinywidgets
                             r-shinyjs
                             r-shinydashboard
                             r-shiny
                             r-scuttle
                             r-scater
                             r-s4vectors
                             r-rintrojs
                             r-mia
                             r-iseetree
                             r-isee
                             r-htmltools
                             r-bluster
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/microbiome/miaDash")
    (synopsis
     "Dashboard for the interactive analysis and exploration of microbiome data")
    (description
     "@code{miaDash} provides a Graphical User Interface for the exploration of
microbiome data.  This way, no knowledge of programming is required to perform
analyses.  Datasets can be imported, manipulated, analysed and visualised with a
user-friendly interface.")
    (license license:artistic2.0)))

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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mi16cod.db")
    (synopsis
     "Codelink Mouse Inflammation 16 Bioarray annotation data (chip mi16cod)")
    (description
     "Codelink Mouse Inflammation 16 Bioarray annotation data (chip mi16cod) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgug4122a.db")
    (synopsis
     "Agilent \"Mouse Genome, Whole\" annotation data (chip mgug4122a)")
    (description
     "Agilent \"Mouse Genome, Whole\" annotation data (chip mgug4122a) assembled using
data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgug4121a.db")
    (synopsis "Agilent Mouse annotation data (chip mgug4121a)")
    (description
     "Agilent Mouse annotation data (chip mgug4121a) assembled using data from public
repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgug4120a.db")
    (synopsis "Agilent annotation data (chip mgug4120a)")
    (description
     "Agilent annotation data (chip mgug4120a) assembled using data from public
repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgug4104a.db")
    (synopsis "Agilent annotation data (chip mgug4104a)")
    (description
     "Agilent annotation data (chip mgug4104a) assembled using data from public
repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mguatlas5k.db")
    (synopsis
     "Clontech BD Atlas Long Oligos Mouse 5K annotation data (chip mguatlas5k)")
    (description
     "Clontech BD Atlas Long Oligos Mouse 5K annotation data (chip mguatlas5k)
assembled using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74cv2.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74Cv2 Array annotation data (chip mgu74cv2)")
    (description
     "Affymetrix Affymetrix MG_U74Cv2 Array annotation data (chip mgu74cv2) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74c.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74C Array annotation data (chip mgu74c)")
    (description
     "Affymetrix Affymetrix MG_U74C Array annotation data (chip mgu74c) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74bv2.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74Bv2 Array annotation data (chip mgu74bv2)")
    (description
     "Affymetrix Affymetrix MG_U74Bv2 Array annotation data (chip mgu74bv2) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74b.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74B Array annotation data (chip mgu74b)")
    (description
     "Affymetrix Affymetrix MG_U74B Array annotation data (chip mgu74b) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74av2.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74Av2 Array annotation data (chip mgu74av2)")
    (description
     "Affymetrix Affymetrix MG_U74Av2 Array annotation data (chip mgu74av2) assembled
using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/mgu74a.db")
    (synopsis
     "Affymetrix Affymetrix MG_U74A Array annotation data (chip mgu74a)")
    (description
     "Affymetrix Affymetrix MG_U74A Array annotation data (chip mgu74a) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-mgsa
  (package
    (name "r-mgsa")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mgsa" version))
       (sha256
        (base32 "0cfhqjf86p9c00c1nn0yy9zqgqxs3v8wikp1k3jidpd1fq6g778n"))))
    (properties `((upstream-name . "mgsa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gplots))
    (home-page "https://github.com/sba1/mgsa-bioc")
    (synopsis "Model-based gene set analysis")
    (description
     "Model-based Gene Set Analysis (MGSA) is a Bayesian modeling approach for gene
set enrichment.  The package mgsa implements MGSA and tools to use MGSA together
with the Gene Ontology.")
    (license license:artistic2.0)))

(define-public r-mgnifyr
  (package
    (name "r-mgnifyr")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MGnifyR" version))
       (sha256
        (base32 "1ncrrz82j7g86j2irsj1c09kx51rfv5ic0r6igqj1id1chnmr1px"))))
    (properties `((upstream-name . "MGnifyR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-urltools
                             r-treesummarizedexperiment
                             r-summarizedexperiment
                             r-s4vectors
                             r-reshape2
                             r-plyr
                             r-multiassayexperiment
                             r-mia
                             r-httr
                             r-dplyr
                             r-biocgenerics
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EBI-Metagenomics/MGnifyR")
    (synopsis "R interface to EBI MGnify metagenomics resource")
    (description
     "Utility package to facilitate integration and analysis of EBI MGnify data in R.
The package can be used to import microbial data for instance into
@code{TreeSummarizedExperiment} (@code{TreeSE}).  In @code{TreeSE} format, the
data is directly compatible with miaverse framework.")
    (license (list license:artistic2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-mgfm
  (package
    (name "r-mgfm")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MGFM" version))
       (sha256
        (base32 "0bjnjpdba75wlsw9n17vywa09g5d0n741wlxmn2f61hipn6ajzgr"))))
    (properties `((upstream-name . "MGFM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi r-annotate))
    (home-page "https://bioconductor.org/packages/MGFM")
    (synopsis "Marker Gene Finder in Microarray gene expression data")
    (description
     "The package is designed to detect marker genes from Microarray gene expression
data sets.")
    (license license:gpl3)))

(define-public r-metnet
  (package
    (name "r-metnet")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetNet" version))
       (sha256
        (base32 "0wj31qhyg0yn1cviprn3y6411rgl5sj0ns4iin3qc53qf4ypjspc"))))
    (properties `((upstream-name . "MetNet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-metmashr
  (package
    (name "r-metmashr")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetMashR" version))
       (sha256
        (base32 "0cr1zklx33ssrf5l51rn41kvaihnnil8yg03l6rps9cd74rclkq0"))))
    (properties `((upstream-name . "MetMashR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-struct
                             r-scales
                             r-rlang
                             r-httr
                             r-ggthemes
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://computational-metabolomics.github.io/MetMashR/")
    (synopsis "Metabolite Mashing with R")
    (description
     "This package provides a package to merge, filter sort, organise and otherwise
mash together metabolite annotation tables.  Metabolite annotations can be
imported from multiple sources (software) and combined using workflow steps
based on S4 class templates derived from the `struct` package.  Other modular
workflow steps such as filtering, merging, splitting, normalisation and rest-api
queries are included.")
    (license license:gpl3)))

(define-public r-metid
  (package
    (name "r-metid")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetID" version))
       (sha256
        (base32 "1xh0y6k6ik9nzy1wrzfr8b255194b26jibflgdi4vzn3hbm2z30p"))))
    (properties `((upstream-name . "MetID")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylSig" version))
       (sha256
        (base32 "155dky5z1gdrkns96hr8vvrickidwsjzk5z0c75rkfnqhk8dqjg6"))))
    (properties `((upstream-name . "methylSig")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinfo
                             r-s4vectors
                             r-iranges
                             r-genomicranges
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethylSeqData" version
                              'experiment))
       (sha256
        (base32 "1lifp6c8g9zigmx37jg2bpaj18rma5bhg01hyhys0spxhg9333qb"))))
    (properties `((upstream-name . "MethylSeqData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethylSeekR" version))
       (sha256
        (base32 "00i0g5xxdd7xf268nqsl76im6d5za3h9apx2dsdyvjdrkn8shg98"))))
    (properties `((upstream-name . "MethylSeekR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtracklayer
                             r-mhsmm
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-geneplotter
                             r-bsgenome))
    (home-page "https://bioconductor.org/packages/MethylSeekR")
    (synopsis "Segmentation of Bis-seq data")
    (description
     "This is a package for the discovery of regulatory regions from Bis-seq data.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-methylscaper
  (package
    (name "r-methylscaper")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylscaper" version))
       (sha256
        (base32 "1g2h09ivqrgm52dv5nr2pbrwk94h58s9f7inc0wilj8miv9iby91"))))
    (properties `((upstream-name . "methylscaper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-shinyjs
                             r-shinyfiles
                             r-shiny
                             r-seriation
                             r-seqinr
                             r-rfast
                             r-pwalign
                             r-data-table
                             r-biostrings
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhondabacher/methylscaper/")
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylPipe" version))
       (sha256
        (base32 "1lzkpc54j4idw1zcfj7cbjq42in25f4nk8cvkif5w0a6z0h4djjn"))))
    (properties `((upstream-name . "methylPipe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-marray
                             r-iranges
                             r-gviz
                             r-gplots
                             r-genomicranges
                             r-genomicalignments
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylMnM" version))
       (sha256
        (base32 "0h946n923mqmcbvbs2lrxh9wdnwhxg7nmbhhq0nd1na480bqa6cb"))))
    (properties `((upstream-name . "methylMnM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethylMix" version))
       (sha256
        (base32 "1wdmq8jdnd37wrasdrfmy6xskpw2h6w2g3a514f0zn3m3fc7wpqv"))))
    (properties `((upstream-name . "MethylMix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylInheritance" version))
       (sha256
        (base32 "1b6i1szvzh9bc4hryq8czmz7c5l70aqc8i2lrzhf40sga7iahg6q"))))
    (properties `((upstream-name . "methylInheritance")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-methylimp2
  (package
    (name "r-methylimp2")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methyLImp2" version))
       (sha256
        (base32 "1800chr3r65iqpdjxymqd6sjg81ckvv841ycdad1xrpva9g6dv8g"))))
    (properties `((upstream-name . "methyLImp2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-corpcor r-champdata
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/annaplaksienko/methyLImp2")
    (synopsis "Missing value estimation of DNA methylation data")
    (description
     "This package allows to estimate missing values in DNA methylation data.
@code{methyLImp} method is based on linear regression since methylation levels
show a high degree of inter-sample correlation.  Implementation is parallelised
over chromosomes since probes on different chromosomes are usually independent.
Mini-batch approach to reduce the runtime in case of large number of samples is
available.")
    (license license:gpl3)))

(define-public r-methylgsa
  (package
    (name "r-methylgsa")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylGSA" version))
       (sha256
        (base32 "0980n655ahjadi3d052x5mf7w6n9m79ly9188if9d9dqq9ggmncn"))))
    (properties `((upstream-name . "methylGSA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylclock" version))
       (sha256
        (base32 "0kxdygwna7qxnk6v29aj8b5n43vhag61sjkd761vy76ngxvs202c"))))
    (properties `((upstream-name . "methylclock")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.24.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methylCC" version))
       (sha256
        (base32 "1ki7z7f99m45b4nd6bcq8f5v8zwkhsski34mr8srk12fay92j28f"))))
    (properties `((upstream-name . "methylCC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-quadprog
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

(define-public r-methtargetedngs
  (package
    (name "r-methtargetedngs")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethTargetedNGS" version))
       (sha256
        (base32 "0mjq3q8q43p5gni40z5xlkhgpdxnphwi8xjrqc9gjwwqbra5986l"))))
    (properties `((upstream-name . "MethTargetedNGS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list hmmer))
    (propagated-inputs (list r-stringr r-seqinr r-pwalign r-gplots
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/MethTargetedNGS")
    (synopsis
     "Perform Methylation Analysis on Next Generation Sequencing Data")
    (description
     "Perform step by step methylation analysis of Next Generation Sequencing data.")
    (license license:artistic2.0)))

(define-public r-methrix
  (package
    (name "r-methrix")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methrix" version))
       (sha256
        (base32 "1jlbk6yb9815xrgar9nc8g8qzl93451gcx6smr7s2agzxnpxi8vz"))))
    (properties `((upstream-name . "methrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethReg" version))
       (sha256
        (base32 "049cs12928mfmllqrrywmdk956ai7wsgxf4k093mh810g3qg1fwb"))))
    (properties `((upstream-name . "MethReg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-tfbstools
                             r-summarizedexperiment
                             r-stringr
                             r-sfsmisc
                             r-sesamedata
                             r-sesame
                             r-s4vectors
                             r-rsqlite
                             r-rlang
                             r-readr
                             r-pscl
                             r-progress
                             r-plyr
                             r-openxlsx
                             r-matrix
                             r-mass
                             r-jaspar2024
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MethPed" version))
       (sha256
        (base32 "18ld9iq0kxzc2igran2jr8w3jrj1k73p5i0lx8dgl58kdbg18ycj"))))
    (properties `((upstream-name . "MethPed")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-methodical
  (package
    (name "r-methodical")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methodical" version))
       (sha256
        (base32 "14mrc00ya5a372j5q2rrxxp54cbwridaz2b5mm45wqvwgms6bvg5"))))
    (properties `((upstream-name . "methodical")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (inputs (list kallisto))
    (propagated-inputs (list r-usethis
                             r-tumourmethdata
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rhdf5
                             r-remotes
                             r-rcpproll
                             r-rcmdcheck
                             r-r-utils
                             r-matrixgenerics
                             r-knitr
                             r-iranges
                             r-hdf5array
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-foreach
                             r-experimenthub
                             r-dplyr
                             r-devtools
                             r-delayedarray
                             r-data-table
                             r-cowplot
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bsgenome
                             r-biostrings
                             r-biocstyle
                             r-biocparallel
                             r-biocmanager
                             r-bioccheck
                             r-annotatr
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/richardheery/methodical")
    (synopsis
     "Discovering genomic regions where methylation is strongly associated with transcriptional activity")
    (description
     "DNA methylation is generally considered to be associated with transcriptional
silencing.  However, comprehensive, genome-wide investigation of this
relationship requires the evaluation of potentially millions of correlation
values between the methylation of individual genomic loci and expression of
associated transcripts in a relatively large numbers of samples.  Methodical
makes this process quick and easy while keeping a low memory footprint.  It also
provides a novel method for identifying regions where a number of methylation
sites are consistently strongly associated with transcriptional expression.  In
addition, Methodical enables housing DNA methylation data from diverse sources
(e.g. WGBS, RRBS and methylation arrays) with a common framework, lifting over
DNA methylation data between different genome builds and creating
base-resolution plots of the association between DNA methylation and
transcriptional activity at transcriptional start sites.")
    (license license:gpl3+)))

(define-public r-methinheritsim
  (package
    (name "r-methinheritsim")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methInheritSim" version))
       (sha256
        (base32 "1j53b5d3wfkj0i84sq0aj6nx9adiavjg64bh0xwaq78n7qn6sbm6"))))
    (properties `((upstream-name . "methInheritSim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinfo
                             r-s4vectors
                             r-msm
                             r-methylkit
                             r-iranges
                             r-genomicranges
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "methimpute" version))
       (sha256
        (base32 "0zl945lhl291fsbdwgdyqlc3fy8i7z4bn2a21p2j0ald11s63x6d"))))
    (properties `((upstream-name . "methimpute")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetCirc" version))
       (sha256
        (base32 "15zwkgwqnpndlpw9pqd5mkfbmcdb1aa331fvkkhxzdgcd5zq7a49"))))
    (properties `((upstream-name . "MetCirc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaseqR2" version))
       (sha256
        (base32 "01s9gpndc1skpq69wdsm1kgcz7n4i1zm38g731zphhnw4w3kad54"))))
    (properties `((upstream-name . "metaseqR2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-vsn
                             r-venndiagram
                             r-txdbmaker
                             r-survcomp
                             r-summarizedexperiment
                             r-stringr
                             r-seqinfo
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
    (native-inputs (list r-knitr esbuild))
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaSeq" version))
       (sha256
        (base32 "1jz4fyspc7pvrddm40xp79d3bh0agiqx68sp4i2y3cbrzba2y5xq"))))
    (properties `((upstream-name . "metaSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snow r-rcpp r-noiseq))
    (home-page "https://bioconductor.org/packages/metaSeq")
    (synopsis "Meta-analysis of RNA-Seq count data in multiple studies")
    (description
     "The probabilities by one-sided NOISeq are combined by Fisher's method or
Stouffer's method.")
    (license license:artistic2.0)))

(define-public r-metascope
  (package
    (name "r-metascope")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaScope" version
                              'experiment))
       (sha256
        (base32 "0dx4c9grcx2amazi1h2365kf4x0n3vj1qw0nsqq8dclxdfqlvbvf"))))
    (properties `((upstream-name . "MetaScope")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-taxonomizr
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-readr
                             r-rbowtie2
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metapone" version))
       (sha256
        (base32 "13bblag8w907qddcvbaqjvlqpbyj23c5jb1cghkajqpf1pn3gmdl"))))
    (properties `((upstream-name . "metapone")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaPhOR" version))
       (sha256
        (base32 "1lwb3ksf0yrdwzv9b0azcnn2fng4vrkwls3ds8bqaq6bn2n3pkxk"))))
    (properties `((upstream-name . "MetaPhOR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaMSdata" version
                              'experiment))
       (sha256
        (base32 "0wkc0cx11444xxijsmwp0qx55rmfpw60cl3z5vxk3dg0vv253jl6"))))
    (properties `((upstream-name . "metaMSdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/metaMSdata")
    (synopsis "Example CDF data for the metaMS package")
    (description "Example CDF data for the @code{metaMS} package.")
    (license license:gpl2+)))

(define-public r-metams
  (package
    (name "r-metams")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaMS" version))
       (sha256
        (base32 "0cymdlv8sjamcs82k3xcjykhfin5fqyyamz8xwrj19pxa2hfr7x9"))))
    (properties `((upstream-name . "metaMS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metahdep" version))
       (sha256
        (base32 "09rxii0nsrckkr383192sn926s45zc5wpds9rv04fz4f47m1s2qy"))))
    (properties `((upstream-name . "metahdep")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/metahdep")
    (synopsis "Hierarchical Dependence in Meta-Analysis")
    (description
     "This package provides tools for meta-analysis in the presence of hierarchical
(and/or sampling) dependence, including with gene expression studies.")
    (license license:gpl3)))

(define-public r-metagxpancreas
  (package
    (name "r-metagxpancreas")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaGxPancreas" version
                              'experiment))
       (sha256
        (base32 "0bs69iix53w2wymhb7bm7r976s64ivgzzwfmdglih7isjbmpsy48"))))
    (properties `((upstream-name . "MetaGxPancreas")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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

(define-public r-metagxbreast
  (package
    (name "r-metagxbreast")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaGxBreast" version
                              'experiment))
       (sha256
        (base32 "0sl6i50mklix2pci65gkvh5qbrh21agi9a7l86il29kxvxrl92hk"))))
    (properties `((upstream-name . "MetaGxBreast")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metagene2" version))
       (sha256
        (base32 "0a9kmm66qpgf1n8jj7h0c05h2vdkg7kw9lc190dyv9hk6fy542m1"))))
    (properties `((upstream-name . "metagene2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-metadict
  (package
    (name "r-metadict")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaDICT" version))
       (sha256
        (base32 "00afs37df59wc0yjxd3diskcxfyc2zjcv5nycvr5sv8bizlh0cx5"))))
    (properties `((upstream-name . "MetaDICT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-vegan
                             r-rann
                             r-matrixstats
                             r-igraph
                             r-ggpubr
                             r-ggplot2
                             r-edger
                             r-ecodist
                             r-cluster
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BoYuan07/MetaDICT")
    (synopsis
     "Microbiome data integration method via shared dictionary learning")
    (description
     "@code{MetaDICT} is a method for the integration of microbiome data.  This method
is designed to remove batch effects and preserve biological variation while
integrating heterogeneous datasets. @code{MetaDICT} can better avoid
overcorrection when unobserved confounding variables are present.")
    (license license:artistic2.0)))

(define-public r-metacyto
  (package
    (name "r-metacyto")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaCyto" version))
       (sha256
        (base32 "1km53r657jfjipiq88nir9s6qwdl4c1mw8mldhimdy8hm6kf7mqx"))))
    (properties `((upstream-name . "MetaCyto")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metaCCA" version))
       (sha256
        (base32 "1jzh9qr66wzrnz5c5xsv9y414nm62ziph2ldcd8fachvqc7wwnls"))))
    (properties `((upstream-name . "metaCCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaboSignal" version))
       (sha256
        (base32 "07lxxxxn3h2ilrg436dgq0754s1xkkz9md91j89jwv0h4kpr22vj"))))
    (properties `((upstream-name . "MetaboSignal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metabomxtr" version))
       (sha256
        (base32 "1rmxjnx22kr08ppazpsjb5nmq0ji4wj73kmxn0pd5ixivwkz1bin"))))
    (properties `((upstream-name . "metabomxtr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metabolomicsWorkbenchR" version))
       (sha256
        (base32 "0p630gz24yfma7fxxp7yyqfqic0gnh1z6wx5m8wv7xi715zx5brp"))))
    (properties `((upstream-name . "metabolomicsWorkbenchR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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

(define-public r-metabodynamics
  (package
    (name "r-metabodynamics")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaboDynamics" version))
       (sha256
        (base32 "1lpd5wjkn8dqyfga7fc9gslca1g3p1lfk7lb5vif5d49ar6wz1in"))))
    (properties `((upstream-name . "MetaboDynamics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-stringr
                             r-stanheaders
                             r-s4vectors
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-patchwork
                             r-keggrest
                             r-ggtree
                             r-ggplot2
                             r-dynamictreecut
                             r-dplyr
                             r-bh
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KatjaDanielzik/MetaboDynamics")
    (synopsis "Bayesian analysis of longitudinal metabolomics data")
    (description
     "@code{MetaboDynamics} is an R-package that provides a framework of probabilistic
models to analyze longitudinal metabolomics data.  It enables robust estimation
of mean concentrations despite varying spread between timepoints and reports
differences between timepoints as well as metabolite specific dynamics profiles
that can be used for identifying \"dynamics clusters\" of metabolites of similar
dynamics.  Provides probabilistic over-representation analysis of KEGG
functional modules and pathways as well as comparison between clusters of
different experimental conditions.")
    (license license:gpl3+)))

(define-public r-metaboannotation
  (package
    (name "r-metaboannotation")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MetaboAnnotation" version))
       (sha256
        (base32 "07b72g2l2j16a3q6cl3fnpjk2v0iw92c1jb21hyhrs9lxvalsvqz"))))
    (properties `((upstream-name . "MetaboAnnotation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metabinR" version))
       (sha256
        (base32 "0pda023fw6qbybp68p9mmcxr9slf24fsqf9agsn4b9207pmr20pp"))))
    (properties `((upstream-name . "metabinR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "metabCombiner" version))
       (sha256
        (base32 "1v771vqpjpxx7yng1hnci7nrxqbxzv3ns471r1nl1svjghngklmm"))))
    (properties `((upstream-name . "metabCombiner")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "messina" version))
       (sha256
        (base32 "0n1jjiqhpgrnbs7nnp0sf281xlz1i0rxk2957fdlwa8f602akg3y"))))
    (properties `((upstream-name . "messina")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MesKit" version))
       (sha256
        (base32 "1x1s2ylbjd6mbq6498sj992ik44ipyi4rpnwwd4nj3q212dcx9wf"))))
    (properties `((upstream-name . "MesKit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "meshr" version))
       (sha256
        (base32 "0lqj3yh2kyapjvbgh8w1bwdj96dhzxxs3zyqz2r6his0b28kdjfr"))))
    (properties `((upstream-name . "meshr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "meshes" version))
       (sha256
        (base32 "01mm15crzsg6z7j5ww93ig557j272vk9bgfihbgvi4da8zmasv8c"))))
    (properties `((upstream-name . "meshes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MeSHDbi" version))
       (sha256
        (base32 "1cxigmicaxqjrg8n36v2db4a806j8qx3iank7r17hxgniq5q8zh4"))))
    (properties `((upstream-name . "MeSHDbi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Mergeomics" version))
       (sha256
        (base32 "0gvcvxh7aycmq5svwmn9vxjibcgpksv28irgal2m101vsjngmzx8"))))
    (properties `((upstream-name . "Mergeomics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MerfishData" version
                              'experiment))
       (sha256
        (base32 "0nc5cq7c9izxnssjkilk4hdh5hbbfx50raq7pp17d1k0p46cwz5d"))))
    (properties `((upstream-name . "MerfishData")))
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
                             r-hdf5array
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "memes" version))
       (sha256
        (base32 "14gwcrpxwgz0amgm25l00x129kln3fd40if2r1qgvbmlff1cx9sq"))))
    (properties `((upstream-name . "memes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-meigor
  (package
    (name "r-meigor")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEIGOR" version))
       (sha256
        (base32 "1ybv8q9q9k84vnhy57zxisy1r8ya0555c77mcjrziqlzvw6zf1fr"))))
    (properties `((upstream-name . "MEIGOR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snowfall r-rsolnp r-desolve r-cnorode))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/MEIGOR")
    (synopsis "MEIGOR - MEtaheuristics for bIoinformatics Global Optimization")
    (description
     "MEIGOR provides a comprehensive environment for performing global optimization
tasks in bioinformatics and systems biology.  It leverages advanced
metaheuristic algorithms to efficiently search the solution space and is
specifically tailored to handle the complexity and high-dimensionality of
biological datasets.  This package supports various optimization routines and is
integrated with Bioconductor's infrastructure for a seamless analysis workflow.")
    (license license:gpl3)))

(define-public r-meebodata
  (package
    (name "r-meebodata")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEEBOdata" version
                              'experiment))
       (sha256
        (base32 "11ijkxbns273a1j5v01fcj22s4gxnvysfwrxk1dk0l0z7yxb849p"))))
    (properties `((upstream-name . "MEEBOdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/MEEBOdata")
    (synopsis "MEEBO set and MEEBO controls")
    (description "R objects describing the MEEBO set.")
    (license license:lgpl2.0+)))

(define-public r-medme
  (package
    (name "r-medme")
    (version "1.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEDME" version))
       (sha256
        (base32 "13lngv3q33kirygkw7spxyn6bff58fglxzkifficxz2z9d3n2q9y"))))
    (properties `((upstream-name . "MEDME")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-drc r-biostrings))
    (home-page "https://bioconductor.org/packages/MEDME")
    (synopsis "Modelling Experimental Data from MeDIP Enrichment")
    (description
     "MEDME allows the prediction of absolute and relative methylation levels based on
measures obtained by @code{MeDIP-microarray} experiments.")
    (license license:gpl2+)))

(define-public r-medipsdata
  (package
    (name "r-medipsdata")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEDIPSData" version
                              'experiment))
       (sha256
        (base32 "1ih626dm019lyz0xk8qqwxpx93d7gy710b5vc855f512xjgd6qr2"))))
    (properties `((upstream-name . "MEDIPSData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEDIPS" version))
       (sha256
        (base32 "1cwisrklpzna284vgnllpm5f950w3kq45rngjqi4mdngpj5mq1lf"))))
    (properties `((upstream-name . "MEDIPS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEB" version))
       (sha256
        (base32 "049bbl5hpy3c49vp7dssfg75rvbhbpg6zccnjx4dsr68nxmqqxmp"))))
    (properties `((upstream-name . "MEB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEAT" version))
       (sha256
        (base32 "1l8v3i99wkvan1fi9d2g62d1pq5j2kvk13bf9hp4wdqqfb3rg62n"))))
    (properties `((upstream-name . "MEAT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MeasurementError.cor" version))
       (sha256
        (base32 "1hkpa8wisx29cz8n5m1w0vb7nbz1vbxpca6m3zja245zi6ifqbz9"))))
    (properties `((upstream-name . "MeasurementError.cor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/MeasurementError.cor")
    (synopsis "Measurement Error model estimate for correlation coefficient")
    (description
     "Two-stage measurement error model for correlation estimation with smaller bias
than the usual sample correlation.")
    (license license:lgpl2.0+)))

(define-public r-meal
  (package
    (name "r-meal")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MEAL" version))
       (sha256
        (base32 "0vc1zz5x4d004k0hdglzv0cjz1y8w6n8568ns801x5dyhj651ywf"))))
    (properties `((upstream-name . "MEAL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MDTS" version))
       (sha256
        (base32 "1j2k9hvl9h16c4vc59q4v1n9xrqiilk0rkxvj5pgy5vihh90nlnj"))))
    (properties `((upstream-name . "MDTS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mdp" version))
       (sha256
        (base32 "1r0m5700kqnq9g0lbsgk6iv96vkriwqlk6k2jk5igdlhww75hkwq"))))
    (properties `((upstream-name . "mdp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mcsurvdata" version
                              'experiment))
       (sha256
        (base32 "1yg39bq5g1yc3bgnfkzwdbhvw1y5yq47370rp2hpff5z1gbikp4g"))))
    (properties `((upstream-name . "mcsurvdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mCSEAdata" version
                              'experiment))
       (sha256
        (base32 "1zz13hnk129ic8n5brrbbwz44v6vqihp1r49zdanqf5r12a5vfdz"))))
    (properties `((upstream-name . "mCSEAdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mCSEA" version))
       (sha256
        (base32 "078yckgsfq4mj0fxqn0d3j9wd9rh4qirsjr6xjjmcjmk9yvw9zgy"))))
    (properties `((upstream-name . "mCSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MCbiclust" version))
       (sha256
        (base32 "15sr0m29nw0ypiqj4hr1axxkghyn5iclr3p9s763ixkiiqakbppy"))))
    (properties `((upstream-name . "MCbiclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBttest" version))
       (sha256
        (base32 "0531zxc51fp1cc9jb5c8vlvki4f5vqlgqnjag9zx5n62c2ik37fq"))))
    (properties `((upstream-name . "MBttest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mbQTL" version))
       (sha256
        (base32 "0mbi87d12yjfdbrplc4906i6hm7nifsy7ar3wi8fgwjs220r38df"))))
    (properties `((upstream-name . "mbQTL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBQN" version))
       (sha256
        (base32 "0i1qdssiicjwxll12avyshmd6sy3rjxilxgihx9xv70wpkl8x18i"))))
    (properties `((upstream-name . "MBQN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mBPCR" version))
       (sha256
        (base32 "0xl7si4d3r3akfqym9v2kxrsji1gzdm6wlyan1lclqjdb3qlwai9"))))
    (properties `((upstream-name . "mBPCR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBCB" version))
       (sha256
        (base32 "1nkjkp5gmyjsa07av154hrwb6slykzl2ls9f9y6417qhni5xznhv"))))
    (properties `((upstream-name . "MBCB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tcltk2 r-preprocesscore))
    (home-page "https://qbrc.swmed.edu/")
    (synopsis "MBCB (Model-based Background Correction for Beadarray)")
    (description
     "This package provides a model-based background correction method, which
incorporates the negative control beads to pre-process Illumina @code{BeadArray}
data.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-mbased
  (package
    (name "r-mbased")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBASED" version))
       (sha256
        (base32 "07kkwigxg2d0c3vz3zf4vqim4b2gsv5fsk7z8pbcjjpbbf5dr392"))))
    (properties `((upstream-name . "MBASED")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MBAmethyl" version))
       (sha256
        (base32 "0fcdp6jbk6bjha9jm6lp6g99yyalsdhlzwdr5jalfhddbag5bsr9"))))
    (properties `((upstream-name . "MBAmethyl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "matter" version))
       (sha256
        (base32 "0r8jpxx3zr498fj890l34rwidmq3zgyq289f7dblfkz70ma6j47i"))))
    (properties `((upstream-name . "matter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-protgenerics
                             r-matrix
                             r-irlba
                             r-digest
                             r-biocparallel
                             r-biocgenerics
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kuwisdelu/matter")
    (synopsis "Out-of-core statistical computing and signal processing")
    (description
     "Toolbox for larger-than-memory scientific computing and visualization, providing
efficient out-of-core data structures using files or shared memory, for dense
and sparse vectors, matrices, and arrays, with applications to nonuniformly
sampled signals and images.")
    (license (list license:artistic2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-matrixrider
  (package
    (name "r-matrixrider")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MatrixRider" version))
       (sha256
        (base32 "11nqdvaxnf49i57lf3gd3xcni6ybhjxsxsm0m1w0xl1isgvc451m"))))
    (properties `((upstream-name . "MatrixRider")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MatrixQCvis" version))
       (sha256
        (base32 "1v2vx6vlk6s7i1zb3h24wq3hnqffi9fwf93fibcwsfzl2kdwf9bi"))))
    (properties `((upstream-name . "MatrixQCvis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-vsn
                             r-upsetr
                             r-umap
                             r-tidyr
                             r-tibble
                             r-sva
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
                             r-dt
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
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "matchBox" version))
       (sha256
        (base32 "11gsigii003rjcqpp2ia85pwwpf36j8q6wr1w94ya7874gxcrkgq"))))
    (properties `((upstream-name . "matchBox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mastR" version))
       (sha256
        (base32 "1hsw86yazv3x0q7mbfmqa89gyp2wbj6c6sailv0ykprgyvd7z42s"))))
    (properties `((upstream-name . "mastR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "massiR" version))
       (sha256
        (base32 "0dgzld48idxxfxghq4q4c8gpn6szhg7l54cm349jp5wwi7fwk6gq"))))
    (properties `((upstream-name . "massiR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gplots r-diptest r-cluster r-biobase))
    (home-page "https://bioconductor.org/packages/massiR")
    (synopsis "massiR: MicroArray Sample Sex Identifier")
    (description
     "Predicts the sex of samples in gene expression microarray datasets.")
    (license license:gpl3)))

(define-public r-massarray
  (package
    (name "r-massarray")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MassArray" version))
       (sha256
        (base32 "1kzxrq4f7fi3q538zq0pbn7s28mdh0fp9l8ipgwfdyiwkhsmp4i2"))))
    (properties `((upstream-name . "MassArray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maskBAD" version))
       (sha256
        (base32 "0fcbj4v8k5na9iina6458ngk79mq3q147g6x5yj3k65gyy6ik0i7"))))
    (properties `((upstream-name . "maskBAD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gcrma r-affy))
    (home-page "https://bioconductor.org/packages/maskBAD")
    (synopsis "Masking probes with binding affinity differences")
    (description
     "Package includes functions to analyze and mask microarray expression data.")
    (license license:gpl2+)))

(define-public r-masigpro
  (package
    (name "r-masigpro")
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maSigPro" version))
       (sha256
        (base32 "13l7nasczy4nyqwyrvcw3ki575phjz7rcc4127qvkx0cbxkvmkha"))))
    (properties `((upstream-name . "maSigPro")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "martini" version))
       (sha256
        (base32 "1j44n3qi1gls2dn8zhx8p8k18z95bqnmi6a88divl2xlxv9q520q"))))
    (properties `((upstream-name . "martini")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "marr" version))
       (sha256
        (base32 "1q89n1pzzf5w742aqgcygcid0dnx8vn8z1ygkl1q9ldpdyanpmg0"))))
    (properties `((upstream-name . "marr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-marker
  (package
    (name "r-marker")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "markeR" version))
       (sha256
        (base32 "1k51rp13y8cq0p0kxsbzcvz1dmarw02ifvf784nq2d1a1v7qzda2"))))
    (properties `((upstream-name . "markeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-scales
                             r-rstatix
                             r-reshape2
                             r-rcolorbrewer
                             r-proc
                             r-msigdbr
                             r-limma
                             r-gridextra
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-ggh4x
                             r-fgsea
                             r-effectsize
                             r-edger
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://diseasetranscriptomicslab.github.io/markeR/")
    (synopsis
     "An R Toolkit for Evaluating Gene Signatures as Phenotypic Markers")
    (description
     "@code{markeR} is an R package that provides a modular and extensible framework
for the systematic evaluation of gene sets as phenotypic markers using
transcriptomic data.  The package is designed to support both quantitative
analyses and visual exploration of gene set behaviour across experimental and
clinical phenotypes.  It implements multiple methods, including score-based and
enrichment approaches, and also allows the exploration of expression behaviour
of individual genes.  In addition, users can assess the similarity of their own
gene sets against established collections (e.g., those from M@code{SigDB}),
facilitating biological interpretation.")
    (license license:artistic2.0)))

(define-public r-marinerdata
  (package
    (name "r-marinerdata")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "marinerData" version
                              'experiment))
       (sha256
        (base32 "1q4avfv9gyjqb9yjwyaw4hjh92blkz9bc34gcrmyg4ff1apsikk6"))))
    (properties `((upstream-name . "marinerData")))
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
    (version "1.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mariner" version))
       (sha256
        (base32 "035jcc7s90sadgr22p8v2jp42gkh86cf17y9p8gkskpjgbkhjvwl"))))
    (properties `((upstream-name . "mariner")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-strawr
                             r-s4vectors
                             r-rlang
                             r-rhdf5
                             r-rcolorbrewer
                             r-purrr
                             r-progress
                             r-plotgardener
                             r-magrittr
                             r-iranges
                             r-interactionset
                             r-hdf5array
                             r-glue
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
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
    (home-page "https://ericscottdavis.com/mariner/")
    (synopsis "Mariner: Explore the Hi-Cs")
    (description
     "This package provides tools for manipulating paired ranges and working with Hi-C
data in R. Functionality includes manipulating/merging paired regions,
generating paired ranges, extracting/aggregating interactions from `.hic` files,
and visualizing the results.  Designed for compatibility with plotgardener for
visualization.")
    (license license:expat)))

(define-public r-maqcsubset
  (package
    (name "r-maqcsubset")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAQCsubset" version
                              'experiment))
       (sha256
        (base32 "10ddcgwymcj42s2s9rk3gacslb72bmpivpliak5vqnnvp677lz61"))))
    (properties `((upstream-name . "MAQCsubset")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lumi r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/MAQCsubset")
    (synopsis "Experimental Data Package: MAQCsubset")
    (description
     "Data Package automatically created on Sun Nov 19 15:59:29 2006.")
    (license license:artistic2.0)))

(define-public r-maqcexpression4plex
  (package
    (name "r-maqcexpression4plex")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maqcExpression4plex" version
                              'experiment))
       (sha256
        (base32 "1fvc3kn4f1qjwhqfxfxx8xz27rd005q2f533yq4mk1qp5ykbz6bk"))))
    (properties `((upstream-name . "maqcExpression4plex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/maqcExpression4plex")
    (synopsis "Sample Expression Data - MAQC / HG18 - NimbleGen")
    (description
     "Data from human (HG18) 4plex @code{NimbleGen} array.  It has 24k genes with 3
60mer probes per gene.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-mapscape
  (package
    (name "r-mapscape")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mapscape" version))
       (sha256
        (base32 "1rx81aasdi1hg2a3ywqczjgnwrz1axdfkpn91yz2qrj9v7d6zcdi"))))
    (properties `((upstream-name . "mapscape")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maPredictDSC" version))
       (sha256
        (base32 "1kqxwqpm82457bjswmgkc3ycda0j7fnknaa74v5ghl7lsp267np0"))))
    (properties `((upstream-name . "maPredictDSC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-mapfx
  (package
    (name "r-mapfx")
    (version "1.6.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAPFX" version))
       (sha256
        (base32 "0jqsbmnav8r4l8mpq2qkpjb7p13vyzyb2nf38g6ixnvq8kymv7bv"))))
    (properties `((upstream-name . "MAPFX")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-uwot
                             r-stringr
                             r-rfast
                             r-reshape2
                             r-rcolorbrewer
                             r-pbapply
                             r-igraph
                             r-icellr
                             r-gtools
                             r-glmnetutils
                             r-ggplot2
                             r-flowcore
                             r-e1071
                             r-cowplot
                             r-complexheatmap
                             r-circlize
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HsiaoChiLiao/MAPFX")
    (synopsis
     "MAssively Parallel Flow cytometry Xplorer (MAPFX): A Toolbox for Analysing Data from the Massively-Parallel Cytometry Experiments")
    (description
     "MAPFX is an end-to-end toolbox that pre-processes the raw data from MPC
experiments (e.g., @code{BioLegend's} LEGENDScreen and BD Lyoplates assays), and
further imputes the ‘missing’ infinity markers in the wells without those
measurements.  The pipeline starts by performing background correction on raw
intensities to remove the noise from electronic baseline restoration and
fluorescence compensation by adapting a normal-exponential convolution model.
Unwanted technical variation, from sources such as well effects, is then removed
using a log-normal model with plate, column, and row factors, after which
infinity markers are imputed using the informative backbone markers as
predictors.  The completed dataset can then be used for clustering and other
statistical analyses.  Additionally, MAPFX can be used to normalise data from
FFC assays as well.")
    (license license:gpl2)))

(define-public r-mantelcorr
  (package
    (name "r-mantelcorr")
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MantelCorr" version))
       (sha256
        (base32 "1da839dpy6v14fc7kgn54n107y957xw7vvv5zkw10pd1x9nmrkaz"))))
    (properties `((upstream-name . "MantelCorr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/MantelCorr")
    (synopsis "Compute Mantel Cluster Correlations")
    (description
     "Computes Mantel cluster correlations from a (p x n) numeric data matrix (e.g.
microarray gene-expression data).")
    (license license:gpl2+)))

(define-public r-mammaprintdata
  (package
    (name "r-mammaprintdata")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "mammaPrintData" version
                              'experiment))
       (sha256
        (base32 "1gqyv8bn0acxl0injr9zn264iv1yskf1dm0clj91s0v8zvv0a29k"))))
    (properties `((upstream-name . "mammaPrintData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "3.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "malaria.db0" version
                              'annotation))
       (sha256
        (base32 "1m0zf3qxl14dyf2p6gg0gjdb4fcvfnr8gd82b4i6bsh27lsfvd1s"))))
    (properties `((upstream-name . "malaria.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAIT" version))
       (sha256
        (base32 "1x4fd01jbzb6h8gwx4himwizyflzwa43cn7w1aql70bl26184hda"))))
    (properties `((upstream-name . "MAIT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAI" version))
       (sha256
        (base32 "14zk3x9kja7y5b8lljia2ndj4iin01j8vgq9fw3plrnh0jbrawsv"))))
    (properties `((upstream-name . "MAI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "magrene" version))
       (sha256
        (base32 "0fn60g28m839kmrnvdzh6ywgi72d4yww0z824i1v9z6v7hjjmn0d"))))
    (properties `((upstream-name . "magrene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "magpie" version))
       (sha256
        (base32 "1vcv4xn55x8m08f8krrpn1ap22f9247gs7817p8bqm58lxlj9r05"))))
    (properties `((upstream-name . "magpie")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-magar
  (package
    (name "r-magar")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MAGAR" version))
       (sha256
        (base32 "0xw3ikfv3zmzjw2agjajr715ala029lpb4g1y8qhq83l1ma06hxr"))))
    (properties `((upstream-name . "MAGAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-upsetr
                             r-snpstats
                             r-rnbeads-hg38
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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

(define-public r-macsr
  (package
    (name "r-macsr")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MACSr" version))
       (sha256
        (base32 "1i64jxwqi3f4hkbhyzsybpxpiaz3lv936cxahms88i3mqq9yxrrm"))))
    (properties `((upstream-name . "MACSr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MACSQuantifyR" version))
       (sha256
        (base32 "1jld2v0r3h7y6p1fx0wp84f34cv26cayhvhsq8any4wkglhp4ksa"))))
    (properties `((upstream-name . "MACSQuantifyR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "MACSdata" version
                              'experiment))
       (sha256
        (base32 "1vvn2v99mch4g7vmbx8gdgdfmjjfxsb67rx0b8r0jhg4pz4k3sya"))))
    (properties `((upstream-name . "MACSdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maCorrPlot" version))
       (sha256
        (base32 "0yppp6dcrnxfi3kb37x8zkkhz93bm84svfpbs39v5q1h5qcrn7kn"))))
    (properties `((upstream-name . "maCorrPlot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lattice))
    (home-page
     "http://www.pubmedcentral.gov/articlerender.fcgi?tool=pubmed&pubmedid=15799785")
    (synopsis "Visualize artificial correlation in microarray data")
    (description
     "Graphically displays correlation in microarray data that is due to insufficient
normalization.")
    (license license:gpl2+)))

(define-public r-maaslin3
  (package
    (name "r-maaslin3")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "maaslin3" version))
       (sha256
        (base32 "0dlr8k9h6m95six3sbinczrvf9778qba0bf1gng51062zhw0hkdc"))))
    (properties `((upstream-name . "maaslin3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-treesummarizedexperiment
                             r-tibble
                             r-survival
                             r-summarizedexperiment
                             r-scales
                             r-rlang
                             r-rcolorbrewer
                             r-plyr
                             r-pbapply
                             r-patchwork
                             r-optparse
                             r-multcomp
                             r-logging
                             r-lmertest
                             r-lme4
                             r-ggplot2
                             r-ggnewscale
                             r-dplyr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "http://huttenhower.sph.harvard.edu/maaslin3")
    (synopsis
     "\"Refining and extending generalized multivariate linear models for meta-omic association discovery\"")
    (description
     "@code{MaAsLin} 3 refines and extends generalized multivariate linear models for
meta-omicron association discovery.  It finds abundance and prevalence
associations between microbiome meta-omics features and complex metadata in
population-scale epidemiological studies.  The software includes multiple
analysis methods (including support for multiple covariates, repeated measures,
and ordered predictors), filtering, normalization, and transform options to
customize analysis for your specific study.")
    (license license:expat)))

(define-public r-m6aboost
  (package
    (name "r-m6aboost")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "m6Aboost" version))
       (sha256
        (base32 "0vldnbc56w2mv7c994lwydgh5ij3bi85ws7pa1dqvn1fkvyf7r0v"))))
    (properties `((upstream-name . "m6Aboost")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "M3Drop" version))
       (sha256
        (base32 "0w32rpc5v20iyix3xdcn9fvcwp1wk9p5wnilsxl0kwwi0n462vgb"))))
    (properties `((upstream-name . "M3Drop")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statmod
                             r-scater
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
     "This package fits a model to the pattern of dropouts in single-cell RNASeq data.
 This model is used as a null to identify significantly variable (i.e.
differentially expressed) genes for use in downstream analysis, such as
clustering cells.  Also includes an method for calculating exact Pearson
residuals in UMI-tagged data using a library-size aware negative binomial model.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-m3dexampledata
  (package
    (name "r-m3dexampledata")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "M3DExampleData" version
                              'experiment))
       (sha256
        (base32 "11bs5w72wwy5yx7wp1wnj7s08a9wjw5slc3z550p8h7xgjb8lrrm"))))
    (properties `((upstream-name . "M3DExampleData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/m20kcod.db")
    (synopsis
     "Codelink UniSet Mouse 20k I Bioarray annotation data (chip m20kcod)")
    (description
     "Codelink @code{UniSet} Mouse 20k I Bioarray annotation data (chip m20kcod)
assembled using data from public repositories.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/m10kcod.db")
    (synopsis
     "Codelink UniSet Mouse I Bioarray (~10 000 mouse gene targets) annotation data (chip m10kcod)")
    (description
     "Codelink @code{UniSet} Mouse I Bioarray (~10 000 mouse gene targets) annotation
data (chip m10kcod) assembled using data from public repositories.")
    (license license:artistic2.0)))

