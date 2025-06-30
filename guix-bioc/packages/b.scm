(define-module (guix-bioc packages b)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages e)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python)
  #:use-module (gnu packages machine-learning)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages a)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages m)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix-cran packages t)
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
  #:use-module (guix-bioc packages a))

(define-public r-busseq
  (package
    (name "r-busseq")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUSseq" version))
       (sha256
        (base32 "0sxjwrh3vcpi5sf80mkcnx3jsl53xla9qrhpq6mxfg61gx9psdwh"))))
    (properties `((upstream-name . "BUSseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-singlecellexperiment
                             r-s4vectors r-gplots))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/songfd2018/BUSseq")
    (synopsis
     "Batch Effect Correction with Unknow Subtypes for scRNA-seq data")
    (description
     "BUSseq R package fits an interpretable Bayesian hierarchical model---the Batch
Effects Correction with Unknown Subtypes for @code{scRNA} seq Data (BUSseq)---to
correct batch effects in the presence of unknown cell types.  BUSseq is able to
simultaneously correct batch effects, clusters cell types, and takes care of the
count data nature, the overdispersion, the dropout events, and the cell-specific
sequencing depth of @code{scRNA-seq} data.  After correcting the batch effects
with BUSseq, the corrected value can be used for downstream analysis as if all
cells were sequenced in a single batch.  BUSseq can integrate read count
matrices obtained from different @code{scRNA-seq} platforms and allow cell types
to be measured in some but not all of the batches as long as the experimental
design fulfills the conditions listed in our manuscript.")
    (license license:artistic2.0)))

(define-public r-busparse
  (package
    (name "r-busparse")
    (version "1.22.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUSpaRse" version))
       (sha256
        (base32 "1rlzw7p8mzfw20a9njnaam2y5895ccakhvzkw70p5zsx3vf76vzv"))))
    (properties `((upstream-name . "BUSpaRse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zeallot
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-s4vectors
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-plyranges
                             r-matrix
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-ensembldb
                             r-dplyr
                             r-bsgenome
                             r-biostrings
                             r-biomart
                             r-biocgenerics
                             r-bh
                             r-annotationfilter
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BUStools/BUSpaRse")
    (synopsis "kallisto | bustools R utilities")
    (description
     "The kallisto | bustools pipeline is a fast and modular set of tools to convert
single cell RNA-seq reads in fastq files into gene count or transcript
compatibility counts (TCC) matrices for downstream analysis.  Central to this
pipeline is the barcode, UMI, and set (BUS) file format.  This package serves
the following purposes: First, this package allows users to manipulate BUS
format files as data frames in R and then convert them into gene count or TCC
matrices.  Furthermore, since R and Rcpp code is easier to handle than pure C++
code, users are encouraged to tweak the source code of this package to
experiment with new uses of BUS format and different ways to convert the BUS
file into gene count matrix.  Second, this package can conveniently generate
files required to generate gene count matrices for spliced and unspliced
transcripts for RNA velocity.  Here biotypes can be filtered and scaffolds and
haplotypes can be removed, and the filtered transcriptome can be extracted and
written to disk.  Third, this package implements utility functions to get
transcripts and associated genes required to convert BUS files to gene count
matrices, to write the transcript to gene information in the format required by
bustools, and to read output of bustools into R as sparses matrices.")
    (license license:bsd-2)))

(define-public r-buscorrect
  (package
    (name "r-buscorrect")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUScorrect" version))
       (sha256
        (base32 "13l3x9jdfcdh8aswvqkhk1gjbz8y6nl3v4lbhw57w1smxlj9gz3g"))))
    (properties `((upstream-name . "BUScorrect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-gplots))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BUScorrect")
    (synopsis "Batch Effects Correction with Unknown Subtypes")
    (description
     "High-throughput experimental data are accumulating exponentially in public
databases.  However, mining valid scientific discoveries from these abundant
resources is hampered by technical artifacts and inherent biological
heterogeneity.  The former are usually termed \"batch effects,\" and the latter is
often modelled by \"subtypes.\" The R package BUScorrect fits a Bayesian
hierarchical model, the Batch-effects-correction-with-Unknown-Subtypes model
(BUS), to correct batch effects in the presence of unknown subtypes.  BUS is
capable of (a) correcting batch effects explicitly, (b) grouping samples that
share similar characteristics into subtypes, (c) identifying features that
distinguish subtypes, and (d) enjoying a linear-order computation complexity.")
    (license license:gpl2+)))

(define-public r-bus
  (package
    (name "r-bus")
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUS" version))
       (sha256
        (base32 "1x017881b1zw3hnfj45llmrkn76qrzqirfyv1ldif7lkg2a00qkz"))))
    (properties `((upstream-name . "BUS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-minet r-infotheo))
    (home-page "https://bioconductor.org/packages/BUS")
    (synopsis "Gene network reconstruction")
    (description
     "This package can be used to compute associations among genes (gene-networks) or
between genes and some external traits (i.e.  clinical).")
    (license license:gpl3)))

(define-public r-bumhmm
  (package
    (name "r-bumhmm")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BUMHMM" version))
       (sha256
        (base32 "0anmnwbpcrz0n5zwf80cb4zxmybhxf94ayzyxpilfb04xg1j77dm"))))
    (properties `((upstream-name . "BUMHMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringi
                             r-iranges
                             r-gtools
                             r-devtools
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BUMHMM")
    (synopsis
     "Computational pipeline for computing probability of modification from structure probing experiment data")
    (description
     "This is a probabilistic modelling pipeline for computing per- nucleotide
posterior probabilities of modification from the data collected in structure
probing experiments.  The model supports multiple experimental replicates and
empirically corrects coverage- and sequence-dependent biases.  The model
utilises the measure of a \"drop-off rate\" for each nucleotide, which is compared
between replicates through a log-ratio (LDR).  The LDRs between control
replicates define a null distribution of variability in drop-off rate observed
by chance and LDRs between treatment and control replicates gets compared to
this distribution.  Resulting empirical p-values (probability of being \"drawn\"
from the null distribution) are used as observations in a Hidden Markov Model
with a Beta-Uniform Mixture model used as an emission model.  The resulting
posterior probabilities indicate the probability of a nucleotide of having being
modified in a structure probing experiment.")
    (license license:gpl3)))

(define-public r-bulksignalr
  (package
    (name "r-bulksignalr")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BulkSignalR" version))
       (sha256
        (base32 "0dhnx48ff0kspy6dbi6cpr5wc8pwx23r3bbai6pjrfcmh54qnpz0"))))
    (properties `((upstream-name . "BulkSignalR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stabledist
                             r-spatialexperiment
                             r-scales
                             r-rtsne
                             r-rsqlite
                             r-rlang
                             r-rcurl
                             r-rann
                             r-orthogene
                             r-multtest
                             r-matrixstats
                             r-jsonlite
                             r-igraph
                             r-httr
                             r-gridextra
                             r-glmnet
                             r-ggrepel
                             r-ggplot2
                             r-ggalluvial
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-dbi
                             r-curl
                             r-complexheatmap
                             r-cli
                             r-circlize
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ZheFrench/BulkSignalR")
    (synopsis
     "Infer Ligand-Receptor Interactions from bulk expression (transcriptomics/proteomics) data, or spatial transcriptomics")
    (description
     "Inference of ligand-receptor (LR) interactions from bulk expression
(transcriptomics/proteomics) data, or spatial transcriptomics.
@code{BulkSignalR} bases its inferences on the LRdb database included in our
other package, @code{SingleCellSignalR} available from Bioconductor.  It relies
on a statistical model that is specific to bulk data sets.  Different
visualization and data summary functions are proposed to help navigating
prediction results.")
    (license (list license:cecill
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-bugsigdbr
  (package
    (name "r-bugsigdbr")
    (version "1.14.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bugsigdbr" version))
       (sha256
        (base32 "0ymr4di7daf5n0jy71lbn5wlyvdpid64n80inlvgf3n6w1qf76h4"))))
    (properties `((upstream-name . "bugsigdbr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vroom r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/bugsigdbr")
    (synopsis "R-side access to published microbial signatures from BugSigDB")
    (description
     "The bugsigdbr package implements convenient access to bugsigdb.org from within
R/Bioconductor.  The goal of the package is to facilitate import of
@code{BugSigDB} data into R/Bioconductor, provide utilities for extracting
microbe signatures, and enable export of the extracted signatures to plain text
files in standard file formats such as GMT.")
    (license license:gpl3)))

(define-public r-bugphyzz
  (package
    (name "r-bugphyzz")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bugphyzz" version
                              'experiment))
       (sha256
        (base32 "1f37fyj1234bh31m95g79k0l6zmk7wwkd4pdan7xvnhp9xqadq53"))))
    (properties `((upstream-name . "bugphyzz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-s4vectors
                             r-purrr
                             r-httr2
                             r-dplyr
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/bugphyzz")
    (synopsis
     "harmonized data resource and software for enrichment analysis of microbial physiologies")
    (description
     "bugphyzz is an electronic database of standardized microbial annotations.  It
facilitates the creation of microbial signatures based on shared attributes,
which are utilized for bug set enrichment analysis.  The data also includes
annotations imputed with ancestra state reconstruction methods.")
    (license license:artistic2.0)))

(define-public r-bufferedmatrixmethods
  (package
    (name "r-bufferedmatrixmethods")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BufferedMatrixMethods" version))
       (sha256
        (base32 "0inxq1ahx57y5g2kd1spp64v4rqja8y8zich3rj8887nw6j47jiw"))))
    (properties `((upstream-name . "BufferedMatrixMethods")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bufferedmatrix))
    (home-page "https://github.bom/bmbolstad/BufferedMatrixMethods")
    (synopsis
     "Microarray Data related methods that utlize BufferedMatrix objects")
    (description
     "Microarray analysis methods that use @code{BufferedMatrix} objects.")
    (license license:gpl2+)))

(define-public r-bufferedmatrix
  (package
    (name "r-bufferedmatrix")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BufferedMatrix" version))
       (sha256
        (base32 "1186mmiw7pca05llgzq3lqycr0kcyb94fbrjyvvxaa7cjlzhrlni"))))
    (properties `((upstream-name . "BufferedMatrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/bmbolstad/BufferedMatrix")
    (synopsis "matrix data storage object held in temporary files")
    (description
     "This package provides a tabular style data object where most data is stored
outside main memory.  A buffer is used to speed up access to data.")
    (license license:lgpl2.0+)))

(define-public r-bubbletree
  (package
    (name "r-bubbletree")
    (version "2.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BubbleTree" version))
       (sha256
        (base32 "1h3wyp9f554zlf4ah6dqgb1c26bkx1ks2q709hz3krchgzv3pinn"))))
    (properties `((upstream-name . "BubbleTree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-writexls
                             r-rcolorbrewer
                             r-plyr
                             r-magrittr
                             r-limma
                             r-iranges
                             r-gtools
                             r-gtable
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-e1071
                             r-dplyr
                             r-biovizbase
                             r-biocstyle
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BubbleTree")
    (synopsis
     "BubbleTree: an intuitive visualization to elucidate tumoral aneuploidy and clonality in somatic mosaicism using next generation sequencing data")
    (description "CNV analysis in groups of tumor samples.")
    (license license:lgpl3+)))

(define-public r-bsubtilisprobe
  (package
    (name "r-bsubtilisprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bsubtilisprobe" version
                              'annotation))
       (sha256
        (base32 "0k99hvgaswn96x4yanvr9cy8bdy69sd5q7yp6dj9synxj7s1fcw9"))))
    (properties `((upstream-name . "bsubtilisprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/bsubtilisprobe")
    (synopsis "Probe sequence data for microarrays of type bsubtilis")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Bsubtilis\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-bsubtiliscdf
  (package
    (name "r-bsubtiliscdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bsubtiliscdf" version
                              'annotation))
       (sha256
        (base32 "1rihrjim37b49rhqr4nxga8sp67qri9xqlqc141mhbngh6cw3iyl"))))
    (properties `((upstream-name . "bsubtiliscdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/bsubtiliscdf")
    (synopsis "bsubtiliscdf")
    (description
     "This package provides a package containing an environment representing the
Bsubtilis.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-bsseqdata
  (package
    (name "r-bsseqdata")
    (version "0.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bsseqData" version
                              'experiment))
       (sha256
        (base32 "1x4j7bzkijaqgycixzwm2rl5hasm6gs8d7xvs5iahpl53pvrgmhs"))))
    (properties `((upstream-name . "bsseqData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsseq))
    (home-page "https://bioconductor.org/packages/bsseqData")
    (synopsis "Example whole genome bisulfite data for the bsseq package")
    (description "Example whole genome bisulfite data for the bsseq package.")
    (license license:artistic2.0)))

(define-public r-bsgenomeforge
  (package
    (name "r-bsgenomeforge")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenomeForge" version))
       (sha256
        (base32 "0118mxyg8xxkwkfg6k1zw2xnx4b6zacf3bn9jy0kfks555cfbjsy"))))
    (properties `((upstream-name . "BSgenomeForge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocio
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BSgenomeForge")
    (synopsis "Forge your own BSgenome data package")
    (description
     "This package provides a set of tools to forge BSgenome data packages.
Supersedes the old seed-based tools from the BSgenome software package.  This
package allows the user to create a BSgenome data package in one function call,
simplifying the old seed-based process.")
    (license license:artistic2.0)))

(define-public r-bsgenome-vvinifera-urgi-iggp8x
  (package
    (name "r-bsgenome-vvinifera-urgi-iggp8x")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Vvinifera.URGI.IGGP8X" version
                              'annotation))
       (sha256
        (base32 "0v0hi2pbbi5ynd92bvbv4bzr7bgv48kvyz62hdv7k9gh7s5pg0id"))))
    (properties `((upstream-name . "BSgenome.Vvinifera.URGI.IGGP8X")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Vvinifera.URGI.IGGP8X")
    (synopsis
     "Full reference nuclear genome sequences for Vitis vinifera subsp. vinifera PN40024 (IGGP version 8X)")
    (description
     "Full reference nuclear genome sequences for Vitis vinifera subsp.  vinifera
PN40024 (derived from Pinot Noir and close to homozygosity after 6-9 rounds of
selfing) as assembled by the IGGP (version 8X) and available at the URGI (INRA).
 More details in Jaillon et al (Nature, 2007).")
    (license license:cc0)))

(define-public r-bsgenome-vvinifera-urgi-iggp12xv2
  (package
    (name "r-bsgenome-vvinifera-urgi-iggp12xv2")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Vvinifera.URGI.IGGP12Xv2" version
                              'annotation))
       (sha256
        (base32 "1saavsi75gw33jphhm3qb5psyfrv850ss4cmqr4i7aw1kc0fvs1j"))))
    (properties `((upstream-name . "BSgenome.Vvinifera.URGI.IGGP12Xv2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Vvinifera.URGI.IGGP12Xv2")
    (synopsis
     "Full reference nuclear genome sequences for Vitis vinifera subsp. vinifera PN40024 (IGGP version 12Xv2)")
    (description
     "Full reference nuclear genome sequences for Vitis vinifera subsp.  vinifera
PN40024 (derived from Pinot Noir and close to homozygosity after 6-9 rounds of
selfing) as assembled by the IGGP (version 12Xv2) and available at the URGI
(INRA).")
    (license license:cc0)))

(define-public r-bsgenome-vvinifera-urgi-iggp12xv0
  (package
    (name "r-bsgenome-vvinifera-urgi-iggp12xv0")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Vvinifera.URGI.IGGP12Xv0" version
                              'annotation))
       (sha256
        (base32 "1m8mqkiqs7291hccb8pfyf2yxpky45qr6j3d9wkvp9x3ra3h0yxf"))))
    (properties `((upstream-name . "BSgenome.Vvinifera.URGI.IGGP12Xv0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Vvinifera.URGI.IGGP12Xv0")
    (synopsis
     "Full reference nuclear genome sequences for Vitis vinifera subsp. vinifera PN40024 (IGGP version 12Xv0)")
    (description
     "Full reference nuclear genome sequences for Vitis vinifera subsp.  vinifera
PN40024 (derived from Pinot Noir and close to homozygosity after 6-9 rounds of
selfing) as assembled by the IGGP (version 12Xv0) and available at the URGI
(INRA).")
    (license license:cc0)))

(define-public r-bsgenome-tguttata-ucsc-taegut2
  (package
    (name "r-bsgenome-tguttata-ucsc-taegut2")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Tguttata.UCSC.taeGut2" version
                              'annotation))
       (sha256
        (base32 "1ikbd5q77l2zmbmbm511s41h00627zi0gq31cm4qr3k1cvlz8617"))))
    (properties `((upstream-name . "BSgenome.Tguttata.UCSC.taeGut2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Tguttata.UCSC.taeGut2")
    (synopsis
     "Full genome sequences for Taeniopygia guttata (UCSC version taeGut2)")
    (description
     "Full genome sequences for Taeniopygia guttata (Zebra finch) as provided by UCSC
(@code{taeGut2}, Feb.  2013) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-tguttata-ucsc-taegut1-masked
  (package
    (name "r-bsgenome-tguttata-ucsc-taegut1-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Tguttata.UCSC.taeGut1.masked" version
                              'annotation))
       (sha256
        (base32 "05g9qp2vkp8ia6kqgy07ihnr1w1ca8c96rg7vfahh2nsr5j6ymba"))))
    (properties `((upstream-name . "BSgenome.Tguttata.UCSC.taeGut1.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-tguttata-ucsc-taegut1 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Tguttata.UCSC.taeGut1.masked")
    (synopsis
     "Full masked genome sequences for Taeniopygia guttata (UCSC version taeGut1)")
    (description
     "Full genome sequences for Taeniopygia guttata (Zebra finch) as provided by UCSC
(@code{taeGut1}, Jul.  2008) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Tguttata.UCSC.@code{taeGut1}, except that each of
them has the 2 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), and (2) the mask of intra-contig ambiguities (AMB mask).  Both masks are
\"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-tguttata-ucsc-taegut1
  (package
    (name "r-bsgenome-tguttata-ucsc-taegut1")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Tguttata.UCSC.taeGut1" version
                              'annotation))
       (sha256
        (base32 "0v8g4q64pj4mxr8wzyxm9w2d2lyzq1qzl5yvh2dvwpqnghicj10v"))))
    (properties `((upstream-name . "BSgenome.Tguttata.UCSC.taeGut1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Tguttata.UCSC.taeGut1")
    (synopsis
     "Full genome sequences for Taeniopygia guttata (UCSC version taeGut1)")
    (description
     "Full genome sequences for Taeniopygia guttata (Zebra finch) as provided by UCSC
(@code{taeGut1}, Jul.  2008) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-tgondii-toxodb-7-0
  (package
    (name "r-bsgenome-tgondii-toxodb-7-0")
    (version "0.99.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Tgondii.ToxoDB.7.0" version
                              'annotation))
       (sha256
        (base32 "1naxnls0r1r6csfs88mmjnfa7nmsgjx5lngn1ln4llragjrqnngm"))))
    (properties `((upstream-name . "BSgenome.Tgondii.ToxoDB.7.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Tgondii.ToxoDB.7.0")
    (synopsis "Toxoplasma gondii ME49 (ToxoDB-7.0)")
    (description
     "Toxoplasma gondii ME49 genome Release 7.0 available at http://www.toxodb.org.")
    (license (license:fsdg-compatible "GPL 3"))))

(define-public r-bsgenome-sscrofa-ucsc-susscr3-masked
  (package
    (name "r-bsgenome-sscrofa-ucsc-susscr3-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Sscrofa.UCSC.susScr3.masked" version
                              'annotation))
       (sha256
        (base32 "0ym82vysn131anp8zmmkgyx6zmyh44am5i1m3j9kj5lvq874ycha"))))
    (properties `((upstream-name . "BSgenome.Sscrofa.UCSC.susScr3.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-sscrofa-ucsc-susscr3 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Sscrofa.UCSC.susScr3.masked")
    (synopsis
     "Full masked genome sequences for Sus scrofa (UCSC version susScr3)")
    (description
     "Full genome sequences for Sus scrofa (Pig) as provided by UCSC (@code{susScr3},
Aug.  2011) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Sscrofa.UCSC.@code{susScr3}, except that each of them has the 4
following masks on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask
of intra-contig ambiguities (AMB mask), (3) the mask of repeats from
@code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem Repeats
Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-sscrofa-ucsc-susscr3
  (package
    (name "r-bsgenome-sscrofa-ucsc-susscr3")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Sscrofa.UCSC.susScr3" version
                              'annotation))
       (sha256
        (base32 "0l70arnpshiviq3xj61fw87dhf8sggq6k1yryagbhdb40d5cq8lq"))))
    (properties `((upstream-name . "BSgenome.Sscrofa.UCSC.susScr3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Sscrofa.UCSC.susScr3")
    (synopsis "Full genome sequences for Sus scrofa (UCSC version susScr3)")
    (description
     "Full genome sequences for Sus scrofa (Pig) as provided by UCSC (@code{susScr3},
Aug.  2011) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-sscrofa-ucsc-susscr11
  (package
    (name "r-bsgenome-sscrofa-ucsc-susscr11")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Sscrofa.UCSC.susScr11" version
                              'annotation))
       (sha256
        (base32 "0m7c2r74qp3rjnkxxyz18gd8xjk2f3cp1cr07bwd8v60mvgdn8cq"))))
    (properties `((upstream-name . "BSgenome.Sscrofa.UCSC.susScr11")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Sscrofa.UCSC.susScr11")
    (synopsis "Full genome sequences for Sus scrofa (UCSC version susScr11)")
    (description
     "Full genome sequences for Sus scrofa (Pig) as provided by UCSC (@code{susScr11},
Feb.  2017) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-scerevisiae-ucsc-saccer3
  (package
    (name "r-bsgenome-scerevisiae-ucsc-saccer3")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Scerevisiae.UCSC.sacCer3" version
                              'annotation))
       (sha256
        (base32 "1pnd394xfy413nvxq3hrlv33girj8f9kzdzi9gx232lm12av6hxm"))))
    (properties `((upstream-name . "BSgenome.Scerevisiae.UCSC.sacCer3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Scerevisiae.UCSC.sacCer3")
    (synopsis
     "Saccharomyces cerevisiae (Yeast) full genome (UCSC version sacCer3)")
    (description
     "Saccharomyces cerevisiae (Yeast) full genome as provided by UCSC
(@code{sacCer3}, April 2011) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-scerevisiae-ucsc-saccer2
  (package
    (name "r-bsgenome-scerevisiae-ucsc-saccer2")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Scerevisiae.UCSC.sacCer2" version
                              'annotation))
       (sha256
        (base32 "1ilz326qx1ikapmsz00hg5g6i637qm9kwc21z93q890h7sgaz4k0"))))
    (properties `((upstream-name . "BSgenome.Scerevisiae.UCSC.sacCer2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Scerevisiae.UCSC.sacCer2")
    (synopsis
     "Saccharomyces cerevisiae (Yeast) full genome (UCSC version sacCer2)")
    (description
     "Saccharomyces cerevisiae (Yeast) full genome as provided by UCSC
(@code{sacCer2}, June 2008) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-scerevisiae-ucsc-saccer1
  (package
    (name "r-bsgenome-scerevisiae-ucsc-saccer1")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Scerevisiae.UCSC.sacCer1" version
                              'annotation))
       (sha256
        (base32 "1smx3zdmllrx5f1a7hv1w3jc59jwvkd2n37hz6hgb80da7lajn2b"))))
    (properties `((upstream-name . "BSgenome.Scerevisiae.UCSC.sacCer1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Scerevisiae.UCSC.sacCer1")
    (synopsis
     "Saccharomyces cerevisiae (Yeast) full genome (UCSC version sacCer1)")
    (description
     "Saccharomyces cerevisiae (Yeast) full genome as provided by UCSC
(@code{sacCer1}, Oct.  2003) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-rnorvegicus-ucsc-rn7
  (package
    (name "r-bsgenome-rnorvegicus-ucsc-rn7")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Rnorvegicus.UCSC.rn7" version
                              'annotation))
       (sha256
        (base32 "0bgmgxk5rq6m42z0mcpvq9i7r8rid3ws80jx5g9kkklv5kglfidy"))))
    (properties `((upstream-name . "BSgenome.Rnorvegicus.UCSC.rn7")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Rnorvegicus.UCSC.rn7")
    (synopsis "Full genome sequences for Rattus norvegicus (UCSC genome rn7)")
    (description
     "Full genome sequences for Rattus norvegicus (Rat) as provided by UCSC (genome
rn7) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-rnorvegicus-ucsc-rn6
  (package
    (name "r-bsgenome-rnorvegicus-ucsc-rn6")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Rnorvegicus.UCSC.rn6" version
                              'annotation))
       (sha256
        (base32 "1lyvf7l5vyrsmjhn5kz0lrj784hd0b0bcrwb4lavd3p5g38b3mmm"))))
    (properties `((upstream-name . "BSgenome.Rnorvegicus.UCSC.rn6")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Rnorvegicus.UCSC.rn6")
    (synopsis "Full genome sequences for Rattus norvegicus (UCSC version rn6)")
    (description
     "Full genome sequences for Rattus norvegicus (Rat) as provided by UCSC (rn6, Jul.
 2014) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-rnorvegicus-ucsc-rn5-masked
  (package
    (name "r-bsgenome-rnorvegicus-ucsc-rn5-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Rnorvegicus.UCSC.rn5.masked" version
                              'annotation))
       (sha256
        (base32 "0ss14nlr6gqs414ckcz4zmyhfrwdp2snw9wh48yk4s8r4ij3z9rj"))))
    (properties `((upstream-name . "BSgenome.Rnorvegicus.UCSC.rn5.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-rnorvegicus-ucsc-rn5 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Rnorvegicus.UCSC.rn5.masked")
    (synopsis
     "Full masked genome sequences for Rattus norvegicus (UCSC version rn5)")
    (description
     "Full genome sequences for Rattus norvegicus (Rat) as provided by UCSC (rn5, Mar.
 2012) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Rnorvegicus.UCSC.rn5, except that each of them has the 4 following
masks on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask of
intra-contig ambiguities (AMB mask), (3) the mask of repeats from
@code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem Repeats
Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-rnorvegicus-ucsc-rn5
  (package
    (name "r-bsgenome-rnorvegicus-ucsc-rn5")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Rnorvegicus.UCSC.rn5" version
                              'annotation))
       (sha256
        (base32 "1s92983m73bi08ihvyd8c17yx29hz5xxrnrs2if8fda4asw1f3f0"))))
    (properties `((upstream-name . "BSgenome.Rnorvegicus.UCSC.rn5")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Rnorvegicus.UCSC.rn5")
    (synopsis "Full genome sequences for Rattus norvegicus (UCSC version rn5)")
    (description
     "Full genome sequences for Rattus norvegicus (Rat) as provided by UCSC (rn5, Mar.
 2012) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-rnorvegicus-ucsc-rn4-masked
  (package
    (name "r-bsgenome-rnorvegicus-ucsc-rn4-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Rnorvegicus.UCSC.rn4.masked" version
                              'annotation))
       (sha256
        (base32 "0jfv1873ab1nwwdr18vrjqcdl4rhv3xgqbf4jfnjk7sjx154pfi6"))))
    (properties `((upstream-name . "BSgenome.Rnorvegicus.UCSC.rn4.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-rnorvegicus-ucsc-rn4 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Rnorvegicus.UCSC.rn4.masked")
    (synopsis
     "Full masked genome sequences for Rattus norvegicus (UCSC version rn4)")
    (description
     "Full genome sequences for Rattus norvegicus (Rat) as provided by UCSC (rn4, Nov.
 2004) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Rnorvegicus.UCSC.rn4, except that each of them has the 4 following
masks on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask of
intra-contig ambiguities (AMB mask), (3) the mask of repeats from
@code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem Repeats
Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-rnorvegicus-ucsc-rn4
  (package
    (name "r-bsgenome-rnorvegicus-ucsc-rn4")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Rnorvegicus.UCSC.rn4" version
                              'annotation))
       (sha256
        (base32 "1aww2bxyqbb81iln3vgrb0659r82v9yv1z41k9r3zws8b7k7df6x"))))
    (properties `((upstream-name . "BSgenome.Rnorvegicus.UCSC.rn4")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Rnorvegicus.UCSC.rn4")
    (synopsis "Full genome sequences for Rattus norvegicus (UCSC version rn4)")
    (description
     "Full genome sequences for Rattus norvegicus (Rat) as provided by UCSC (rn4, Nov.
 2004) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ptroglodytes-ucsc-pantro6
  (package
    (name "r-bsgenome-ptroglodytes-ucsc-pantro6")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ptroglodytes.UCSC.panTro6" version
                              'annotation))
       (sha256
        (base32 "1l1fqnw1iqb2a7kvyvb0m1vdvq6cxs6py92yvbaf4zwklmgmdq0b"))))
    (properties `((upstream-name . "BSgenome.Ptroglodytes.UCSC.panTro6")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ptroglodytes.UCSC.panTro6")
    (synopsis
     "Full genome sequences for Pan troglodytes (UCSC version panTro6)")
    (description
     "Full genome sequences for Pan troglodytes (Chimp) as provided by UCSC
(@code{panTro6}, Jan.  2018) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ptroglodytes-ucsc-pantro5
  (package
    (name "r-bsgenome-ptroglodytes-ucsc-pantro5")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ptroglodytes.UCSC.panTro5" version
                              'annotation))
       (sha256
        (base32 "0wxciajcyf0hr6g6zcji125jm18nnspwvnv5x3jibjvxzx55gcds"))))
    (properties `((upstream-name . "BSgenome.Ptroglodytes.UCSC.panTro5")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ptroglodytes.UCSC.panTro5")
    (synopsis
     "Full genome sequences for Pan troglodytes (UCSC version panTro5)")
    (description
     "Full genome sequences for Pan troglodytes (Chimp) as provided by UCSC
(@code{panTro5}, May 2016) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ptroglodytes-ucsc-pantro3-masked
  (package
    (name "r-bsgenome-ptroglodytes-ucsc-pantro3-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ptroglodytes.UCSC.panTro3.masked"
                              version
                              'annotation))
       (sha256
        (base32 "18ga0whdcp5zpigrmh68wjmn99lzvfyvgxjm58y0jx66rmg94mir"))))
    (properties `((upstream-name . "BSgenome.Ptroglodytes.UCSC.panTro3.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-ptroglodytes-ucsc-pantro3 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ptroglodytes.UCSC.panTro3.masked")
    (synopsis
     "Full masked genome sequences for Pan troglodytes (UCSC version panTro3)")
    (description
     "Full genome sequences for Pan troglodytes (Chimp) as provided by UCSC
(@code{panTro3}, Oct.  2010) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Ptroglodytes.UCSC.@code{panTro3}, except that each
of them has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), (2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of
repeats from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from
Tandem Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ptroglodytes-ucsc-pantro3
  (package
    (name "r-bsgenome-ptroglodytes-ucsc-pantro3")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ptroglodytes.UCSC.panTro3" version
                              'annotation))
       (sha256
        (base32 "1vbfx0zrj4rcwcsm1q09xdiv0mmrycj8223lnxqb8nr5r017f7gm"))))
    (properties `((upstream-name . "BSgenome.Ptroglodytes.UCSC.panTro3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ptroglodytes.UCSC.panTro3")
    (synopsis
     "Full genome sequences for Pan troglodytes (UCSC version panTro3)")
    (description
     "Full genome sequences for Pan troglodytes (Chimp) as provided by UCSC
(@code{panTro3}, Oct.  2010) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ptroglodytes-ucsc-pantro2-masked
  (package
    (name "r-bsgenome-ptroglodytes-ucsc-pantro2-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ptroglodytes.UCSC.panTro2.masked"
                              version
                              'annotation))
       (sha256
        (base32 "1dy1bf6rsmzv6qj9d2a1sz56w33pk63g3qxm8znfdw11hmdbq9m1"))))
    (properties `((upstream-name . "BSgenome.Ptroglodytes.UCSC.panTro2.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-ptroglodytes-ucsc-pantro2 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ptroglodytes.UCSC.panTro2.masked")
    (synopsis
     "Full masked genome sequences for Pan troglodytes (UCSC version panTro2)")
    (description
     "Full genome sequences for Pan troglodytes (Chimp) as provided by UCSC
(@code{panTro2}, Mar.  2006) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Ptroglodytes.UCSC.@code{panTro2}, except that each
of them has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), (2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of
repeats from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from
Tandem Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ptroglodytes-ucsc-pantro2
  (package
    (name "r-bsgenome-ptroglodytes-ucsc-pantro2")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ptroglodytes.UCSC.panTro2" version
                              'annotation))
       (sha256
        (base32 "14yvajlldr3qhclg9n2j48q60rgbz6x1ypgzd6dgf4c6jxl90p0q"))))
    (properties `((upstream-name . "BSgenome.Ptroglodytes.UCSC.panTro2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ptroglodytes.UCSC.panTro2")
    (synopsis
     "Full genome sequences for Pan troglodytes (UCSC version panTro2)")
    (description
     "Full genome sequences for Pan troglodytes (Chimp) as provided by UCSC
(@code{panTro2}, Mar.  2006) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ppaniscus-ucsc-panpan2
  (package
    (name "r-bsgenome-ppaniscus-ucsc-panpan2")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ppaniscus.UCSC.panPan2" version
                              'annotation))
       (sha256
        (base32 "0jbxfix328qzsd94vjh7dlnzpygkdwbglcn4d1pdivm43ggww10a"))))
    (properties `((upstream-name . "BSgenome.Ppaniscus.UCSC.panPan2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ppaniscus.UCSC.panPan2")
    (synopsis "Full genome sequences for Pan paniscus (UCSC version panPan2)")
    (description
     "Full genome sequences for Pan paniscus (Bonobo) as provided by UCSC
(@code{panPan2}, Dec.  2015) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ppaniscus-ucsc-panpan1
  (package
    (name "r-bsgenome-ppaniscus-ucsc-panpan1")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ppaniscus.UCSC.panPan1" version
                              'annotation))
       (sha256
        (base32 "0schlki35jmv678hgxv7jmrcmbv2wixqhpk18awpr2pwq2j1ahmc"))))
    (properties `((upstream-name . "BSgenome.Ppaniscus.UCSC.panPan1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ppaniscus.UCSC.panPan1")
    (synopsis "Full genome sequences for Pan paniscus (UCSC version panPan1)")
    (description
     "Full genome sequences for Pan paniscus (Bonobo) as provided by UCSC
(@code{panPan1}, May 2012) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-osativa-msu-msu7
  (package
    (name "r-bsgenome-osativa-msu-msu7")
    (version "0.99.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Osativa.MSU.MSU7" version
                              'annotation))
       (sha256
        (base32 "1rppki62c916drc24jd2j1cmbhn3x316z16123gc654wj1c5s9vi"))))
    (properties `((upstream-name . "BSgenome.Osativa.MSU.MSU7")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Osativa.MSU.MSU7")
    (synopsis "Oryza sativa full genome (MSU7)")
    (description
     "Oryza sativa full genome as provided by MSU (MSU7 Genome Release) and stored in
Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmusculus-ucsc-mm8-masked
  (package
    (name "r-bsgenome-mmusculus-ucsc-mm8-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmusculus.UCSC.mm8.masked" version
                              'annotation))
       (sha256
        (base32 "1a2ywmy96cbwmvbdid73c0kln56qrbd7ipfzkzl97f56k3g985j5"))))
    (properties `((upstream-name . "BSgenome.Mmusculus.UCSC.mm8.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-mmusculus-ucsc-mm8 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmusculus.UCSC.mm8.masked")
    (synopsis
     "Full masked genome sequences for Mus musculus (UCSC version mm8)")
    (description
     "Full genome sequences for Mus musculus (Mouse) as provided by UCSC (mm8, Feb.
2006) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Mmusculus.UCSC.mm8, except that each of them has the 4 following masks
on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask of intra-contig
ambiguities (AMB mask), (3) the mask of repeats from @code{RepeatMasker} (RM
mask), and (4) the mask of repeats from Tandem Repeats Finder (TRF mask).  Only
the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmusculus-ucsc-mm8
  (package
    (name "r-bsgenome-mmusculus-ucsc-mm8")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmusculus.UCSC.mm8" version
                              'annotation))
       (sha256
        (base32 "1al34aa11d6kr0cr4xrabix1xmqc96zzgik5p4yc8r0rba3n100a"))))
    (properties `((upstream-name . "BSgenome.Mmusculus.UCSC.mm8")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Mmusculus.UCSC.mm8")
    (synopsis "Full genome sequences for Mus musculus (UCSC version mm8)")
    (description
     "Full genome sequences for Mus musculus (Mouse) as provided by UCSC (mm8, Feb.
2006) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmusculus-ucsc-mm39
  (package
    (name "r-bsgenome-mmusculus-ucsc-mm39")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmusculus.UCSC.mm39" version
                              'annotation))
       (sha256
        (base32 "0rpxdaa5w0p841kl5h6ngb49zr9q33ad0zgnw9xdpp1vfh0l47xm"))))
    (properties `((upstream-name . "BSgenome.Mmusculus.UCSC.mm39")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmusculus.UCSC.mm39")
    (synopsis
     "Full genome sequences for Mus musculus (UCSC genome mm39, based on GRCm39)")
    (description
     "Full genome sequences for Mus musculus (Mouse) as provided by UCSC (genome mm39,
based on assembly GRCm39) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmusculus-ucsc-mm10-masked
  (package
    (name "r-bsgenome-mmusculus-ucsc-mm10-masked")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmusculus.UCSC.mm10.masked" version
                              'annotation))
       (sha256
        (base32 "04352r264jmpm5abbcyylz0axw24sm58ki3xvp434kp3cfdx32gc"))))
    (properties `((upstream-name . "BSgenome.Mmusculus.UCSC.mm10.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-mmusculus-ucsc-mm10 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmusculus.UCSC.mm10.masked")
    (synopsis
     "Full masked genome sequences for Mus musculus (UCSC genome mm10, based on GRCm38.p6)")
    (description
     "Full genome sequences for Mus musculus (Mouse) as provided by UCSC (genome mm10,
based on GRCm38.p6) and stored in Biostrings objects.  The sequences are the
same as in BSgenome.Mmusculus.UCSC.mm10, except that each of them has the 2
following masks on top: (1) the mask of assembly gaps (AGAPS mask), and (2) the
mask of intra-contig ambiguities (AMB mask).")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmulatta-ucsc-rhemac8
  (package
    (name "r-bsgenome-mmulatta-ucsc-rhemac8")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmulatta.UCSC.rheMac8" version
                              'annotation))
       (sha256
        (base32 "18z6vl89jkjzvppz3r93b2s32l17hz6pfp36wv5wvhm0c0rhnhmw"))))
    (properties `((upstream-name . "BSgenome.Mmulatta.UCSC.rheMac8")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmulatta.UCSC.rheMac8")
    (synopsis
     "Full genome sequences for Macaca mulatta (UCSC version rheMac8)")
    (description
     "Full genome sequences for Macaca mulatta (Rhesus) as provided by UCSC
(@code{rheMac8}, Nov.  2015) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmulatta-ucsc-rhemac3-masked
  (package
    (name "r-bsgenome-mmulatta-ucsc-rhemac3-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmulatta.UCSC.rheMac3.masked" version
                              'annotation))
       (sha256
        (base32 "0k3j40hrys60qdij5rsxdzyx9bfmryaki5p7i4d5m0xmldlk9anr"))))
    (properties `((upstream-name . "BSgenome.Mmulatta.UCSC.rheMac3.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-mmulatta-ucsc-rhemac3 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmulatta.UCSC.rheMac3.masked")
    (synopsis
     "Full masked genome sequences for Macaca mulatta (UCSC version rheMac3)")
    (description
     "Full genome sequences for Macaca mulatta (Rhesus) as provided by UCSC
(@code{rheMac3}, Oct.  2010) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Mmulatta.UCSC.@code{rheMac3}, except that each of
them has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), (2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of
repeats from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from
Tandem Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmulatta-ucsc-rhemac3
  (package
    (name "r-bsgenome-mmulatta-ucsc-rhemac3")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmulatta.UCSC.rheMac3" version
                              'annotation))
       (sha256
        (base32 "0r3v4p567rxcczwqi7zdz7pmdiffgrq83j488libdb4s0hdg5jmi"))))
    (properties `((upstream-name . "BSgenome.Mmulatta.UCSC.rheMac3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmulatta.UCSC.rheMac3")
    (synopsis
     "Full genome sequences for Macaca mulatta (UCSC version rheMac3)")
    (description
     "Full genome sequences for Macaca mulatta (Rhesus) as provided by UCSC
(@code{rheMac3}, Oct.  2010) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmulatta-ucsc-rhemac2-masked
  (package
    (name "r-bsgenome-mmulatta-ucsc-rhemac2-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmulatta.UCSC.rheMac2.masked" version
                              'annotation))
       (sha256
        (base32 "1j4z4iy13n4qbi9a50qw1hn8z14xz0z8hbiwhy2bb9znykkf4chd"))))
    (properties `((upstream-name . "BSgenome.Mmulatta.UCSC.rheMac2.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-mmulatta-ucsc-rhemac2 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmulatta.UCSC.rheMac2.masked")
    (synopsis
     "Full masked genome sequences for Macaca mulatta (UCSC version rheMac2)")
    (description
     "Full genome sequences for Macaca mulatta (Rhesus) as provided by UCSC
(@code{rheMac2}, Jan.  2006) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Mmulatta.UCSC.@code{rheMac2}, except that each of
them has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), (2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of
repeats from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from
Tandem Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.  NOTE: In most assemblies available at UCSC, Tandem Repeats Finder
repeats were filtered to retain only the repeats with period <= 12.  However,
the filtering was omitted for this assembly, so the TRF masks contain all Tandem
Repeats Finder results.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmulatta-ucsc-rhemac2
  (package
    (name "r-bsgenome-mmulatta-ucsc-rhemac2")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmulatta.UCSC.rheMac2" version
                              'annotation))
       (sha256
        (base32 "15vswd1fq7a7g1dkm0wzkmclih8z373nfzjyc3zrn9l0nawdv9jj"))))
    (properties `((upstream-name . "BSgenome.Mmulatta.UCSC.rheMac2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmulatta.UCSC.rheMac2")
    (synopsis
     "Full genome sequences for Macaca mulatta (UCSC version rheMac2)")
    (description
     "Full genome sequences for Macaca mulatta (Rhesus) as provided by UCSC
(@code{rheMac2}, Jan.  2006) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mmulatta-ucsc-rhemac10
  (package
    (name "r-bsgenome-mmulatta-ucsc-rhemac10")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mmulatta.UCSC.rheMac10" version
                              'annotation))
       (sha256
        (base32 "06ja5fn3sgk2lmfwf7m5sqcz0dq732v8y4vhc2cnbbvhpyax0mbd"))))
    (properties `((upstream-name . "BSgenome.Mmulatta.UCSC.rheMac10")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mmulatta.UCSC.rheMac10")
    (synopsis
     "Full genome sequences for Macaca mulatta (UCSC version rheMac10)")
    (description
     "Full genome sequences for Macaca mulatta (Rhesus) as provided by UCSC
(@code{rheMac10}, Feb.  2019) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mfuro-ucsc-musfur1
  (package
    (name "r-bsgenome-mfuro-ucsc-musfur1")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mfuro.UCSC.musFur1" version
                              'annotation))
       (sha256
        (base32 "0c0569a1k36sk0vzf7afhnfm0n2nwcdp3dc88s1hghpg7lwi9g9j"))))
    (properties `((upstream-name . "BSgenome.Mfuro.UCSC.musFur1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Mfuro.UCSC.musFur1")
    (synopsis
     "Full genome sequences for Mustela putorius furo (UCSC version musFur1)")
    (description
     "Full genome sequences for Mustela putorius furo (Ferret) as provided by UCSC
(@code{musFur1}, Apr.  2011) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mfascicularis-ncbi-6-0
  (package
    (name "r-bsgenome-mfascicularis-ncbi-6-0")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mfascicularis.NCBI.6.0" version
                              'annotation))
       (sha256
        (base32 "0zl73jkg56jrvqyqvp67jx63dl8li6pypkgn1dqj959qzdzc57j0"))))
    (properties `((upstream-name . "BSgenome.Mfascicularis.NCBI.6.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mfascicularis.NCBI.6.0")
    (synopsis
     "Full genome sequences for Macaca fascicularis (Macaca_fascicularis_6.0)")
    (description
     "Full genome sequences for Macaca fascicularis (Crab-eating macaque) as provided
by NCBI (assembly Macaca_fascicularis_6.0, assembly accession GCA_011100615.1)
and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mfascicularis-ncbi-5-0
  (package
    (name "r-bsgenome-mfascicularis-ncbi-5-0")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mfascicularis.NCBI.5.0" version
                              'annotation))
       (sha256
        (base32 "1lrdj7aibx4i60hpbaqgk3qir9zjs67mxdgp5jmgmw7gf2nwyn3x"))))
    (properties `((upstream-name . "BSgenome.Mfascicularis.NCBI.5.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mfascicularis.NCBI.5.0")
    (synopsis
     "Full genome sequences for Macaca fascicularis (Macaca_fascicularis_5.0)")
    (description
     "Full genome sequences for Macaca fascicularis (long-tailed macaque) as provided
by NCBI (Macaca_fascicularis_5.0, 2013-06-12) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-mdomestica-ucsc-mondom5
  (package
    (name "r-bsgenome-mdomestica-ucsc-mondom5")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Mdomestica.UCSC.monDom5" version
                              'annotation))
       (sha256
        (base32 "16kzb66kjpmf9j92pwh98ah5rhrnfyzdpr0rk659zham6dzga9ck"))))
    (properties `((upstream-name . "BSgenome.Mdomestica.UCSC.monDom5")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Mdomestica.UCSC.monDom5")
    (synopsis
     "Full genome sequences for Monodelphis domestica (UCSC version monDom5)")
    (description
     "Full genome sequences for Monodelphis domestica (Opossum) as provided by UCSC
(@code{monDom5}, Oct.  2006) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-hsapiens-ucsc-hs1
  (package
    (name "r-bsgenome-hsapiens-ucsc-hs1")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Hsapiens.UCSC.hs1" version
                              'annotation))
       (sha256
        (base32 "1y5rxlms9fj20fz32l56i5j1c4fzly5zzvlxz01fs46qimnfb3ms"))))
    (properties `((upstream-name . "BSgenome.Hsapiens.UCSC.hs1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Hsapiens.UCSC.hs1")
    (synopsis "Full genomic sequences for UCSC genome hs1 (Homo sapiens)")
    (description
     "Full genomic sequences for UCSC genome hs1 (the hs1 genome is based on assembly
T2T-CHM13v2.0, with @code{GenBank} assembly accession GCA_009914755.4).  The
sequences are stored in DNAString objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-hsapiens-ucsc-hg38-dbsnp151-minor
  (package
    (name "r-bsgenome-hsapiens-ucsc-hg38-dbsnp151-minor")
    (version "0.0.9999")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Hsapiens.UCSC.hg38.dbSNP151.minor"
                              version
                              'annotation))
       (sha256
        (base32 "1xw8vckhsak35r942yyvlrpbhb2w4vzah8wfgmn3vyj1zklk3913"))))
    (properties `((upstream-name . "BSgenome.Hsapiens.UCSC.hg38.dbSNP151.minor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Hsapiens.UCSC.hg38.dbSNP151.minor")
    (synopsis
     "Full genome sequences for Homo sapiens (UCSC version hg38, based on GRCh38.p12) with injected minor alleles (dbSNP151)")
    (description
     "Full genome sequences for Homo sapiens (Human) as provided by UCSC (hg38, based
on GRCh38.p12) with minor alleles injected from @code{dbSNP151}, and stored in
Biostrings objects.  Full genome sequences for Homo sapiens (Human) as provided
by UCSC (hg38, based on GRCh38.p12) with minor alleles injected from
@code{dbSNP151}, and stored in Biostrings objects.  Only common single
nucleotide variants (SNVs) with at least one alternate allele with frequency
greater than 0.01 were considered.  For SNVs with more than 1 alternate allele,
the most frequent allele was chosen as the minor allele to be injected into the
reference genome.")
    (license (license:fsdg-compatible "CC BY-NC-ND 4.0"))))

(define-public r-bsgenome-hsapiens-ucsc-hg38-dbsnp151-major
  (package
    (name "r-bsgenome-hsapiens-ucsc-hg38-dbsnp151-major")
    (version "0.0.9999")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Hsapiens.UCSC.hg38.dbSNP151.major"
                              version
                              'annotation))
       (sha256
        (base32 "0290fk7jvlcb1mh6nlyqagqskfh0dvaysj1d6s15bgygnlm3r726"))))
    (properties `((upstream-name . "BSgenome.Hsapiens.UCSC.hg38.dbSNP151.major")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Hsapiens.UCSC.hg38.dbSNP151.major")
    (synopsis
     "Full genome sequences for Homo sapiens (UCSC version hg38, based on GRCh38.p12) with injected major alleles (dbSNP151)")
    (description
     "Full genome sequences for Homo sapiens (Human) as provided by UCSC (hg38, based
on GRCh38.p12) with major allele injected from @code{dbSNP151}, and stored in
Biostrings objects.  Only single nucleotide variants (SNVs) were considered.  At
each SNV, the most frequent allele was chosen at the major allele to be injected
into the reference genome.")
    (license (license:fsdg-compatible "CC BY-NC-ND 4.0"))))

(define-public r-bsgenome-hsapiens-ucsc-hg18-masked
  (package
    (name "r-bsgenome-hsapiens-ucsc-hg18-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Hsapiens.UCSC.hg18.masked" version
                              'annotation))
       (sha256
        (base32 "031sr3y95c32igk3lrrsafdm9i1zprjran8gak06arqc0hvzbfk0"))))
    (properties `((upstream-name . "BSgenome.Hsapiens.UCSC.hg18.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-hsapiens-ucsc-hg18 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Hsapiens.UCSC.hg18.masked")
    (synopsis
     "Full masked genome sequences for Homo sapiens (UCSC version hg18)")
    (description
     "Full genome sequences for Homo sapiens (Human) as provided by UCSC (hg18, Mar.
2006) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Hsapiens.UCSC.hg18, except that each of them has the 4 following masks
on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask of intra-contig
ambiguities (AMB mask), (3) the mask of repeats from @code{RepeatMasker} (RM
mask), and (4) the mask of repeats from Tandem Repeats Finder (TRF mask).  Only
the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-hsapiens-ucsc-hg18
  (package
    (name "r-bsgenome-hsapiens-ucsc-hg18")
    (version "1.3.1000")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Hsapiens.UCSC.hg18" version
                              'annotation))
       (sha256
        (base32 "1bd7hn4ksgpyhnbjb9qdqfz5cg6x5lsizbls55v9s9hnvfzq3yi6"))))
    (properties `((upstream-name . "BSgenome.Hsapiens.UCSC.hg18")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Hsapiens.UCSC.hg18")
    (synopsis "Full genome sequences for Homo sapiens (UCSC version hg18)")
    (description
     "Full genome sequences for Homo sapiens (Human) as provided by UCSC (hg18, Mar.
2006) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-hsapiens-ucsc-hg17-masked
  (package
    (name "r-bsgenome-hsapiens-ucsc-hg17-masked")
    (version "1.3.999")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Hsapiens.UCSC.hg17.masked" version
                              'annotation))
       (sha256
        (base32 "0mycmcp6j0zl3nw8fwypc94i9v1ii910myyr2ipawxi3yb3ch136"))))
    (properties `((upstream-name . "BSgenome.Hsapiens.UCSC.hg17.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-hsapiens-ucsc-hg17 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Hsapiens.UCSC.hg17.masked")
    (synopsis
     "Full masked genome sequences for Homo sapiens (UCSC version hg17)")
    (description
     "Full genome sequences for Homo sapiens (Human) as provided by UCSC (hg17, May
2004) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Hsapiens.UCSC.hg17, except that each of them has the 4 following masks
on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask of intra-contig
ambiguities (AMB mask), (3) the mask of repeats from @code{RepeatMasker} (RM
mask), and (4) the mask of repeats from Tandem Repeats Finder (TRF mask).  Only
the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-hsapiens-ucsc-hg17
  (package
    (name "r-bsgenome-hsapiens-ucsc-hg17")
    (version "1.3.1001")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Hsapiens.UCSC.hg17" version
                              'annotation))
       (sha256
        (base32 "10vxkdr7vjbyginq5dnw6199l6kwvis45dhl9khh4aywv9l0ky0x"))))
    (properties `((upstream-name . "BSgenome.Hsapiens.UCSC.hg17")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Hsapiens.UCSC.hg17")
    (synopsis "Full genome sequences for Homo sapiens (UCSC version hg17)")
    (description
     "Full genome sequences for Homo sapiens (Human) as provided by UCSC (hg17, May
2004) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-hsapiens-ncbi-t2t-chm13v2-0
  (package
    (name "r-bsgenome-hsapiens-ncbi-t2t-chm13v2-0")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Hsapiens.NCBI.T2T.CHM13v2.0" version
                              'annotation))
       (sha256
        (base32 "080zq71fl1cx7sxi2il5v0mfj79hw93qy3fr1514fax8vslh5lfz"))))
    (properties `((upstream-name . "BSgenome.Hsapiens.NCBI.T2T.CHM13v2.0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Hsapiens.NCBI.T2T.CHM13v2.0")
    (synopsis
     "T2T-CHM13v2.0 assembly (Homo sapiens) wrapped in a BSgenome object")
    (description
     "The T2T-CHM13v2.0 assembly (accession GCA_009914755.4), as submitted to NCBI by
the T2T Consortium, and wrapped in a BSgenome object.  Companion paper: \"The
complete sequence of a human genome\" by Nurk S, Koren S, Rhie A, Rautiainen M,
et al.  Science, 2022.")
    (license license:artistic2.0)))

(define-public r-bsgenome-gmax-ncbi-gmv40
  (package
    (name "r-bsgenome-gmax-ncbi-gmv40")
    (version "4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Gmax.NCBI.Gmv40" version
                              'annotation))
       (sha256
        (base32 "0w6pa6pcjmxy9zj21m4c585s7fihy3hcg0ysbjkizlsskmlva0dr"))))
    (properties `((upstream-name . "BSgenome.Gmax.NCBI.Gmv40")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Gmax.NCBI.Gmv40")
    (synopsis "Full genome sequences for Glycine max (Gmv40)")
    (description
     "Full genome sequences for Glycine max as provided by NCBI (assembly
Glycine_max_v4.0, assembly accession GCF_000004515.5) and stored in Biostrings
objects.")
    (license (license:fsdg-compatible
              "Creative Commons Legal Code + file LICENSE"))))

(define-public r-bsgenome-ggallus-ucsc-galgal6
  (package
    (name "r-bsgenome-ggallus-ucsc-galgal6")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ggallus.UCSC.galGal6" version
                              'annotation))
       (sha256
        (base32 "00b0awki35xkfjsvv9x1h0sykg5jbf36a37hj4spw028bkg8k7v2"))))
    (properties `((upstream-name . "BSgenome.Ggallus.UCSC.galGal6")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ggallus.UCSC.galGal6")
    (synopsis "Full genome sequences for Gallus gallus (UCSC version galGal6)")
    (description
     "Full genome sequences for Gallus gallus (Chicken) as provided by UCSC
(@code{galGal6}, Mar.  2018) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ggallus-ucsc-galgal5
  (package
    (name "r-bsgenome-ggallus-ucsc-galgal5")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ggallus.UCSC.galGal5" version
                              'annotation))
       (sha256
        (base32 "0gi82xr2b3fn3wi608nmqp3cgjx63rm82wy24p9l0s1qqh2z3jdb"))))
    (properties `((upstream-name . "BSgenome.Ggallus.UCSC.galGal5")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ggallus.UCSC.galGal5")
    (synopsis "Full genome sequences for Gallus gallus (UCSC version galGal5)")
    (description
     "Full genome sequences for Gallus gallus (Chicken) as provided by UCSC
(@code{galGal5}, Dec.  2015) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ggallus-ucsc-galgal4-masked
  (package
    (name "r-bsgenome-ggallus-ucsc-galgal4-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ggallus.UCSC.galGal4.masked" version
                              'annotation))
       (sha256
        (base32 "0fvqimjf1xvgka4nw66nd0rbyb7r93v8cyw33776lhfv68ny058v"))))
    (properties `((upstream-name . "BSgenome.Ggallus.UCSC.galGal4.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-ggallus-ucsc-galgal4 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ggallus.UCSC.galGal4.masked")
    (synopsis
     "Full masked genome sequences for Gallus gallus (UCSC version galGal4)")
    (description
     "Full genome sequences for Gallus gallus (Chicken) as provided by UCSC
(@code{galGal4}, Nov.  2011) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Ggallus.UCSC.@code{galGal4}, except that each of
them has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), (2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of
repeats from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from
Tandem Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ggallus-ucsc-galgal4
  (package
    (name "r-bsgenome-ggallus-ucsc-galgal4")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ggallus.UCSC.galGal4" version
                              'annotation))
       (sha256
        (base32 "1qfl046akdf43azigprc13sssgbmxdz9dmlrvy13ag8fgfkjxign"))))
    (properties `((upstream-name . "BSgenome.Ggallus.UCSC.galGal4")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ggallus.UCSC.galGal4")
    (synopsis "Full genome sequences for Gallus gallus (UCSC version galGal4)")
    (description
     "Full genome sequences for Gallus gallus (Chicken) as provided by UCSC
(@code{galGal4}, Nov.  2011) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ggallus-ucsc-galgal3-masked
  (package
    (name "r-bsgenome-ggallus-ucsc-galgal3-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ggallus.UCSC.galGal3.masked" version
                              'annotation))
       (sha256
        (base32 "0igi02g46h1j87hv9bk45nbqahyjd0k75jkg0s6m9a62jsssg63l"))))
    (properties `((upstream-name . "BSgenome.Ggallus.UCSC.galGal3.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-ggallus-ucsc-galgal3 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ggallus.UCSC.galGal3.masked")
    (synopsis
     "Full masked genome sequences for Gallus gallus (UCSC version galGal3)")
    (description
     "Full genome sequences for Gallus gallus (Chicken) as provided by UCSC
(@code{galGal3}, May 2006) and stored in Biostrings objects.  The sequences are
the same as in BSgenome.Ggallus.UCSC.@code{galGal3}, except that each of them
has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS mask),
(2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of repeats
from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem
Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-ggallus-ucsc-galgal3
  (package
    (name "r-bsgenome-ggallus-ucsc-galgal3")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Ggallus.UCSC.galGal3" version
                              'annotation))
       (sha256
        (base32 "1bgw45nizdm1kq0624asr4ky61cm8pmrq32574phvvq1jjpg4isp"))))
    (properties `((upstream-name . "BSgenome.Ggallus.UCSC.galGal3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Ggallus.UCSC.galGal3")
    (synopsis "Full genome sequences for Gallus gallus (UCSC version galGal3)")
    (description
     "Full genome sequences for Gallus gallus (Chicken) as provided by UCSC
(@code{galGal3}, May 2006) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-gaculeatus-ucsc-gasacu1-masked
  (package
    (name "r-bsgenome-gaculeatus-ucsc-gasacu1-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Gaculeatus.UCSC.gasAcu1.masked"
                              version
                              'annotation))
       (sha256
        (base32 "13g2xc6v8qlrc0a0zly4ibhzgwg5dsrx1bmw4rrwnkk652alaivx"))))
    (properties `((upstream-name . "BSgenome.Gaculeatus.UCSC.gasAcu1.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-gaculeatus-ucsc-gasacu1 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Gaculeatus.UCSC.gasAcu1.masked")
    (synopsis
     "Full masked genome sequences for Gasterosteus aculeatus (UCSC version gasAcu1)")
    (description
     "Full genome sequences for Gasterosteus aculeatus (Stickleback) as provided by
UCSC (@code{gasAcu1}, Feb.  2006) and stored in Biostrings objects.  The
sequences are the same as in BSgenome.Gaculeatus.UCSC.@code{gasAcu1}, except
that each of them has the 4 following masks on top: (1) the mask of assembly
gaps (AGAPS mask), (2) the mask of intra-contig ambiguities (AMB mask), (3) the
mask of repeats from @code{RepeatMasker} (RM mask), and (4) the mask of repeats
from Tandem Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are
\"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-gaculeatus-ucsc-gasacu1
  (package
    (name "r-bsgenome-gaculeatus-ucsc-gasacu1")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Gaculeatus.UCSC.gasAcu1" version
                              'annotation))
       (sha256
        (base32 "1w0jpv58kbjvjlsprn5g4nd3g6jhiyw3k6mlfnpnffcbdh27cq0k"))))
    (properties `((upstream-name . "BSgenome.Gaculeatus.UCSC.gasAcu1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Gaculeatus.UCSC.gasAcu1")
    (synopsis
     "Full genome sequences for Gasterosteus aculeatus (UCSC version gasAcu1)")
    (description
     "Full genome sequences for Gasterosteus aculeatus (Stickleback) as provided by
UCSC (@code{gasAcu1}, Feb.  2006) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-dvirilis-ensembl-dvircaf1
  (package
    (name "r-bsgenome-dvirilis-ensembl-dvircaf1")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Dvirilis.Ensembl.dvircaf1" version
                              'annotation))
       (sha256
        (base32 "0dwqshpx3mm9k9p3x53hc62czpvqs6v2jw5i977x0y4hfig0zv8m"))))
    (properties `((upstream-name . "BSgenome.Dvirilis.Ensembl.dvircaf1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Dvirilis.Ensembl.dvircaf1")
    (synopsis
     "Full genome sequences for Drosophila virilis (assembly dvir_caf1)")
    (description
     "Full genome sequences for Drosophila virilis (assembly dvir_caf1, @code{GenBank}
assembly accession GCA_000005245.1) as provided by Ensembl and stored in
Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-drerio-ucsc-danrer7-masked
  (package
    (name "r-bsgenome-drerio-ucsc-danrer7-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Drerio.UCSC.danRer7.masked" version
                              'annotation))
       (sha256
        (base32 "153cf2ni7xffi7j7dafg04v6i65gh8d21v7l9szm4c18bywvcn5z"))))
    (properties `((upstream-name . "BSgenome.Drerio.UCSC.danRer7.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-drerio-ucsc-danrer7 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Drerio.UCSC.danRer7.masked")
    (synopsis
     "Full masked genome sequences for Danio rerio (UCSC version danRer7)")
    (description
     "Full genome sequences for Danio rerio (Zebrafish) as provided by UCSC
(@code{danRer7}, Jul.  2010) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Drerio.UCSC.@code{danRer7}, except that each of them
has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS mask),
(2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of repeats
from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem
Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-drerio-ucsc-danrer6-masked
  (package
    (name "r-bsgenome-drerio-ucsc-danrer6-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Drerio.UCSC.danRer6.masked" version
                              'annotation))
       (sha256
        (base32 "175gy5xfp5kzbgmagvls3233i925wppyk9alw75f7jnxfddxvq4k"))))
    (properties `((upstream-name . "BSgenome.Drerio.UCSC.danRer6.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-drerio-ucsc-danrer6 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Drerio.UCSC.danRer6.masked")
    (synopsis
     "Full masked genome sequences for Danio rerio (UCSC version danRer6)")
    (description
     "Full genome sequences for Danio rerio (Zebrafish) as provided by UCSC
(@code{danRer6}, Dec.  2008) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Drerio.UCSC.@code{danRer6}, except that each of them
has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS mask),
(2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of repeats
from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem
Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-drerio-ucsc-danrer6
  (package
    (name "r-bsgenome-drerio-ucsc-danrer6")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Drerio.UCSC.danRer6" version
                              'annotation))
       (sha256
        (base32 "0h2chcpdi2vy29fg43r6q37vvb7p4d4cpnszlsmiy7ax358sd5ji"))))
    (properties `((upstream-name . "BSgenome.Drerio.UCSC.danRer6")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Drerio.UCSC.danRer6")
    (synopsis "Full genome sequences for Danio rerio (UCSC version danRer6)")
    (description
     "Full genome sequences for Danio rerio (Zebrafish) as provided by UCSC
(@code{danRer6}, Dec.  2008) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-drerio-ucsc-danrer5-masked
  (package
    (name "r-bsgenome-drerio-ucsc-danrer5-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Drerio.UCSC.danRer5.masked" version
                              'annotation))
       (sha256
        (base32 "03y08jlknb52x37wg95xaf62n5fbsfpmx57bjyxz2gj0n8zhcdgv"))))
    (properties `((upstream-name . "BSgenome.Drerio.UCSC.danRer5.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-drerio-ucsc-danrer5 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Drerio.UCSC.danRer5.masked")
    (synopsis
     "Full masked genome sequences for Danio rerio (UCSC version danRer5)")
    (description
     "Full genome sequences for Danio rerio (Zebrafish) as provided by UCSC
(@code{danRer5}, Jul.  2007) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Drerio.UCSC.@code{danRer5}, except that each of them
has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS mask),
(2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of repeats
from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem
Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-drerio-ucsc-danrer5
  (package
    (name "r-bsgenome-drerio-ucsc-danrer5")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Drerio.UCSC.danRer5" version
                              'annotation))
       (sha256
        (base32 "1mxmy4ika192xvlrsynyvnb7kvcvbsl89g39q53vrkibhml1q0v5"))))
    (properties `((upstream-name . "BSgenome.Drerio.UCSC.danRer5")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Drerio.UCSC.danRer5")
    (synopsis "Full genome sequences for Danio rerio (UCSC version danRer5)")
    (description
     "Full genome sequences for Danio rerio (Zebrafish) as provided by UCSC
(@code{danRer5}, Jul.  2007) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-dmelanogaster-ucsc-dm2-masked
  (package
    (name "r-bsgenome-dmelanogaster-ucsc-dm2-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Dmelanogaster.UCSC.dm2.masked" version
                              'annotation))
       (sha256
        (base32 "1qclf62c3qrdhnrb6p4rhj7wrarlsbm716d37k0gbdzkfm2vhyr7"))))
    (properties `((upstream-name . "BSgenome.Dmelanogaster.UCSC.dm2.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-dmelanogaster-ucsc-dm2 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Dmelanogaster.UCSC.dm2.masked")
    (synopsis
     "Full masked genome sequences for Drosophila melanogaster (UCSC version dm2)")
    (description
     "Full genome sequences for Drosophila melanogaster (Fly) as provided by UCSC
(dm2, Apr.  2004) and stored in Biostrings objects.  The sequences are the same
as in BSgenome.Dmelanogaster.UCSC.dm2, except that each of them has the 4
following masks on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask
of intra-contig ambiguities (AMB mask), (3) the mask of repeats from
@code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem Repeats
Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-dmelanogaster-ucsc-dm2
  (package
    (name "r-bsgenome-dmelanogaster-ucsc-dm2")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Dmelanogaster.UCSC.dm2" version
                              'annotation))
       (sha256
        (base32 "1vnqbm1123zmpn1iwyygr1p4js0j6vifyz7iwzgkiw543yb1mwnl"))))
    (properties `((upstream-name . "BSgenome.Dmelanogaster.UCSC.dm2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Dmelanogaster.UCSC.dm2")
    (synopsis
     "Full genome sequences for Drosophila melanogaster (UCSC version dm2)")
    (description
     "Full genome sequences for Drosophila melanogaster (Fly) as provided by UCSC
(dm2, Apr.  2004) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-creinhardtii-jgi-v5-6
  (package
    (name "r-bsgenome-creinhardtii-jgi-v5-6")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Creinhardtii.JGI.v5.6" version
                              'annotation))
       (sha256
        (base32 "0px1p3hgbpk3pvmg77knqxwmh1jd8jjf763kzxf0725pnl9dca2v"))))
    (properties `((upstream-name . "BSgenome.Creinhardtii.JGI.v5.6")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Creinhardtii.JGI.v5.6")
    (synopsis "Full genome sequences for Chlamydomonas reinhardtii (v5.6)")
    (description
     "Full genome sequences for Chlamydomonas reinhardtii (v5.6) as provided by JGI
and stored in Biostrings objects.  The data in this package is public.  See
citation(\"BSgenome.Creinhardtii.JGI.v5.6\") for how to cite in publications.")
    (license license:artistic2.0)))

(define-public r-bsgenome-cneoformansvargrubiikn99-ncbi-asm221672v1
  (package
    (name "r-bsgenome-cneoformansvargrubiikn99-ncbi-asm221672v1")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri
             "BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1" version
             'annotation))
       (sha256
        (base32 "0hmxpm9mj8ahmpk2xp0qgsblvjz7wjcdmsz41ab5s404ggiylx79"))))
    (properties `((upstream-name . "BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.CneoformansVarGrubiiKN99.NCBI.ASM221672v1")
    (synopsis
     "Full Genome Sequence for Cryptococcus neoformans var. grubii KN99 (ASM221672v1)")
    (description
     "Full genome sequences for Cryptococcus neoformans var.  grubii KN99 (assembly
ASM221672v1 assembly accession GCA_002216725.1).")
    (license license:artistic2.0)))

(define-public r-bsgenome-cjacchus-ucsc-caljac4
  (package
    (name "r-bsgenome-cjacchus-ucsc-caljac4")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Cjacchus.UCSC.calJac4" version
                              'annotation))
       (sha256
        (base32 "0hfrcsarcm65hqr6032aar1rz09pvj22wj5dlmy459cqrpgr5prf"))))
    (properties `((upstream-name . "BSgenome.Cjacchus.UCSC.calJac4")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Cjacchus.UCSC.calJac4")
    (synopsis
     "Full genome sequences for Callithrix jacchus (UCSC version calJac4)")
    (description
     "Full genome sequences for Callithrix jacchus (Marmoset) as provided by UCSC
(@code{calJac4}, May 2020) and wrapped in a BSgenome object.")
    (license license:artistic2.0)))

(define-public r-bsgenome-cjacchus-ucsc-caljac3
  (package
    (name "r-bsgenome-cjacchus-ucsc-caljac3")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Cjacchus.UCSC.calJac3" version
                              'annotation))
       (sha256
        (base32 "1s1srg6lr3dndbpv83bqlxz5lhyhxh431yrd919yl4fwmr5rvx0z"))))
    (properties `((upstream-name . "BSgenome.Cjacchus.UCSC.calJac3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Cjacchus.UCSC.calJac3")
    (synopsis
     "Full genome sequences for Callithrix jacchus (UCSC version calJac3)")
    (description
     "Full genome sequences for Callithrix jacchus (Marmoset) as provided by UCSC
(@code{calJac3}, Mar.  2009) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-cfamiliaris-ucsc-canfam3-masked
  (package
    (name "r-bsgenome-cfamiliaris-ucsc-canfam3-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Cfamiliaris.UCSC.canFam3.masked"
                              version
                              'annotation))
       (sha256
        (base32 "07y28g6b4sbp38yg5rwldda7s1cwcpil6rzsb4csskvs0xi5286l"))))
    (properties `((upstream-name . "BSgenome.Cfamiliaris.UCSC.canFam3.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-cfamiliaris-ucsc-canfam3 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Cfamiliaris.UCSC.canFam3.masked")
    (synopsis
     "Full masked genome sequences for Canis lupus familiaris (UCSC version canFam3)")
    (description
     "Full genome sequences for Canis lupus familiaris (Dog) as provided by UCSC
(@code{canFam3}, Sep.  2011) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Cfamiliaris.UCSC.@code{canFam3}, except that each of
them has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), (2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of
repeats from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from
Tandem Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-cfamiliaris-ucsc-canfam3
  (package
    (name "r-bsgenome-cfamiliaris-ucsc-canfam3")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Cfamiliaris.UCSC.canFam3" version
                              'annotation))
       (sha256
        (base32 "1ir092yh1h03ag1lnj2rh5hjp2mqrw7fcyb6mqyjm0h8g1pmpicr"))))
    (properties `((upstream-name . "BSgenome.Cfamiliaris.UCSC.canFam3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Cfamiliaris.UCSC.canFam3")
    (synopsis
     "Full genome sequences for Canis lupus familiaris (UCSC version canFam3)")
    (description
     "Full genome sequences for Canis lupus familiaris (Dog) as provided by UCSC
(@code{canFam3}, Sep.  2011) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-cfamiliaris-ucsc-canfam2-masked
  (package
    (name "r-bsgenome-cfamiliaris-ucsc-canfam2-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Cfamiliaris.UCSC.canFam2.masked"
                              version
                              'annotation))
       (sha256
        (base32 "14108j73z7959d070xiqar5s14pac18cs8a22lcggbmp5x93hmqz"))))
    (properties `((upstream-name . "BSgenome.Cfamiliaris.UCSC.canFam2.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-cfamiliaris-ucsc-canfam2 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Cfamiliaris.UCSC.canFam2.masked")
    (synopsis
     "Full masked genome sequences for Canis lupus familiaris (UCSC version canFam2)")
    (description
     "Full genome sequences for Canis lupus familiaris (Dog) as provided by UCSC
(@code{canFam2}, May 2005) and stored in Biostrings objects.  The sequences are
the same as in BSgenome.Cfamiliaris.UCSC.@code{canFam2}, except that each of
them has the 4 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), (2) the mask of intra-contig ambiguities (AMB mask), (3) the mask of
repeats from @code{RepeatMasker} (RM mask), and (4) the mask of repeats from
Tandem Repeats Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by
default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-cfamiliaris-ucsc-canfam2
  (package
    (name "r-bsgenome-cfamiliaris-ucsc-canfam2")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Cfamiliaris.UCSC.canFam2" version
                              'annotation))
       (sha256
        (base32 "052p2lsm1ny0rjvhgd56w6z4nrqfc74vh0q7cmqz55xkhk01h7hm"))))
    (properties `((upstream-name . "BSgenome.Cfamiliaris.UCSC.canFam2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Cfamiliaris.UCSC.canFam2")
    (synopsis
     "Full genome sequences for Canis lupus familiaris (UCSC version canFam2)")
    (description
     "Full genome sequences for Canis lupus familiaris (Dog) as provided by UCSC
(@code{canFam2}, May 2005) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-celegans-ucsc-ce2
  (package
    (name "r-bsgenome-celegans-ucsc-ce2")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Celegans.UCSC.ce2" version
                              'annotation))
       (sha256
        (base32 "1x7nvisz7mjrpqlsiw4an04f8hksygzn96p5ld0388hljg78dax8"))))
    (properties `((upstream-name . "BSgenome.Celegans.UCSC.ce2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Celegans.UCSC.ce2")
    (synopsis
     "Full genome sequences for Caenorhabditis elegans (UCSC version ce2)")
    (description
     "Full genome sequences for Caenorhabditis elegans (Worm) as provided by UCSC
(ce2, Mar.  2004) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-celegans-ucsc-ce11
  (package
    (name "r-bsgenome-celegans-ucsc-ce11")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Celegans.UCSC.ce11" version
                              'annotation))
       (sha256
        (base32 "0d4bxfglpqiv1f0n6imdgz101g9383hfj3ra91268wryzlm0yk5w"))))
    (properties `((upstream-name . "BSgenome.Celegans.UCSC.ce11")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Celegans.UCSC.ce11")
    (synopsis
     "Full genome sequences for Caenorhabditis elegans (UCSC version ce11)")
    (description
     "Full genome sequences for Caenorhabditis elegans (Worm) as provided by UCSC
(ce11, Feb.  2013) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-carietinum-ncbi-v1
  (package
    (name "r-bsgenome-carietinum-ncbi-v1")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Carietinum.NCBI.v1" version
                              'annotation))
       (sha256
        (base32 "1asyyb1p1bzc7dv9s2igjxrf9f144vvz2xbv9qxg15w9qzzx7r33"))))
    (properties `((upstream-name . "BSgenome.Carietinum.NCBI.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Carietinum.NCBI.v1")
    (synopsis
     "Cicer arietinum (Chickpea) full genome (NCBI version ASM33114v1)")
    (description
     "Full genome sequences for Cicer arietinum (Chickpea) as provided by NCBI
(ASM33114v1, Jan.  2013) and stored in Biostrings objects.")
    (license license:gpl3)))

(define-public r-bsgenome-btaurus-ucsc-bostau9-masked
  (package
    (name "r-bsgenome-btaurus-ucsc-bostau9-masked")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Btaurus.UCSC.bosTau9.masked" version
                              'annotation))
       (sha256
        (base32 "04wzhrp0kb8mv7dg732daqr58djs5dwjm54hgmzbaafv1715i74k"))))
    (properties `((upstream-name . "BSgenome.Btaurus.UCSC.bosTau9.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-btaurus-ucsc-bostau9 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Btaurus.UCSC.bosTau9.masked")
    (synopsis
     "Full masked genome sequences for Bos taurus (UCSC version bosTau9)")
    (description
     "Full genome sequences for Bos taurus (Cow) as provided by UCSC (genome
@code{bosTau9}) and stored in Biostrings objects.  The sequences are the same as
in BSgenome.Btaurus.UCSC.@code{bosTau9}, except that each of them has the 4
following masks on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask
of intra-contig ambiguities (AMB mask), (3) the mask of repeats from
@code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem Repeats
Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-btaurus-ucsc-bostau9
  (package
    (name "r-bsgenome-btaurus-ucsc-bostau9")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Btaurus.UCSC.bosTau9" version
                              'annotation))
       (sha256
        (base32 "0vx9z101faybqqdqfk306m7m3j490svmx7bn7knh5if66g0mzi7g"))))
    (properties `((upstream-name . "BSgenome.Btaurus.UCSC.bosTau9")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Btaurus.UCSC.bosTau9")
    (synopsis "Full genome sequences for Bos taurus (UCSC version bosTau9)")
    (description
     "Full genome sequences for Bos taurus (Cow) as provided by UCSC (@code{bosTau9},
Apr.  2018) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-btaurus-ucsc-bostau6-masked
  (package
    (name "r-bsgenome-btaurus-ucsc-bostau6-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Btaurus.UCSC.bosTau6.masked" version
                              'annotation))
       (sha256
        (base32 "07isv0lcvlsl0aha1p474l0pps0j7bsh455m33vfxwahivqsfy27"))))
    (properties `((upstream-name . "BSgenome.Btaurus.UCSC.bosTau6.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-btaurus-ucsc-bostau6 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Btaurus.UCSC.bosTau6.masked")
    (synopsis
     "Full masked genome sequences for Bos taurus (UCSC version bosTau6)")
    (description
     "Full genome sequences for Bos taurus (Cow) as provided by UCSC (@code{bosTau6},
Nov.  2009) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Btaurus.UCSC.@code{bosTau6}, except that each of them has the 4
following masks on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask
of intra-contig ambiguities (AMB mask), (3) the mask of repeats from
@code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem Repeats
Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-btaurus-ucsc-bostau6
  (package
    (name "r-bsgenome-btaurus-ucsc-bostau6")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Btaurus.UCSC.bosTau6" version
                              'annotation))
       (sha256
        (base32 "0waaf9wfmdl5jbi3la64vsiqb83lyw9fqg3sn90bf1q7k3k617p3"))))
    (properties `((upstream-name . "BSgenome.Btaurus.UCSC.bosTau6")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Btaurus.UCSC.bosTau6")
    (synopsis "Full genome sequences for Bos taurus (UCSC version bosTau6)")
    (description
     "Full genome sequences for Bos taurus (Cow) as provided by UCSC (@code{bosTau6},
Nov.  2009) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-btaurus-ucsc-bostau4-masked
  (package
    (name "r-bsgenome-btaurus-ucsc-bostau4-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Btaurus.UCSC.bosTau4.masked" version
                              'annotation))
       (sha256
        (base32 "0dkz9ixxa5x9l1v733a3sfrbnjd2kfmd5a2vxskkx9jm3hfbg6gr"))))
    (properties `((upstream-name . "BSgenome.Btaurus.UCSC.bosTau4.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-btaurus-ucsc-bostau4 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Btaurus.UCSC.bosTau4.masked")
    (synopsis
     "Full masked genome sequences for Bos taurus (UCSC version bosTau4)")
    (description
     "Full genome sequences for Bos taurus (Cow) as provided by UCSC (@code{bosTau4},
Oct.  2007) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Btaurus.UCSC.@code{bosTau4}, except that each of them has the 4
following masks on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask
of intra-contig ambiguities (AMB mask), (3) the mask of repeats from
@code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem Repeats
Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-btaurus-ucsc-bostau4
  (package
    (name "r-bsgenome-btaurus-ucsc-bostau4")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Btaurus.UCSC.bosTau4" version
                              'annotation))
       (sha256
        (base32 "1z86qdpmilwrnjysn8qgxj3g7pqp9hwr25cpiabyczd216wy3zy5"))))
    (properties `((upstream-name . "BSgenome.Btaurus.UCSC.bosTau4")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Btaurus.UCSC.bosTau4")
    (synopsis "Full genome sequences for Bos taurus (UCSC version bosTau4)")
    (description
     "Full genome sequences for Bos taurus (Cow) as provided by UCSC (@code{bosTau4},
Oct.  2007) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-btaurus-ucsc-bostau3-masked
  (package
    (name "r-bsgenome-btaurus-ucsc-bostau3-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Btaurus.UCSC.bosTau3.masked" version
                              'annotation))
       (sha256
        (base32 "03l9xgbsfmrw3yk0hpza5gfhgd3cfflp5pqzi36ifnmpr40ca722"))))
    (properties `((upstream-name . "BSgenome.Btaurus.UCSC.bosTau3.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-btaurus-ucsc-bostau3 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Btaurus.UCSC.bosTau3.masked")
    (synopsis
     "Full masked genome sequences for Bos taurus (UCSC version bosTau3)")
    (description
     "Full genome sequences for Bos taurus (Cow) as provided by UCSC (@code{bosTau3},
Aug.  2006) and stored in Biostrings objects.  The sequences are the same as in
BSgenome.Btaurus.UCSC.@code{bosTau3}, except that each of them has the 4
following masks on top: (1) the mask of assembly gaps (AGAPS mask), (2) the mask
of intra-contig ambiguities (AMB mask), (3) the mask of repeats from
@code{RepeatMasker} (RM mask), and (4) the mask of repeats from Tandem Repeats
Finder (TRF mask).  Only the AGAPS and AMB masks are \"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-btaurus-ucsc-bostau3
  (package
    (name "r-bsgenome-btaurus-ucsc-bostau3")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Btaurus.UCSC.bosTau3" version
                              'annotation))
       (sha256
        (base32 "0vh3664q7pynfw763pwg2h74h0ncmi5nslvj7y5bj1q7pvf03zpc"))))
    (properties `((upstream-name . "BSgenome.Btaurus.UCSC.bosTau3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Btaurus.UCSC.bosTau3")
    (synopsis "Full genome sequences for Bos taurus (UCSC version bosTau3)")
    (description
     "Full genome sequences for Bos taurus (Cow) as provided by UCSC (@code{bosTau3},
Aug.  2006) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-athaliana-tair-tair9
  (package
    (name "r-bsgenome-athaliana-tair-tair9")
    (version "1.3.1000")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Athaliana.TAIR.TAIR9" version
                              'annotation))
       (sha256
        (base32 "0n45sn80c5nchfj1wzbcaicfyg66id2zhr5xm3w238idkbj05l00"))))
    (properties `((upstream-name . "BSgenome.Athaliana.TAIR.TAIR9")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Athaliana.TAIR.TAIR9")
    (synopsis "Full genome sequences for Arabidopsis thaliana (TAIR9)")
    (description
     "Full genome sequences for Arabidopsis thaliana as provided by TAIR (TAIR9 Genome
Release) and stored in Biostrings objects.  Note that TAIR10 is an \"annotation
release\" based on the same genome assembly as TAIR9.")
    (license license:artistic2.0)))

(define-public r-bsgenome-athaliana-tair-04232008
  (package
    (name "r-bsgenome-athaliana-tair-04232008")
    (version "1.3.1000")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Athaliana.TAIR.04232008" version
                              'annotation))
       (sha256
        (base32 "0dsbjfh2yf0v3zmbypn9p3alvwhfw2qyr5vivyj7x9ablylb6qxc"))))
    (properties `((upstream-name . "BSgenome.Athaliana.TAIR.04232008")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Athaliana.TAIR.04232008")
    (synopsis
     "Full genome sequences for Arabidopsis thaliana (TAIR version from April 23, 2008)")
    (description
     "Full genome sequences for Arabidopsis thaliana as provided by TAIR (snapshot
from April 23, 2008) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-aofficinalis-ncbi-v1
  (package
    (name "r-bsgenome-aofficinalis-ncbi-v1")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Aofficinalis.NCBI.V1" version
                              'annotation))
       (sha256
        (base32 "0n6m5jnpiz6bv46b7s396qkxha2d8271j747j50v2zb6a7wd0rjr"))))
    (properties `((upstream-name . "BSgenome.Aofficinalis.NCBI.V1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Aofficinalis.NCBI.V1")
    (synopsis
     "Asparagus officinalis (Garden asparagus) full genome (NCBI version Aspof.V1)")
    (description
     "Full genome sequences for Asparagus officinalis (Garden asparagus) as 	provided
by NCBI (Aspof.V1, Feb.  2017) and stored in Biostrings objects.")
    (license license:gpl3)))

(define-public r-bsgenome-amellifera-ucsc-apimel2-masked
  (package
    (name "r-bsgenome-amellifera-ucsc-apimel2-masked")
    (version "1.3.99")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Amellifera.UCSC.apiMel2.masked"
                              version
                              'annotation))
       (sha256
        (base32 "128jmpnpbz1afqvhvdc9vrc8gmlyg26ca7qz362qsx89jrm4khpr"))))
    (properties `((upstream-name . "BSgenome.Amellifera.UCSC.apiMel2.masked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome-amellifera-ucsc-apimel2 r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Amellifera.UCSC.apiMel2.masked")
    (synopsis
     "Full masked genome sequences for Apis mellifera (UCSC version apiMel2)")
    (description
     "Full genome sequences for Apis mellifera (Honey Bee) as provided by UCSC
(@code{apiMel2}, Jan.  2005) and stored in Biostrings objects.  The sequences
are the same as in BSgenome.Amellifera.UCSC.@code{apiMel2}, except that each of
them has the 3 following masks on top: (1) the mask of assembly gaps (AGAPS
mask), (2) the mask of intra-contig ambiguities (AMB mask), and (3) the mask of
repeats from @code{RepeatMasker} (RM mask).  Only the AGAPS and AMB masks are
\"active\" by default.")
    (license license:artistic2.0)))

(define-public r-bsgenome-amellifera-ucsc-apimel2
  (package
    (name "r-bsgenome-amellifera-ucsc-apimel2")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Amellifera.UCSC.apiMel2" version
                              'annotation))
       (sha256
        (base32 "1967w7aly7qydykk7rar712kvgsav3zjr4kirybkj17nwiynd74g"))))
    (properties `((upstream-name . "BSgenome.Amellifera.UCSC.apiMel2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Amellifera.UCSC.apiMel2")
    (synopsis
     "Full genome sequences for Apis mellifera (UCSC version apiMel2)")
    (description
     "Full genome sequences for Apis mellifera (Honey Bee) as provided by UCSC
(@code{apiMel2}, Jan.  2005) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-amellifera-ncbi-amelhav3-1
  (package
    (name "r-bsgenome-amellifera-ncbi-amelhav3-1")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Amellifera.NCBI.AmelHAv3.1" version
                              'annotation))
       (sha256
        (base32 "1cglml4rlqr5hmf4dx51grx6s25h6xc3lqv569nx2sl4gdz28s47"))))
    (properties `((upstream-name . "BSgenome.Amellifera.NCBI.AmelHAv3.1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Amellifera.NCBI.AmelHAv3.1")
    (synopsis "Full genome sequences for Apis mellifera (Amel_HAv3.1)")
    (description
     "Full genome sequences for Apis mellifera as provided by NCBI (assembly
Amel_HAv3.1, assembly accession GCF_003254395.2) and stored in Biostrings
objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-amellifera-beebase-assembly4
  (package
    (name "r-bsgenome-amellifera-beebase-assembly4")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Amellifera.BeeBase.assembly4" version
                              'annotation))
       (sha256
        (base32 "02zs16q441zcbfp7xvv1gny5nn02ivfr8md1wh5s5rpnj6sdl6kj"))))
    (properties `((upstream-name . "BSgenome.Amellifera.BeeBase.assembly4")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page
     "https://bioconductor.org/packages/BSgenome.Amellifera.BeeBase.assembly4")
    (synopsis "Full genome sequences for Apis mellifera (BeeBase assembly4)")
    (description
     "@code{iFull} genome sequences for Apis mellifera (Honey Bee) as provided by
@code{BeeBase} (assembly4, Feb.  2008) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-bsgenome-alyrata-jgi-v1
  (package
    (name "r-bsgenome-alyrata-jgi-v1")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BSgenome.Alyrata.JGI.v1" version
                              'annotation))
       (sha256
        (base32 "062ap94m6s4w8clg1zlj223wmgbmq19yhksx9fcdcqrxr5kbfv85"))))
    (properties `((upstream-name . "BSgenome.Alyrata.JGI.v1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bsgenome))
    (home-page "https://bioconductor.org/packages/BSgenome.Alyrata.JGI.v1")
    (synopsis "Arabidopsis lyrata full genome (JGI version V1.0)")
    (description
     "Arabidopsis lyrata 8x Release [project ID 4002920] as provided by JGI ( snapshot
from March 24, 2011) and stored in Biostrings objects.")
    (license license:artistic2.0)))

(define-public r-browserviz
  (package
    (name "r-browserviz")
    (version "2.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BrowserViz" version))
       (sha256
        (base32 "18cqkq9yc9n0wiiihrr2lggp3s848x391yxb1m5gfkwk0cpyzv6h"))))
    (properties `((upstream-name . "BrowserViz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httpuv r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://gladkia.github.io/BrowserViz/")
    (synopsis
     "BrowserViz: interactive R/browser graphics using websockets and JSON")
    (description
     "Interactvive graphics in a web browser from R, using websockets and JSON.")
    (license license:gpl2)))

(define-public r-bronchialil13
  (package
    (name "r-bronchialil13")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bronchialIL13" version
                              'experiment))
       (sha256
        (base32 "1p2hfcsj6al2v8vcss387fan8njrfkkbkm08ysczfjji3rg9m1va"))))
    (properties `((upstream-name . "bronchialIL13")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-affy))
    (home-page "http://www.biostat.harvard.edu/~carey")
    (synopsis "time course experiment involving il13")
    (description
     "derived from CNMC (pepr.cnmcresearch.org)
http://pepr.cnmcresearch.org/browse.do?action=list_prj_exp&@code{projectId=95}
Human Bronchial Cell line A549.")
    (license license:gpl2)))

(define-public r-broadseq
  (package
    (name "r-broadseq")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "broadSeq" version))
       (sha256
        (base32 "0fvbwiccv7d6yfzy12d07ingr42jrqymv61vq3xjzn6mkah8gxm9"))))
    (properties `((upstream-name . "broadSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-sechm
                             r-purrr
                             r-plyr
                             r-pheatmap
                             r-noiseq
                             r-ggpubr
                             r-ggplotify
                             r-ggplot2
                             r-genefilter
                             r-forcats
                             r-edger
                             r-ebseq
                             r-dplyr
                             r-deseq2
                             r-delocal
                             r-clusterprofiler
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dasroy/broadSeq")
    (synopsis "broadSeq : for streamlined exploration of RNA-seq data")
    (description
     "This package helps user to do easily RNA-seq data analysis with multiple methods
(usually which needs many different input formats).  Here the user will provid
the expression data as a @code{SummarizedExperiment} object and will get results
from different methods.  It will help user to quickly evaluate different
methods.")
    (license license:expat)))

(define-public r-bridgedbr
  (package
    (name "r-bridgedbr")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BridgeDbR" version))
       (sha256
        (base32 "08p4d1z65pkqk78zp6sg9zimzbqzr91xci9crr4mkn3nh7ncnyhh"))))
    (properties `((upstream-name . "BridgeDbR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjava r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bridgedb/BridgeDbR")
    (synopsis
     "Code for using BridgeDb identifier mapping framework from within R")
    (description
     "Use @code{BridgeDb} functions and load identifier mapping databases in R. It
uses @code{GitHub}, Zenodo, and Figshare if you use this package to download
identifier mappings files.")
    (license license:agpl3)))

(define-public r-brgedata
  (package
    (name "r-brgedata")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "brgedata" version
                              'experiment))
       (sha256
        (base32 "0ckckizyvb11cpp6kyf1wl2vdg55r1zv2yh343r9ifa6icvn7bkp"))))
    (properties `((upstream-name . "brgedata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/brgedata")
    (synopsis
     "Exposures, Gene Expression and Methylation data for ilustration purpouses")
    (description
     "This package contains several sets of omics data including Gene Expression
(@code{ExpressionSet}), Methylation (@code{GenomicRatioSet}), Proteome and
Exposome (@code{ExposomeSet}).  This data is used in vignettes and exaples at
MEAL, @code{MultiDataSet} and @code{omicRexposome}.")
    (license license:expat)))

(define-public r-brew3r-r
  (package
    (name "r-brew3r-r")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BREW3R.r" version))
       (sha256
        (base32 "0m8ivr5wx7z7ymwzk5kjhczrhr81i92lf2ph6qz58yg1xzqvmxmi"))))
    (properties `((upstream-name . "BREW3R.r")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-rlang r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lldelisle/BREW3R.r")
    (synopsis "R package associated to BREW3R")
    (description
     "This R package provide functions that are used in the BREW3R workflow.  This
mainly contains a function that extend a gtf as GRanges using information from
another gtf (also as GRanges).  The process allows to extend gene annotation
without increasing the overlap between gene ids.")
    (license license:gpl3)))

(define-public r-brendadb
  (package
    (name "r-brendadb")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "brendaDb" version))
       (sha256
        (base32 "1libb78j7i03fw6y5bpv45aljmllysv7yn80yx3whvzzxzn4h1ss"))))
    (properties `((upstream-name . "brendaDb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rcpp
                             r-rappdirs
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-crayon
                             r-biocparallel
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/y1zhou/brendaDb")
    (synopsis "The BRENDA Enzyme Database")
    (description
     "R interface for importing and analyzing enzyme information from the BRENDA
database.")
    (license license:expat)))

(define-public r-breastsubtyper
  (package
    (name "r-breastsubtyper")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BreastSubtypeR" version))
       (sha256
        (base32 "1r5fmks5x4al3wldmy5lspcbpiwvp93glfc1r95arx011462kx92"))))
    (properties `((upstream-name . "BreastSubtypeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tidyselect
                             r-summarizedexperiment
                             r-stringr
                             r-rlang
                             r-rcolorbrewer
                             r-magrittr
                             r-impute
                             r-ggrepel
                             r-ggplot2
                             r-e1071
                             r-dplyr
                             r-data-table
                             r-complexheatmap
                             r-circlize
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yqkiuo/BreastSubtypeR")
    (synopsis "Methods for breast cancer intrinsic subtyping")
    (description
     "@code{BreastSubtypeR} is an R package that provides a collection of methods for
intrinsic molecular subtyping of breast cancer.  It includes subtyping methods
for nearest centroid-based subtyping (NC-based) and single sample predictor
(SSP-based), along with tools for integrating clinical data and visualizing
results.")
    (license license:gpl3+)))

(define-public r-breastcancerupp
  (package
    (name "r-breastcancerupp")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "breastCancerUPP" version
                              'experiment))
       (sha256
        (base32 "1ifs8ip5j9mww84kp1ws34immaqsz1ndkj2szn5a7nh5dxhpvkpw"))))
    (properties `((upstream-name . "breastCancerUPP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://compbio.dfci.harvard.edu/")
    (synopsis
     "Gene expression dataset published by Miller et al. [2005] (UPP)")
    (description
     "Gene expression data from a breast cancer study published by Miller et al.  in
2005, provided as an @code{eSet}.")
    (license license:artistic2.0)))

(define-public r-breastcancerunt
  (package
    (name "r-breastcancerunt")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "breastCancerUNT" version
                              'experiment))
       (sha256
        (base32 "0s5cd5c4zv3fgyc6g9wswy74993vzv5kb3mqpn60c26kr6wwn3zh"))))
    (properties `((upstream-name . "breastCancerUNT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://compbio.dfci.harvard.edu/")
    (synopsis
     "Gene expression dataset published by Sotiriou et al. [2007] (UNT)")
    (description
     "Gene expression data from a breast cancer study published by Sotiriou et al.  in
2007, provided as an @code{eSet}.")
    (license license:artistic2.0)))

(define-public r-breastcancertransbig
  (package
    (name "r-breastcancertransbig")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "breastCancerTRANSBIG" version
                              'experiment))
       (sha256
        (base32 "0z4h0zxrq5z2qv9ny5x44vyixd1zwya3xs2a5c569im24awlsjkh"))))
    (properties `((upstream-name . "breastCancerTRANSBIG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://compbio.dfci.harvard.edu/")
    (synopsis
     "Gene expression dataset published by Desmedt et al. [2007] (TRANSBIG)")
    (description
     "Gene expression data from a breast cancer study published by Desmedt et al.  in
2007, provided as an @code{eSet}.")
    (license license:artistic2.0)))

(define-public r-breastcancernki
  (package
    (name "r-breastcancernki")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "breastCancerNKI" version
                              'experiment))
       (sha256
        (base32 "1rykklpsf9w2py7zrfhrigj0fbdfilcc2d9g65c7f9g2x3w4hc4d"))))
    (properties `((upstream-name . "breastCancerNKI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://compbio.dfci.harvard.edu/")
    (synopsis
     "Genexpression dataset published by van't Veer et al. [2002] and van de Vijver et al. [2002] (NKI)")
    (description
     "Genexpression data from a breast cancer study published by van't Veer et al.  in
2002 and van de Vijver et al.  in 2002, provided as an @code{eSet}.")
    (license license:artistic2.0)))

(define-public r-breastcancermainz
  (package
    (name "r-breastcancermainz")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "breastCancerMAINZ" version
                              'experiment))
       (sha256
        (base32 "1wr8r8ibgwpg8pc8y0xhy3w4gjb2sbaljli3cvz46viq1byxjp5h"))))
    (properties `((upstream-name . "breastCancerMAINZ")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://compbio.dfci.harvard.edu/")
    (synopsis
     "Gene expression dataset published by Schmidt et al. [2008] (MAINZ)")
    (description
     "Gene expression data from the breast cancer study published by Schmidt et al.
in 2008, provided as an @code{eSet}.")
    (license license:artistic2.0)))

(define-public r-branchpointer
  (package
    (name "r-branchpointer")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "branchpointer" version))
       (sha256
        (base32 "0n3linwha0lj65m72k7zm2bslxkdkjb1yqgs5ksdxrlziwmfs2nj"))))
    (properties `((upstream-name . "branchpointer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-s4vectors
                             r-rtracklayer
                             r-plyr
                             r-kernlab
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-gbm
                             r-data-table
                             r-cowplot
                             r-caret
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-biostrings
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/branchpointer")
    (synopsis "Prediction of intronic splicing branchpoints")
    (description
     "Predicts branchpoint probability for sites in intronic branchpoint windows.
Queries can be supplied as intronic regions; or to evaluate the effects of
mutations, SNPs.")
    (license license:bsd-3)))

(define-public r-brain
  (package
    (name "r-brain")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BRAIN" version))
       (sha256
        (base32 "11zd5z9xd9564cqh6lzl3wgi15170w4cbi0np18v2fmc3hkm2gzh"))))
    (properties `((upstream-name . "BRAIN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-polynomf r-lattice r-biostrings))
    (home-page "https://bioconductor.org/packages/BRAIN")
    (synopsis
     "Baffling Recursive Algorithm for Isotope distributioN calculations")
    (description
     "Package for calculating aggregated isotopic distribution and exact center-masses
for chemical substances (in this version composed of C, H, N, O and S).  This is
an implementation of the BRAIN algorithm described in the paper by J. Claesen,
P. Dittwald, T. Burzykowski and D. Valkenborg.")
    (license license:gpl2)))

(define-public r-bprmeth
  (package
    (name "r-bprmeth")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BPRMeth" version))
       (sha256
        (base32 "0p06wjxmhfq3nyz1cwj0ghl3rnwd9lkhgzrndzgxb2a9l6v74w2h"))))
    (properties `((upstream-name . "BPRMeth")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncnorm
                             r-s4vectors
                             r-rcpparmadillo
                             r-rcpp
                             r-randomforest
                             r-mvtnorm
                             r-matrixcalc
                             r-mass
                             r-magrittr
                             r-kernlab
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-earth
                             r-e1071
                             r-doparallel
                             r-data-table
                             r-cowplot
                             r-biocstyle
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BPRMeth")
    (synopsis "Model higher-order methylation profiles")
    (description
     "The BPRMeth package is a probabilistic method to quantify explicit features of
methylation profiles, in a way that would make it easier to formally use such
profiles in downstream modelling efforts, such as predicting gene expression
levels or clustering genomic regions or cells according to their methylation
profiles.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-bovineprobe
  (package
    (name "r-bovineprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bovineprobe" version
                              'annotation))
       (sha256
        (base32 "0i4afa5dksnir2nfrfh2cynjm59sm6vfaqa9wyag8cxg7c2nlm1i"))))
    (properties `((upstream-name . "bovineprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/bovineprobe")
    (synopsis "Probe sequence data for microarrays of type bovine")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Bovine\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-bovinecdf
  (package
    (name "r-bovinecdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bovinecdf" version
                              'annotation))
       (sha256
        (base32 "13mf0yy0dypkm5n2ghl04xm6ayb9bn9qijqhgynksghi7s2k34mb"))))
    (properties `((upstream-name . "bovinecdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/bovinecdf")
    (synopsis "bovinecdf")
    (description
     "This package provides a package containing an environment representing the
Bovine.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-bovine-db0
  (package
    (name "r-bovine-db0")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bovine.db0" version
                              'annotation))
       (sha256
        (base32 "1499b0gfy5bp0sa04hra8vfhn5n7lm0lbg5l6nvsclvy6hcbzn24"))))
    (properties `((upstream-name . "bovine.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/bovine.db0")
    (synopsis "Base Level Annotation databases for bovine")
    (description
     "Base annotation databases for bovine, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-bovine-db
  (package
    (name "r-bovine-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bovine.db" version
                              'annotation))
       (sha256
        (base32 "06692b1n0lzhg0biixipsnwx33w9y8wkc7pc5q1lkjfzbmd2inml"))))
    (properties `((upstream-name . "bovine.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-bt-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/bovine.db")
    (synopsis
     "Affymetrix Affymetrix Bovine Array annotation data (chip bovine)")
    (description
     "Affymetrix Affymetrix Bovine Array annotation data (chip bovine) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-borealis
  (package
    (name "r-borealis")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "borealis" version))
       (sha256
        (base32 "1k5qjg1nndmdbpynjivlh5xy44y1b0q29g9f7rmxx9c8r2pg6pmj"))))
    (properties `((upstream-name . "borealis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snow
                             r-rlang
                             r-r-utils
                             r-purrr
                             r-plyr
                             r-ggplot2
                             r-genomicranges
                             r-gamlss-dist
                             r-gamlss
                             r-foreach
                             r-dss
                             r-dplyr
                             r-doparallel
                             r-cowplot
                             r-bsseq
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/borealis")
    (synopsis "Bisulfite-seq OutlieR mEthylation At singLe-sIte reSolution")
    (description
     "Borealis is an R library performing outlier analysis for count-based bisulfite
sequencing data.  It detectes outlier methylated @code{CpG} sites from bisulfite
sequencing (BS-seq).  The core of Borealis is modeling Beta-Binomial
distributions.  This can be useful for rare disease diagnoses.")
    (license license:gpl3)))

(define-public r-bobafit
  (package
    (name "r-bobafit")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BOBaFIT" version))
       (sha256
        (base32 "0pfkdcsl6bwvaad0dwina5k7ajchpknkfp6v6ircic5yxvi6yd25"))))
    (properties `((upstream-name . "BOBaFIT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-plyranges
                             r-nbclust
                             r-magrittr
                             r-ggplot2
                             r-ggforce
                             r-ggbio
                             r-genomicranges
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/andrea-poletti-unibo/BOBaFIT")
    (synopsis "Refitting diploid region profiles using a clustering procedure")
    (description
     "This package provides a method to refit and correct the diploid region in copy
number profiles.  It uses a clustering algorithm to identify pathology-specific
normal (diploid) chromosomes and then use their copy number signal to refit the
whole profile.  The package is composed by three functions: DRrefit (the main
function), @code{ComputeNormalChromosome} and @code{PlotCluster}.")
    (license license:gpl3+)))

(define-public r-bnem
  (package
    (name "r-bnem")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bnem" version))
       (sha256
        (base32 "00ynmwi9zf2sbprr2lcahrjfvcz34cnrpp7n0haa3f5dsccr9cfw"))))
    (properties `((upstream-name . "bnem")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vsn
                             r-sva
                             r-snowfall
                             r-rmarkdown
                             r-rgraphviz
                             r-rcolorbrewer
                             r-mnem
                             r-matrixstats
                             r-limma
                             r-graph
                             r-flexclust
                             r-epinem
                             r-cluster
                             r-cellnoptr
                             r-biobase
                             r-binom
                             r-affy))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MartinFXP/bnem/")
    (synopsis
     "Training of logical models from indirect measurements of perturbation experiments")
    (description
     "bnem combines the use of indirect measurements of Nested Effects Models (package
mnem) with the Boolean networks of @code{CellNOptR}.  Perturbation experiments
of signalling nodes in cells are analysed for their effect on the global gene
expression profile.  Those profiles give evidence for the Boolean regulation of
down-stream nodes in the network, e.g., whether two parents activate their child
independently (OR-gate) or jointly (AND-gate).")
    (license license:gpl3)))

(define-public r-bnbc
  (package
    (name "r-bnbc")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bnbc" version))
       (sha256
        (base32 "0ly0hb5893fblxjz5jmbsyd4452dxwcd0wzkfzw7p4f4qmfrqqlm"))))
    (properties `((upstream-name . "bnbc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-s4vectors
                             r-rhdf5
                             r-rcpp
                             r-preprocesscore
                             r-matrixstats
                             r-iranges
                             r-hicbricks
                             r-genomicranges
                             r-genomeinfodb
                             r-ebimage
                             r-data-table
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hansenlab/bnbc")
    (synopsis "Bandwise normalization and batch correction of Hi-C data")
    (description
     "This package provides tools to normalize (several) Hi-C data from replicates.")
    (license license:artistic2.0)))

(define-public r-bloodgen3module
  (package
    (name "r-bloodgen3module")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BloodGen3Module" version))
       (sha256
        (base32 "011k9jl84gg5m9j1qg818wq3bixzy1hqzlz8an3h6w9rm3gcsfwb"))))
    (properties `((upstream-name . "BloodGen3Module")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-v8
                             r-testthat
                             r-summarizedexperiment
                             r-reshape2
                             r-randomcolor
                             r-preprocesscore
                             r-matrixstats
                             r-limma
                             r-gtools
                             r-ggplot2
                             r-experimenthub
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BloodGen3Module")
    (synopsis
     "This R package for performing module repertoire analyses and generating fingerprint representations")
    (description
     "The @code{BloodGen3Module} package provides functions for R user performing
module repertoire analyses and generating fingerprint representations.
Functions can perform group comparison or individual sample analysis and
visualization by fingerprint grid plot or fingerprint heatmap.  Module
repertoire analyses typically involve determining the percentage of the
constitutive genes for each module that are significantly increased or
decreased.  As we describe in
details;https://www.biorxiv.org/content/10.1101/525709v2 and
https://pubmed.ncbi.nlm.nih.gov/33624743/, the results of module repertoire
analyses can be represented in a fingerprint format, where red and blue spots
indicate increases or decreases in module activity.  These spots are
subsequently represented either on a grid, with each position being assigned to
a given module, or in a heatmap where the samples are arranged in columns and
the modules in rows.")
    (license license:gpl2)))

(define-public r-bloodcancermultiomics2017
  (package
    (name "r-bloodcancermultiomics2017")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BloodCancerMultiOmics2017" version
                              'experiment))
       (sha256
        (base32 "1cmaa05jd8q3jrfiln21rig8zp0nb9lqcya8g8dxp38nimfm38v5"))))
    (properties `((upstream-name . "BloodCancerMultiOmics2017")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-survival
                             r-summarizedexperiment
                             r-scales
                             r-reshape2
                             r-rcolorbrewer
                             r-ipflasso
                             r-gtable
                             r-glmnet
                             r-ggplot2
                             r-ggdendro
                             r-dplyr
                             r-devtools
                             r-deseq2
                             r-biobase
                             r-beeswarm))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BloodCancerMultiOmics2017")
    (synopsis
     "\"Drug-perturbation-based stratification of blood cancer\" by Dietrich S, Oleś M, Lu J et al. - experimental data and complete analysis")
    (description
     "The package contains data of the Primary Blood Cancer Encyclopedia (PACE)
project together with a complete executable transcript of the statistical
analysis and reproduces figures presented in the paper \"Drug-perturbation-based
stratification of blood cancer\" by Dietrich S, Oleś M, Lu J et al., J. Clin.
Invest. (2018) 128(1):427-445.  doi:10.1172/JCI93801.")
    (license license:lgpl3+)))

(define-public r-blma
  (package
    (name "r-blma")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BLMA" version))
       (sha256
        (base32 "1lqfim34rci17hl27hi3cmp40wikfxq5vkjvqrrzh9cs7nvi0kns"))))
    (properties `((upstream-name . "BLMA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rontotools
                             r-padog
                             r-metafor
                             r-limma
                             r-gsa
                             r-graph
                             r-biobase))
    (home-page "https://bioconductor.org/packages/BLMA")
    (synopsis "BLMA: A package for bi-level meta-analysis")
    (description
     "Suit of tools for bi-level meta-analysis.  The package can be used in a wide
range of applications, including general hypothesis testings, differential
expression analysis, functional analysis, and pathway analysis.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-blimatestingdata
  (package
    (name "r-blimatestingdata")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "blimaTestingData" version
                              'experiment))
       (sha256
        (base32 "1nzwqsfr209czbpakk60vz91f3vf69rmxgcav121f2vcq31898a7"))))
    (properties `((upstream-name . "blimaTestingData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bitbucket.org/kulvait/blima")
    (synopsis "Data for testing of the package blima")
    (description
     "Experiment data package.  The set were prepared using microarray images of human
mesenchymal cells treated with various supplements.  This package is intended to
provide example data to test functionality provided by blima.")
    (license license:gpl3)))

(define-public r-blima
  (package
    (name "r-blima")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "blima" version))
       (sha256
        (base32 "0hsgd1zl3i2v4916c7dxlwlpm3affmgpb9s58p9rj1as3nvk6z9l"))))
    (properties `((upstream-name . "blima")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-biocgenerics r-biobase r-beadarray))
    (native-inputs (list r-knitr))
    (home-page "https://bitbucket.org/kulvait/blima")
    (synopsis
     "Tools for the preprocessing and analysis of the Illumina microarrays on the detector (bead) level")
    (description
     "Package blima includes several algorithms for the preprocessing of Illumina
microarray data.  It focuses to the bead level analysis and provides novel
approach to the quantile normalization of the vectors of unequal lengths.  It
provides variety of the methods for background correction including background
subtraction, RMA like convolution and background outlier removal.  It also
implements variance stabilizing transformation on the bead level.  There are
also implemented methods for data summarization.  It also provides the methods
for performing T-tests on the detector (bead) level and on the probe level for
differential expression testing.")
    (license license:gpl3)))

(define-public r-blacksheepr
  (package
    (name "r-blacksheepr")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "blacksheepr" version))
       (sha256
        (base32 "05ywzx7sbx1bas24hl36d52a3bzclm22q7nwpvfraxv2d9k8dvpd"))))
    (properties `((upstream-name . "blacksheepr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-summarizedexperiment
                             r-rcolorbrewer
                             r-pasilla
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/blacksheepr")
    (synopsis "Outlier Analysis for pairwise differential comparison")
    (description
     "Blacksheep is a tool designed for outlier analysis in the context of pairwise
comparisons in an effort to find distinguishing characteristics from two groups.
 This tool was designed to be applied for biological applications such as
phosphoproteomics or transcriptomics, but it can be used for any data that can
be represented by a 2D table, and has two sub populations within the table to
compare.")
    (license license:expat)))

(define-public r-biseq
  (package
    (name "r-biseq")
    (version "1.48.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiSeq" version))
       (sha256
        (base32 "04x2nab4mhrcrv73g5pg6gdi0fw91gn1qg0mn5xq63b9nww7zyw3"))))
    (properties `((upstream-name . "BiSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-lokern
                             r-iranges
                             r-globaltest
                             r-genomicranges
                             r-genomeinfodb
                             r-formula
                             r-biocgenerics
                             r-biobase
                             r-betareg))
    (home-page "https://bioconductor.org/packages/BiSeq")
    (synopsis "Processing and analyzing bisulfite sequencing data")
    (description
     "The @code{BiSeq} package provides useful classes and functions to handle and
analyze targeted bisulfite sequencing (BS) data such as reduced-representation
bisulfite sequencing (RRBS) data.  In particular, it implements an algorithm to
detect differentially methylated regions (DMRs).  The package takes already
aligned BS data from one or multiple samples.")
    (license license:lgpl3)))

(define-public r-bioplex
  (package
    (name "r-bioplex")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BioPlex" version
                              'experiment))
       (sha256
        (base32 "0g7vjzvmgn55acrxhnzhxqyzhknxccai5cfrkk386bxy8f59mskg"))))
    (properties `((upstream-name . "BioPlex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-graph
                             r-geoquery
                             r-genomicranges
                             r-genomeinfodb
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ccb-hms/BioPlex")
    (synopsis "R-side access to BioPlex protein-protein interaction data")
    (description
     "The @code{BioPlex} package implements access to the @code{BioPlex}
protein-protein interaction networks and related resources from within R.
Besides protein-protein interaction networks for HEK293 and HCT116 cells, this
includes access to CORUM protein complex data, and transcriptome and proteome
data for the two cell lines.  Functionality focuses on importing the various
data resources and storing them in dedicated Bioconductor data structures, as a
foundation for integrative downstream analysis of the data.")
    (license license:artistic2.0)))

(define-public r-bionar
  (package
    (name "r-bionar")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BioNAR" version))
       (sha256
        (base32 "0l675wbsvjh0p91fs17p47ldhmlllkvvdp8n84ch2j1mfqmxz39n"))))
    (properties `((upstream-name . "BioNAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wgcna
                             r-viridis
                             r-stringr
                             r-scales
                             r-rspectral
                             r-rspectra
                             r-rdpack
                             r-powerlaw
                             r-org-hs-eg-db
                             r-minpack-lm
                             r-matrix
                             r-latex2exp
                             r-igraph
                             r-go-db
                             r-ggrepel
                             r-ggplot2
                             r-fgsea
                             r-dplyr
                             r-data-table
                             r-cowplot
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BioNAR")
    (synopsis "Biological Network Analysis in R")
    (description
     "the R package @code{BioNAR}, developed to step by step analysis of PPI network.
The aim is to quantify and rank each protein’s simultaneous impact into multiple
complexes based on network topology and clustering.  Package also enables
estimating of co-occurrence of diseases across the network and specific clusters
pointing towards shared/common mechanisms.")
    (license license:artistic2.0)))

(define-public r-biomartgogenesets
  (package
    (name "r-biomartgogenesets")
    (version "0.99.11")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BioMartGOGeneSets" version
                              'annotation))
       (sha256
        (base32 "1ack8v1q0zg15gs816n9f4pwrzrpsv4va6j0r8847pw0pvavwpiq"))))
    (properties `((upstream-name . "BioMartGOGeneSets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jokergoo/BioMartGOGeneSets")
    (synopsis "Gene Ontology Gene Sets from BioMart")
    (description
     "It contains pre-compiled Gene Ontology gene sets for all organisms available on
the Ensembl database.  It also includes GO gene sets for organisms on Ensembl
Plants, Ensembl Metazoa, Ensembl Fungi and Ensembl Protists.  The data was
collected with the @code{biomaRt} package.")
    (license license:expat)))

(define-public r-bioimagedbs
  (package
    (name "r-bioimagedbs")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BioImageDbs" version
                              'experiment))
       (sha256
        (base32 "0dsky9wm7gjs685rsgz7wgzmr4v4q9y1pin9z1paix0ja571acnj"))))
    (properties `((upstream-name . "BioImageDbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-rmarkdown
                             r-markdown
                             r-magrittr
                             r-magick
                             r-filesstrings
                             r-experimenthub
                             r-einsum
                             r-ebimage
                             r-annotationhub
                             r-animation))
    (native-inputs (list r-knitr))
    (home-page "https://kumes.github.io/BioImageDbs/")
    (synopsis
     "Bio- and biomedical imaging dataset for machine learning and deep learning (for ExperimentHub)")
    (description
     "The package provides a bioimage dataset for the image analysis using machine
learning and deep learning.  The dataset includes microscopy imaging data with
supervised labels.  The data is provided as R list data that can be loaded to
Keras/tensorflow in R.")
    (license license:artistic2.0)))

(define-public r-bioga
  (package
    (name "r-bioga")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BioGA" version))
       (sha256
        (base32 "18ralrpz8cfk6ab5hmz4zn3nz6dcvl8kkhiqj30qw8pk6c2pdkjn"))))
    (properties `((upstream-name . "BioGA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-sessioninfo
                             r-rlang
                             r-rcpp
                             r-ggplot2
                             r-biocviews
                             r-biocstyle
                             r-animation))
    (native-inputs (list r-knitr))
    (home-page "https://danymukesha.github.io/BioGA/")
    (synopsis "Bioinformatics Genetic Algorithm (BioGA)")
    (description
     "Genetic algorithm are a class of optimization algorithms inspired by the process
of natural selection and genetics.  This package allows users to analyze and
optimize high throughput genomic data using genetic algorithms.  The functions
provided are implemented in C++ for improved speed and efficiency, with an
easy-to-use interface for use within R.")
    (license license:expat)))

(define-public r-biodbuniprot
  (package
    (name "r-biodbuniprot")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbUniprot" version))
       (sha256
        (base32 "1m27a7ngn4gwhj37vwg2mq5588q3cp85fcq5fjbjygi7l3d3pwg3"))))
    (properties `((upstream-name . "biodbUniprot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6 r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbUniprot")
    (synopsis "biodbUniprot, a library for connecting to the Uniprot Database")
    (description
     "The @code{biodbUniprot} library is an extension of the biodb framework package.
It provides access to the @code{UniProt} database.  It allows to retrieve
entries by their accession number, and run web service queries for searching for
entries.")
    (license license:agpl3)))

(define-public r-biodbnci
  (package
    (name "r-biodbnci")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbNci" version))
       (sha256
        (base32 "10fyx0mdhllqlykhm3xnv59hw0ham27wgnswapk0a36rr804mfpj"))))
    (properties `((upstream-name . "biodbNci")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-testthat r-rcpp r-r6 r-chk r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/biodbNci")
    (synopsis
     "biodbNci, a library for connecting to biodbNci, a library for connecting to the National Cancer Institute (USA) CACTUS Database")
    (description
     "The @code{biodbNci} library is an extension of the biodb framework package.  It
provides access to @code{biodbNci}, a library for connecting to the National
Cancer Institute (USA) CACTUS Database.  It allows to retrieve entries by their
accession number, and run specific web services.")
    (license license:agpl3)))

(define-public r-biodbncbi
  (package
    (name "r-biodbncbi")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbNcbi" version))
       (sha256
        (base32 "19f37fgbhb22k27riklbdary3a1ybnm7drapfkss7grizwpa9d0x"))))
    (properties `((upstream-name . "biodbNcbi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-r6 r-chk r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbNcbi")
    (synopsis "biodbNcbi, a library for connecting to NCBI Databases")
    (description
     "The @code{biodbNcbi} library provides access to the NCBI databases CCDS, Gene,
Pubchem Comp and Pubchem Subst, using biodb package framework.  It allows to
retrieve entries by their accession number.  Web services can be accessed for
searching the database by name or mass.")
    (license license:agpl3)))

(define-public r-biodbhmdb
  (package
    (name "r-biodbhmdb")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbHmdb" version))
       (sha256
        (base32 "0xpc2dygjm8gy7612ggk2kgd599859l0i8qdjzx01vvchckkps5h"))))
    (properties `((upstream-name . "biodbHmdb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zip r-testthat r-rcpp r-r6 r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbHmdb")
    (synopsis "biodbHmdb, a library for connecting to the HMDB Database")
    (description
     "The @code{biodbHmdb} library is an extension of the biodb framework package that
provides access to the HMDB Metabolites database.  It allows to download the
whole HMDB Metabolites database locally, access entries and search for entries
by name or description.  A future version of this package will also include a
search by mass and mass spectra annotation.")
    (license license:agpl3)))

(define-public r-biodbchebi
  (package
    (name "r-biodbchebi")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biodbChebi" version))
       (sha256
        (base32 "0z2xrc6qpipiw6s00nlh4wp8k2xwx8h18g40bk7kdji3l9fvx73p"))))
    (properties `((upstream-name . "biodbChebi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6 r-biodb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pkrog/biodbChebi")
    (synopsis "biodbChebi, a library for connecting to the ChEBI Database")
    (description
     "The @code{biodbChebi} library provides access to the @code{ChEBI} Database,
using biodb package framework.  It allows to retrieve entries by their accession
number.  Web services can be accessed for searching the database by name, mass
or other fields.")
    (license license:agpl3)))

(define-public r-biocsklearn
  (package
    (name "r-biocsklearn")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocSklearn" version))
       (sha256
        (base32 "15fyjg2pf77cnqzbb5hcbg3wc9kqn6hnklivhb3797v1za9y283x"))))
    (properties `((upstream-name . "BiocSklearn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list python-scikit-learn python python-pandas python-numpy
                  python-h5py))
    (propagated-inputs (list r-summarizedexperiment r-reticulate r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BiocSklearn")
    (synopsis "interface to python sklearn via Rstudio reticulate")
    (description
     "This package provides interfaces to selected sklearn elements, and demonstrates
fault tolerant use of python modules requiring extensive iteration.")
    (license license:artistic2.0)))

(define-public r-biocroxytest
  (package
    (name "r-biocroxytest")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "biocroxytest" version))
       (sha256
        (base32 "1m35dw7j0jld0fpgn3vbhdh0rrz7f8lljasf79y54mga4shragls"))))
    (properties `((upstream-name . "biocroxytest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-roxygen2 r-glue r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/xec-cm/biocroxytest")
    (synopsis "Handle Long Tests in Bioconductor Packages")
    (description
     "This package provides a roclet for roxygen2 that identifies and processes code
blocks in your documentation marked with `@@longtests`.  These blocks should
contain tests that take a long time to run and thus cannot be included in the
regular test suite of the package.  When you run `roxygen2::roxygenise` with the
`longtests_roclet`, it will extract these long tests from your documentation and
save them in a separate directory.  This allows you to run these long tests
separately from the rest of your tests, for example, on a continuous integration
server that is set up to run long tests.")
    (license license:gpl3+)))

(define-public r-biochubsshiny
  (package
    (name "r-biochubsshiny")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocHubsShiny" version))
       (sha256
        (base32 "12ihq8c0byrf6xiqbbmlzv79sq4xy7sjw06v3apn08gvypl0ifys"))))
    (properties `((upstream-name . "BiocHubsShiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-shinytoastr
                             r-shinythemes
                             r-shinyjs
                             r-shinyace
                             r-shiny
                             r-s4vectors
                             r-rclipboard
                             r-htmlwidgets
                             r-experimenthub
                             r-dt
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/BiocHubsShiny")
    (synopsis "View AnnotationHub and ExperimentHub Resources Interactively")
    (description
     "This package provides a package that allows interactive exploration of
@code{AnnotationHub} and @code{ExperimentHub} resources.  It uses DT /
@code{DataTable} to display resources for multiple organisms.  It provides
template code for reproducibility and for downloading resources via the
indicated Hub package.")
    (license license:artistic2.0)))

(define-public r-biochail
  (package
    (name "r-biochail")
    (version "1.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocHail" version))
       (sha256
        (base32 "1ik7yqjvwk3nyqsq39y888d0fd1rbrnlana6sj2r73xppm8ic3iw"))))
    (properties `((upstream-name . "BiocHail")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reticulate r-dplyr r-biocgenerics
                             r-biocfilecache r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjcitn/BiocHail")
    (synopsis "basilisk and hail")
    (description
     "Use hail via basilisk when appropriate, or via reticulate.  This package can be
used in terra.bio to interact with UK Biobank resources processed by hail.is.")
    (license license:artistic2.0)))

(define-public r-biocfhir
  (package
    (name "r-biocfhir")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocFHIR" version))
       (sha256
        (base32 "0569szdaz94k2vaz1jjwybnc49i8izdvx0agzh38356xjsv05d79"))))
    (properties `((upstream-name . "BiocFHIR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-tidyr
                             r-shiny
                             r-jsonlite
                             r-graph
                             r-dt
                             r-dplyr
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjcitn/BiocFHIR")
    (synopsis "Illustration of FHIR ingestion and transformation using R")
    (description
     "FHIR R4 bundles in JSON format are derived from
https://synthea.mitre.org/downloads.  Transformation inspired by a kaggle
notebook published by Dr Alexander Scarlat,
https://www.kaggle.com/code/drscarlat/fhir-starter-parse-healthcare-bundles-into-tables.
 This is a very limited illustration of some basic parsing and reorganization
processes.  Additional tooling will be required to move beyond the Synthea data
illustrations.")
    (license license:artistic2.0)))

(define-public r-biocbook
  (package
    (name "r-biocbook")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BiocBook" version))
       (sha256
        (base32 "1kc4n2mrny4zmdg2lhf4b9gcnhmx34wn8h55ladnkkx2llgjb89v"))))
    (properties `((upstream-name . "BiocBook")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-usethis
                             r-tibble
                             r-stringr
                             r-rprojroot
                             r-rlang
                             r-renv
                             r-quarto
                             r-purrr
                             r-httr
                             r-glue
                             r-gitcreds
                             r-gh
                             r-gert
                             r-dplyr
                             r-cli
                             r-biocgenerics
                             r-available))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BiocBook")
    (synopsis
     "Write, containerize, publish and version Quarto books with Bioconductor")
    (description
     "This package provides a @code{BiocBook} can be created by authors (e.g. R
developers, but also scientists, teachers, communicators, ...) who wish to 1)
write (compile a body of biological and/or bioinformatics knowledge), 2)
containerize (provide Docker images to reproduce the examples illustrated in the
compendium), 3) publish (deploy an online book to disseminate the compendium),
and 4) version (automatically generate specific online book versions and Docker
images for specific Bioconductor releases).")
    (license license:expat)))

(define-public r-biocartaimage
  (package
    (name "r-biocartaimage")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BioCartaImage" version))
       (sha256
        (base32 "1xzjvn39hnw5fjkm71c7lv6k2wzyxsxnkkhxwj7xhs723m8pfxxb"))))
    (properties `((upstream-name . "BioCartaImage")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magick))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jokergoo/BioCartaImage")
    (synopsis "BioCarta Pathway Images")
    (description
     "The core functionality of the package is to provide coordinates of genes on the
@code{BioCarta} pathway images and to provide methods to add self-defined
graphics to the genes of interest.")
    (license license:expat)))

(define-public r-biocancer
  (package
    (name "r-biocancer")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bioCancer" version))
       (sha256
        (base32 "18rgnbqipbkb6gjscnsb88zqwi1qm7q4fhsy6py76mxyzar4kcrw"))))
    (properties `((upstream-name . "bioCancer")))
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
    (propagated-inputs (list r-xml
                             r-visnetwork
                             r-tidyr
                             r-tibble
                             r-shinythemes
                             r-shiny
                             r-reactomepa
                             r-reactome-db
                             r-radiant-data
                             r-r-oo
                             r-r-methodss3
                             r-plyr
                             r-org-hs-eg-db
                             r-org-bt-eg-db
                             r-import
                             r-htmlwidgets
                             r-go-db
                             r-genetclassifier
                             r-dt
                             r-dplyr
                             r-dose
                             r-diagrammer
                             r-clusterprofiler
                             r-cbioportaldata
                             r-biobase
                             r-annotationdbi
                             r-algdesign))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://kmezhoud.github.io/bioCancer/")
    (synopsis
     "Interactive Multi-Omics Cancers Data Visualization and Analysis")
    (description
     "This package is a Shiny App to visualize and analyse interactively Multi-Assays
of Cancer Genomic Data.")
    (license (list license:agpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-bindingsitefinder
  (package
    (name "r-bindingsitefinder")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BindingSiteFinder" version))
       (sha256
        (base32 "1m3bli4jpjqcaif28pbd7d06q2q354h5adf8l3kk4m4v2dvjqh8v"))))
    (properties `((upstream-name . "BindingSiteFinder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-rcolorbrewer
                             r-plyr
                             r-matrixstats
                             r-lifecycle
                             r-kableextra
                             r-iranges
                             r-ggplot2
                             r-ggforce
                             r-ggdist
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-forcats
                             r-dplyr
                             r-complexheatmap))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BindingSiteFinder")
    (synopsis "Binding site defintion based on iCLIP data")
    (description
     "Precise knowledge on the binding sites of an RNA-binding protein (RBP) is key to
understand (post-) transcriptional regulatory processes.  Here we present a
workflow that describes how exact binding sites can be defined from @code{iCLIP}
data.  The package provides functions for binding site definition and result
visualization.  For details please see the vignette.")
    (license license:artistic2.0)))

(define-public r-bg2
  (package
    (name "r-bg2")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BG2" version))
       (sha256
        (base32 "0d6ck2x60nw5zqplalgvqm2093lqirin1lp91ihdj1hmhfbpy1zz"))))
    (properties `((upstream-name . "BG2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-memoise r-matrix r-mass r-ga r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BG2")
    (synopsis
     "Performs Bayesian GWAS analysis for non-Gaussian data using BG2")
    (description
     "This package is built to perform GWAS analysis for non-Gaussian data using BG2.
The BG2 method uses penalized quasi-likelihood along with nonlocal priors in a
two step manner to identify SNPs in GWAS analysis.  The research related to this
package was supported in part by National Science Foundation awards DMS 1853549
and DMS 2054173.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-bettr
  (package
    (name "r-bettr")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bettr" version))
       (sha256
        (base32 "0qbxxrjddb0h4m2xx2f40c85vzhxhq2nmfyga6l8ms6f7ljfpybh"))))
    (properties `((upstream-name . "bettr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-sortable
                             r-shinyjqui
                             r-shiny
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-hmisc
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-cowplot
                             r-complexheatmap
                             r-circlize
                             r-bslib))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/federicomarini/bettr")
    (synopsis "Better Way To Explore What Is Best")
    (description
     "bettr provides a set of interactive visualization methods to explore the results
of a benchmarking study, where typically more than a single performance measures
are computed.  The user can weight the performance measures according to their
preferences.  Performance measures can also be grouped and aggregated according
to additional annotations.")
    (license license:expat)))

(define-public r-betahmm
  (package
    (name "r-betahmm")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "betaHMM" version))
       (sha256
        (base32 "0rkjnqbmxxkb4f3n4z8g2h4pbgp379vwdyvgsk6cqqzl4lnkzfns"))))
    (properties `((upstream-name . "betaHMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-proc
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/betaHMM")
    (synopsis
     "Hidden Markov Model Approach for Identifying Differentially Methylated Sites and Regions for Beta-Valued DNA Methylation Data")
    (description
     "This package provides a novel approach utilizing a homogeneous hidden Markov
model.  And effectively model untransformed beta values.  To identify DMCs while
considering the spatial.  Correlation of the adjacent @code{CpG} sites.")
    (license license:gpl3)))

(define-public r-beta7
  (package
    (name "r-beta7")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "beta7" version
                              'experiment))
       (sha256
        (base32 "14vq2891nafzwi4pz1cvwa4v11pwgyfrjdhmdwpg3hi2gcidc7ql"))))
    (properties `((upstream-name . "beta7")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-marray))
    (home-page "https://bioconductor.org/packages/beta7")
    (synopsis
     "Rodriguez et al. (2004) Differential Gene Expression by Memory/Effector T Helper Cells Bearing the Gut-Homing Receptor Integrin alpha4 beta7")
    (description
     "Data from 6 gpr files aims to identify differential expressed genes between the
beta 7+ and beta 7- memory T helper cells.")
    (license license:lgpl2.0+)))

(define-public r-bert
  (package
    (name "r-bert")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BERT" version))
       (sha256
        (base32 "1y1knq38fp3frw7c1j45xps1pvqfa5909hdj5v5n58vzxb4qxnnq"))))
    (properties `((upstream-name . "BERT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-logging
                             r-limma
                             r-janitor
                             r-iterators
                             r-invgamma
                             r-foreach
                             r-comprehenr
                             r-cluster
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HSU-HPC/BERT/")
    (synopsis
     "High Performance Data Integration for Large-Scale Analyses of Incomplete Omic Profiles Using Batch-Effect Reduction Trees (BERT)")
    (description
     "This package provides efficient batch-effect adjustment of data with missing
values.  BERT orders all batch effect correction to a tree of pairwise
computations.  BERT allows parallelization over sub-trees.")
    (license license:gpl3)))

(define-public r-benchmarkfdrdata2019
  (package
    (name "r-benchmarkfdrdata2019")
    (version "1.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "benchmarkfdrData2019" version
                              'experiment))
       (sha256
        (base32 "1dpf3d3rdxvadd6mccw0s6v973ip34ljaj3s22p9ns732pwx43wq"))))
    (properties `((upstream-name . "benchmarkfdrData2019")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/benchmarkfdrData2019")
    (synopsis
     "Data and Benchmarking Results from Korthauer and Kimes et al. (2019)")
    (description
     "Benchmarking results for experimental and simulated data sets used in Korthauer
and Kimes et al. (2019) to compare methods for controlling the false discovery
rate.")
    (license license:expat)))

(define-public r-benchdamic
  (package
    (name "r-benchdamic")
    (version "1.14.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "benchdamic" version))
       (sha256
        (base32 "0yhzv6c7bcswp56pjr3ssgls2h4fpg8klx1wdy125f7fzbs8hkln"))))
    (properties `((upstream-name . "benchdamic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zinbwave
                             r-treesummarizedexperiment
                             r-tidytext
                             r-summarizedexperiment
                             r-seurat
                             r-reshape2
                             r-rcolorbrewer
                             r-plyr
                             r-phyloseq
                             r-noiseq
                             r-mixomics
                             r-microbiomestat
                             r-microbiome
                             r-mglm
                             r-metagenomeseq
                             r-mast
                             r-maaslin3
                             r-maaslin2
                             r-lme4
                             r-limma
                             r-gunifrac
                             r-ggridges
                             r-ggplot2
                             r-ggdendro
                             r-edger
                             r-deseq2
                             r-dearseq
                             r-cowplot
                             r-corncob
                             r-biocparallel
                             r-ancombc
                             r-aldex2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/benchdamic")
    (synopsis "Benchmark of differential abundance methods on microbiome data")
    (description
     "Starting from a microbiome dataset (16S or WMS with absolute count values) it is
possible to perform several analysis to assess the performances of many
differential abundance detection methods.  A basic and standardized version of
the main differential abundance analysis methods is supplied but the user can
also add his method to the benchmark.  The analyses focus on 4 main aspects: i)
the goodness of fit of each method's distributional assumptions on the observed
count data, ii) the ability to control the false discovery rate, iii) the within
and between method concordances, iv) the truthfulness of the findings if any
apriori knowledge is given.  Several graphical functions are available for
result visualization.")
    (license license:artistic2.0)))

(define-public r-beer
  (package
    (name "r-beer")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "beer" version))
       (sha256
        (base32 "1g88qs5hkgj48fqi067p3p1pav220368i06fpjizpbnl8c4p8a77"))))
    (properties `((upstream-name . "beer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list jags))
    (propagated-inputs (list r-summarizedexperiment
                             r-rjags
                             r-progressr
                             r-phipdata
                             r-edger
                             r-cli
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/athchen/beer/")
    (synopsis "Bayesian Enrichment Estimation in R")
    (description
     "BEER implements a Bayesian model for analyzing phage-immunoprecipitation
sequencing (@code{PhIP-seq}) data.  Given a @code{PhIPData} object, BEER returns
posterior probabilities of enriched antibody responses, point estimates for the
relative fold-change in comparison to negative control samples, and more.
Additionally, BEER provides a convenient implementation for using @code{edgeR}
to identify enriched antibody responses.")
    (license license:expat)))

(define-public r-bedbaser
  (package
    (name "r-bedbaser")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bedbaser" version))
       (sha256
        (base32 "0lvaxshgarcx4shkm87ifphzwydaxp3vgw4hswcjlm1qyvrbik88"))))
    (properties `((upstream-name . "bedbaser")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rtracklayer
                             r-rlang
                             r-r-utils
                             r-purrr
                             r-httr
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biocfilecache
                             r-anvil))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/bedbaser")
    (synopsis "BEDbase client")
    (description
     "This package provides a client for BEDbase.  bedbaser provides access to the API
at api.bedbase.org.  It also includes convenience functions to import BED files
into GRanges objects and BEDsets into G@code{RangesLists}.")
    (license (license:fsdg-compatible "Artistic License 2.0"))))

(define-public r-beat
  (package
    (name "r-beat")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BEAT" version))
       (sha256
        (base32 "0fd1yd1pl4zvxnmq10w6fl6a0xzgghhl4by00dxiiqrwfsqnh7sv"))))
    (properties `((upstream-name . "BEAT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shortread r-genomicranges r-bsgenome
                             r-biostrings))
    (home-page "https://bioconductor.org/packages/BEAT")
    (synopsis "BEAT - BS-Seq Epimutation Analysis Toolkit")
    (description "Model-based analysis of single-cell methylation data.")
    (license (license:fsdg-compatible "LGPL (>= 3.0)"))))

(define-public r-beadsorted-saliva-epic
  (package
    (name "r-beadsorted-saliva-epic")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BeadSorted.Saliva.EPIC" version
                              'experiment))
       (sha256
        (base32 "0gicf5c5nq7al0zr803wn23jgjgqg7gij88s9zqsbx969khm26xc"))))
    (properties `((upstream-name . "BeadSorted.Saliva.EPIC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-minfi r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/BeadSorted.Saliva.EPIC")
    (synopsis "Illumina EPIC data on BeadSorted child saliva cells")
    (description
     "Raw data objects used to estimate saliva cell proportion estimates in ewastools.
 The @code{FlowSorted.Saliva.EPIC} object is constructed from samples assayed by
Lauren Middleton et.  al. (2021).")
    (license license:gpl3)))

(define-public r-beadarrayusecases
  (package
    (name "r-beadarrayusecases")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BeadArrayUseCases" version
                              'experiment))
       (sha256
        (base32 "0126j6m1y5v6mcvlgwivfsdlfcl65p7bbah0kwhaiklb3ffq8dwi"))))
    (properties `((upstream-name . "BeadArrayUseCases")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-limma r-geoquery r-beadarray))
    (home-page "https://bioconductor.org/packages/BeadArrayUseCases")
    (synopsis
     "Analysing Illumina BeadArray expression data using Bioconductor")
    (description
     "Example data files and use cases for processing Illumina @code{BeadArray}
expression data using Bioconductor.")
    (license license:gpl2)))

(define-public r-beadarrayexampledata
  (package
    (name "r-beadarrayexampledata")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "beadarrayExampleData" version
                              'experiment))
       (sha256
        (base32 "0bwsj3qcd88agi1v12z833laz2h13sf6ld6myh1pcg6llp479rk1"))))
    (properties `((upstream-name . "beadarrayExampleData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase r-beadarray))
    (home-page "https://bioconductor.org/packages/beadarrayExampleData")
    (synopsis "Example data for the beadarray package")
    (description
     "An small dataset that can be used to run examples from the beadarray vignette
and examples.")
    (license license:gpl2)))

(define-public r-beachmat-tiledb
  (package
    (name "r-beachmat-tiledb")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "beachmat.tiledb" version))
       (sha256
        (base32 "1dsaxvf1vlimi08jdx41m07ypcbn56jprv4s1dyv3kypi0kx103f"))))
    (properties `((upstream-name . "beachmat.tiledb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tiledbarray
                             r-tiledb
                             r-rcpp
                             r-delayedarray
                             r-beachmat
                             r-assorthead))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://github.com/tatami-inc/beachmat.tiledb")
    (synopsis "beachmat bindings for TileDB-backed matrices")
    (description
     "Extends beachmat to initialize tatami matrices from @code{TileDB-backed} arrays.
 This allows C++ code in downstream packages to directly call the @code{TileDB}
C/C++ library to access array data, without the need for block processing via
@code{DelayedArray}.  Developers only need to import this package to
automatically extend the capabilities of beachmat::@code{initializeCpp} to
@code{TileDBArray} instances.")
    (license license:gpl3)))

(define-public r-bcseq
  (package
    (name "r-bcseq")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bcSeq" version))
       (sha256
        (base32 "084sqic3wzklh34s2h33ml7ylb5si7ss50pwnjq9zqw4jqd8pb9r"))))
    (properties `((upstream-name . "bcSeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-matrix r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jl354/bcSeq")
    (synopsis
     "Fast Sequence Mapping in High-Throughput shRNA and CRISPR Screens")
    (description
     "This Rcpp-based package implements a highly efficient data structure and
algorithm for performing alignment of short reads from CRISPR or @code{shRNA}
screens to reference barcode library.  Sequencing error are considered and
matching qualities are evaluated based on Phred scores.  A Bayes classifier is
employed to predict the originating barcode of a read.  The package supports
provision of user-defined probability models for evaluating matching qualities.
The package also supports multi-threading.")
    (license license:gpl2+)))

(define-public r-batchsvg
  (package
    (name "r-batchsvg")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BatchSVG" version))
       (sha256
        (base32 "1bwvziwl8wxkn26fiz76sr06w3j2ldwin88s49iqaq27wlr19b75"))))
    (properties `((upstream-name . "BatchSVG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-scry
                             r-scales
                             r-rlang
                             r-rcolorbrewer
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/christinehou11/BatchSVG")
    (synopsis "Identify Batch-Biased Features in Spatially Variable Genes")
    (description
     "`@code{BatchSVG`} is a feature-based Quality Control (QC) to identify SVGs on
spatial transcriptomics data with specific types of batch effect.  Regarding to
the spatial transcriptomics data experiments, the batch can be defined as
\"sample\", \"sex\", and etc.The `@code{BatchSVG`} method is based on binomial
deviance model (Townes et al, 2019) and applies cutoffs based on the number of
standard deviation (@code{nSD}) of relative change in deviance and rank
difference as the data-driven thresholding approach to detect the batch-biased
outliers.")
    (license license:artistic2.0)))

(define-public r-batchqc
  (package
    (name "r-batchqc")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BatchQC" version))
       (sha256
        (base32 "1bqi8ypwdz6mlk6k4h8spw49qmq70ln8s6jx6rdizgv136b8q3ls"))))
    (properties `((upstream-name . "BatchQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-umap
                             r-tidyverse
                             r-tidyr
                             r-tibble
                             r-sva
                             r-summarizedexperiment
                             r-shinythemes
                             r-shinyjs
                             r-shiny
                             r-scran
                             r-s4vectors
                             r-reshape2
                             r-reader
                             r-rcolorbrewer
                             r-pheatmap
                             r-matrixstats
                             r-limma
                             r-ggplot2
                             r-ggnewscale
                             r-ggdendro
                             r-ebseq
                             r-dplyr
                             r-deseq2
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wejlab/BatchQC")
    (synopsis "Batch Effects Quality Control Software")
    (description
     "Sequencing and microarray samples often are collected or processed in multiple
batches or at different times.  This often produces technical biases that can
lead to incorrect results in the downstream analysis. @code{BatchQC} is a
software tool that streamlines batch preprocessing and evaluation by providing
interactive diagnostics, visualizations, and statistical analyses to explore the
extent to which batch variation impacts the data. @code{BatchQC} diagnostics
help determine whether batch adjustment needs to be done, and how correction
should be applied before proceeding with a downstream analysis.  Moreover,
@code{BatchQC} interactively applies multiple common batch effect approaches to
the data and the user can quickly see the benefits of each method.
@code{BatchQC} is developed as a Shiny App.  The output is organized into
multiple tabs and each tab features an important part of the batch effect
analysis and visualization of the data.  The @code{BatchQC} interface has the
following analysis groups: Summary, Differential Expression, Median
Correlations, Heatmaps, Circular Dendrogram, PCA Analysis, Shape, @code{ComBat}
and SVA.")
    (license license:expat)))

(define-public r-basicstan
  (package
    (name "r-basicstan")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "BASiCStan" version))
       (sha256
        (base32 "0i4m777lfy5v8j6mzh3sj0g411q1n89kdf8hqaaznblx73r1af9f"))))
    (properties `((upstream-name . "BASiCStan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-stanheaders
                             r-singlecellexperiment
                             r-scuttle
                             r-scran
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-glmgampoi
                             r-bh
                             r-basics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Alanocallaghan/BASiCStan")
    (synopsis "Stan implementation of BASiCS")
    (description
     "This package provides an interface to infer the parameters of BA@code{SiCS}
using the variational inference (ADVI), Markov chain Monte Carlo (NUTS), and
maximum a posteriori (BFGS) inference engines in the Stan programming language.
BA@code{SiCS} is a Bayesian hierarchical model that uses an adaptive Metropolis
within Gibbs sampling scheme.  Alternative inference methods provided by Stan
may be preferable in some situations, for example for particularly large data or
posterior distributions with difficult geometries.")
    (license license:gpl3)))

(define-public r-basecallqc
  (package
    (name "r-basecallqc")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "basecallQC" version))
       (sha256
        (base32 "00p17azjppzfji35ps3j9cspyi4x5ikwnympkhmdkf1l816ijwb6"))))
    (properties `((upstream-name . "basecallQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-yaml
                             r-xml
                             r-tidyr
                             r-stringr
                             r-shortread
                             r-rmarkdown
                             r-raster
                             r-prettydoc
                             r-magrittr
                             r-lazyeval
                             r-knitr
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/basecallQC")
    (synopsis
     "Working with Illumina Basecalling and Demultiplexing input and output files")
    (description
     "The @code{basecallQC} package provides tools to work with Illumina bcl2Fastq
(versions >= 2.1.7) software.Prior to basecalling and demultiplexing using the
bcl2Fastq software, @code{basecallQC} functions allow the user to update
Illumina sample sheets from versions <= 1.8.9 to >= 2.1.7 standards, clean
sample sheets of common problems such as invalid sample names and IDs, create
read and index basemasks and the bcl2Fastq command.  Following the generation of
basecalled and demultiplexed data, the @code{basecallQC} packages allows the
user to generate HTML tables, plots and a self contained report of summary
metrics from Illumina XML output files.")
    (license license:gpl3+)))

(define-public r-barley1probe
  (package
    (name "r-barley1probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "barley1probe" version
                              'annotation))
       (sha256
        (base32 "1kh5r748b4vkmvlfaclmrh07ypbrzgxn90liqfz1rwkabh6rfk71"))))
    (properties `((upstream-name . "barley1probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/barley1probe")
    (synopsis "Probe sequence data for microarrays of type barley1")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Barley1\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-barley1cdf
  (package
    (name "r-barley1cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "barley1cdf" version
                              'annotation))
       (sha256
        (base32 "0rbij5cqr2sz33y5waybv85nrcgf70iwj5gk13g0xn9p1l1zxyn2"))))
    (properties `((upstream-name . "barley1cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/barley1cdf")
    (synopsis "barley1cdf")
    (description
     "This package provides a package containing an environment representing the
Barley1.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-barbieq
  (package
    (name "r-barbieq")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "barbieQ" version))
       (sha256
        (base32 "1vl6c6mrkdkjg3ll4j2n1fg31wgdlh55cgm3by39kxp4rf76m5mq"))))
    (properties `((upstream-name . "barbieQ")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-s4vectors
                             r-magrittr
                             r-logistf
                             r-limma
                             r-igraph
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Oshlack/barbieQ/issues")
    (synopsis "Analyze Barcode Data from Clonal Tracking Experiments")
    (description
     "The @code{barbieQ} package provides a series of robust statistical tools for
analysing barcode count data generated from cell clonal tracking (i.e., lineage
tracing) experiments.  In these experiments, an initial cell and its offspring
collectively form a clone (i.e., lineage).  A unique barcode sequence,
incorporated into the DNA of the inital cell, is inherited within the clone.
This one-to-one mapping of barcodes to clones enables clonal tracking of their
behaviors.  By counting barcodes, researchers can quantify the population
abundance of individual clones under specific experimental perturbations.
@code{barbieQ} supports barcode count data preprocessing, statistical testing,
and visualization.")
    (license license:gpl3)))

(define-public r-banksy
  (package
    (name "r-banksy")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Banksy" version))
       (sha256
        (base32 "0s01d9wli074970qpbb235vpb2s1ni0b4ay6gl4blcp4g5q3327c"))))
    (properties `((upstream-name . "Banksy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uwot
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rcpphungarian
                             r-mclust
                             r-matrixstats
                             r-leidenalg
                             r-irlba
                             r-igraph
                             r-dbscan
                             r-data-table
                             r-aricode))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/prabhakarlab/Banksy")
    (synopsis "Spatial transcriptomic clustering")
    (description
     "Banksy is an R package that incorporates spatial information to cluster cells in
a feature space (e.g. gene expression).  To incorporate spatial information,
BANKSY computes the mean neighborhood expression and azimuthal Gabor filters
that capture gene expression gradients.  These features are combined with the
cell's own expression to embed cells in a neighbor-augmented product space which
can then be clustered, allowing for accurate and spatially-aware cell typing and
tissue domain segmentation.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-bandle
  (package
    (name "r-bandle")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "bandle" version))
       (sha256
        (base32 "1ss70psnr5avk6ny6hgasx3c2yxr6slrw2xk6wga64l0aiyki4d1"))))
    (properties `((upstream-name . "bandle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-s4vectors
                             r-robustbase
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-prolocdata
                             r-proloc
                             r-plyr
                             r-msnbase
                             r-lbfgs
                             r-knitr
                             r-gtools
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-ggalluvial
                             r-dplyr
                             r-coda
                             r-circlize
                             r-biocstyle
                             r-biocparallel
                             r-biobase
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/ococrook/bandle")
    (synopsis
     "An R package for the Bayesian analysis of differential subcellular localisation experiments")
    (description
     "The Bandle package enables the analysis and visualisation of differential
localisation experiments using mass-spectrometry data.  Experimental methods
supported include dynamic LOPIT-DC, @code{hyperLOPIT}, Dynamic Organellar Maps,
Dynamic PCP. It provides Bioconductor infrastructure to analyse these data.")
    (license license:artistic2.0)))

