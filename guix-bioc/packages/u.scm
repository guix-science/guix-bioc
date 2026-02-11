(define-module (guix-bioc packages u)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages version-control)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages s)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
  #:use-module (guix-bioc packages v)
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
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-usort
  (package
    (name "r-usort")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "uSORT" version))
       (sha256
        (base32 "05hnsslcviqzia3vr3q1a23mk7jdly56gn7agdlrscn99wd4w34y"))))
    (properties `((upstream-name . "uSORT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-rspectra
                             r-rann
                             r-plyr
                             r-monocle
                             r-matrix
                             r-igraph
                             r-gplots
                             r-fpc
                             r-cluster
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/uSORT")
    (synopsis "uSORT: A self-refining ordering pipeline for gene selection")
    (description
     "This package is designed to uncover the intrinsic cell progression path from
single-cell RNA-seq data.  It incorporates data pre-processing, preliminary PCA
gene selection, preliminary cell ordering, feature selection, refined cell
ordering, and post-analysis interpretation and visualization.")
    (license license:artistic2.0)))

(define-public r-updhmm
  (package
    (name "r-updhmm")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UPDhmm" version))
       (sha256
        (base32 "1rn1jijmpx7j165q210l76hyq3aj7ir02zh64cn85a04razs2qrx"))))
    (properties `((upstream-name . "UPDhmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-s4vectors
                             r-iranges
                             r-hmm
                             r-genomicranges
                             r-genomeinfodb
                             r-biocparallel
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/martasevilla/UPDhmm")
    (synopsis "Detecting Uniparental Disomy through NGS trio data")
    (description
     "Uniparental disomy (UPD) is a genetic condition where an individual inherits
both copies of a chromosome or part of it from one parent, rather than one copy
from each parent.  This package contains a HMM for detecting UPDs through HTS
(High Throughput Sequencing) data from trio assays.  By analyzing the genotypes
in the trio, the model infers a hidden state (normal, father isodisomy, mother
isodisomy, father heterodisomy and mother heterodisomy).")
    (license license:expat)))

(define-public r-updateobject
  (package
    (name "r-updateobject")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "updateObject" version))
       (sha256
        (base32 "1rwlai7zj7gr43nppf6qnkzjdpyhd3wxnba4r1n0pkgjgpy6qwzv"))))
    (properties `((upstream-name . "updateObject")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list git))
    (propagated-inputs (list r-s4vectors r-digest r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/updateObject")
    (synopsis "Find/fix old serialized S4 instances")
    (description
     "This package provides a set of tools built around @code{updateObject()} to work
with old serialized S4 instances.  The package is primarily useful to package
maintainers who want to update the serialized S4 instances included in their
package.  This is still work-in-progress.")
    (license license:artistic2.0)))

(define-public r-uniquorn
  (package
    (name "r-uniquorn")
    (version "2.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Uniquorn" version))
       (sha256
        (base32 "1l068kjphna85z98xwqh4i4qxrvprl4wc8rp9lcgh692vhbsxjgb"))))
    (properties `((upstream-name . "Uniquorn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-writexls
                             r-variantannotation
                             r-stringr
                             r-r-utils
                             r-iranges
                             r-genomicranges
                             r-foreach
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Uniquorn")
    (synopsis
     "Identification of cancer cell lines based on their weighted mutational/ variational fingerprint")
    (description
     "Uniquorn enables users to identify cancer cell lines.  Cancer cell line
misidentification and cross-contamination reprents a significant challenge for
cancer researchers.  The identification is vital and in the frame of this
package based on the locations/ loci of somatic and germline mutations/
variations.  The input format is vcf/ vcf.gz and the files have to contain a
single cancer cell line sample (i.e.  a single member/genotype/gt column in the
vcf file).")
    (license license:artistic2.0)))

(define-public r-uniprotkeywords
  (package
    (name "r-uniprotkeywords")
    (version "0.99.7")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UniProtKeywords" version
                              'annotation))
       (sha256
        (base32 "10id2lk2mbccay7p44pk58zhkiqc58x237qr76plivgpcc8xhjzq"))))
    (properties `((upstream-name . "UniProtKeywords")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jokergoo/UniProtKeywords")
    (synopsis "Keywords from UniProt Database")
    (description
     "@code{UniProt} database provides a list of controlled vocabulary represented as
keywords for genes or proteins.  This is useful for summarizing gene functions
in a compact way.  This package provides data of keywords hierarchy and
gene-keyword relations.")
    (license license:expat)))

(define-public r-uniprot-ws
  (package
    (name "r-uniprot-ws")
    (version "2.50.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UniProt.ws" version))
       (sha256
        (base32 "09w5l4phxdcy255mwqlr1dl51957wby25qwn05pbzm0vgs9gab5q"))))
    (properties `((upstream-name . "UniProt.ws")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-rjsoncons
                             r-progress
                             r-jsonlite
                             r-httr2
                             r-biocgenerics
                             r-biocfilecache
                             r-biocbaseutils
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/UniProt.ws")
    (synopsis "R Interface to UniProt Web Services")
    (description
     "The Universal Protein Resource (@code{UniProt}) is a comprehensive resource for
protein sequence and annotation data.  This package provides a collection of
functions for retrieving, processing, and re-packaging @code{UniProt} web
services.  The package makes use of @code{UniProt's} modernized REST API and
allows mapping of identifiers accross different databases.")
    (license license:artistic2.0)))

(define-public r-undo
  (package
    (name "r-undo")
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UNDO" version))
       (sha256
        (base32 "1rkrfcl8l4p5pi3qqn0lzyr4l6a75qnp0sdj4hrz5rz72fsqn02y"))))
    (properties `((upstream-name . "UNDO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nnls r-mass r-boot r-biocgenerics r-biobase))
    (home-page "https://bioconductor.org/packages/UNDO")
    (synopsis "Unsupervised Deconvolution of Tumor-Stromal Mixed Expressions")
    (description
     "UNDO is an R package for unsupervised deconvolution of tumor and stromal mixed
expression data.  It detects marker genes and deconvolutes the mixing expression
data without any prior knowledge.")
    (license license:gpl2)))

(define-public r-uncoverapplib
  (package
    (name "r-uncoverapplib")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "uncoverappLib" version))
       (sha256
        (base32 "107rzv1q58mxhks8ggw4krghc2071fjf745zqcrysfmz6nr7byrx"))))
    (properties `((upstream-name . "uncoverappLib")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-stringr
                             r-shinywidgets
                             r-shinyjs
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-s4vectors
                             r-rsamtools
                             r-rlist
                             r-rappdirs
                             r-processx
                             r-organismdbi
                             r-org-hs-eg-db
                             r-openxlsx
                             r-markdown
                             r-homo-sapiens
                             r-gviz
                             r-genomicranges
                             r-ensdb-hsapiens-v86
                             r-ensdb-hsapiens-v75
                             r-dt
                             r-condformat
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Manuelaio/uncoverappLib")
    (synopsis
     "Interactive graphical application for clinical assessment of sequence coverage at the base-pair level")
    (description
     "a Shiny application containing a suite of graphical and statistical tools to
support clinical assessment of low coverage regions.It displays three web pages
each providing a different analysis module: Coverage analysis, calculate AF by
allele frequency app and binomial distribution. @code{uncoverAPP} provides a
statisticl summary of coverage given target file or genes name.")
    (license license:expat)))

(define-public r-umi4cats
  (package
    (name "r-umi4cats")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UMI4Cats" version))
       (sha256
        (base32 "162f89h9jid1bqsym1mqaw7xfnax57na18ng5f815wf2r2x03a3i"))))
    (properties `((upstream-name . "UMI4Cats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-summarizedexperiment
                             r-stringr
                             r-shortread
                             r-scales
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-reshape2
                             r-regioner
                             r-rcolorbrewer
                             r-rbowtie2
                             r-rappdirs
                             r-r-utils
                             r-magick
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-fda
                             r-dplyr
                             r-deseq2
                             r-cowplot
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-biocfilecache
                             r-annotate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Pasquali-lab/UMI4Cats")
    (synopsis
     "UMI4Cats: Processing, analysis and visualization of UMI-4C chromatin contact data")
    (description
     "UMI-4C is a technique that allows characterization of 3D chromatin interactions
with a bait of interest, taking advantage of a sonication step to produce unique
molecular identifiers (UMIs) that help remove duplication bias, thus allowing a
better differential comparsion of chromatin interactions between conditions.
This package allows processing of UMI-4C data, starting from @code{FastQ} files
provided by the sequencing facility.  It provides two statistical methods for
detecting differential contacts and includes a visualization function to plot
integrated information from a UMI-4C assay.")
    (license license:artistic2.0)))

(define-public r-ularcirc
  (package
    (name "r-ularcirc")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Ularcirc" version))
       (sha256
        (base32 "1k8x7g5fgssj01i8b60fyhsh09hmxj06k0ghxrk70jijp8y49906"))))
    (properties `((upstream-name . "Ularcirc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-shinyjs
                             r-shinyfiles
                             r-shinydashboard
                             r-shiny
                             r-s4vectors
                             r-r-utils
                             r-plotgardener
                             r-organism-dplyr
                             r-moments
                             r-gsubfn
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodbdata
                             r-genomeinfodb
                             r-dt
                             r-data-table
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics
                             r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Ularcirc")
    (synopsis
     "Shiny app for canonical and back splicing analysis (i.e. circular and mRNA analysis)")
    (description
     "Ularcirc reads in STAR aligned splice junction files and provides visualisation
and analysis tools for splicing analysis.  Users can assess backsplice junctions
and forward canonical junctions.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-ucscrepeatmasker
  (package
    (name "r-ucscrepeatmasker")
    (version "3.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UCSCRepeatMasker" version
                              'annotation))
       (sha256
        (base32 "035q9j685kb7fjrg8x7xg2hyw7k9j1d2wi4127x9d8kdc21zg8q0"))))
    (properties `((upstream-name . "UCSCRepeatMasker")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-rcurl r-genomicranges r-genomeinfodb
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/UCSCRepeatMasker")
    (synopsis "UCSC RepeatMasker AnnotationHub resource metadata")
    (description
     "Store UCSC @code{RepeatMasker} @code{AnnotationHub} resource metadata.  Provide
provenance and citation information for UCSC @code{RepeatMasker}
@code{AnnotationHub} resources.  Illustrate in a vignette how to access those
resources.")
    (license license:artistic2.0)))

(define-public r-u133x3pprobe
  (package
    (name "r-u133x3pprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "u133x3pprobe" version
                              'annotation))
       (sha256
        (base32 "0xzm6dkf78mp1yhdl3w0hg36saxgb4sxnq0dsvzjmfaca74ir2qy"))))
    (properties `((upstream-name . "u133x3pprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/u133x3pprobe")
    (synopsis "Probe sequence data for microarrays of type u133x3p")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was U133\\_X3P\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-u133x3pcdf
  (package
    (name "r-u133x3pcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "u133x3pcdf" version
                              'annotation))
       (sha256
        (base32 "05bdb5bz1ffv7dhbzn0s5ybygah72zvhz8zcj8bn9dg0k40yqsrb"))))
    (properties `((upstream-name . "u133x3pcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/u133x3pcdf")
    (synopsis "u133x3pcdf")
    (description
     "This package provides a package containing an environment representing the
U133_X3P.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-u133x3p-db
  (package
    (name "r-u133x3p-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "u133x3p.db" version
                              'annotation))
       (sha256
        (base32 "17wq16zhmpjpyxfhwr57kx61b4i87jkzza8qkqmcd6kcrhqkj92y"))))
    (properties `((upstream-name . "u133x3p.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/u133x3p.db")
    (synopsis "Affymetrix Human X3P Array annotation data (chip u133x3p)")
    (description
     "Affymetrix Human X3P Array annotation data (chip u133x3p) assembled using data
from public repositories.")
    (license license:artistic2.0)))

(define-public r-u133aaofav2cdf
  (package
    (name "r-u133aaofav2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "u133aaofav2cdf" version
                              'annotation))
       (sha256
        (base32 "052hs4lwllq0p0fsx5d1ixqhrdl889k14z10kahpsjn60746qarm"))))
    (properties `((upstream-name . "u133aaofav2cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/u133aaofav2cdf")
    (synopsis "u133aaofav2cdf")
    (description
     "This package provides a package containing an environment representing the
U133A@code{AofAv2.CDF} file.")
    (license license:lgpl2.0+)))

