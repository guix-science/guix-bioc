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
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages h)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages bioinformatics)
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
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-extrachips
  (package
    (name "r-extrachips")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "extraChIPs" version))
       (sha256
        (base32 "0zn4w2hph9w0y4s0fg72lw0ir6c0qm70hips3iy0w3l8jvziq0wj"))))
    (properties `((upstream-name . "extraChIPs")))
    (build-system r-build-system)
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
                             r-limma
                             r-iranges
                             r-interactionset
                             r-gviz
                             r-glue
                             r-ggside
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-genomicranges
                             r-genomicinteractions
                             r-genomeinfodb
                             r-forcats
                             r-enrichedheatmap
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
also included.")
    (license license:gpl3)))

(define-public r-expressionatlas
  (package
    (name "r-expressionatlas")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExpressionAtlas" version))
       (sha256
        (base32 "1rrzz4m5ldawmd70j6cx6ihca6blkjixif1hdyfb475d0kbqwshh"))))
    (properties `((upstream-name . "ExpressionAtlas")))
    (build-system r-build-system)
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExploreModelMatrix" version))
       (sha256
        (base32 "131ic20k6x27pziy3gdvjmrhdsxrslas6a6z4qwhjqg4ff8vz4r3"))))
    (properties `((upstream-name . "ExploreModelMatrix")))
    (build-system r-build-system)
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExperimentSubset" version))
       (sha256
        (base32 "0andnybl0yfg53v4j865rjjy1s9l3hnwvkapdz0ixmi87bwxnshw"))))
    (properties `((upstream-name . "ExperimentSubset")))
    (build-system r-build-system)
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

(define-public r-experimenthubdata
  (package
    (name "r-experimenthubdata")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExperimentHubData" version))
       (sha256
        (base32 "0msg3wpz1ppvwc4dsm9bz9h4y4hz67xr1xwp4vv4100sg0i5v9jn"))))
    (properties `((upstream-name . "ExperimentHubData")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-httr
                             r-experimenthub
                             r-dbi
                             r-curl
                             r-biocmanager
                             r-biocgenerics
                             r-annotationhubdata))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ExperimentHubData")
    (synopsis "Add resources to ExperimentHub")
    (description
     "This package provides functions to add metadata to @code{ExperimentHub} db and
resource files to AWS S3 buckets.")
    (license license:artistic2.0)))

(define-public r-exomepeak2
  (package
    (name "r-exomepeak2")
    (version "1.14.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "exomePeak2" version))
       (sha256
        (base32 "1hvz18hlvljbv0cmdlxzvsl2ysb5m0c5qq2y8jxzsby3zxlqplph"))))
    (properties `((upstream-name . "exomePeak2")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-speedglm
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-mclust
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-deseq2
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/exomePeak2")
    (synopsis "Peak Calling and differential analysis for MeRIP-Seq")
    (description
     "@code{exomePeak2} provides peak detection and differential methylation for
Methylated RNA Immunoprecipitation Sequencing (@code{MeRIP-Seq}) data.
@code{MeRIP-Seq} is a commonly applied sequencing assay that measures the
location and abundance of RNA modification sites under specific cellular
conditions.  The technique is sensitive to PCR amplification biases commonly
found in NGS data.  In addition, the efficiency of immunoprecipitation often
varies between different IP samples. @code{exomePeak2} can perform peak calling
and differential analysis independent of GC content bias and IP efficiency
changes.")
    (license license:artistic2.0)))

(define-public r-exomecopy
  (package
    (name "r-exomecopy")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "exomeCopy" version))
       (sha256
        (base32 "1d3qkr05q8nl3fj0y4qib0q37pwjh004p746nnzk8fmms75l1p11"))))
    (properties `((upstream-name . "exomeCopy")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsamtools r-iranges r-genomicranges
                             r-genomeinfodb))
    (home-page "https://bioconductor.org/packages/exomeCopy")
    (synopsis "Copy number variant detection from exome sequencing read depth")
    (description
     "Detection of copy number variants (CNV) from exome sequencing samples, including
unpaired samples.  The package implements a hidden Markov model which uses
positional covariates, such as background read depth and GC-content, to
simultaneously normalize and segment the samples into regions of constant copy
count.")
    (license license:gpl2+)))

(define-public r-eximir
  (package
    (name "r-eximir")
    (version "2.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExiMiR" version))
       (sha256
        (base32 "0wk6wz123590b4mf0kf7g3cf0mkb74hhiwpqgsywc2sgs75n2b8h"))))
    (properties `((upstream-name . "ExiMiR")))
    (build-system r-build-system)
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ExCluster" version))
       (sha256
        (base32 "0wfyfl4bvh6v993w76jxaicnsdvllhcnjv0z93ljlimj988mpxdl"))))
    (properties `((upstream-name . "ExCluster")))
    (build-system r-build-system)
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

(define-public r-ewce
  (package
    (name "r-ewce")
    (version "1.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EWCE" version))
       (sha256
        (base32 "0gnmq9f58idw9jlcyqfri98kdm0jqi3gmqzc90bqda49mj34ynn7"))))
    (properties `((upstream-name . "EWCE")))
    (build-system r-build-system)
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
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EventPointer" version))
       (sha256
        (base32 "15v2dbbllsy33hypsgcwcldm7m0bf282l4pwfsvm14v8mv4nv7p4"))))
    (properties `((upstream-name . "EventPointer")))
    (build-system r-build-system)
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "evaluomeR" version))
       (sha256
        (base32 "06nri3a6y9vp5frk2d3vvyqnm9jgdrfl3qlldka6dpmynyfdw04i"))))
    (properties `((upstream-name . "evaluomeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
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

(define-public r-eudysbiome
  (package
    (name "r-eudysbiome")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eudysbiome" version))
       (sha256
        (base32 "0any342ja9y45h2adzz7aj358psydgk6379kmgrvfwmwjnrdblkx"))))
    (properties `((upstream-name . "eudysbiome")))
    (build-system r-build-system)
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

(define-public r-esetvis
  (package
    (name "r-esetvis")
    (version "1.28.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "esetVis" version))
       (sha256
        (base32 "1yb0z3q056rl41g4igww7d66w9qwdd6z2cfjyr3185z53za39a3l"))))
    (properties `((upstream-name . "esetVis")))
    (build-system r-build-system)
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "escheR" version))
       (sha256
        (base32 "0hb1kkd1c57wpyfng5rmbnfqcl6dv84smxv5dj103ki3h56v55yr"))))
    (properties `((upstream-name . "escheR")))
    (build-system r-build-system)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "esATAC" version))
       (sha256
        (base32 "1922xgk3zq9r9j5r76ha5a7lpmxbix10i84yckg94k1i4bm71c51"))))
    (properties `((upstream-name . "esATAC")))
    (build-system r-build-system)
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ERSSA" version))
       (sha256
        (base32 "1ipzxlv454nykff3cn84fp7awv1iv92hb227570rn16kqj8j0pln"))))
    (properties `((upstream-name . "ERSSA")))
    (build-system r-build-system)
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "erccdashboard" version))
       (sha256
        (base32 "12smnn06i8mj5rq51hsmay7nz8f1hg19xxdbwax511l96mjjrq2p"))))
    (properties `((upstream-name . "erccdashboard")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-scales
                             r-rocr
                             r-reshape2
                             r-qvalue
                             r-plyr
                             r-mass
                             r-locfit
                             r-limma
                             r-gtools
                             r-gridextra
                             r-gplots
                             r-ggplot2
                             r-edger))
    (home-page "https://github.com/munrosa/erccdashboard")
    (synopsis
     "Assess Differential Gene Expression Experiments with ERCC Controls")
    (description
     "Technical performance metrics for differential gene expression experiments using
External RNA Controls Consortium (ERCC) spike-in ratio mixtures.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-epivizrstandalone
  (package
    (name "r-epivizrstandalone")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizrStandalone" version))
       (sha256
        (base32 "0k7s3agkhf89pwkfjcg54ywnfl2anxwvgb4kws6iamyk4q337fz3"))))
    (properties `((upstream-name . "epivizrStandalone")))
    (build-system r-build-system)
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizrServer" version))
       (sha256
        (base32 "03dmgiifs39vy5igbjjy6xlaz5bzc1zgjsr32afn0vdbyq678fry"))))
    (properties `((upstream-name . "epivizrServer")))
    (build-system r-build-system)
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizrData" version))
       (sha256
        (base32 "0r93s1nb7vj49c2biqpzbwpf68jaslxklha98aicq7ddxzdg1yl0"))))
    (properties `((upstream-name . "epivizrData")))
    (build-system r-build-system)
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizrChart" version))
       (sha256
        (base32 "17v454wxbdz5696q3dm606r3n3lfabdpi8mh8shmv7a6kvm5pyvq"))))
    (properties `((upstream-name . "epivizrChart")))
    (build-system r-build-system)
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
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epivizr" version))
       (sha256
        (base32 "093i6j073ny5j1zl9spsrcclqi7ylfij2pn00s89k0pqc9bs85rj"))))
    (properties `((upstream-name . "epivizr")))
    (build-system r-build-system)
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

(define-public r-epitxdb
  (package
    (name "r-epitxdb")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiTxDb" version))
       (sha256
        (base32 "07rymnrhs8gnacylgg6lc506m8p5w7kghzz72i4gysanv1z39g95"))))
    (properties `((upstream-name . "EpiTxDb")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-s4vectors
                             r-rsqlite
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epistasisGA" version))
       (sha256
        (base32 "0dnq5a40cjrmr2r8dzc479jvazscv8nyzrsb15n7y0sp6g6nfj11"))))
    (properties `((upstream-name . "epistasisGA")))
    (build-system r-build-system)
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epistack" version))
       (sha256
        (base32 "0m7j1dxqmzfz4b6wkb0zczz5pzy4g23l80qpmwrdffn2m3q2r2vk"))))
    (properties `((upstream-name . "epistack")))
    (build-system r-build-system)
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

(define-public r-epinem
  (package
    (name "r-epinem")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epiNEM" version))
       (sha256
        (base32 "02v3p3jdwrizx42ddkzhaz2hhvamdy4vdk16hq79kx12aqgniplf"))))
    (properties `((upstream-name . "epiNEM")))
    (build-system r-build-system)
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

(define-public r-epimutacions
  (package
    (name "r-epimutacions")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epimutacions" version))
       (sha256
        (base32 "1gkq4fhk406cdkmydbvpgp22v4q9wb1ahddblwdvnha1vnraypga"))))
    (properties `((upstream-name . "epimutacions")))
    (build-system r-build-system)
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
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

(define-public r-epimix
  (package
    (name "r-epimix")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EpiMix" version))
       (sha256
        (base32 "1yrhc4nk95racnddxfyp98v543hdakqmiy9z9a83hfdr8bln8hq1"))))
    (properties `((upstream-name . "EpiMix")))
    (build-system r-build-system)
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epigraHMM" version))
       (sha256
        (base32 "0x7phf7hak1mvlpswdkk18dqas0yri874h8h97lw0is7f70vvxrn"))))
    (properties `((upstream-name . "epigraHMM")))
    (build-system r-build-system)
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epigenomix" version))
       (sha256
        (base32 "08q57qbrw4z69dzdsivl9a5r9iin84f2rbkdinm4vdnh7zlma7ab"))))
    (properties `((upstream-name . "epigenomix")))
    (build-system r-build-system)
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epidecodeR" version))
       (sha256
        (base32 "0187186mxflij9kf89sbbj30yk9bdfjhmcy2vrykx8rq4vn9rs4p"))))
    (properties `((upstream-name . "epidecodeR")))
    (build-system r-build-system)
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

(define-public r-epialleler
  (package
    (name "r-epialleler")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "epialleleR" version))
       (sha256
        (base32 "1zdgjmdxzpk8r3hnx413r7m7srmadx9fi694ib4ry89h5ky6ckqx"))))
    (properties `((upstream-name . "epialleleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zlibbioc
                             r-variantannotation
                             r-summarizedexperiment
                             r-rhtslib
                             r-rcpp
                             r-genomicranges
                             r-genomeinfodb
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
also extract methylation patterns and assess allele specificity of methylation.")
    (license license:artistic2.0)))

(define-public r-ensemblvep
  (package
    (name "r-ensemblvep")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ensemblVEP" version))
       (sha256
        (base32 "1kglg8gxaaihs1m621rrwiw4874k4vkm27s7522vc8qd0frzjm66"))))
    (properties `((upstream-name . "ensemblVEP")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-s4vectors
                             r-genomicranges
                             r-genomeinfodb
                             r-biostrings
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/ensemblVEP")
    (synopsis "R Interface to Ensembl Variant Effect Predictor")
    (description
     "Query the Ensembl Variant Effect Predictor via the perl API.")
    (license license:artistic2.0)))

(define-public r-enrichviewnet
  (package
    (name "r-enrichviewnet")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "enrichViewNet" version))
       (sha256
        (base32 "0475c20q3sc9srgqrkpabspcqlsbh63r4nfl3qjr97nsj5jxsywv"))))
    (properties `((upstream-name . "enrichViewNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-strex
                             r-rcy3
                             r-jsonlite
                             r-gprofiler2
                             r-enrichplot))
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

(define-public r-enrichtf
  (package
    (name "r-enrichtf")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "enrichTF" version))
       (sha256
        (base32 "0lhmlxw7mpb76w2agm25v5qzxgf28wfw2xc0fnlqn2sbbfj295y9"))))
    (properties `((upstream-name . "enrichTF")))
    (build-system r-build-system)
    (propagated-inputs (list r-tfbstools
                             r-s4vectors
                             r-rtracklayer
                             r-rmarkdown
                             r-r-utils
                             r-pipeframe
                             r-motifmatchr
                             r-magrittr
                             r-iranges
                             r-heatmap3
                             r-ggpubr
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-clusterprofiler
                             r-bsgenome
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wzthu/enrichTF")
    (synopsis "Transcription Factors Enrichment Analysis")
    (description
     "As transcription factors (TFs) play a crucial role in regulating the
transcription process through binding on the genome alone or in a combinatorial
manner, TF enrichment analysis is an efficient and important procedure to locate
the candidate functional TFs from a set of experimentally defined regulatory
regions.  While it is commonly accepted that structurally related TFs may have
similar binding preference to sequences (i.e.  motifs) and one TF may have
multiple motifs, TF enrichment analysis is much more challenging than motif
enrichment analysis.  Here we present a R package for TF enrichment analysis
which combine motif enrichment with the PECA model.")
    (license license:gpl3)))

(define-public r-enrichmentbrowser
  (package
    (name "r-enrichmentbrowser")
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EnrichmentBrowser" version))
       (sha256
        (base32 "1lvk6l9phsxsyhbdq389yj4x4vx0p5yq0nv59i02mvj6cd4n1yq4"))))
    (properties `((upstream-name . "EnrichmentBrowser")))
    (build-system r-build-system)
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

(define-public r-enmcb
  (package
    (name "r-enmcb")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EnMCB" version))
       (sha256
        (base32 "18xb943r7szyrgfn8dcq9ajfp465vsz0l32sdy1wclkb9i77jmr7"))))
    (properties `((upstream-name . "EnMCB")))
    (build-system r-build-system)
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
    (version "1.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "enhancerHomologSearch" version))
       (sha256
        (base32 "1j5gbqin6qscz83sy1gk90afzyzp4njp8y9ajzfxsbhapcpx729h"))))
    (properties `((upstream-name . "enhancerHomologSearch")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rcpp
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

(define-public r-empiricalbrownsmethod
  (package
    (name "r-empiricalbrownsmethod")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EmpiricalBrownsMethod" version))
       (sha256
        (base32 "03rs0i1m4qrjmv1xscwa6va7vyixghgbrwsbmnj5ri5bcwppjv7g"))))
    (properties `((upstream-name . "EmpiricalBrownsMethod")))
    (build-system r-build-system)
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
    (version "2.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EMDomics" version))
       (sha256
        (base32 "152rhw499kkv8pzl4i5d0zmkprjzkqj4n36fxsq6n6b5kxigp56j"))))
    (properties `((upstream-name . "EMDomics")))
    (build-system r-build-system)
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

(define-public r-elmer
  (package
    (name "r-elmer")
    (version "2.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ELMER" version))
       (sha256
        (base32 "0xx2hh4jj2bg951agf90s4a4p3i5qbmrysn6h0dy5269vclzwcwh"))))
    (properties `((upstream-name . "ELMER")))
    (build-system r-build-system)
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
    (version "1.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eisaR" version))
       (sha256
        (base32 "0bg28252qvvzhw39vyqc0mv96bc78a995k6g5am6bzfkclgd2nri"))))
    (properties `((upstream-name . "eisaR")))
    (build-system r-build-system)
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eiR" version))
       (sha256
        (base32 "0hz4d0did83jjl8x3j5bm2rd6vsbi6b7zsc2k5bhcax280jq3hjk"))))
    (properties `((upstream-name . "eiR")))
    (build-system r-build-system)
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

(define-public r-egsea
  (package
    (name "r-egsea")
    (version "1.30.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EGSEA" version))
       (sha256
        (base32 "1wvj51xfbr38lj7ypphy274f9jybs6ywjknczfxrbsaiq5awvkab"))))
    (properties `((upstream-name . "EGSEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-topgo
                             r-stringi
                             r-safe
                             r-rcolorbrewer
                             r-plotly
                             r-pathview
                             r-padog
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EGAD" version))
       (sha256
        (base32 "0j9vh489mrg1vl8hb8imppi1x5p0lmys1xi445x2l1ar93fr6f55"))))
    (properties `((upstream-name . "EGAD")))
    (build-system r-build-system)
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "eds" version))
       (sha256
        (base32 "0xdipsv2s5vl754i37xlsim8b2saz3p0355fbmn0iyc626bj00ya"))))
    (properties `((upstream-name . "eds")))
    (build-system r-build-system)
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EDIRquery" version))
       (sha256
        (base32 "1qavmcr2a59b9bxqvvbqj37pr3iq7xmal51r7zc9cr4ya52ihqm7"))))
    (properties `((upstream-name . "EDIRquery")))
    (build-system r-build-system)
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
    (version "2.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "edge" version))
       (sha256
        (base32 "1slfbrj9syad9mjr0q9cg9glc363ggsn2qz2yx90m3cpiwvq8qxb"))))
    (properties `((upstream-name . "edge")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva r-snm r-qvalue r-mass r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jdstorey/edge")
    (synopsis "Extraction of Differential Gene Expression")
    (description
     "The edge package implements methods for carrying out differential expression
analyses of genome-wide gene expression studies.  Significance testing using the
optimal discovery procedure and generalized likelihood ratio tests (equivalent
to F-tests and t-tests) are implemented for general study designs.  Special
functions are available to facilitate the analysis of common study designs,
including time course experiments.  Other packages such as snm, sva, and qvalue
are integrated in edge to provide a wide range of tools for gene expression
analysis.")
    (license license:expat)))

(define-public r-ecolitk
  (package
    (name "r-ecolitk")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ecolitk" version))
       (sha256
        (base32 "1kdq5a8r6lzvrcafp4r2spslnkxaz5a4csmwi9mpn4h9sjgxbw53"))))
    (properties `((upstream-name . "ecolitk")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/ecolitk")
    (synopsis "Meta-data and tools for E. coli")
    (description
     "Meta-data and tools to work with E. coli.  The tools are mostly plotting
functions to work with circular genomes.  They can used with other
genomes/plasmids.")
    (license license:gpl2+)))

(define-public r-ebseqhmm
  (package
    (name "r-ebseqhmm")
    (version "1.35.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EBSeqHMM" version))
       (sha256
        (base32 "1vgpda6h9caq67iqdd88mrhq8502jc056zf8fgwfgd8z9cayhsdn"))))
    (properties `((upstream-name . "EBSeqHMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-ebseq))
    (home-page "https://bioconductor.org/packages/EBSeqHMM")
    (synopsis
     "Bayesian analysis for identifying gene or isoform expression changes in ordered RNA-seq experiments")
    (description
     "The EB@code{SeqHMM} package implements an auto-regressive hidden Markov model
for statistical analysis in ordered RNA-seq experiments (e.g. time course or
spatial course data).  The EB@code{SeqHMM} package provides functions to
identify genes and isoforms that have non-constant expression profile over the
time points/positions, and cluster them into expression paths.")
    (license license:artistic2.0)))

(define-public r-ebsea
  (package
    (name "r-ebsea")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EBSEA" version))
       (sha256
        (base32 "1yasczqxx8vvh2h3nlnx99y0yyyyvv4qyfahs9c90yl5gk9xhwx3"))))
    (properties `((upstream-name . "EBSEA")))
    (build-system r-build-system)
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "EBcoexpress" version))
       (sha256
        (base32 "0d8y193wpg8zi627bwl6dqbk3fdclfb8v9vsx9c0d6r1qldyrvqr"))))
    (properties `((upstream-name . "EBcoexpress")))
    (build-system r-build-system)
    (propagated-inputs (list r-minqa r-mclust r-ebarrays))
    (home-page "https://bioconductor.org/packages/EBcoexpress")
    (synopsis "EBcoexpress for Differential Co-Expression Analysis")
    (description
     "An Empirical Bayesian Approach to Differential Co-Expression Analysis at the
Gene-Pair Level")
    (license license:gpl2+)))

(define-public r-easyrnaseq
  (package
    (name "r-easyrnaseq")
    (version "2.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easyRNASeq" version))
       (sha256
        (base32 "0hirbj98kq1gvf56adr60jidij9mgqv3s0fqh3m97m5zf928l2pz"))))
    (properties `((upstream-name . "easyRNASeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-shortread
                             r-s4vectors
                             r-rsamtools
                             r-rappdirs
                             r-lsd
                             r-locfit
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easyreporting" version))
       (sha256
        (base32 "0y2sjs1vc8qar9ns48xhcx9pjkxlw5zs0yg2ddprby42asds53ci"))))
    (properties `((upstream-name . "easyreporting")))
    (build-system r-build-system)
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easylift" version))
       (sha256
        (base32 "1xdb8xp8f3hy0mv62z3chx7zi2nfzfijc4pwl8dn71q05lj8jh1n"))))
    (properties `((upstream-name . "easylift")))
    (build-system r-build-system)
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

(define-public r-easier
  (package
    (name "r-easier")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "easier" version))
       (sha256
        (base32 "0llgg9hvadi3daw3j4vh41ivjw7q2x3l9rgxd49lpzdfd5v13kv1"))))
    (properties `((upstream-name . "easier")))
    (build-system r-build-system)
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
                             r-dplyr
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

