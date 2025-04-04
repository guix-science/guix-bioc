(define-module (guix-bioc packages e)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages h)
  #:use-module (gnu packages compression)
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
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-extrachips
  (package
    (name "r-extrachips")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "extraChIPs" version))
       (sha256
        (base32 "1d3jg7zrx96hm9d1gg24z1iwdpiy1lm2arix5y7kwa2mpbqfv010"))))
    (properties `((upstream-name . "extraChIPs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venndiagram
                             r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rlang
                             r-rcolorbrewer
                             r-patchwork
                             r-matrixstats
                             r-iranges
                             r-interactionset
                             r-glue
                             r-ggside
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-genomicranges
                             r-genomicinteractions
                             r-genomicalignments
                             r-genomeinfodb
                             r-forcats
                             r-edger
                             r-dplyr
                             r-csaw
                             r-complexupset
                             r-broom
                             r-biocparallel
                             r-biocio))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/smped/extraChIPs")
    (synopsis "Additional functions for working with ChIP-Seq data")
    (description
     "This package builds on existing tools and adds some simple but extremely useful
capabilities for working wth @code{ChIP-Seq} data.  The focus is on detecting
differential binding windows/regions.  One set of functions focusses on
set-operations retaining mcols for GRanges objects, whilst another group of
functions are to aid visualisation of results.  Coercion to tibble objects is
also implemented.")
    (license license:gpl3)))

(define-public r-expressionatlas
  (package
    (name "r-expressionatlas")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExpressionAtlas" version))
       (sha256
        (base32 "0j5s9c9k1vyxj3zbp4njapa4ccasr19av9vfba3g41d4d9fwqrrl"))))
    (properties `((upstream-name . "ExpressionAtlas")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-xml
                             r-summarizedexperiment
                             r-s4vectors
                             r-rcurl
                             r-limma
                             r-jsonlite
                             r-httr
                             r-biocstyle
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ExpressionAtlas")
    (synopsis "Download datasets from EMBL-EBI Expression Atlas")
    (description
     "This package is for searching for datasets in EMBL-EBI Expression Atlas, and
downloading them into R for further analysis.  Each Expression Atlas dataset is
represented as a @code{SimpleList} object with one element per platform.
Sequencing data is contained in a @code{SummarizedExperiment} object, while
microarray data is contained in an @code{ExpressionSet} or MAList object.")
    (license license:gpl3+)))

(define-public r-exploremodelmatrix
  (package
    (name "r-exploremodelmatrix")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExploreModelMatrix" version))
       (sha256
        (base32 "1wpp7pi0yayqm1mr3l9jszviym00gghl8ajm19436nyn3mkzmqxj"))))
    (properties `((upstream-name . "ExploreModelMatrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-shinyjs
                             r-shinydashboard
                             r-shiny
                             r-scales
                             r-s4vectors
                             r-rintrojs
                             r-mass
                             r-magrittr
                             r-limma
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/csoneson/ExploreModelMatrix")
    (synopsis "Graphical Exploration of Design Matrices")
    (description
     "Given a sample data table and a design formula, @code{ExploreModelMatrix}
generates an interactive application for exploration of the resulting design
matrix.  This can be helpful for interpreting model coefficients and
constructing appropriate contrasts in (generalized) linear models.  Static
visualizations can also be generated.")
    (license license:expat)))

(define-public r-experimentsubset
  (package
    (name "r-experimentsubset")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExperimentSubset" version))
       (sha256
        (base32 "0ip1qqfyhvlyp5alzpmqi9cgfdxm45w9m61zkpjyiy12r1wgvs6g"))))
    (properties `((upstream-name . "ExperimentSubset")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-treesummarizedexperiment
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ExperimentSubset")
    (synopsis "Manages subsets of data with Bioconductor Experiment objects")
    (description
     "Experiment objects such as the @code{SummarizedExperiment} or
@code{SingleCellExperiment} are data containers for one or more matrix-like
assays along with the associated row and column data.  Often only a subset of
the original data is needed for down-stream analysis.  For example, filtering
out poor quality samples will require excluding some columns before analysis.
The @code{ExperimentSubset} object is a container to efficiently manage
different subsets of the same data without having to make separate objects for
each new subset.")
    (license license:expat)))

(define-public r-eximir
  (package
    (name "r-eximir")
    (version "2.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExiMiR" version))
       (sha256
        (base32 "1xm7c01x27xmdrlzzrc10bw3w4wz0wjd3h8fwvcf2paib0f181lq"))))
    (properties `((upstream-name . "ExiMiR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-preprocesscore r-limma r-biobase r-affyio
                             r-affy))
    (home-page "https://bioconductor.org/packages/ExiMiR")
    (synopsis "R functions for the normalization of Exiqon miRNA array data")
    (description
     "This package contains functions for reading raw data in @code{ImaGene} TXT
format obtained from Exiqon @code{miRCURY} LNA arrays, annotating them with
appropriate GAL files, and normalizing them using a spike-in probe-based method.
 Other platforms and data formats are also supported.")
    (license license:gpl2)))

(define-public r-excluster
  (package
    (name "r-excluster")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExCluster" version))
       (sha256
        (base32 "10ppwx5aj16d54qpcjs8v57ln0dipvr1sx7dfhm1f8l1ji37h3i2"))))
    (properties `((upstream-name . "ExCluster")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtracklayer r-rsubread r-matrixstats r-iranges
                             r-genomicranges))
    (home-page "https://bioconductor.org/packages/ExCluster")
    (synopsis
     "ExCluster robustly detects differentially expressed exons between two conditions of RNA-seq data, requiring at least two independent biological replicates per condition")
    (description
     "@code{ExCluster} flattens Ensembl and GENCODE GTF files into GFF files, which
are used to count reads per non-overlapping exon bin from BAM files.  This read
counting is done using the function @code{featureCounts} from the package
Rsubread.  Library sizes are normalized across all biological replicates, and
@code{ExCluster} then compares two different conditions to detect signifcantly
differentially spliced genes.  This process requires at least two independent
biological repliates per condition, and @code{ExCluster} accepts only exactly
two conditions at a time. @code{ExCluster} ultimately produces false discovery
rates (FDRs) per gene, which are used to detect significance.  Exon log2 fold
change (log2FC) means and variances may be plotted for each significantly
differentially spliced gene, which helps scientists develop hypothesis and
target differential splicing events for RT-@code{qPCR} validation in the wet
lab.")
    (license license:gpl3)))

(define-public r-excluderanges
  (package
    (name "r-excluderanges")
    (version "0.99.8")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "excluderanges" version
                              'annotation))
       (sha256
        (base32 "1ciilzrq74fc9jxfyp35qq5n975qj7rl94vgp05l80ryraac8qf2"))))
    (properties `((upstream-name . "excluderanges")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/excluderanges")
    (synopsis "Genomic coordinates of problematic genomic regions")
    (description
     "Genomic coordinates of problematic genomic regions that should be avoided when
working with genomic data.  GRanges of exclusion regions (formerly known as
blacklisted), centromeres, telomeres, known heterochromatin regions, etc. (UCSC
gap table data).  Primarily for human and mouse genomes, hg19/hg38 and mm9/mm10
genome assemblies.")
    (license license:expat)))

(define-public r-ewcedata
  (package
    (name "r-ewcedata")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ewceData" version
                              'experiment))
       (sha256
        (base32 "1vcdyvdwklr3icz6i9015721ixxsjsgz4i4y0yabbrbwpxl6wcqp"))))
    (properties `((upstream-name . "ewceData")))
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
    (home-page "https://github.com/neurogenomics/ewceData")
    (synopsis "The ewceData package provides reference data required for ewce")
    (description
     "This package provides reference data required for ewce.  Expression Weighted
Celltype Enrichment (EWCE) is used to determine which cell types are enriched
within gene lists.  The package provides tools for testing enrichments within
simple gene lists (such as human disease associated genes) and those resulting
from differential expression studies.  The package does not depend upon any
particular Single Cell Transcriptome dataset and user defined datasets can be
loaded in and used in the analyses.")
    (license license:artistic2.0)))

(define-public r-ewce
  (package
    (name "r-ewce")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EWCE" version))
       (sha256
        (base32 "0j8dj9dscy6ia2wy59a79rp53xnrj3dx48bfxwhhhld0s1zzs643"))))
    (properties `((upstream-name . "EWCE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-singlecellexperiment
                             r-rnomni
                             r-reshape2
                             r-orthogene
                             r-matrix
                             r-limma
                             r-hgnchelper
                             r-ggplot2
                             r-ewcedata
                             r-dplyr
                             r-delayedarray
                             r-data-table
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/NathanSkene/EWCE")
    (synopsis "Expression Weighted Celltype Enrichment")
    (description
     "Used to determine which cell types are enriched within gene lists.  The package
provides tools for testing enrichments within simple gene lists (such as human
disease associated genes) and those resulting from differential expression
studies.  The package does not depend upon any particular Single Cell
Transcriptome dataset and user defined datasets can be loaded in and used in the
analyses.")
    (license license:gpl3)))

(define-public r-eventpointer
  (package
    (name "r-eventpointer")
    (version "3.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EventPointer" version))
       (sha256
        (base32 "1frr399md73nd12h8avn7hm8yxqg7dan3xwlc11842sgjg3f37rm"))))
    (properties `((upstream-name . "EventPointer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tximport
                             r-summarizedexperiment
                             r-stringr
                             r-speedglm
                             r-sgseq
                             r-s4vectors
                             r-rhdf5
                             r-rbgl
                             r-qvalue
                             r-prodlim
                             r-poibin
                             r-nnls
                             r-matrixstats
                             r-matrix
                             r-mass
                             r-lpsolve
                             r-limma
                             r-iterators
                             r-iranges
                             r-igraph
                             r-graph
                             r-glmnet
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-foreach
                             r-fgsea
                             r-doparallel
                             r-cobs
                             r-bsgenome
                             r-biostrings
                             r-affxparser
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EventPointer")
    (synopsis
     "An effective identification of alternative splicing events using junction arrays and RNA-Seq data")
    (description
     "@code{EventPointer} is an R package to identify alternative splicing events that
involve either simple (case-control experiment) or complex experimental designs
such as time course experiments and studies including paired-samples.  The
algorithm can be used to analyze data from either junction arrays (Affymetrix
Arrays) or sequencing data (RNA-Seq).  The software returns a data.frame with
the detected alternative splicing events: gene name, type of event (cassette,
alternative 3',...,etc), genomic position, statistical significance and
increment of the percent spliced in (Delta PSI) for all the events.  The
algorithm can generate a series of files to visualize the detected alternative
splicing events in IGV. This eases the interpretation of results and the design
of primers for standard PCR validation.")
    (license license:artistic2.0)))

(define-public r-evaluomer
  (package
    (name "r-evaluomer")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "evaluomeR" version))
       (sha256
        (base32 "07gycpis82lfsp5m477i2lgr4pa2w8psm9c64hpbxxq0ygybc94h"))))
    (properties `((upstream-name . "evaluomeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-sparcl
                             r-rskc
                             r-reshape2
                             r-rdpack
                             r-randomforest
                             r-prabclus
                             r-plotrix
                             r-multiassayexperiment
                             r-mclust
                             r-matrixstats
                             r-mass
                             r-kableextra
                             r-ggplot2
                             r-ggdendro
                             r-fpc
                             r-flexmix
                             r-dplyr
                             r-dendextend
                             r-corrplot
                             r-cluster
                             r-class))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/neobernad/evaluomeR")
    (synopsis "Evaluation of Bioinformatics Metrics")
    (description
     "Evaluating the reliability of your own metrics and the measurements done on your
own datasets by analysing the stability and goodness of the classifications of
such metrics.")
    (license license:gpl3)))

(define-public r-eupathdb
  (package
    (name "r-eupathdb")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EuPathDB" version
                              'annotation))
       (sha256
        (base32 "0k23f34hnvcf2ig9sic7gf7pypc2jmwymg605qym7x32bjhi6rlm"))))
    (properties `((upstream-name . "EuPathDB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges
                             r-genomeinfodbdata
                             r-biostrings
                             r-biocmanager
                             r-biobase
                             r-annotationhubdata
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/khughitt/EuPathDB")
    (synopsis
     "Provides access to pathogen annotation resources available on EuPathDB databases")
    (description
     "Brings together annotation resources from the various @code{EuPathDB} databases
(@code{PlasmoDB}, @code{ToxoDB}, @code{TriTrypDB}, etc.) and makes them
available in R using the @code{AnnotationHub} framework.")
    (license license:artistic2.0)))

(define-public r-eudysbiome
  (package
    (name "r-eudysbiome")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eudysbiome" version))
       (sha256
        (base32 "1f0r5xlkymr717ww8hp8anav8ss225li87jcr6n9a2wwimawhwfz"))))
    (properties `((upstream-name . "eudysbiome")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsamtools r-r-utils r-plyr r-biostrings))
    (home-page "https://bioconductor.org/packages/eudysbiome")
    (synopsis "Cartesian plot and contingency test on 16S Microbial data")
    (description
     "eudysbiome a package that permits to annotate the differential genera as
harmful/harmless based on their ability to contribute to host diseases (as
indicated in literature) or unknown based on their ambiguous genus
classification.  Further, the package statistically measures the eubiotic
(harmless genera increase or harmful genera decrease) or dysbiotic(harmless
genera decrease or harmful genera increase) impact of a given treatment or
environmental change on the (gut-intestinal, GI) microbiome in comparison to the
microbiome of the reference condition.")
    (license license:gpl2)))

(define-public r-etec16s
  (package
    (name "r-etec16s")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "etec16s" version
                              'experiment))
       (sha256
        (base32 "114jmrnjm2xpfzx1m10bn73fy1am209c70ws4jwfggrbavg6xp8j"))))
    (properties `((upstream-name . "etec16s")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-metagenomeseq r-biobase))
    (home-page "https://bioconductor.org/packages/etec16s")
    (synopsis
     "Individual-specific changes in the human gut microbiota after challenge with enterotoxigenic Escherichia coli and subsequent ciprofloxacin treatment")
    (description
     "16S @code{rRNA} gene sequencing data to study changes in the faecal microbiota
of 12 volunteers during a human challenge study with ETEC (H10407) and
subsequent treatment with ciprofloxacin.")
    (license license:artistic2.0)))

(define-public r-estrogen
  (package
    (name "r-estrogen")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "estrogen" version
                              'experiment))
       (sha256
        (base32 "0bm7xxjbkcyd8b4pifqmhfz1ncdvrr5lq52mf4xniy873k7460jx"))))
    (properties `((upstream-name . "estrogen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/estrogen")
    (synopsis
     "Microarray dataset that can be used as example for 2x2 factorial designs")
    (description
     "Data from 8 Affymetrix genechips, looking at a 2x2 factorial design (with 2
repeats per level).")
    (license license:lgpl2.0+)))

(define-public r-esetvis
  (package
    (name "r-esetvis")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "esetVis" version))
       (sha256
        (base32 "0diabzn14yygpd8ddhnrvi4zh4paqdk2qzc0lqsbpl11spfhbgxl"))))
    (properties `((upstream-name . "esetVis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtsne
                             r-mpm
                             r-mlp
                             r-mass
                             r-hexbin
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/esetVis")
    (synopsis "Visualizations of expressionSet Bioconductor object")
    (description
     "Utility functions for visualization of @code{expressionSet} (or
@code{SummarizedExperiment}) Bioconductor object, including spectral map, tsne
and linear discriminant analysis.  Static plot via the ggplot2 package or
interactive via the ggvis or rbokeh packages are available.")
    (license license:gpl3)))

(define-public r-escher
  (package
    (name "r-escher")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "escheR" version))
       (sha256
        (base32 "0p12baf4aqll216w04w9li2p3pwrrsjz9gqip0lzwirddxrf6ij7"))))
    (properties `((upstream-name . "escheR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-spatialexperiment
                             r-singlecellexperiment r-rlang r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/boyiguo1/escheR")
    (synopsis
     "Unified multi-dimensional visualizations with Gestalt principles")
    (description
     "The creation of effective visualizations is a fundamental component of data
analysis.  In biomedical research, new challenges are emerging to visualize
multi-dimensional data in a 2D space, but current data visualization tools have
limited capabilities.  To address this problem, we leverage Gestalt principles
to improve the design and interpretability of multi-dimensional data in 2D data
visualizations, layering aesthetics to display multiple variables.  The proposed
visualization can be applied to spatially-resolved transcriptomics data, but
also broadly to data visualized in 2D space, such as embedding visualizations.
We provide this open source R package @code{escheR}, which is built off of the
state-of-the-art ggplot2 visualization framework and can be seamlessly
integrated into genomics toolboxes and workflows.")
    (license license:expat)))

(define-public r-esatac
  (package
    (name "r-esatac")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "esATAC" version))
       (sha256
        (base32 "06jc5nhqylyqmfz7650n538vw5k4n0lz74d9dnr2sm6dg0cjy1ll"))))
    (properties `((upstream-name . "esATAC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venndiagram
                             r-tfbstools
                             r-shortread
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rmarkdown
                             r-rjava
                             r-rcpp
                             r-rbowtie2
                             r-r-utils
                             r-pipeframe
                             r-motifmatchr
                             r-magrittr
                             r-knitr
                             r-jaspar2018
                             r-iranges
                             r-igraph
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-digest
                             r-corrplot
                             r-clusterprofiler
                             r-chipseeker
                             r-bsgenome
                             r-biostrings
                             r-biocmanager
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wzthu/esATAC")
    (synopsis "An Easy-to-use Systematic pipeline for ATACseq data analysis")
    (description
     "This package provides a framework and complete preset pipeline for
quantification and analysis of ATAC-seq Reads.  It covers raw sequencing reads
preprocessing (FASTQ files), reads alignment (Rbowtie2), aligned reads file
operations (SAM, BAM, and BED files), peak calling (F-seq), genome annotations
(Motif, GO, SNP analysis) and quality control report.  The package is managed by
dataflow graph.  It is easy for user to pass variables seamlessly between
processes and understand the workflow.  Users can process FASTQ files through
end-to-end preset pipeline which produces a pretty HTML report for quality
control and preliminary statistical results, or customize workflow starting from
any intermediate stages with @code{esATAC} functions easily and flexibly.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-erssa
  (package
    (name "r-erssa")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ERSSA" version))
       (sha256
        (base32 "1vbwyaj3jqi1dcmnz7q02iwshm3axfyw35r4bbpkx47b74yskf06"))))
    (properties `((upstream-name . "ERSSA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer
                             r-plyr
                             r-ggplot2
                             r-edger
                             r-deseq2
                             r-biocparallel
                             r-apeglm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zshao1/ERSSA")
    (synopsis "Empirical RNA-seq Sample Size Analysis")
    (description
     "The ERSSA package takes user supplied RNA-seq differential expression dataset
and calculates the number of differentially expressed genes at varying
biological replicate levels.  This allows the user to determine, without relying
on any a priori assumptions, whether sufficient differential detection has been
acheived with their RNA-seq dataset.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-erccdashboard
  (package
    (name "r-erccdashboard")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "erccdashboard" version))
       (sha256
        (base32 "06vsfzxxxkd34r2mz689p160h0cabg1y7zn48h2w7fs9isyy1kcm"))))
    (properties `((upstream-name . "erccdashboard")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-scales
                             r-rocr
                             r-reshape2
                             r-qvalue
                             r-plyr
                             r-mass
                             r-locfit
                             r-limma
                             r-knitr
                             r-gtools
                             r-gridextra
                             r-gplots
                             r-ggplot2
                             r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/erccdashboard")
    (synopsis
     "Assess Differential Gene Expression Experiments with ERCC Controls")
    (description
     "Technical performance metrics for differential gene expression experiments using
External RNA Controls Consortium (ERCC) spike-in ratio mixtures.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-epivizrstandalone
  (package
    (name "r-epivizrstandalone")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizrStandalone" version))
       (sha256
        (base32 "02ighlzlb9j29ix2x1z18qxx5lizacpj0pna6qz0c4yh54gss7rb"))))
    (properties `((upstream-name . "epivizrStandalone")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-git2r
                             r-genomicfeatures
                             r-genomeinfodb
                             r-epivizrserver
                             r-epivizr
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/epivizrStandalone")
    (synopsis "Run Epiviz Interactive Genomic Data Visualization App within R")
    (description
     "This package imports the epiviz visualization @code{JavaScript} app for genomic
data interactive visualization.  The @code{epivizrServer} package is used to
provide a web server running completely within R. This standalone version allows
to browse arbitrary genomes through genome annotations provided by Bioconductor
packages.")
    (license license:expat)))

(define-public r-epivizrserver
  (package
    (name "r-epivizrserver")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizrServer" version))
       (sha256
        (base32 "0fyxkrjq125x8jkrx23c6k10p4fnjdmhs7lkh1kf54dwg0h3f2p3"))))
    (properties `((upstream-name . "epivizrServer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjson r-r6 r-mime r-httpuv))
    (native-inputs (list r-knitr))
    (home-page "https://epiviz.github.io")
    (synopsis "WebSocket server infrastructure for epivizr apps and packages")
    (description
     "This package provides objects to manage @code{WebSocket} connections to epiviz
apps.  Other epivizr package use this infrastructure.")
    (license license:expat)))

(define-public r-epivizrdata
  (package
    (name "r-epivizrdata")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizrData" version))
       (sha256
        (base32 "19rlgvhbh13wgvj9dy7h4r0ik1fdvhwsjnbvxd0hkiylrlfzklbk"))))
    (properties `((upstream-name . "epivizrData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-organismdbi
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-epivizrserver
                             r-ensembldb
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://epiviz.github.io")
    (synopsis "Data Management API for epiviz interactive visualization app")
    (description
     "Serve data from Bioconductor Objects through a @code{WebSocket} connection.")
    (license license:expat)))

(define-public r-epivizrchart
  (package
    (name "r-epivizrchart")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizrChart" version))
       (sha256
        (base32 "1i7icadcidw7xpg81irk7415806v9ijhjchilldv03rka7qrrc98"))))
    (properties `((upstream-name . "epivizrChart")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjson r-htmltools r-epivizrserver r-epivizrdata
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/epivizrChart")
    (synopsis "R interface to epiviz web components")
    (description
     "This package provides an API for interactive visualization of genomic data using
epiviz web components.  Objects in R/@code{BioConductor} can be used to generate
interactive R markdown/notebook documents or can be visualized in the R Studio's
default viewer.")
    (license license:artistic2.0)))

(define-public r-epivizr
  (package
    (name "r-epivizr")
    (version "2.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizr" version))
       (sha256
        (base32 "110zlfs8m3jz5hg2x60njh9cljnaxzzqdivdvdvwsbfs4lj8pmd6"))))
    (properties `((upstream-name . "epivizr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-epivizrserver
                             r-epivizrdata
                             r-bumphunter))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/epivizr")
    (synopsis "R Interface to epiviz web app")
    (description
     "This package provides connections to the epiviz web app
(http://epiviz.cbcb.umd.edu) for interactive visualization of genomic data.
Objects in R/bioc interactive sessions can be displayed in genome browser tracks
or plots to be explored by navigation through genomic regions.  Fundamental
Bioconductor data structures are supported (e.g., @code{GenomicRanges} and
@code{RangedSummarizedExperiment} objects), while providing an easy mechanism to
support other data structures (through package @code{epivizrData}).
Visualizations (using d3.js) can be easily added to the web app as well.")
    (license license:artistic2.0)))

(define-public r-epitxdb-sc-saccer3
  (package
    (name "r-epitxdb-sc-saccer3")
    (version "0.99.5")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiTxDb.Sc.sacCer3" version
                              'annotation))
       (sha256
        (base32 "0qlifdpppxxn2xmb0f1ghjbx47a7rrkrzr2lvky5p8lb0dnh3zxv"))))
    (properties `((upstream-name . "EpiTxDb.Sc.sacCer3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-epitxdb r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/EpiTxDb.Sc.sacCer3")
    (synopsis "Annotation package for EpiTxDb objects")
    (description
     "Exposes an annotation databases generated from several sources by exposing these
as @code{EpiTxDb} object.  Generated for Saccharomyces
cerevisiae/@code{sacCer3}.")
    (license license:artistic2.0)))

(define-public r-epitxdb-mm-mm10
  (package
    (name "r-epitxdb-mm-mm10")
    (version "0.99.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiTxDb.Mm.mm10" version
                              'annotation))
       (sha256
        (base32 "16zsqnrb3ypwv0sqfmhqmkxqhp90k21in7bjhjf0zagywsyyhpww"))))
    (properties `((upstream-name . "EpiTxDb.Mm.mm10")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-epitxdb r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/EpiTxDb.Mm.mm10")
    (synopsis "Annotation package for EpiTxDb objects")
    (description
     "Exposes an annotation databases generated from several sources by exposing these
as @code{EpiTxDb} object.  Generated for Mus musculus/mm10.")
    (license license:artistic2.0)))

(define-public r-epitxdb-hs-hg38
  (package
    (name "r-epitxdb-hs-hg38")
    (version "0.99.7")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiTxDb.Hs.hg38" version
                              'annotation))
       (sha256
        (base32 "1vsi24q902wqlnbxp8hks03x53n4yh5cmpyyxdvmxfbn1rxfvnyf"))))
    (properties `((upstream-name . "EpiTxDb.Hs.hg38")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-epitxdb r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/EpiTxDb.Hs.hg38")
    (synopsis "Annotation package for EpiTxDb objects")
    (description
     "Exposes an annotation databases generated from several sources by exposing these
as @code{EpiTxDb} object.  Generated for Homo sapiens/hg38.")
    (license license:artistic2.0)))

(define-public r-epitxdb
  (package
    (name "r-epitxdb")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiTxDb" version))
       (sha256
        (base32 "1m60d36q4ldjyrx1j4f6nr7qy07ghvy3cnsjsj9w3zf60ragiiqf"))))
    (properties `((upstream-name . "EpiTxDb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-txdbmaker
                             r-trnadbimport
                             r-s4vectors
                             r-rsqlite
                             r-rex
                             r-modstrings
                             r-iranges
                             r-httr
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dbi
                             r-curl
                             r-biostrings
                             r-biocgenerics
                             r-biocfilecache
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/EpiTxDb")
    (synopsis
     "Storing and accessing epitranscriptomic information using the AnnotationDbi interface")
    (description
     "@code{EpiTxDb} facilitates the storage of epitranscriptomic information.  More
specifically, it can keep track of modification identity, position, the enzyme
for introducing it on the RNA, a specifier which determines the position on the
RNA to be modified and the literature references each modification is associated
with.")
    (license license:artistic2.0)))

(define-public r-epistasisga
  (package
    (name "r-epistasisga")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epistasisGA" version))
       (sha256
        (base32 "1fknmbw91mg0aczpywl09d8kqzl9lzibf336v13p12cikzra6wph"))))
    (properties `((upstream-name . "epistasisGA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-qgraph
                             r-matrixstats
                             r-igraph
                             r-ggplot2
                             r-data-table
                             r-biocparallel
                             r-bigmemory
                             r-bh
                             r-batchtools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mnodzenski/epistasisGA")
    (synopsis
     "An R package to identify multi-snp effects in nuclear family studies using the GADGETS method")
    (description
     "This package runs the GADGETS method to identify epistatic effects in nuclear
family studies.  It also provides functions for permutation-based inference and
graphical visualization of the results.")
    (license license:gpl3)))

(define-public r-epistack
  (package
    (name "r-epistack")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epistack" version))
       (sha256
        (base32 "0yr9b4wgp7j23hqwd64vc5mwqz1lgis1rpfam67n95kwi6i516ca"))))
    (properties `((upstream-name . "epistack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-plotrix
                             r-iranges
                             r-genomicranges
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GenEpi-GenPhySE/epistack")
    (synopsis "Heatmaps of Stack Profiles from Epigenetic Signals")
    (description
     "The epistack package main objective is the visualizations of stacks of genomic
tracks (such as, but not restricted to, @code{ChIP-seq}, ATAC-seq, DNA
methyation or genomic conservation data) centered at genomic regions of
interest.  epistack needs three different inputs: 1) a genomic score objects,
such as @code{ChIP-seq} coverage or DNA methylation values, provided as a
`GRanges` (easily obtained from `bigwig` or `bam` files).  2) a list of feature
of interest, such as peaks or transcription start sites, provided as a `GRanges`
(easily obtained from `gtf` or `bed` files).  3) a score to sort the features,
such as peak height or gene expression value.")
    (license license:expat)))

(define-public r-epiregulon-extra
  (package
    (name "r-epiregulon-extra")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epiregulon.extra" version))
       (sha256
        (base32 "1r55b5mh0fa5djrmd3nrf5h4xcgc6n0j11v09qrn3ama9c86283c"))))
    (properties `((upstream-name . "epiregulon.extra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-scran
                             r-scater
                             r-scales
                             r-reshape2
                             r-patchwork
                             r-matrix
                             r-lifecycle
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-complexheatmap
                             r-clusterprofiler
                             r-circlize
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/xiaosaiyao/epiregulon.extra/")
    (synopsis
     "Companion package to epiregulon with additional plotting, differential and graph functions")
    (description
     "Gene regulatory networks model the underlying gene regulation hierarchies that
drive gene expression and observed phenotypes.  Epiregulon infers TF activity in
single cells by constructing a gene regulatory network (regulons).  This is
achieved through integration of @code{scATAC-seq} and @code{scRNA-seq} data and
incorporation of public bulk TF @code{ChIP-seq} data.  Links between regulatory
elements and their target genes are established by computing correlations
between chromatin accessibility and gene expressions.")
    (license license:expat)))

(define-public r-epiregulon
  (package
    (name "r-epiregulon")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epiregulon" version))
       (sha256
        (base32 "0vjr1fhvl6q796n30kh7cssxskq2gmp9kqr27yny1ldj9dd4g0av"))))
    (properties `((upstream-name . "epiregulon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-scuttle
                             r-scran
                             r-scmultiome
                             r-s4vectors
                             r-rcpp
                             r-motifmatchr
                             r-matrix
                             r-lifecycle
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-experimenthub
                             r-entropy
                             r-checkmate
                             r-bsgenome-mmusculus-ucsc-mm10
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bluster
                             r-biocparallel
                             r-beachmat
                             r-aucell
                             r-assorthead
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/xiaosaiyao/epiregulon/")
    (synopsis
     "Gene regulatory network inference from single cell epigenomic data")
    (description
     "Gene regulatory networks model the underlying gene regulation hierarchies that
drive gene expression and observed phenotypes.  Epiregulon infers TF activity in
single cells by constructing a gene regulatory network (regulons).  This is
achieved through integration of @code{scATAC-seq} and @code{scRNA-seq} data and
incorporation of public bulk TF @code{ChIP-seq} data.  Links between regulatory
elements and their target genes are established by computing correlations
between chromatin accessibility and gene expressions.")
    (license license:expat)))

(define-public r-epipwr-data
  (package
    (name "r-epipwr-data")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpipwR.data" version
                              'experiment))
       (sha256
        (base32 "0m784qygmzn9drcfx73vgvc0fgz76iajnhh3wpiqsqfdpkyix59f"))))
    (properties `((upstream-name . "EpipwR.data")))
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
    (home-page "https://github.com/jbarth216/EpipwR.data")
    (synopsis "EpipwR.data: Reference data for EpipwR")
    (description
     "This package provides reference data for @code{EpipwR}. @code{EpipwR} is a fast
and efficient power analysis for continuous and binary phenotypes of
epigenomic-wide association studies.  This package is only meant to be used in
conjunction with @code{EpipwR}.")
    (license license:artistic2.0)))

(define-public r-epipwr
  (package
    (name "r-epipwr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpipwR" version))
       (sha256
        (base32 "09wxys47arlxvriwh78n1vycb0ph09wfxlgprsxgpizna6pxwmzl"))))
    (properties `((upstream-name . "EpipwR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-ggplot2 r-experimenthub r-epipwr-data))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jbarth216/EpipwR")
    (synopsis
     "Efficient Power Analysis for EWAS with Continuous or Binary Outcomes")
    (description
     "This package provides a quasi-simulation based approach to performing power
analysis for EWAS (Epigenome-wide association studies) with continuous or binary
outcomes. @code{EpipwR} relies on empirical EWAS datasets to determine power at
specific sample sizes while keeping computational cost low. @code{EpipwR} can be
run with a variety of standard statistical tests, controlling for either a false
discovery rate or a family-wise type I error rate.")
    (license license:artistic2.0)))

(define-public r-epinem
  (package
    (name "r-epinem")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epiNEM" version))
       (sha256
        (base32 "0q8akbj67kra03fryi5b4lnlbkr0gcqrvf0gd6qmxn28fhsg3ph9"))))
    (properties `((upstream-name . "epiNEM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer
                             r-pcalg
                             r-mnem
                             r-minet
                             r-latticeextra
                             r-lattice
                             r-latex2exp
                             r-igraph
                             r-gtools
                             r-graph
                             r-e1071
                             r-boutroslab-plotting-general
                             r-boolnet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cbg-ethz/epiNEM/")
    (synopsis "epiNEM")
    (description
     "@code{epiNEM} is an extension of the original Nested Effects Models (NEM).
@code{EpiNEM} is able to take into account double knockouts and infer more
complex network signalling pathways.  It is tailored towards large scale double
knock-out screens.")
    (license license:gpl3)))

(define-public r-epimutacionsdata
  (package
    (name "r-epimutacionsdata")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epimutacionsData" version
                              'experiment))
       (sha256
        (base32 "18gmc4x7q5ff53gy4d7vmjyjjsg9spj4kgmkdf9yg34mc3laryfv"))))
    (properties `((upstream-name . "epimutacionsData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LeireAbarrategui/epimutacionsData")
    (synopsis "Data for epimutacions package")
    (description
     "This package includes the data necessary to run functions and examples in
epimutacions package.  Collection of DNA methylation data.  The package contains
2 datasets: (1) Control ( GEO: GSE104812), (GEO: GSE97362) case samples; and (2)
reference panel (GEO: GSE127824).  It also contains candidate regions to be
epimutations in 450k methylation arrays.")
    (license license:expat)))

(define-public r-epimutacions
  (package
    (name "r-epimutacions")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epimutacions" version))
       (sha256
        (base32 "1qpdmir7fi4pq1rh1bf35yak1snb8xcppj8kd42z17cjxqcr6f1h"))))
    (properties `((upstream-name . "epimutacions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-txdb-hsapiens-ucsc-hg18-knowngene
                             r-tibble
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-robustbase
                             r-reshape2
                             r-purrr
                             r-minfi
                             r-matrixstats
                             r-isotree
                             r-iranges
                             r-illuminahumanmethylationepicmanifest
                             r-illuminahumanmethylationepicanno-ilm10b2-hg19
                             r-illuminahumanmethylation450kmanifest
                             r-illuminahumanmethylation450kanno-ilmn12-hg19
                             r-homo-sapiens
                             r-gviz
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-experimenthub
                             r-epimutacionsdata
                             r-ensembldb
                             r-bumphunter
                             r-biomart
                             r-biocparallel
                             r-biocgenerics
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/isglobal-brge/epimutacions")
    (synopsis "Robust outlier identification for DNA methylation data")
    (description
     "The package includes some statistical outlier detection methods for epimutations
detection in DNA methylation data.  The methods included in the package are
MANOVA, Multivariate linear models, isolation forest, robust mahalanobis
distance, quantile and beta.  The methods compare a case sample with a suspected
disease against a reference panel (composed of healthy individuals) to identify
epimutations in the given case sample.  It also contains functions to annotate
and visualize the identified epimutations.")
    (license license:expat)))

(define-public r-epimix-data
  (package
    (name "r-epimix-data")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiMix.data" version
                              'experiment))
       (sha256
        (base32 "0qahz20cz3q31l2m9g3lyy52gdkccqj4xgsqqq76r4nqylgrqg2w"))))
    (properties `((upstream-name . "EpiMix.data")))
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
    (home-page "https://bioconductor.org/packages/EpiMix.data")
    (synopsis "Data for the EpiMix package")
    (description
     "Supporting data for the @code{EpiMix} R package.  It include: -
HM450_@code{lncRNA_probes.rda} - HM450_@code{miRNA_probes.rda} -
EPIC_@code{lncRNA_probes.rda} - EPIC_@code{miRNA_probes.rda} -
@code{EpigenomeMap.rda} - LUAD.sample.annotation - TCGA_@code{BatchData} -
MET.data - @code{mRNA.data} - @code{microRNA.data} - @code{lncRNA.data} -
Sample_@code{EpiMixResults_lncRNA} - Sample_@code{EpiMixResults_miRNA} -
Sample_@code{EpiMixResults_Regular} - Sample_@code{EpiMixResults_Enhancer} -
@code{lncRNA} expression data of tumors from TCGA that are stored in the
@code{ExperimentHub}.")
    (license license:gpl3)))

(define-public r-epimix
  (package
    (name "r-epimix")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiMix" version))
       (sha256
        (base32 "1cj0675faiy472gmhqvdwbf1fwrwajgfjmwllqj9ah7xr0q5mk5q"))))
    (properties `((upstream-name . "EpiMix")))
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
                             r-summarizedexperiment
                             r-s4vectors
                             r-rpmm
                             r-rlang
                             r-rcurl
                             r-rcolorbrewer
                             r-r-matlab
                             r-progress
                             r-plyr
                             r-limma
                             r-iranges
                             r-impute
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-foreach
                             r-experimenthub
                             r-epimix-data
                             r-elmer-data
                             r-dplyr
                             r-downloader
                             r-dosnow
                             r-doparallel
                             r-data-table
                             r-biomart
                             r-biobase
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EpiMix")
    (synopsis
     "EpiMix: an integrative tool for the population-level analysis of DNA methylation")
    (description
     "@code{EpiMix} is a comprehensive tool for the integrative analysis of
high-throughput DNA methylation data and gene expression data. @code{EpiMix}
enables automated data downloading (from TCGA or GEO), preprocessing,
methylation modeling, interactive visualization and functional annotation.To
identify hypo- or hypermethylated @code{CpG} sites across physiological or
pathological conditions, @code{EpiMix} uses a beta mixture modeling to identify
the methylation states of each @code{CpG} probe and compares the methylation of
the experimental group to the control group.The output from @code{EpiMix} is the
functional DNA methylation that is predictive of gene expression. @code{EpiMix}
incorporates specialized algorithms to identify functional DNA methylation at
various genetic elements, including proximal cis-regulatory elements of
protein-coding genes, distal enhancers, and genes encoding @code{microRNAs} and
@code{lncRNAs}.")
    (license license:gpl3)))

(define-public r-epigrahmm
  (package
    (name "r-epigrahmm")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epigraHMM" version))
       (sha256
        (base32 "1cj9mypj3kbns4n4k4gm5d7g4zdhm4sddg8brv0yap94hpyj1lnp"))))
    (properties `((upstream-name . "epigraHMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rhdf5lib
                             r-rhdf5
                             r-rcpparmadillo
                             r-rcpp
                             r-pheatmap
                             r-matrix
                             r-mass
                             r-magrittr
                             r-limma
                             r-iranges
                             r-greylistchip
                             r-ggpubr
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-csaw
                             r-bamsignals))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/epigraHMM")
    (synopsis "Epigenomic R-based analysis with hidden Markov models")
    (description
     "@code{epigraHMM} provides a set of tools for the analysis of epigenomic data
based on hidden Markov Models.  It contains two separate peak callers, one for
consensus peaks from biological or technical replicates, and one for
differential peaks from multi-replicate multi-condition experiments.  In
differential peak calling, @code{epigraHMM} provides window-specific posterior
probabilities associated with every possible combinatorial pattern of read
enrichment across conditions.")
    (license license:expat)))

(define-public r-epigenomix
  (package
    (name "r-epigenomix")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epigenomix" version))
       (sha256
        (base32 "12dbs4gyypkykaswpwiyx3sfyrxsp3g44ngxgk0yp8nas76m8c4x"))))
    (properties `((upstream-name . "epigenomix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rsamtools
                             r-mcmcpack
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-biocgenerics
                             r-biobase
                             r-beadarray))
    (home-page "https://bioconductor.org/packages/epigenomix")
    (synopsis
     "Epigenetic and gene transcription data normalization and integration with mixture models")
    (description
     "This package provides a package for the integrative analysis of RNA-seq or
microarray based gene transcription and histone modification data obtained by
@code{ChIP-seq}.  The package provides methods for data preprocessing and
matching as well as methods for fitting bayesian mixture models in order to
detect genes with differences in both data types.")
    (license license:lgpl3)))

(define-public r-epidecoder
  (package
    (name "r-epidecoder")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epidecodeR" version))
       (sha256
        (base32 "0iy6ffyar28miyg8k0y1grri0kf9sr51ik7xlllhj4hdra8dffk3"))))
    (properties `((upstream-name . "epidecodeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtracklayer
                             r-rstatix
                             r-iranges
                             r-ggpubr
                             r-ggplot2
                             r-genomicranges
                             r-envstats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kandarpRJ/epidecodeR")
    (synopsis
     "epidecodeR: a functional exploration tool for epigenetic and epitranscriptomic regulation")
    (description
     "@code{epidecodeR} is a package capable of analysing impact of degree of DNA/RNA
epigenetic chemical modifications on dysregulation of genes or proteins.  This
package integrates chemical modification data generated from a host of
epigenomic or epitranscriptomic techniques such as @code{ChIP-seq}, ATAC-seq,
m6A-seq, etc.  and dysregulated gene lists in the form of differential gene
expression, ribosome occupancy or differential protein translation and identify
impact of dysregulation of genes caused due to varying degrees of chemical
modifications associated with the genes. @code{epidecodeR} generates cumulative
distribution function (CDF) plots showing shifts in trend of overall log2FC
between genes divided into groups based on the degree of modification associated
with the genes.  The tool also tests for significance of difference in log2FC
between groups of genes.")
    (license license:gpl3)))

(define-public r-epicv2manifest
  (package
    (name "r-epicv2manifest")
    (version "0.99.7")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EPICv2manifest" version
                              'annotation))
       (sha256
        (base32 "1rskd8zhdxvvf119ngsmr6bzrmabhy5zqdh1w5azcyf4c39svp6k"))))
    (properties `((upstream-name . "EPICv2manifest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EPICv2manifest")
    (synopsis
     "Illumina Infinium MethylationEPIC v2.0 extended manifest from Peters et al. 2024")
    (description
     "This package provides a data.frame containing an extended probe manifest for the
Illumina Infinium Methylation v2.0 Kit.  Contains the complete manifest from the
Illumina-provided EPIC-8v2-0_EA.csv, plus additional probewise information
described in Peters et al. (2024).")
    (license license:artistic2.0)))

(define-public r-epicompare
  (package
    (name "r-epicompare")
    (version "1.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiCompare" version))
       (sha256
        (base32 "1s02yxpw3sr0qi7bizh1yxpzc8cx5pyqgx4s3ahzy2sx0as6kn16"))))
    (properties `((upstream-name . "EpiCompare")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rtracklayer
                             r-rmarkdown
                             r-reshape2
                             r-plotly
                             r-iranges
                             r-htmltools
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-genomation
                             r-downloadthis
                             r-data-table
                             r-chipseeker
                             r-biocgenerics
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/neurogenomics/EpiCompare")
    (synopsis "Comparison, Benchmarking & QC of Epigenomic Datasets")
    (description
     "@code{EpiCompare} is used to compare and analyse epigenetic datasets for quality
control and benchmarking purposes.  The package outputs an HTML report
consisting of three sections: (1.  General metrics) Metrics on peaks (percentage
of blacklisted and non-standard peaks, and peak widths) and fragments
(duplication rate) of samples, (2.  Peak overlap) Percentage and statistical
significance of overlapping and non-overlapping peaks.  Also includes upset plot
and (3.  Functional annotation) functional annotation (@code{ChromHMM},
@code{ChIPseeker} and enrichment analysis) of peaks.  Also includes peak
enrichment around TSS.")
    (license license:gpl3)))

(define-public r-epialleler
  (package
    (name "r-epialleler")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epialleleR" version))
       (sha256
        (base32 "0zdas9qb4palfakwrahlk2l4qj2nz371iqlqphs2nclmr6dbhj5w"))))
    (properties `((upstream-name . "epialleleR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rhtslib
                             r-rcpp
                             r-genomicranges
                             r-data-table
                             r-biocgenerics
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BBCG/epialleleR")
    (synopsis "Fast, Epiallele-Aware Methylation Caller and Reporter")
    (description
     "Epialleles are specific DNA methylation patterns that are mitotically and/or
meiotically inherited.  This package calls and reports cytosine methylation as
well as frequencies of hypermethylated epialleles at the level of genomic
regions or individual cytosines in next-generation sequencing data using binary
alignment map (BAM) files as an input.  Among other things, this package can
also extract and visualise methylation patterns and assess allele specificity of
methylation.")
    (license license:artistic2.0)))

(define-public r-eopreddata
  (package
    (name "r-eopreddata")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eoPredData" version
                              'experiment))
       (sha256
        (base32 "1bmxqa6gsj3hkw9znpa13lc0fpi0yp1psqx1jpmy01bkk36y6ikw"))))
    (properties `((upstream-name . "eoPredData")))
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
    (home-page "https://github.com/wvictor14/eoPredData")
    (synopsis
     "ExperimentHub package containing model data for predicting preeclampsia status for based on plcaental DNA methylation profile")
    (description
     "This package provides access to @code{eoPred} pretrained model hosted on
@code{ExperimentHub}.  Model was trained on placental DNA methylation
preeclampsia samples using @code{mixOmics} splsda.  There are two resources: 1.
the model object, and 2.  a testing data set used to demonstrate the function.")
    (license license:expat)))

(define-public r-ensdb-rnorvegicus-v79
  (package
    (name "r-ensdb-rnorvegicus-v79")
    (version "2.99.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EnsDb.Rnorvegicus.v79" version
                              'annotation))
       (sha256
        (base32 "1ki2hrn0a55f3ipxny0hpgl5ld9pjkhcwmvvqwwd99f3sqbxf3br"))))
    (properties `((upstream-name . "EnsDb.Rnorvegicus.v79")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ensembldb))
    (home-page "https://bioconductor.org/packages/EnsDb.Rnorvegicus.v79")
    (synopsis "Ensembl based annotation package")
    (description "Exposes an annotation databases generated from Ensembl.")
    (license license:artistic2.0)))

(define-public r-ensdb-rnorvegicus-v75
  (package
    (name "r-ensdb-rnorvegicus-v75")
    (version "2.99.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EnsDb.Rnorvegicus.v75" version
                              'annotation))
       (sha256
        (base32 "02sx9l1p67ihkn0dfzbi08cpp8x4k2mjdqn7hvzfiaibsbqp70bb"))))
    (properties `((upstream-name . "EnsDb.Rnorvegicus.v75")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ensembldb))
    (home-page "https://bioconductor.org/packages/EnsDb.Rnorvegicus.v75")
    (synopsis "Ensembl based annotation package")
    (description "Exposes an annotation databases generated from Ensembl.")
    (license license:artistic2.0)))

(define-public r-ensdb-mmusculus-v75
  (package
    (name "r-ensdb-mmusculus-v75")
    (version "2.99.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EnsDb.Mmusculus.v75" version
                              'annotation))
       (sha256
        (base32 "00c92l6ii2p3hila8xpblmidx8pmy11x1xh4gnwsq3f3rn1q200g"))))
    (properties `((upstream-name . "EnsDb.Mmusculus.v75")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ensembldb))
    (home-page "https://bioconductor.org/packages/EnsDb.Mmusculus.v75")
    (synopsis "Ensembl based annotation package")
    (description "Exposes an annotation databases generated from Ensembl.")
    (license license:artistic2.0)))

(define-public r-enrichviewnet
  (package
    (name "r-enrichviewnet")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "enrichViewNet" version))
       (sha256
        (base32 "06acbr0nmwf8q0cpwhdzd68900d5793p8gg0ljz35d2kcskpd017"))))
    (properties `((upstream-name . "enrichViewNet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-strex
                             r-rcy3
                             r-jsonlite
                             r-gprofiler2
                             r-enrichplot
                             r-dose))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/adeschen/enrichViewNet")
    (synopsis "From functional enrichment results to biological networks")
    (description
     "This package enables the visualization of functional enrichment results as
network graphs.  First the package enables the visualization of enrichment
results, in a format corresponding to the one generated by gprofiler2, as a
customizable Cytoscape network.  In those networks, both gene datasets (GO
terms/pathways/protein complexes) and genes associated to the datasets are
represented as nodes.  While the edges connect each gene to its dataset(s).  The
package also provides the option to create enrichment maps from functional
enrichment results.  Enrichment maps enable the visualization of enriched terms
into a network with edges connecting overlapping genes.")
    (license license:artistic2.0)))

(define-public r-enrichmentbrowser
  (package
    (name "r-enrichmentbrowser")
    (version "2.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EnrichmentBrowser" version))
       (sha256
        (base32 "0a2dgkmrqvnqkbvjlq1z4lmncg41dhgbh5pvvrniqzqsaqc7pyqz"))))
    (properties `((upstream-name . "EnrichmentBrowser")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spia
                             r-safe
                             r-s4vectors
                             r-rgraphviz
                             r-pathview
                             r-limma
                             r-keggrest
                             r-kegggraph
                             r-hwriter
                             r-gseabase
                             r-graphite
                             r-graph
                             r-go-db
                             r-edger
                             r-biocmanager
                             r-biocfilecache
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EnrichmentBrowser")
    (synopsis
     "Seamless navigation through combined results of set-based and network-based enrichment analysis")
    (description
     "The @code{EnrichmentBrowser} package implements essential functionality for the
enrichment analysis of gene expression data.  The analysis combines the
advantages of set-based and network-based enrichment analysis in order to derive
high-confidence gene sets and biological pathways that are differentially
regulated in the expression data under investigation.  Besides, the package
facilitates the visualization and exploration of such sets and pathways.")
    (license license:artistic2.0)))

(define-public r-enrichdo
  (package
    (name "r-enrichdo")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EnrichDO" version))
       (sha256
        (base32 "11hfq4qb0q9jylincbk89zp0r73hp9y2zw14ghlrabphyzgg287f"))))
    (properties `((upstream-name . "EnrichDO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-s4vectors
                             r-rgraphviz
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-pheatmap
                             r-magrittr
                             r-hash
                             r-graph
                             r-ggplot2
                             r-dplyr
                             r-clusterprofiler
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EnrichDO")
    (synopsis
     "a Global Weighted Model for Disease Ontology Enrichment Analysis")
    (description
     "To implement disease ontology (DO) enrichment analysis, this package is designed
and presents a double weighted model based on the latest annotations of the
human genome with DO terms, by integrating the DO graph topology on a global
scale.  This package exhibits high accuracy that it can identify more specific
DO terms, which alleviates the over enriched problem.  The package includes
various statistical models and visualization schemes for discovering the
associations between genes and diseases from biological big data.")
    (license license:expat)))

(define-public r-enmcb
  (package
    (name "r-enmcb")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EnMCB" version))
       (sha256
        (base32 "1y15nl9gx1qb6112ikx1pbslx0jz7s988mra7aq63q0igd33yz8n"))))
    (properties `((upstream-name . "EnMCB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survivalsvm
                             r-survivalroc
                             r-survival
                             r-rms
                             r-mboost
                             r-matrix
                             r-igraph
                             r-glmnet
                             r-ggplot2
                             r-e1071
                             r-boot
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EnMCB")
    (synopsis
     "Predicting Disease Progression Based on Methylation Correlated Blocks using Ensemble Models")
    (description
     "Creation of the correlated blocks using DNA methylation profiles.  Machine
learning models can be constructed to predict differentially methylated blocks
and disease progression.")
    (license license:gpl2)))

(define-public r-enhancerhomologsearch
  (package
    (name "r-enhancerhomologsearch")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "enhancerHomologSearch" version))
       (sha256
        (base32 "0yzs9z3bwz5pkkwx26pqxgl3mkjq3cgpwfvbsf0l4p5r86nf4rv7"))))
    (properties `((upstream-name . "enhancerHomologSearch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rcpp
                             r-pwalign
                             r-motifmatchr
                             r-matrix
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://jianhong.github.io/enhancerHomologSearch")
    (synopsis
     "Identification of putative mammalian orthologs to given enhancer")
    (description
     "Get ENCODE data of enhancer region via H3K4me1 peaks and search homolog regions
for given sequences.  The candidates of enhancer homolog regions can be filtered
by distance to target TSS. The top candidates from human and mouse will be
aligned to each other and then exported as multiple alignments with given
enhancer.")
    (license license:gpl2+)))

(define-public r-encodexplorerdata
  (package
    (name "r-encodexplorerdata")
    (version "0.99.5")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ENCODExplorerData" version
                              'annotation))
       (sha256
        (base32 "00gfm5l8pxrfs4cw4jlw6n0cz5s31isg69k833n89800v26w3kvh"))))
    (properties `((upstream-name . "ENCODExplorerData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcurl r-jsonlite r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ENCODExplorerData")
    (synopsis "compilation of ENCODE metadata")
    (description
     "This package allows user to quickly access ENCODE project files metadata and
give access to helper functions to query the ENCODE rest api, download ENCODE
datasets and save the database in SQLite format.")
    (license license:artistic2.0)))

(define-public r-emtdata
  (package
    (name "r-emtdata")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "emtdata" version
                              'experiment))
       (sha256
        (base32 "1g6im42wzkjr5xxrh21q2kh50m3igqjz6srp1zshjx2hg27gdd72"))))
    (properties `((upstream-name . "emtdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-experimenthub r-edger))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DavisLaboratory/emtdata")
    (synopsis
     "An ExperimentHub Package for data sets with an Epithelial to Mesenchymal Transition (EMT)")
    (description
     "This package provides pre-processed RNA-seq data where the epithelial to
mesenchymal transition was induced on cell lines.  These data come from three
publications Cursons et al. (2015), Cursons etl al. (2018) and Foroutan et al.
(2017).  In each of these publications, EMT was induces across multiple cell
lines following treatment by TGFb among other stimulants.  This data will be
useful in determining the regulatory programs modified in order to achieve an
EMT. Data were processed by the Davis laboratory in the Bioinformatics division
at WEHI.")
    (license license:gpl3)))

(define-public r-empiricalbrownsmethod
  (package
    (name "r-empiricalbrownsmethod")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EmpiricalBrownsMethod" version))
       (sha256
        (base32 "0vbzxw5cyhzadlazbrn4pwr2g7gl7wpgzf665v2hqn7f3pjbnw4s"))))
    (properties `((upstream-name . "EmpiricalBrownsMethod")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page
     "https://github.com/IlyaLab/CombiningDependentPvaluesUsingEBM.git")
    (synopsis "Uses Brown's method to combine p-values from dependent tests")
    (description
     "Combining P-values from multiple statistical tests is common in bioinformatics.
However, this procedure is non-trivial for dependent P-values.  This package
implements an empirical adaptation of Brown’s Method (an extension of Fisher’s
Method) for combining dependent P-values which is appropriate for highly
correlated data sets found in high-throughput biological experiments.")
    (license license:expat)))

(define-public r-emdomics
  (package
    (name "r-emdomics")
    (version "2.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EMDomics" version))
       (sha256
        (base32 "1hahqy0vvg3qkqzmdfcvrjba4zcj018ifh6gzh119qinphajdm30"))))
    (properties `((upstream-name . "EMDomics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-preprocesscore
                             r-matrixstats
                             r-ggplot2
                             r-emdist
                             r-cdft
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EMDomics")
    (synopsis
     "Earth Mover's Distance for Differential Analysis of Genomics Data")
    (description
     "The EMDomics algorithm is used to perform a supervised multi-class analysis to
measure the magnitude and statistical significance of observed continuous
genomics data between groups.  Usually the data will be gene expression values
from array-based or sequence-based experiments, but data from other types of
experiments can also be analyzed (e.g. copy number variation).  Traditional
methods like Significance Analysis of Microarrays (SAM) and Linear Models for
Microarray Data (LIMMA) use significance tests based on summary statistics (mean
and standard deviation) of the distributions.  This approach lacks power to
identify expression differences between groups that show high levels of
intra-group heterogeneity.  The Earth Mover's Distance (EMD) algorithm instead
computes the \"work\" needed to transform one distribution into another, thus
providing a metric of the overall difference in shape between two distributions.
 Permutation of sample labels is used to generate q-values for the observed EMD
scores.  This package also incorporates the Komolgorov-Smirnov (K-S) test and
the Cramer von Mises test (CVM), which are both common distribution comparison
tests.")
    (license license:expat)))

(define-public r-elmer-data
  (package
    (name "r-elmer-data")
    (version "2.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ELMER.data" version
                              'experiment))
       (sha256
        (base32 "02vz6n7dnc0jgszj9h9ym861jbhlp6z8w5dl8h3x3m0d8ka5jlw2"))))
    (properties `((upstream-name . "ELMER.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ELMER.data")
    (synopsis "Data for the ELMER package")
    (description
     "Supporting data for the ELMER package.  It includes: -
elmer.data.example.promoter: mae.promoter - elmer.data.example: data -
EPIC.hg38.manifest - EPIC.hg19.manifest - hm450.hg38.manifest -
hm450.hg19.manifest - hocomoco.table - human.TF - LUSC_meth_refined: Meth -
LUSC_RNA_refined: @code{GeneExp} - Probes.motif.hg19.450K -
Probes.motif.hg19.EPIC - Probes.motif.hg38.450K - Probes.motif.hg38.EPIC -
TF.family - TF.subfamily - Human_genes__GRCh37_p13 - Human_genes__GRCh38_p12 -
Human_genes__GRCh37_p13__tss - Human_genes__GRCh38_p12__tss.")
    (license license:gpl3)))

(define-public r-elmer
  (package
    (name "r-elmer")
    (version "2.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ELMER" version))
       (sha256
        (base32 "12pvv1gc9g66nwzdi72knjh0y01bxkmwqi3iscswvcwzxa1ggc0q"))))
    (properties `((upstream-name . "ELMER")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-tcgabiolinks
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rvest
                             r-rtracklayer
                             r-rmarkdown
                             r-reshape2
                             r-reshape
                             r-readr
                             r-purrr
                             r-progress
                             r-plyr
                             r-plotly
                             r-multiassayexperiment
                             r-matrix
                             r-magrittr
                             r-lattice
                             r-iranges
                             r-gviz
                             r-gridextra
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-elmer-data
                             r-dplyr
                             r-downloader
                             r-doparallel
                             r-delayedarray
                             r-complexheatmap
                             r-circlize
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ELMER")
    (synopsis
     "Inferring Regulatory Element Landscapes and Transcription Factor Networks Using Cancer Methylomes")
    (description
     "ELMER is designed to use DNA methylation and gene expression from a large number
of samples to infere regulatory element landscape and transcription factor
network in primary tissue.")
    (license license:gpl3)))

(define-public r-eisar
  (package
    (name "r-eisar")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eisaR" version))
       (sha256
        (base32 "1778r9f11kmmp278lflfja9nk4rpijq295s9nz1w6bzfgccchvwf"))))
    (properties `((upstream-name . "eisaR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-limma
                             r-iranges
                             r-genomicranges
                             r-edger
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fmicompbio/eisaR")
    (synopsis "Exon-Intron Split Analysis (EISA) in R")
    (description
     "Exon-intron split analysis (EISA) uses ordinary RNA-seq data to measure changes
in mature RNA and pre-@code{mRNA} reads across different experimental conditions
to quantify transcriptional and post-transcriptional regulation of gene
expression.  For details see Gaidatzis et al., Nat Biotechnol 2015.  doi:
10.1038/nbt.3269. @code{eisaR} implements the major steps of EISA in R.")
    (license license:gpl3)))

(define-public r-eir
  (package
    (name "r-eir")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eiR" version))
       (sha256
        (base32 "1p5q54axwz23chgmay11w3vbnrji6gfz6w6prmpr24lpw5m3f9dr"))))
    (properties `((upstream-name . "eiR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snowfall
                             r-snow
                             r-runit
                             r-rcurl
                             r-rcppannoy
                             r-digest
                             r-dbi
                             r-chemminer
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/girke-lab/eiR")
    (synopsis "Accelerated similarity searching of small molecules")
    (description
     "The @code{eiR} package provides utilities for accelerated structure similarity
searching of very large small molecule data sets using an embedding and indexing
approach.")
    (license license:artistic2.0)))

(define-public r-egseadata
  (package
    (name "r-egseadata")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EGSEAdata" version
                              'experiment))
       (sha256
        (base32 "120csmjcr3zgskqdxzfy37j5kid58fd9fcwvk9p8fzmybz4x9lcw"))))
    (properties `((upstream-name . "EGSEAdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/EGSEAdata")
    (synopsis "Gene set collections for the EGSEA package")
    (description
     "This package includes gene set collections that are used for the Ensemble of
Gene Set Enrichment Analyses (EGSEA) method for gene set testing.  It includes
Human and Mouse versions of the M@code{SidDB} (Subramanian, et al. (2005) PNAS,
102(43):15545-15550) and @code{GeneSetDB} (Araki, et al. (2012) FEBS Open Bio,
2:76-82) collections.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-egsea
  (package
    (name "r-egsea")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EGSEA" version))
       (sha256
        (base32 "192zw8ms6hqzdybpz11bw5fygbl77hy1n12vpdw1gmxcg6qar8zx"))))
    (properties `((upstream-name . "EGSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-topgo
                             r-stringi
                             r-safe
                             r-rcolorbrewer
                             r-plotly
                             r-pathview
                             r-padog
                             r-org-rn-eg-db
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-metap
                             r-limma
                             r-hwriter
                             r-htmlwidgets
                             r-htmlutils
                             r-gsva
                             r-gplots
                             r-globaltest
                             r-ggplot2
                             r-gage
                             r-egseadata
                             r-edger
                             r-dt
                             r-biobase
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EGSEA")
    (synopsis "Ensemble of Gene Set Enrichment Analyses")
    (description
     "This package implements the Ensemble of Gene Set Enrichment Analyses (EGSEA)
method for gene set testing.  EGSEA algorithm utilizes the analysis results of
twelve prominent GSE algorithms in the literature to calculate collective
significance scores for each gene set.")
    (license license:gpl3)))

(define-public r-egad
  (package
    (name "r-egad")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EGAD" version))
       (sha256
        (base32 "1przn4yncg04nc9cb36ljk2v4xn8i788fbh9jf07vv4z83bn3dvg"))))
    (properties `((upstream-name . "EGAD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-rcurl
                             r-rcolorbrewer
                             r-plyr
                             r-mass
                             r-limma
                             r-impute
                             r-igraph
                             r-gplots
                             r-geoquery
                             r-biobase))
    (native-inputs (list r-rmarkdown))
    (home-page "https://bioconductor.org/packages/EGAD")
    (synopsis "Extending guilt by association by degree")
    (description
     "The package implements a series of highly efficient tools to calculate
functional properties of networks based on guilt by association methods.")
    (license license:gpl2)))

(define-public r-eds
  (package
    (name "r-eds")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eds" version))
       (sha256
        (base32 "0ba57wg345970l2j780ipjxy8h803jnwxk7p81qdd887045kykqj"))))
    (properties `((upstream-name . "eds")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-rcpp r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mikelove/eds")
    (synopsis "eds: Low-level reader for Alevin EDS format")
    (description
     "This packages provides a single function, @code{readEDS}.  This is a low-level
utility for reading in Alevin EDS format into R. This function is not designed
for end-users but instead the package is predominantly for simplifying package
dependency graph for other Bioconductor packages.")
    (license license:gpl2)))

(define-public r-edirquery
  (package
    (name "r-edirquery")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EDIRquery" version))
       (sha256
        (base32 "0q3fypzcrarviiqnawgpf1vbfqxsy31fsfdk54lgb34q24xifrkd"))))
    (properties `((upstream-name . "EDIRquery")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tictoc r-tibble r-readr r-interactionset
                             r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EDIRquery")
    (synopsis "Query the EDIR Database For Specific Gene")
    (description
     "EDIRquery provides a tool to search for genes of interest within the Exome
Database of Interspersed Repeats (EDIR).  A gene name is a required input, and
users can additionally specify repeat sequence lengths, minimum and maximum
distance between sequences, and whether to allow a 1-bp mismatch.  Outputs
include a summary of results by repeat length, as well as a dataframe of query
results.  Example data provided includes a subset of the data for the gene GAA
(ENSG00000171298).  To query the full database requires providing a path to the
downloaded database files as a parameter.")
    (license license:gpl3)))

(define-public r-edge
  (package
    (name "r-edge")
    (version "2.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "edge" version))
       (sha256
        (base32 "1qr8mq8isr2sw4b9y0r7vb567001r6pj7l950f4r9xlb440ravvk"))))
    (properties `((upstream-name . "edge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva r-qvalue r-mass r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jdstorey/edge")
    (synopsis "Extraction of Differential Gene Expression")
    (description
     "The edge package implements methods for carrying out differential expression
analyses of genome-wide gene expression studies.  Significance testing using the
optimal discovery procedure and generalized likelihood ratio tests (equivalent
to F-tests and t-tests) are implemented for general study designs.  Special
functions are available to facilitate the analysis of common study designs,
including time course experiments.  Other packages such as sva and qvalue are
integrated in edge to provide a wide range of tools for gene expression
analysis.")
    (license license:expat)))

(define-public r-ecolitk
  (package
    (name "r-ecolitk")
    (version "1.78.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecolitk" version))
       (sha256
        (base32 "1pj09s8jk5h7qwjlgvsmw97qmsjm7pw857ijswhy90gf3xv8h0s4"))))
    (properties `((upstream-name . "ecolitk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/ecolitk")
    (synopsis "Meta-data and tools for E. coli")
    (description
     "Meta-data and tools to work with E. coli.  The tools are mostly plotting
functions to work with circular genomes.  They can used with other
genomes/plasmids.")
    (license license:gpl2+)))

(define-public r-ecolisakai-db0
  (package
    (name "r-ecolisakai-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoliSakai.db0" version
                              'annotation))
       (sha256
        (base32 "0nmjqxmic1crpy2rhjn86ls68j2w1x67sbc8q5j42zm75crb752k"))))
    (properties `((upstream-name . "ecoliSakai.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecoliSakai.db0")
    (synopsis "Base Level Annotation databases for E coli Sakai Strain")
    (description
     "Base annotation databases for E coli Sakai Strain, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-ecoliprobe
  (package
    (name "r-ecoliprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoliprobe" version
                              'annotation))
       (sha256
        (base32 "17g5zxfzsak7a0w51irc0w1w2i5ngdkx9db6rhv1fyp8mfjgaphd"))))
    (properties `((upstream-name . "ecoliprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecoliprobe")
    (synopsis "Probe sequence data for microarrays of type ecoli")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was E\\_coli\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-ecolileucine
  (package
    (name "r-ecolileucine")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoliLeucine" version
                              'experiment))
       (sha256
        (base32 "1w6fz8dnafqf47n16jh7p6j6fig31vigkygdkv14kric3xr4vf1k"))))
    (properties `((upstream-name . "ecoliLeucine")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ecolicdf r-affy))
    (home-page "https://bioconductor.org/packages/ecoliLeucine")
    (synopsis "Experimental data with Affymetrix E. coli chips")
    (description
     "Experimental data with Affymetrix E. coli chips, as reported in She-pin Hung,
Pierre Baldi, and G. Wesley Hatfield, J. Biol.  Chem., Vol.  277, Issue 43,
40309-40323, October 25, 2002.")
    (license license:gpl2+)))

(define-public r-ecolik12-db0
  (package
    (name "r-ecolik12-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoliK12.db0" version
                              'annotation))
       (sha256
        (base32 "168byg9z4chby69cxkgmih3q5bad9shcmhmcn5b27qqyg737r29f"))))
    (properties `((upstream-name . "ecoliK12.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecoliK12.db0")
    (synopsis "Base Level Annotation databases for E coli K12 Strain")
    (description
     "Base annotation databases for E coli K12 Strain, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-ecolicdf
  (package
    (name "r-ecolicdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecolicdf" version
                              'annotation))
       (sha256
        (base32 "18g5prjykn356k35m131ifn128k5mhij2x26balqav0azigzjqsn"))))
    (properties `((upstream-name . "ecolicdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecolicdf")
    (synopsis "ecolicdf")
    (description
     "This package provides a package containing an environment representing the
Ecoli.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-ecoliasv2probe
  (package
    (name "r-ecoliasv2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoliasv2probe" version
                              'annotation))
       (sha256
        (base32 "1hfrnal170cdigc2fmnynb75jjsiq77p4x6ws9gah558hvx87nk3"))))
    (properties `((upstream-name . "ecoliasv2probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecoliasv2probe")
    (synopsis "Probe sequence data for microarrays of type ecoliasv2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was E\\_coli\\_Asv2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-ecoliasv2cdf
  (package
    (name "r-ecoliasv2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoliasv2cdf" version
                              'annotation))
       (sha256
        (base32 "16i6has9qgmzakcy24racc1h9j331wndv5c87qp5r1zrai61zyav"))))
    (properties `((upstream-name . "ecoliasv2cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecoliasv2cdf")
    (synopsis "ecoliasv2cdf")
    (description
     "This package provides a package containing an environment representing the
Ecoli_ASv2.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-ecoli2probe
  (package
    (name "r-ecoli2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoli2probe" version
                              'annotation))
       (sha256
        (base32 "11q4ka0ncjapahic49xdl9919vm9frrwlqgj101krgkg262lfm8n"))))
    (properties `((upstream-name . "ecoli2probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecoli2probe")
    (synopsis "Probe sequence data for microarrays of type ecoli2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was E\\_coli\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-ecoli2cdf
  (package
    (name "r-ecoli2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoli2cdf" version
                              'annotation))
       (sha256
        (base32 "1rkxrwadq9kg9685z9pg6rgc4bblkx5p3c6snsl4gv2k188dva9r"))))
    (properties `((upstream-name . "ecoli2cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecoli2cdf")
    (synopsis "ecoli2cdf")
    (description
     "This package provides a package containing an environment representing the
E_coli_2.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-ecoli2-db
  (package
    (name "r-ecoli2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecoli2.db" version
                              'annotation))
       (sha256
        (base32 "1i2arr26hch7lmx2bixzy4l0zaa0gynah4dfwa98cvb24ahqqj9f"))))
    (properties `((upstream-name . "ecoli2.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-eck12-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ecoli2.db")
    (synopsis
     "Affymetrix Affymetrix E_coli_2 Array annotation data (chip ecoli2)")
    (description
     "Affymetrix Affymetrix E_coli_2 Array annotation data (chip ecoli2) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-ebsea
  (package
    (name "r-ebsea")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EBSEA" version))
       (sha256
        (base32 "0mrsabqh3fph231757l3sw8jka3lkxmd75fjaqcaf9zwc5vi4wf0"))))
    (properties `((upstream-name . "EBSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-empiricalbrownsmethod r-deseq2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EBSEA")
    (synopsis "Exon Based Strategy for Expression Analysis of genes")
    (description
     "Calculates differential expression of genes based on exon counts of genes
obtained from RNA-seq sequencing data.")
    (license license:gpl2)))

(define-public r-ebcoexpress
  (package
    (name "r-ebcoexpress")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EBcoexpress" version))
       (sha256
        (base32 "0jns301q57gm527riq906p1nn41g9ss5sgyjwrjzqfw8452g09av"))))
    (properties `((upstream-name . "EBcoexpress")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-minqa r-mclust r-ebarrays))
    (home-page "https://bioconductor.org/packages/EBcoexpress")
    (synopsis "EBcoexpress for Differential Co-Expression Analysis")
    (description
     "An Empirical Bayesian Approach to Differential Co-Expression Analysis at the
Gene-Pair Level.")
    (license license:gpl2+)))

(define-public r-eatonetalchipseq
  (package
    (name "r-eatonetalchipseq")
    (version "0.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EatonEtAlChIPseq" version
                              'experiment))
       (sha256
        (base32 "1zss730sqmbbn2hs9rqd5gnx86crjmgwbrwl90yybrya9ijfa7k4"))))
    (properties `((upstream-name . "EatonEtAlChIPseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shortread r-rtracklayer r-genomicranges))
    (home-page "https://bioconductor.org/packages/EatonEtAlChIPseq")
    (synopsis
     "ChIP-seq data of ORC-binding sites in Yeast excerpted from Eaton et al. 2010")
    (description
     "@code{ChIP-seq} analysis subset from \"Conserved nucleosome positioning defines
replication origins\" (PMID 20351051).")
    (license (license:fsdg-compatible "Artistic 2.0"))))

(define-public r-easyrnaseq
  (package
    (name "r-easyrnaseq")
    (version "2.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easyRNASeq" version))
       (sha256
        (base32 "1yjcha2mj736jl838g4km5zsbjilzdcrzcwf8ivwm1yap0jbsd3d"))))
    (properties `((upstream-name . "easyRNASeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-shortread
                             r-s4vectors
                             r-rsamtools
                             r-rappdirs
                             r-lsd
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeintervals
                             r-genomeinfodb
                             r-edger
                             r-biostrings
                             r-biomart
                             r-biocparallel
                             r-biocgenerics
                             r-biocfilecache
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/easyRNASeq")
    (synopsis "Count summarization and normalization for RNA-Seq data")
    (description
     "Calculates the coverage of high-throughput short-reads against a genome of
reference and summarizes it per feature of interest (e.g. exon, gene,
transcript).  The data can be normalized as RPKM or by the DESeq or @code{edgeR}
package.")
    (license license:artistic2.0)))

(define-public r-easyreporting
  (package
    (name "r-easyreporting")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easyreporting" version))
       (sha256
        (base32 "0b2ykgdipnpm77hw6k3f29lphw9y3c3ld6cb5m0hr43pjzvgiczm"))))
    (properties `((upstream-name . "easyreporting")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rmarkdown r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/easyreporting")
    (synopsis
     "Helps creating report for improving Reproducible Computational Research")
    (description
     "An S4 class for facilitating the automated creation of rmarkdown files inside
other packages/software even without knowing rmarkdown language.  Best if
implemented in functions as \"recursive\" style programming.")
    (license license:artistic2.0)))

(define-public r-easylift
  (package
    (name "r-easylift")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easylift" version))
       (sha256
        (base32 "05mfqwl2fxm487f3hal4ydv308dysd4kiwvnj4nk1ibfsh3hzxqf"))))
    (properties `((upstream-name . "easylift")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtracklayer r-r-utils r-genomicranges
                             r-genomeinfodb r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nahid18/easylift")
    (synopsis "An R package to perform genomic liftover")
    (description
     "The easylift package provides a convenient tool for genomic liftover operations
between different genome assemblies.  It seamlessly works with Bioconductor's
GRanges objects and chain files from the UCSC Genome Browser, allowing for
straightforward handling of genomic ranges across various genome versions.  One
noteworthy feature of easylift is its integration with the @code{BiocFileCache}
package.  This integration automates the management and caching of chain files
necessary for liftover operations.  Users no longer need to manually specify
chain file paths in their function calls, reducing the complexity of the
liftover process.")
    (license license:expat)))

(define-public r-easycelltype
  (package
    (name "r-easycelltype")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EasyCellType" version))
       (sha256
        (base32 "181564vl9fcm200svn7ilbhjy28xd9xvw9iyg6v03pi1ij8ls3pm"))))
    (properties `((upstream-name . "EasyCellType")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-rlang
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-magrittr
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-clusterprofiler
                             r-biocstyle
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/EasyCellType")
    (synopsis "Annotate cell types for scRNA-seq data")
    (description
     "We developed @code{EasyCellType} which can automatically examine the input
marker lists obtained from existing software such as Seurat over the cell
markerdatabases.  Two quantification approaches to annotate cell types are
provided: Gene set enrichment analysis (GSEA) and a modified versio of Fisher's
exact test.  The function presents annotation recommendations in graphical
outcomes: bar plots for each cluster showing candidate cell types, as well as a
dot plot summarizing the top 5 significant annotations for each cluster.")
    (license license:artistic2.0)))

(define-public r-easierdata
  (package
    (name "r-easierdata")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easierData" version
                              'experiment))
       (sha256
        (base32 "0lpgankpw7yrzmh5sfd05f0srhgf031rvqg7r2ap6fx3d6j53hrn"))))
    (properties `((upstream-name . "easierData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-experimenthub
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/easierData")
    (synopsis
     "easier internal data and exemplary dataset from IMvigor210CoreBiologies package")
    (description
     "Access to internal data required for the functional performance of easier
package and exemplary bladder cancer dataset with both processed RNA-seq data
and information on response to ICB therapy generated by Mariathasan et al.
\"TGF-B attenuates tumour response to PD-L1 blockade by contributing to exclusion
of T cells\", published in Nature, 2018
[doi:10.1038/nature25501](https://doi.org/10.1038/nature25501).  The data is
made available via
[`IMvigor210@code{CoreBiologies`](http://research-pub.gene.com/IMvigor210CoreBiologies}/)
package under the CC-BY license.")
    (license license:expat)))

(define-public r-easier
  (package
    (name "r-easier")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easier" version))
       (sha256
        (base32 "1p2134xi5d9miwfng1z04035ysb7vy9w6037sgky944dk1y6j0m2"))))
    (properties `((upstream-name . "easier")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rstatix
                             r-rocr
                             r-rlang
                             r-reshape2
                             r-quantiseqr
                             r-progeny
                             r-matrixstats
                             r-magrittr
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-easierdata
                             r-dplyr
                             r-dorothea
                             r-deseq2
                             r-decoupler
                             r-coin
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/easier")
    (synopsis "Estimate Systems Immune Response from RNA-seq data")
    (description
     "This package provides a workflow for the use of @code{EaSIeR} tool, developed to
assess patients likelihood to respond to ICB therapies providing just the
patients RNA-seq data as input.  We integrate RNA-seq data with different types
of prior knowledge to extract quantitative descriptors of the tumor
microenvironment from several points of view, including composition of the
immune repertoire, and activity of intra- and extra-cellular communications.
Then, we use multi-task machine learning trained in TCGA data to identify how
these descriptors can simultaneously predict several state-of-the-art hallmarks
of anti-cancer immune response.  In this way we derive cancer-specific models
and identify cancer-specific systems biomarkers of immune response.  These
biomarkers have been experimentally validated in the literature and the
performance of @code{EaSIeR} predictions has been validated using independent
datasets form four different cancer types with patients treated with anti-PD1 or
anti-PDL1 therapy.")
    (license license:expat)))

