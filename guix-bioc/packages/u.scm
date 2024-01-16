(define-module (guix-bioc packages u)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages version-control)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages s)
  #:use-module (guix-bioc packages z)
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "uSORT" version))
       (sha256
        (base32 "09dk90lhxyfpv1jz589q5zi84jldpvnibsi0ijnmv3l0998jmfxa"))))
    (properties `((upstream-name . "uSORT")))
    (build-system r-build-system)
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

(define-public r-updateobject
  (package
    (name "r-updateobject")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "updateObject" version))
       (sha256
        (base32 "0a1br8ifjkp3qxirs9skih194q9ghh1g3kifm4imah7nh138dwxa"))))
    (properties `((upstream-name . "updateObject")))
    (build-system r-build-system)
    (inputs (list git))
    (propagated-inputs (list r-s4vectors r-digest r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/updateObject")
    (synopsis "Find/fix old serialized S4 instances")
    (description
     "This package provides a set of tools built around @code{updateObject}() to work
with old serialized S4 instances.  The package is primarily useful to package
maintainers who want to update the serialized S4 instances included in their
package.  This is still work-in-progress.")
    (license license:artistic2.0)))

(define-public r-uniquorn
  (package
    (name "r-uniquorn")
    (version "2.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Uniquorn" version))
       (sha256
        (base32 "1rd0jk7ifc2mhsslgf7nc9mz3nbqbm6svv86lv8y2j3y4iyivgwp"))))
    (properties `((upstream-name . "Uniquorn")))
    (build-system r-build-system)
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

(define-public r-uniprot-ws
  (package
    (name "r-uniprot-ws")
    (version "2.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UniProt.ws" version))
       (sha256
        (base32 "0qpp6r705llmlf38a8nvgr1q198lj7bwrlvnph4mcyb9sz82ra3d"))))
    (properties `((upstream-name . "UniProt.ws")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite
                             r-rjsoncons
                             r-progress
                             r-jsonlite
                             r-httr
                             r-httpcache
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UNDO" version))
       (sha256
        (base32 "0lj8y4fcfl91g3mf4mnixg509m7viwx5fcwmsbzw3a71anmgcifi"))))
    (properties `((upstream-name . "UNDO")))
    (build-system r-build-system)
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "uncoverappLib" version))
       (sha256
        (base32 "02c2fc89l8shbs8b9lqnzn9k413rbcff8lp7in2770ayw8lsnwaf"))))
    (properties `((upstream-name . "uncoverappLib")))
    (build-system r-build-system)
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "UMI4Cats" version))
       (sha256
        (base32 "1imsndzvgz2ibhnb9y0cilr1kdkqnww9ncy1clviqjcb37iqy6w1"))))
    (properties `((upstream-name . "UMI4Cats")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-txdb-hsapiens-ucsc-hg19-knowngene
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
                             r-org-hs-eg-db
                             r-magrittr
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Ularcirc" version))
       (sha256
        (base32 "1f4vcrmxsv1daqdrdw4kzqjawi03m9n6s1dvrhn4v3dq3y7sc9hi"))))
    (properties `((upstream-name . "Ularcirc")))
    (build-system r-build-system)
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

