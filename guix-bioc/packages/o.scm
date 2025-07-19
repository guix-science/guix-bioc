(define-module (guix-bioc packages o)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (guix-cran packages o)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages u)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages n)
  #:use-module (gnu packages compression)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages g)
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

(define-public r-oveseg
  (package
    (name "r-oveseg")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OVESEG" version))
       (sha256
        (base32 "1lc6k59f6v6rs3nd5him4lh2zq7rkzz12689dxpqys1kwn19ja99"))))
    (properties `((upstream-name . "OVESEG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-rcpp r-limma r-fdrtool
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/OVESEG")
    (synopsis "OVESEG-test to detect tissue/cell-specific markers")
    (description
     "An R package for multiple-group comparison to detect tissue/cell-specific marker
genes among subtypes.  It provides functions to compute OVESEG-test statistics,
derive component weights in the mixture null distribution model and estimate
p-values from weightedly aggregated permutations.  Obtained posterior
probabilities of component null hypotheses can also portrait all kinds of
upregulation patterns among subtypes.")
    (license license:gpl2)))

(define-public r-outsplice
  (package
    (name "r-outsplice")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OutSplice" version))
       (sha256
        (base32 "01kgyvrw7xs9hinppxlf3xyj7whwl9hpp9xp7sjs1nhbcmjla2f2"))))
    (properties `((upstream-name . "OutSplice")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg38-knowngene
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-s4vectors
                             r-org-hs-eg-db
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GuoLabUCSD/OutSplice")
    (synopsis "Comparison of Splicing Events between Tumor and Normal Samples")
    (description
     "An easy to use tool that can compare splicing events in tumor and normal tissue
samples using either a user generated matrix, or data from The Cancer Genome
Atlas (TCGA).  This package generates a matrix of splicing outliers that are
significantly over or underexpressed in tumors samples compared to normal
denoted by chromosome location.  The package also will calculate the splicing
burden in each tumor and characterize the types of splicing events that occur.")
    (license license:gpl2)))

(define-public r-outrider
  (package
    (name "r-outrider")
    (version "1.26.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OUTRIDER" version))
       (sha256
        (base32 "1pnkqc85myvvxam6m8x94iixyz4smh5kps66xzqsmpgsh2v6r999"))))
    (properties `((upstream-name . "OUTRIDER")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rmtstat
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-prroc
                             r-pracma
                             r-plyr
                             r-plotly
                             r-pheatmap
                             r-pcamethods
                             r-matrixstats
                             r-iranges
                             r-heatmaply
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-generics
                             r-deseq2
                             r-data-table
                             r-biocparallel
                             r-biocgenerics
                             r-bbmisc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gagneurlab/OUTRIDER")
    (synopsis "OUTRIDER - OUTlier in RNA-Seq fInDER")
    (description
     "Identification of aberrant gene expression in RNA-seq data.  Read count
expectations are modeled by an autoencoder to control for confounders in the
data.  Given these expectations, the RNA-seq read counts are assumed to follow a
negative binomial distribution with a gene-specific dispersion.  Outliers are
then identified as read counts that significantly deviate from this
distribution.  Furthermore, OUTRIDER provides useful plotting functions to
analyze and visualize the results.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-otubase
  (package
    (name "r-otubase")
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OTUbase" version))
       (sha256
        (base32 "1kq18jhivv2kpg91dz02pqfj1r3rxq61y7f2i2al965wqlhdjzni"))))
    (properties `((upstream-name . "OTUbase")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-shortread
                             r-s4vectors
                             r-iranges
                             r-biostrings
                             r-biobase))
    (home-page "https://bioconductor.org/packages/OTUbase")
    (synopsis "Provides structure and functions for the analysis of OTU data")
    (description
     "This package provides a platform for Operational Taxonomic Unit based analysis.")
    (license license:artistic2.0)))

(define-public r-osta-data
  (package
    (name "r-osta-data")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OSTA.data" version))
       (sha256
        (base32 "07p6n49sykvs8hkhs0qkdhs8khgikqlyydjqm2mn7g06alakbmpn"))))
    (properties `((upstream-name . "OSTA.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-osfr r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/estellad/OSTA.data")
    (synopsis "OSTA book data")
    (description
     "OSTA.data is a companion package for the \"Orchestrating Spatial Transcriptomics
Analysis\" (OSTA) with Bioconductor online book.  Throughout OSTA, we rely on a
set of publicly available datasets that cover different sequencing- and
imaging-based platforms, such as Visium, Visium HD, Xenium (10x Genomics) and
@code{CosMx} (@code{NanoString}).  In addition, we rely on @code{scRNA-seq}
(Chromium) data for tasks, e.g., spot deconvolution and label transfer (i.e.,
supervised clustering).  These data been deposited in an Open Storage Framework
(OSF) repository, and can be queried and downloaded using functions from the
osfr package.  For convenience, we have implemented OSTA.data to query and
retrieve data from our OSF node, and cache retrieved Zip archives using
@code{BiocFileCache}'.")
    (license license:artistic2.0)))

(define-public r-osat
  (package
    (name "r-osat")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OSAT" version))
       (sha256
        (base32 "119jncjfpmh2gswdd0cr9z2x2lr6sm0nsc0skpnmhkbhsrdw47la"))))
    (properties `((upstream-name . "OSAT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www.biomedcentral.com/1471-2164/13/689")
    (synopsis "OSAT: Optimal Sample Assignment Tool")
    (description
     "This package provides a sizable genomics study such as microarray often involves
the use of multiple batches (groups) of experiment due to practical
complication.  To minimize batch effects, a careful experiment design should
ensure the even distribution of biological groups and confounding factors across
batches.  OSAT (Optimal Sample Assignment Tool) is developed to facilitate the
allocation of collected samples to different batches.  With minimum steps, it
produces setup that optimizes the even distribution of samples in groups of
biological interest into different batches, reducing the confounding or
correlation between batches and the biological variables of interest.  It can
also optimize the even distribution of confounding factors across batches.  Our
tool can handle challenging instances where incomplete and unbalanced sample
collections are involved as well as ideal balanced RCBD. OSAT provides a number
of predefined layout for some of the most commonly used genomics platform.
Related paper can be find at http://www.biomedcentral.com/1471-2164/13/689 .")
    (license license:artistic2.0)))

(define-public r-orthosdata
  (package
    (name "r-orthosdata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "orthosData" version
                              'experiment))
       (sha256
        (base32 "0pmf3wm05b3h0zm78z6lzyxqrrqm026llzvl8rba0mb5b1bd8p7a"))))
    (properties `((upstream-name . "orthosData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-hdf5array
                             r-experimenthub
                             r-biocfilecache
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fmicompbio/orthosData")
    (synopsis "Data for the orthos package")
    (description
     "`@code{orthosData`} is the companion @code{ExperimentData} package to the
`orthos` R package for mechanistic studies using differential gene expression
experiments.  It provides functions for retrieval from @code{ExperimentHub} and
local caching of the models and datasets used internally in orthos.")
    (license license:expat)))

(define-public r-orthos
  (package
    (name "r-orthos")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "orthos" version))
       (sha256
        (base32 "0f742pna8d3iys5sgyzwj1hlj00hqjsgnnzs1pj8rbk1clzdwipp"))))
    (properties `((upstream-name . "orthos")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyr
                             r-tensorflow
                             r-summarizedexperiment
                             r-s4vectors
                             r-rlang
                             r-reticulate
                             r-plyr
                             r-orthosdata
                             r-keras
                             r-hdf5array
                             r-ggsci
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-experimenthub
                             r-dplyr
                             r-delayedarray
                             r-cowplot
                             r-colorspace
                             r-biocparallel
                             r-basilisk
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/orthos")
    (synopsis
     "`orthos` is an R package for variance decomposition using conditional variational auto-encoders")
    (description
     "`orthos` decomposes RNA-seq contrasts, for example obtained from a gene
knock-out or compound treatment experiment, into unspecific and
experiment-specific components.  Original and decomposed contrasts can be
efficiently queried against a large database of contrasts (derived from ARCHS4,
https://maayanlab.cloud/archs4/) to identify similar experiments. `orthos`
furthermore provides plotting functions to visualize the results of such a
search for similar contrasts.")
    (license license:expat)))

(define-public r-orthology-eg-db
  (package
    (name "r-orthology-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Orthology.eg.db" version
                              'annotation))
       (sha256
        (base32 "0zhxvmh370ixzxxhqqxjvvk2x6ln5pcr4bblnjhhw91gvrd76mra"))))
    (properties `((upstream-name . "Orthology.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Orthology.eg.db")
    (synopsis "Orthology mapping package")
    (description
     "Orthology mapping package, based on data from NCBI, using NCBI Gene IDs and
Taxonomy IDs.")
    (license license:artistic2.0)))

(define-public r-orthogene
  (package
    (name "r-orthogene")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "orthogene" version))
       (sha256
        (base32 "0v6y1ih476spnvmbhnrbwiglpcapcg7a61min8jib89prhsqhvbi"))))
    (properties `((upstream-name . "orthogene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-repmis
                             r-patchwork
                             r-matrix
                             r-jsonlite
                             r-homologene
                             r-grr
                             r-gprofiler2
                             r-ggtree
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-delayedarray
                             r-data-table
                             r-babelgene))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/neurogenomics/orthogene")
    (synopsis "Interspecies gene mapping")
    (description
     "`orthogene` is an R package for easy mapping of orthologous genes across
hundreds of species.  It pulls up-to-date gene ortholog mappings across **700+
organisms**.  It also provides various utility functions to aggregate/expand
common objects (e.g. data.frames, gene expression matrices, lists) using
**1:1**, **many:1**, **1:many** or **many:many** gene mappings, both within- and
between-species.")
    (license license:gpl3)))

(define-public r-org-xl-eg-db
  (package
    (name "r-org-xl-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Xl.eg.db" version
                              'annotation))
       (sha256
        (base32 "1knbk8nm87wiv1d7jy7xp2hjin5661lsdgvyvdkvlw85is9ixhm5"))))
    (properties `((upstream-name . "org.Xl.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Xl.eg.db")
    (synopsis "Genome wide annotation for Xenopus")
    (description
     "Genome wide annotation for Xenopus, primarily based on mapping using Entrez Gene
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-ss-eg-db
  (package
    (name "r-org-ss-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Ss.eg.db" version
                              'annotation))
       (sha256
        (base32 "0mvvq8gyydnhl0q6vf5jpwyhhn385k6gg1088xkv7m282721m47i"))))
    (properties `((upstream-name . "org.Ss.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Ss.eg.db")
    (synopsis "Genome wide annotation for Pig")
    (description
     "Genome wide annotation for Pig, primarily based on mapping using Entrez Gene
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-rn-eg-db
  (package
    (name "r-org-rn-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Rn.eg.db" version
                              'annotation))
       (sha256
        (base32 "05285al4g41x0pyfg7y14hbg9ghf2qxkxqdjwzzlb0mnbzwyqfwp"))))
    (properties `((upstream-name . "org.Rn.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Rn.eg.db")
    (synopsis "Genome wide annotation for Rat")
    (description
     "Genome wide annotation for Rat, primarily based on mapping using Entrez Gene
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-pt-eg-db
  (package
    (name "r-org-pt-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Pt.eg.db" version
                              'annotation))
       (sha256
        (base32 "1w4zg790mrr95b2wda76dwcqgf7wr2pahdjnan0nzz2ym0wv4w7y"))))
    (properties `((upstream-name . "org.Pt.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Pt.eg.db")
    (synopsis "Genome wide annotation for Chimp")
    (description
     "Genome wide annotation for Chimp, primarily based on mapping using Entrez Gene
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-pf-plasmo-db
  (package
    (name "r-org-pf-plasmo-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Pf.plasmo.db" version
                              'annotation))
       (sha256
        (base32 "0p286jk22h87flf4byjma013bzd5b8c77nxb0kiyvaiqr16cgx2x"))))
    (properties `((upstream-name . "org.Pf.plasmo.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Pf.plasmo.db")
    (synopsis "Genome wide annotation for Malaria")
    (description
     "Genome wide annotation for Malaria, primarily based on mapping using Entrez Gene
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-mxanthus-db
  (package
    (name "r-org-mxanthus-db")
    (version "1.0.27")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Mxanthus.db" version
                              'annotation))
       (sha256
        (base32 "1jqwsdjz1d8fwqhq26lavb2kq739ddlb8khsh4b096vhnwv3dxg5"))))
    (properties `((upstream-name . "org.Mxanthus.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biocstyle r-biocfilecache r-annotationhub
                             r-annotationdbi))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://bioconductor.org/packages/org.Mxanthus.db")
    (synopsis "Genome wide annotation for Myxococcus xanthus DK 1622")
    (description
     "Genome wide annotation for Myxococcus xanthus DK 1622, primarily based on
mapping using Gene identifiers.")
    (license license:artistic2.0)))

(define-public r-org-mmu-eg-db
  (package
    (name "r-org-mmu-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Mmu.eg.db" version
                              'annotation))
       (sha256
        (base32 "1al3x1d23r6prkfw0312n937g3625hrnaf3gkhdwrgaj0nvsplsm"))))
    (properties `((upstream-name . "org.Mmu.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Mmu.eg.db")
    (synopsis "Genome wide annotation for Rhesus")
    (description
     "Genome wide annotation for Rhesus, primarily based on mapping using Entrez Gene
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-gg-eg-db
  (package
    (name "r-org-gg-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Gg.eg.db" version
                              'annotation))
       (sha256
        (base32 "1854hwpdxzy02c1ips2ipxyqi2j556yv405gzhq4qmgcf10q6fbk"))))
    (properties `((upstream-name . "org.Gg.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Gg.eg.db")
    (synopsis "Genome wide annotation for Chicken")
    (description
     "Genome wide annotation for Chicken, primarily based on mapping using Entrez Gene
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-ecsakai-eg-db
  (package
    (name "r-org-ecsakai-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.EcSakai.eg.db" version
                              'annotation))
       (sha256
        (base32 "1n8zl0rvqpflwcvyfkzdcbd9iri434syxfd97fwlw88jbaj6l9qp"))))
    (properties `((upstream-name . "org.EcSakai.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.EcSakai.eg.db")
    (synopsis "Genome wide annotation for E coli strain Sakai")
    (description
     "Genome wide annotation for E coli strain Sakai, primarily based on mapping using
Entrez Gene identifiers.")
    (license license:artistic2.0)))

(define-public r-org-cf-eg-db
  (package
    (name "r-org-cf-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Cf.eg.db" version
                              'annotation))
       (sha256
        (base32 "0wb342h9a5jr95azqy2scys1zaskarl9iamlci730a2irncwbi2l"))))
    (properties `((upstream-name . "org.Cf.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Cf.eg.db")
    (synopsis "Genome wide annotation for Canine")
    (description
     "Genome wide annotation for Canine, primarily based on mapping using Entrez Gene
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-at-tair-db
  (package
    (name "r-org-at-tair-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.At.tair.db" version
                              'annotation))
       (sha256
        (base32 "1gwi1xmb39lz879dmln127x8iky10q35sw7ij7b6cp3w9wdj601j"))))
    (properties `((upstream-name . "org.At.tair.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.At.tair.db")
    (synopsis "Genome wide annotation for Arabidopsis")
    (description
     "Genome wide annotation for Arabidopsis, primarily based on mapping using TAIR
identifiers.")
    (license license:artistic2.0)))

(define-public r-org-ag-eg-db
  (package
    (name "r-org-ag-eg-db")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Ag.eg.db" version
                              'annotation))
       (sha256
        (base32 "07zx94qpnh0s3fxv7wcpxnpzpmvy087m4qwdhbn86s1r6qnhjbfh"))))
    (properties `((upstream-name . "org.Ag.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/org.Ag.eg.db")
    (synopsis "Genome wide annotation for Anopheles")
    (description
     "Genome wide annotation for Anopheles, primarily based on mapping using Entrez
Gene identifiers.")
    (license license:artistic2.0)))

(define-public r-orfik
  (package
    (name "r-orfik")
    (version "1.28.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ORFik" version))
       (sha256
        (base32 "18s9jl7sxa5mwgz8j4s4g05fia77gr5ilrzvna5cr09pw4c892gv"))))
    (properties `((upstream-name . "ORFik")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-xml
                             r-withr
                             r-txdbmaker
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-rcpp
                             r-r-utils
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-fst
                             r-deseq2
                             r-data-table
                             r-cowplot
                             r-bsgenome
                             r-biostrings
                             r-biomartr
                             r-biomart
                             r-biocparallel
                             r-biocgenerics
                             r-biocfilecache
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Roleren/ORFik")
    (synopsis "Open Reading Frames in Genomics")
    (description
     "R package for analysis of transcript and translation features through
manipulation of sequence data and NGS data like Ribo-Seq, RNA-Seq, TCP-Seq and
CAGE. It is generalized in the sense that any transcript region can be analysed,
as the name hints to it was made with investigation of ribosomal patterns over
Open Reading Frames (ORFs) as it's primary use case.  ORFik is extremely fast
through use of C++, data.table and @code{GenomicRanges}.  Package allows to
reassign starts of the transcripts with the use of CAGE-Seq data, automatic
shifting of @code{RiboSeq} reads, finding of Open Reading Frames for whole
genomes and much more.")
    (license license:expat)))

(define-public r-orfhunter
  (package
    (name "r-orfhunter")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ORFhunteR" version))
       (sha256
        (base32 "1rcs8rav0xhpx0fdx8i12q8zl4x2wa2d6kq0vvgx9md9nxpqcqjc"))))
    (properties `((upstream-name . "ORFhunteR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xfun
                             r-stringr
                             r-rtracklayer
                             r-rcpp
                             r-randomforest
                             r-peptides
                             r-data-table
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ORFhunteR")
    (synopsis "Predict open reading frames in nucleotide sequences")
    (description
     "The OR@code{FhunteR} package is a R and C++ library for an automatic
determination and annotation of open reading frames (ORF) in a large set of RNA
molecules.  It efficiently implements the machine learning model based on
vectorization of nucleotide sequences and the random forest classification
algorithm.  The OR@code{FhunteR} package consists of a set of functions written
in the R language in conjunction with C++.  The efficiency of the package was
confirmed by the examples of the analysis of RNA molecules from the NCBI
@code{RefSeq} and Ensembl databases.  The package can be used in basic and
applied biomedical research related to the study of the transcriptome of normal
as well as altered (for example, cancer) human cells.")
    (license (license:fsdg-compatible "MIT License"))))

(define-public r-orderedlist
  (package
    (name "r-orderedlist")
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OrderedList" version))
       (sha256
        (base32 "1hv3ffhwyc7y5d5ckdcn544v9k2bmd2axqs35ansqa2f1h9fhzv8"))))
    (properties `((upstream-name . "OrderedList")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-twilight r-biobase))
    (home-page "http://compdiag.molgen.mpg.de/software/OrderedList.shtml")
    (synopsis "Similarities of Ordered Gene Lists")
    (description
     "Detection of similarities between ordered lists of genes.  Thereby, either
simple lists can be compared or gene expression data can be used to deduce the
lists.  Significance of similarities is evaluated by shuffling lists or by
resampling in microarray data, respectively.")
    (license license:gpl2+)))

(define-public r-opweight
  (package
    (name "r-opweight")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OPWeight" version))
       (sha256
        (base32 "1jaflmghgh6pb26xnq4pp4cx0m63fa0nd0gaqaflswycxp1fkx0j"))))
    (properties `((upstream-name . "OPWeight")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-qvalue r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mshasan/OPWeight")
    (synopsis "Optimal p-value weighting with independent information")
    (description
     "This package perform weighted-pvalue based multiple hypothesis test and provides
corresponding information such as ranking probability, weight, significant
tests, etc .  To conduct this testing procedure, the testing method apply a
probabilistic relationship between the test rank and the corresponding test
effect size.")
    (license license:artistic2.0)))

(define-public r-optimalflowdata
  (package
    (name "r-optimalflowdata")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "optimalFlowData" version
                              'experiment))
       (sha256
        (base32 "1csiw4g2pqbg0x2wx5x11hgf1dcyn518yy7v4zf12f2n4dn3pq7s"))))
    (properties `((upstream-name . "optimalFlowData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/optimalFlowData")
    (synopsis "optimalFlowData")
    (description
     "Data files used as examples and for testing of the software provided in the
@code{optimalFlow} package.")
    (license license:artistic2.0)))

(define-public r-optimalflow
  (package
    (name "r-optimalflow")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "optimalFlow" version))
       (sha256
        (base32 "0abr0c8x92d9p3q4k8a53ij355xz6pjp3yx1f5dqxhq12by4f7zr"))))
    (properties `((upstream-name . "optimalFlow")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-transport
                             r-robustbase
                             r-rlang
                             r-rgl
                             r-rfast
                             r-randomforest
                             r-optimalflowdata
                             r-foreach
                             r-flowmeans
                             r-ellipse
                             r-dplyr
                             r-doparallel
                             r-dbscan))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/optimalFlow")
    (synopsis "optimalFlow")
    (description
     "Optimal-transport techniques applied to supervised flow cytometry gating.")
    (license license:artistic2.0)))

(define-public r-oppti
  (package
    (name "r-oppti")
    (version "1.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oppti" version))
       (sha256
        (base32 "0v7hy9qy3mjx8sj3rvs23sy38r8nfgr4d4na4k8h65y2mi8xfqnp"))))
    (properties `((upstream-name . "oppti")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape
                             r-rcolorbrewer
                             r-pheatmap
                             r-paralleldist
                             r-limma
                             r-knitr
                             r-ggplot2
                             r-devtools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Huang-lab/oppti")
    (synopsis "Outlier Protein and Phosphosite Target Identifier")
    (description
     "The aim of oppti is to analyze protein (and phosphosite) expressions to find
outlying markers for each sample in the given cohort(s) for the discovery of
personalized actionable targets.")
    (license license:expat)))

(define-public r-oppar
  (package
    (name "r-oppar")
    (version "1.36.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oppar" version))
       (sha256
        (base32 "0f5y093sr0jdkrm95ib6y1jszw8m7r3jkbd9a6qfhki8rzqwsavk"))))
    (properties `((upstream-name . "oppar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gsva r-gseabase r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/oppar")
    (synopsis "Outlier profile and pathway analysis in R")
    (description
     "The R implementation of @code{mCOPA} package published by Wang et al. (2012).
Oppar provides methods for Cancer Outlier profile Analysis.  Although initially
developed to detect outlier genes in cancer studies, methods presented in oppar
can be used for outlier profile analysis in general.  In addition, tools are
provided for gene set enrichment and pathway analysis.")
    (license license:gpl2)))

(define-public r-opossom
  (package
    (name "r-opossom")
    (version "2.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oposSOM" version))
       (sha256
        (base32 "07c4832hb5ib4cqj8sqsacw5r4vqnv2q6vphi0v7c5nd95jc8crx"))))
    (properties `((upstream-name . "oposSOM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-tsne
                             r-scatterplot3d
                             r-rcurl
                             r-rcppparallel
                             r-rcpp
                             r-png
                             r-pixmap
                             r-igraph
                             r-graph
                             r-fdrtool
                             r-fastica
                             r-biomart
                             r-biobase
                             r-ape))
    (home-page "http://som.izbi.uni-leipzig.de")
    (synopsis "Comprehensive analysis of transcriptome data")
    (description
     "This package translates microarray expression data into metadata of reduced
dimension.  It provides various sample-centered and group-centered
visualizations, sample similarity analyses and functional enrichment analyses.
The underlying SOM algorithm combines feature clustering, multidimensional
scaling and dimension reduction, along with strong visualization capabilities.
It enables extraction and description of functional expression modules inherent
in the data.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-operonhumanv3-db
  (package
    (name "r-operonhumanv3-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OperonHumanV3.db" version
                              'annotation))
       (sha256
        (base32 "082gff88cwk2p50q8g9bixggacaclgqcvk6w5dc11h9fkgvd160i"))))
    (properties `((upstream-name . "OperonHumanV3.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/OperonHumanV3.db")
    (synopsis "FHCRC Nelson Lab OperonHumanV3 Annotation Data (OperonHumanV3)")
    (description
     "FHCRC Nelson Lab @code{OperonHumanV3} Annotation Data (@code{OperonHumanV3})
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-openstats
  (package
    (name "r-openstats")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OpenStats" version))
       (sha256
        (base32 "0kbxpfjssb4ilkf8yw2xbzdhbp3sy8x68s2m5k3zpk8fiqhha04j"))))
    (properties `((upstream-name . "OpenStats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarytools
                             r-rlist
                             r-nlme
                             r-mass
                             r-knitr
                             r-jsonlite
                             r-hmisc
                             r-car
                             r-aiccmodavg))
    (native-inputs (list r-knitr))
    (home-page "https://git.io/Jv5w0")
    (synopsis
     "Robust and Scalable Software Package for Reproducible Analysis of High-Throughput genotype-phenotype association")
    (description
     "Package contains several methods for statistical analysis of genotype to
phenotype association in high-throughput screening pipelines.")
    (license license:gpl2+)))

(define-public r-openprimer
  (package
    (name "r-openprimer")
    (version "1.30.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "openPrimeR" version))
       (sha256
        (base32 "1yz39y7902qhb1yjrzzj7c0qkq9pld4wf352sb1p2dkxs8cr7qm5"))))
    (properties `((upstream-name . "openPrimeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list pandoc mafft))
    (propagated-inputs (list r-xml
                             r-uniqtag
                             r-stringr
                             r-stringdist
                             r-seqinr
                             r-scales
                             r-s4vectors
                             r-reshape2
                             r-rcolorbrewer
                             r-pwalign
                             r-plyr
                             r-openxlsx
                             r-magrittr
                             r-lpsolveapi
                             r-iranges
                             r-hmisc
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-digest
                             r-decipher
                             r-biostrings
                             r-biocgenerics
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/openPrimeR")
    (synopsis "Multiplex PCR Primer Design and Analysis")
    (description
     "An implementation of methods for designing, evaluating, and comparing primer
sets for multiplex PCR. Primers are designed by solving a set cover problem such
that the number of covered template sequences is maximized with the smallest
possible set of primers.  To guarantee that high-quality primers are generated,
only primers fulfilling constraints on their physicochemical properties are
selected.  A Shiny app providing a user interface for the functionalities of
this package is provided by the @code{openPrimeRui} package.")
    (license license:gpl2)))

(define-public r-ontoprocdata
  (package
    (name "r-ontoprocdata")
    (version "0.99.9901")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ontoProcData" version
                              'annotation))
       (sha256
        (base32 "16wwh539hdm89f1vxqfgjmlbqwadnr4xqap80annsqgfn90mi8rk"))))
    (properties `((upstream-name . "ontoProcData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ontoProcData")
    (synopsis "data package for ontoProc")
    (description
     "This package manages rda files of multiple ontologies that are used in the
@code{ontoProc} package.  These ontologies were originally downloaded as owl or
obo files and converted into Rda files.  The files were downloaded at various
times but most of them were downloaded on August 08 2022.")
    (license license:artistic2.0)))

(define-public r-ontoproc
  (package
    (name "r-ontoproc")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ontoProc" version))
       (sha256
        (base32 "050lg114ygfli28a6shc3r2aqn01vdja8dyaxm0hsavq9jslpf5s"))))
    (properties `((upstream-name . "ontoProc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-shiny
                             r-s4vectors
                             r-rgraphviz
                             r-reticulate
                             r-r-utils
                             r-ontologyplot
                             r-ontologyindex
                             r-magrittr
                             r-igraph
                             r-httr
                             r-graph
                             r-dt
                             r-dplyr
                             r-biocfilecache
                             r-biobase
                             r-basilisk
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjcitn/ontoProc")
    (synopsis "processing of ontologies of anatomy, cell lines, and so on")
    (description
     "Support harvesting of diverse bioinformatic ontologies, making particular use of
the @code{ontologyIndex} package on CRAN. We provide snapshots of key ontologies
for terms about cells, cell lines, chemical compounds, and anatomy, to help
analyze genome-scale experiments, particularly cell x compound screens.  Another
purpose is to strengthen development of compelling use cases for richer
interfaces to emerging ontologies.")
    (license license:artistic2.0)))

(define-public r-onlinefdr
  (package
    (name "r-onlinefdr")
    (version "2.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "onlineFDR" version))
       (sha256
        (base32 "1nn51bykaciy2crnrm5z1b4rpx8083hxjxzcjx1q4fylwfxpr9hj"))))
    (properties `((upstream-name . "onlineFDR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppprogress r-rcpp r-progress))
    (native-inputs (list r-knitr))
    (home-page "https://dsrobertson.github.io/onlineFDR/index.html")
    (synopsis "Online error rate control")
    (description
     "This package allows users to control the false discovery rate (FDR) or
familywise error rate (FWER) for online multiple hypothesis testing, where
hypotheses arrive in a stream.  In this framework, a null hypothesis is rejected
based on the evidence against it and on the previous rejection decisions.")
    (license license:gpl3)))

(define-public r-oncosimulr
  (package
    (name "r-oncosimulr")
    (version "4.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OncoSimulR" version))
       (sha256
        (base32 "1ps64p8svpfqxws7d3lzrkg3fymxnyhb5gsb88chncdixq2lfgp5"))))
    (properties `((upstream-name . "OncoSimulR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-smatr
                             r-rgraphviz
                             r-rcpp
                             r-rcolorbrewer
                             r-igraph
                             r-gtools
                             r-graph
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rdiaz02/OncoSimul")
    (synopsis
     "Forward Genetic Simulation of Cancer Progression with Epistasis")
    (description
     "This package provides functions for forward population genetic simulation in
asexual populations, with special focus on cancer progression.  Fitness can be
an arbitrary function of genetic interactions between multiple genes or modules
of genes, including epistasis, order restrictions in mutation accumulation, and
order effects.  Fitness (including just birth, just death, or both birth and
death) can also be a function of the relative and absolute frequencies of other
genotypes (i.e., frequency-dependent fitness).  Mutation rates can differ
between genes, and we can include mutator/antimutator genes (to model mutator
phenotypes).  Simulating multi-species scenarios and therapeutic interventions,
including adaptive therapy, is also possible.  Simulations use continuous-time
models and can include driver and passenger genes and modules.  Also included
are functions for: simulating random DAGs of the type found in Oncogenetic
Trees, Conjunctive Bayesian Networks, and other cancer progression models;
plotting and sampling from single or multiple realizations of the simulations,
including single-cell sampling; plotting the parent-child relationships of the
clones; generating random fitness landscapes (Rough Mount Fuji, House of Cards,
additive, NK, Ising, and Eggbox models) and plotting them.")
    (license license:gpl3+)))

(define-public r-oncoscore
  (package
    (name "r-oncoscore")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OncoScore" version))
       (sha256
        (base32 "1nqyxl0l8q0v9nwp8nzjhmf5sdsiwmlrn3pwgg15da8s5i4j52kq"))))
    (properties `((upstream-name . "OncoScore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/danro9685/OncoScore")
    (synopsis "tool to identify potentially oncogenic genes")
    (description
     "@code{OncoScore} is a tool to measure the association of genes to cancer based
on citation frequencies in biomedical literature.  The score is evaluated from
@code{PubMed} literature by dynamically updatable web queries.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-oncoscanr
  (package
    (name "r-oncoscanr")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oncoscanR" version))
       (sha256
        (base32 "1bshhqzxqpydgvwj7bb609fvw54133h01z1mi26z4nxwkdark9vw"))))
    (properties `((upstream-name . "oncoscanR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-readr r-magrittr r-iranges
                             r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yannchristinat/oncoscanR")
    (synopsis "Secondary analyses of CNV data (HRD and more)")
    (description
     "The software uses the copy number segments from a text file and identifies all
chromosome arms that are globally altered and computes various genome-wide
scores.  The following HRD scores (characteristic of BRCA-mutated cancers) are
included: LST, HR-LOH, @code{nLST} and @code{gLOH}.  the package is tailored for
the @code{ThermoFisher} Oncoscan assay analyzed with their Chromosome Alteration
Suite (@code{ChAS}) but can be adapted to any input.")
    (license license:expat)))

(define-public r-oncomix
  (package
    (name "r-oncomix")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oncomix" version))
       (sha256
        (base32 "1yps1188z3bm4phhmj3hcb1bf4qgq8g552c42jxcvfprkrphabzd"))))
    (properties `((upstream-name . "oncomix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-rcolorbrewer r-mclust
                             r-ggrepel r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/oncomix")
    (synopsis
     "Identifying Genes Overexpressed in Subsets of Tumors from Tumor-Normal mRNA Expression Data")
    (description
     "This package helps identify @code{mRNAs} that are overexpressed in subsets of
tumors relative to normal tissue.  Ideal inputs would be paired tumor-normal
data from the same tissue from many patients (>15 pairs).  This unsupervised
approach relies on the observation that oncogenes are characteristically
overexpressed in only a subset of tumors in the population, and may help
identify oncogene candidates purely based on differences in @code{mRNA}
expression between previously unknown subtypes.")
    (license license:gpl3)))

(define-public r-onassisjavalibs
  (package
    (name "r-onassisjavalibs")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OnassisJavaLibs" version
                              'experiment))
       (sha256
        (base32 "02yhk0l9pr0d4z6qh72msc7dhhwfq698fx9b6hmhfr1gm8fsqgdi"))))
    (properties `((upstream-name . "OnassisJavaLibs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://bioconductor.org/packages/OnassisJavaLibs")
    (synopsis
     "OnassisJavaLibs, java libraries to run conceptmapper and semantic similarity")
    (description
     "This package provides a package that contains java libraries to call
conceptmapper and compute semnatic similarity from R.")
    (license license:gpl2)))

(define-public r-omxplore
  (package
    (name "r-omxplore")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omXplore" version))
       (sha256
        (base32 "1pfwvrz9p0rk9q5xbnfwsa7khqw4a1ixlsmm4k2iwxpykarh9ylh"))))
    (properties `((upstream-name . "omXplore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waiter
                             r-visnetwork
                             r-vioplot
                             r-tidyr
                             r-tibble
                             r-thematic
                             r-summarizedexperiment
                             r-shinyjs
                             r-shinyjqui
                             r-shinybs
                             r-shiny
                             r-rcolorbrewer
                             r-psmatch
                             r-nipals
                             r-multiassayexperiment
                             r-msnbase
                             r-htmlwidgets
                             r-highcharter
                             r-gplots
                             r-factominer
                             r-factoextra
                             r-dt
                             r-dplyr
                             r-dendextend
                             r-bs4dash))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/prostarproteomics/omXplore")
    (synopsis "Vizualization tools for 'omics' datasets with R")
    (description
     "This package contains a collection of functions (written as shiny modules) for
the visualisation and the statistical analysis of omics data.  These plots can
be displayed individually or embedded in a global Shiny module.  Additionaly, it
is possible to integrate third party modules to the main interface of the
package @code{omXplore}.")
    (license license:artistic2.0)))

(define-public r-ompbam
  (package
    (name "r-ompbam")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ompBAM" version))
       (sha256
        (base32 "0i9szx0b4xq94k0vzb1dqwrb3b25hx54d1l8dkk75hdscb0rbjp2"))))
    (properties `((upstream-name . "ompBAM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexchwong/ompBAM")
    (synopsis
     "C++ Library for OpenMP-based multi-threaded sequential profiling of Binary Alignment Map (BAM) files")
    (description
     "This packages provides C++ header files for developers wishing to create R
packages that processes BAM files. @code{ompBAM} automates file access, memory
management, and handling of multiple threads behind the scenes', so developers
can focus on creating domain-specific functionality.  The included vignette
contains detailed documentation of this API, including quick-start instructions
to create a new @code{ompBAM-based} package, and step-by-step explanation of the
functionality behind the example packaged included within @code{ompBAM}.")
    (license license:expat)))

(define-public r-omixer
  (package
    (name "r-omixer")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Omixer" version))
       (sha256
        (base32 "132mx5y60cqhpv584js7fk5qs9573jh0k6cmq4iikvqaxbf5x32v"))))
    (properties `((upstream-name . "Omixer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-stringr
                             r-readr
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Omixer")
    (synopsis
     "Omixer: multivariate and reproducible sample randomization to proactively counter batch effects in omics studies")
    (description
     "Omixer - an Bioconductor package for multivariate and reproducible sample
randomization, which ensures optimal sample distribution across batches with
well-documented methods.  It outputs lab-friendly sample layouts, reducing the
risk of sample mixups when manually pipetting randomized samples.")
    (license license:expat)))

(define-public r-omicsviewer
  (package
    (name "r-omicsviewer")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omicsViewer" version))
       (sha256
        (base32 "137cjryzwgkl91qjm85q1rk6hn5xz6y8m046wmdlxk7aq6pjw9bf"))))
    (properties `((upstream-name . "omicsViewer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survminer
                             r-survival
                             r-summarizedexperiment
                             r-stringr
                             r-shinywidgets
                             r-shinythemes
                             r-shinyjs
                             r-shinycssloaders
                             r-shinybusy
                             r-shiny
                             r-s4vectors
                             r-rsqlite
                             r-rocr
                             r-reshape2
                             r-rcolorbrewer
                             r-psych
                             r-plotly
                             r-openxlsx
                             r-networkd3
                             r-matrixstats
                             r-matrix
                             r-httr
                             r-htmlwidgets
                             r-ggseqlogo
                             r-ggplot2
                             r-flatxml
                             r-fgsea
                             r-fastmatch
                             r-dt
                             r-drc
                             r-curl
                             r-biobase
                             r-beeswarm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mengchen18/omicsViewer")
    (synopsis
     "Interactive and explorative visualization of SummarizedExperssionSet or ExpressionSet using omicsViewer")
    (description
     "@code{omicsViewer} visualizes @code{ExpressionSet} (or
@code{SummarizedExperiment}) in an interactive way.  The @code{omicsViewer} has
a separate back- and front-end.  In the back-end, users need to prepare an
@code{ExpressionSet} that contains all the necessary information for the
downstream data interpretation.  Some extra requirements on the headers of
phenotype data or feature data are imposed so that the provided information can
be clearly recognized by the front-end, at the same time, keep a minimum
modification on the existing @code{ExpressionSet} object.  The pure dependency
on R/Bioconductor guarantees maximum flexibility in the statistical analysis in
the back-end.  Once the @code{ExpressionSet} is prepared, it can be visualized
using the front-end, implemented by shiny and plotly.  Both features and samples
could be selected from (data) tables or graphs (scatter plot/heatmap).
Different types of analyses, such as enrichment analysis (using Bioconductor
package fgsea or fisher's exact test) and STRING network analysis, will be
performed on the fly and the results are visualized simultaneously.  When a
subset of samples and a phenotype variable is selected, a significance test on
means (t-test or ranked based test; when phenotype variable is quantitative) or
test of independence (chi-square or fisher’s exact test; when phenotype data is
categorical) will be performed to test the association between the phenotype of
interest with the selected samples.  Additionally, other analyses can be easily
added as extra shiny modules.  Therefore, @code{omicsViewer} will greatly
facilitate data exploration, many different hypotheses can be explored in a
short time without the need for knowledge of R. In addition, the resulting data
could be easily shared using a shiny server.  Otherwise, a standalone version of
@code{omicsViewer} together with designated omics data could be easily created
by integrating it with portable R, which can be shared with collaborators or
submitted as supplementary data together with a manuscript.")
    (license license:gpl2)))

(define-public r-omicsprint
  (package
    (name "r-omicsprint")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omicsPrint" version))
       (sha256
        (base32 "1w8birg6p9vw59sl1q5za5nrnwfjcb88sbn6afc9g9vz8y5v85wz"))))
    (properties `((upstream-name . "omicsPrint")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment r-raggedexperiment
                             r-multiassayexperiment r-matrixstats r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/omicsPrint")
    (synopsis "Cross omic genetic fingerprinting")
    (description
     "@code{omicsPrint} provides functionality for cross omic genetic fingerprinting,
for example, to verify sample relationships between multiple omics data types,
i.e.  genomic, transcriptomic and epigenetic (DNA methylation).")
    (license license:gpl2+)))

(define-public r-omicspcadata
  (package
    (name "r-omicspcadata")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OMICsPCAdata" version
                              'experiment))
       (sha256
        (base32 "0zwn75rpkxwj6kaay1p74vpgi3ivhf5wzfndjqw23196xgwxzgbm"))))
    (properties `((upstream-name . "OMICsPCAdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-multiassayexperiment))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/OMICsPCAdata")
    (synopsis "Supporting data for package OMICsPCA")
    (description "Supporting data for package OMI@code{CsPCA}.")
    (license license:gpl3)))

(define-public r-omicspca
  (package
    (name "r-omicspca")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OMICsPCA" version))
       (sha256
        (base32 "0iixl74v7q0xxl7k52dv5k7ly4nawmw24lcbcy9baf46xdq7cfiq"))))
    (properties `((upstream-name . "OMICsPCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rtracklayer
                             r-rmarkdown
                             r-rgl
                             r-reshape2
                             r-performanceanalytics
                             r-pdftools
                             r-omicspcadata
                             r-nbclust
                             r-multiassayexperiment
                             r-mass
                             r-magick
                             r-kableextra
                             r-iranges
                             r-helloranges
                             r-ggplot2
                             r-genomeinfodb
                             r-fpc
                             r-factominer
                             r-factoextra
                             r-data-table
                             r-cowplot
                             r-corrplot
                             r-clvalid
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/OMICsPCA")
    (synopsis
     "An R package for quantitative integration and analysis of multiple omics assays from heterogeneous samples")
    (description
     "OMI@code{CsPCA} is an analysis pipeline designed to integrate multi OMICs
experiments done on various subjects (e.g. Cell lines, individuals), treatments
(e.g. disease/control) or time points and to analyse such integrated data from
various various angles and perspectives.  In it's core OMI@code{CsPCA} uses
Principal Component Analysis (PCA) to integrate multiomics experiments from
various sources and thus has ability to over data insufficiency issues by using
the ingegrated data as representatives.  OMI@code{CsPCA} can be used in various
application including analysis of overall distribution of OMICs assays across
various samples /individuals /time points; grouping assays by user-defined
conditions; identification of source of variation, similarity/dissimilarity
between assays, variables or individuals.")
    (license license:gpl3)))

(define-public r-omicsmlrepor
  (package
    (name "r-omicsmlrepor")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OmicsMLRepoR" version))
       (sha256
        (base32 "0cfa80zylasvi7qbjiwsavl0yfn9ahji2sgzkfmi1lsbryppgyvc"))))
    (properties `((upstream-name . "OmicsMLRepoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rols
                             r-rlang
                             r-readr
                             r-plyr
                             r-lubridate
                             r-jsonlite
                             r-dplyr
                             r-diagrammer
                             r-data-tree
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shbrief/OmicsMLRepoR")
    (synopsis
     "Search harmonized metadata created under the OmicsMLRepo project")
    (description
     "This package provides functions to browse the harmonized metadata for large
omics databases.  This package also supports data navigation if the metadata
incorporates ontology.")
    (license license:artistic2.0)))

(define-public r-omicrexposome
  (package
    (name "r-omicrexposome")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omicRexposome" version))
       (sha256
        (base32 "0km7bg018i5g0l98ygrw0f4m753h0l1klgjkbnsv6wnyy7xqczaf"))))
    (properties `((upstream-name . "omicRexposome")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-stringr
                             r-smartsva
                             r-rexposome
                             r-pma
                             r-omicade4
                             r-multidataset
                             r-limma
                             r-isva
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/omicRexposome")
    (synopsis "Exposome and omic data associatin and integration analysis")
    (description
     "@code{omicRexposome} systematizes the association evaluation between exposures
and omic data, taking advantage of @code{MultiDataSet} for coordinated data
management, rexposome for exposome data definition and limma for association
testing.  Also to perform data integration mixing exposome and omic data using
multi co-inherent analysis (omicade4) and multi-canonical correlation analysis
(PMA).")
    (license license:expat)))

(define-public r-omicplotr
  (package
    (name "r-omicplotr")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omicplotR" version))
       (sha256
        (base32 "1vbarxn0p2n2mdr6vdadw6xv2lb4pp6nvlmyii7r9rxhbbp88wi7"))))
    (properties `((upstream-name . "omicplotR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zcompositions
                             r-vegan
                             r-shiny
                             r-rmarkdown
                             r-matrixstats
                             r-knitr
                             r-jsonlite
                             r-dt
                             r-compositions
                             r-aldex2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/omicplotR")
    (synopsis "Visual Exploration of Omic Datasets Using a Shiny App")
    (description
     "This package provides a Shiny app for visual exploration of omic datasets as
compositions, and differential abundance analysis using ALDEx2.  Useful for
exploring RNA-seq, meta-RNA-seq, 16s @code{rRNA} gene sequencing with
visualizations such as principal component analysis biplots (coloured using
metadata for visualizing each variable), dendrograms and stacked bar plots, and
effect plots (ALDEx2).  Input is a table of counts and metadata file (if
metadata exists), with options to filter data by count or by metadata to remove
low counts, or to visualize select samples according to selected metadata.")
    (license license:expat)))

(define-public r-omiccircos
  (package
    (name "r-omiccircos")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OmicCircos" version))
       (sha256
        (base32 "020m88v5msigzl448g5f89ijwjbdfbz9b33c4yhal05503zqjw2j"))))
    (properties `((upstream-name . "OmicCircos")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/OmicCircos")
    (synopsis "High-quality circular visualization of omics data")
    (description
     "@code{OmicCircos} is an R application and package for generating high-quality
circular plots for omics data.")
    (license license:gpl2)))

(define-public r-omadb
  (package
    (name "r-omadb")
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OmaDB" version))
       (sha256
        (base32 "14b9xyhimvn4fmjvgd4qgzd6lq4k4bdw08w1wsivjkqd5s6fjs8k"))))
    (properties `((upstream-name . "OmaDB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-topgo
                             r-plyr
                             r-jsonlite
                             r-iranges
                             r-httr
                             r-genomicranges
                             r-biostrings
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DessimozLab/OmaDB")
    (synopsis "R wrapper for the OMA REST API")
    (description
     "This package provides a package for the orthology prediction data download from
OMA database.")
    (license license:gpl3)))

(define-public r-omada
  (package
    (name "r-omada")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omada" version))
       (sha256
        (base32 "13ywxl0z6nklga23r8lhdnk1zpcd6c62jr5giy9j72hp42c6dvva"))))
    (properties `((upstream-name . "omada")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape
                             r-rcpp
                             r-pdfcluster
                             r-kernlab
                             r-glmnet
                             r-ggplot2
                             r-genieclust
                             r-fpc
                             r-dplyr
                             r-dicer
                             r-clvalid
                             r-clvalid))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/omada")
    (synopsis
     "Machine learning tools for automated transcriptome clustering analysis")
    (description
     "Symptomatic heterogeneity in complex diseases reveals differences in molecular
states that need to be investigated.  However, selecting the numerous parameters
of an exploratory clustering analysis in RNA profiling studies requires deep
understanding of machine learning and extensive computational experimentation.
Tools that assist with such decisions without prior field knowledge are
nonexistent and further gene association analyses need to be performed
independently.  We have developed a suite of tools to automate these processes
and make robust unsupervised clustering of transcriptomic data more accessible
through automated machine learning based functions.  The efficiency of each tool
was tested with four datasets characterised by different expression signal
strengths.  Our toolkit’s decisions reflected the real number of stable
partitions in datasets where the subgroups are discernible.  Even in datasets
with less clear biological distinctions, stable subgroups with different
expression profiles and clinical associations were found.")
    (license license:gpl3)))

(define-public r-olingui
  (package
    (name "r-olingui")
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OLINgui" version))
       (sha256
        (base32 "06j39p518jrp6xhcqwif3nkhf0xflxc6sk6x73642wx9q3cwml9d"))))
    (properties `((upstream-name . "OLINgui")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-widgettools r-tkwidgets r-olin r-marray))
    (home-page "http://olin.sysbiolab.eu")
    (synopsis "Graphical user interface for OLIN")
    (description "Graphical user interface for the OLIN package.")
    (license license:gpl2)))

(define-public r-olin
  (package
    (name "r-olin")
    (version "1.86.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OLIN" version))
       (sha256
        (base32 "09xrkawmsznjvpxb8xp59lb01q2lw7vsk9xyxdvrgila5fbvhb7k"))))
    (properties `((upstream-name . "OLIN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-marray r-locfit r-limma))
    (home-page "http://olin.sysbiolab.eu")
    (synopsis
     "Optimized local intensity-dependent normalisation of two-color microarrays")
    (description
     "This package provides functions for normalisation of two-color microarrays by
optimised local regression and for detection of artefacts in microarray data.")
    (license license:gpl2)))

(define-public r-ogre
  (package
    (name "r-ogre")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OGRE" version))
       (sha256
        (base32 "18hn4hjlfrxxzkw4mw6wymwwp3ivfp5zww6jypc9ncxx5pxjygj6"))))
    (properties `((upstream-name . "OGRE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shinyfiles
                             r-shinydashboard
                             r-shinybs
                             r-shiny
                             r-s4vectors
                             r-rtracklayer
                             r-iranges
                             r-gviz
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dt
                             r-data-table
                             r-assertthat
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/svenbioinf/OGRE/")
    (synopsis
     "Calculate, visualize and analyse overlap between genomic regions")
    (description
     "OGRE calculates overlap between user defined genomic region datasets.  Any
regions can be supplied i.e.  genes, SNPs, or reads from sequencing experiments.
 Key numbers help analyse the extend of overlaps which can also be visualized at
a genomic level.")
    (license license:artistic2.0)))

(define-public r-odseq
  (package
    (name "r-odseq")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "odseq" version))
       (sha256
        (base32 "08yr4448ij8jh6kzxq9sn7zv2xp0cjzvlllzz47x18v0py466vp8"))))
    (properties `((upstream-name . "odseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-msa r-mclust r-kebabs))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/odseq")
    (synopsis "Outlier detection in multiple sequence alignments")
    (description
     "This package performs outlier detection of sequences in a multiple sequence
alignment using bootstrap of predefined distance metrics.  Outlier sequences can
make downstream analyses unreliable or make the alignments less accurate while
they are being constructed.  This package implements the OD-seq algorithm
proposed by Jehl et al (doi 10.1186/s12859-015-0702-1) for aligned sequences and
a variant using string kernels for unaligned sequences.")
    (license license:expat)))

(define-public r-octad-db
  (package
    (name "r-octad-db")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "octad.db" version
                              'experiment))
       (sha256
        (base32 "0yc7rrkmpm6sa15g36jm3ynj0kwlkk978csibbrmy4cl3dfppvhi"))))
    (properties `((upstream-name . "octad.db")))
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
    (home-page "https://bioconductor.org/packages/octad.db")
    (synopsis "Open Cancer TherApeutic Discovery (OCTAD) database")
    (description
     "Open Cancer @code{TherApeutic} Discovery (OCTAD) package implies @code{sRGES}
approach for the drug discovery.  The essential idea is to identify drugs that
reverse the gene expression signature of a disease by tamping down
over-expressed genes and stimulating weakly expressed ones.  The following
package contains all required precomputed data for whole OCTAD pipeline
computation.")
    (license license:artistic2.0)))

(define-public r-octad
  (package
    (name "r-octad")
    (version "1.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "octad" version))
       (sha256
        (base32 "1w4nc2n1a93268bg3l3bhas48bsr6hlp5g4947xryr3b4dgc6dxb"))))
    (properties `((upstream-name . "octad")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-s4vectors
                             r-ruvseq
                             r-rhdf5
                             r-rfast
                             r-reshape2
                             r-qpdf
                             r-plotly
                             r-octad-db
                             r-magrittr
                             r-limma
                             r-httr
                             r-htmlwidgets
                             r-gsva
                             r-ggplot2
                             r-foreach
                             r-experimenthub
                             r-edger
                             r-edaseq
                             r-dplyr
                             r-deseq2
                             r-data-table
                             r-biobase
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/octad")
    (synopsis "Open Cancer TherApeutic Discovery (OCTAD)")
    (description
     "OCTAD provides a platform for virtually screening compounds targeting precise
cancer patient groups.  The essential idea is to identify drugs that reverse the
gene expression signature of disease by tamping down over-expressed genes and
stimulating weakly expressed ones.  The package offers deep-learning based
reference tissue selection, disease gene expression signature creation, pathway
enrichment analysis, drug reversal potency scoring, cancer cell line selection,
drug enrichment analysis and in silico hit validation.  It currently covers
~20,000 patient tissue samples covering 50 cancer types, and expression profiles
for ~12,000 distinct compounds.")
    (license license:artistic2.0)))

(define-public r-oct4
  (package
    (name "r-oct4")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oct4" version
                              'experiment))
       (sha256
        (base32 "08mz880hh9ibsw7xqza580qmigla0g8xj3pmd6mn5hhrc3r21lzq"))))
    (properties `((upstream-name . "oct4")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/oct4")
    (synopsis "Conditional knockdown of OCT4 in mouse ESCs")
    (description
     "This package provides the output of running Salmon on a set of 12 RNA-seq
samples from King & Klose, \"The pioneer factor OCT4 requires the chromatin
remodeller BRG1 to support gene regulatory element function in mouse embryonic
stem cells\", published in @code{eLIFE}, March 2017.  For details on version
numbers and how the samples were processed see the package vignette.")
    (license license:gpl2+)))

(define-public r-ocplus
  (package
    (name "r-ocplus")
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OCplus" version))
       (sha256
        (base32 "01s8jb6mh2ipxhnws05dv6r5b1m3cy196gf6szly1harg3wilm1q"))))
    (properties `((upstream-name . "OCplus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-multtest r-interp))
    (home-page "https://bioconductor.org/packages/OCplus")
    (synopsis
     "Operating characteristics plus sample size and local fdr for microarray experiments")
    (description
     "This package allows to characterize the operating characteristics of a
microarray experiment, i.e.  the trade-off between false discovery rate and the
power to detect truly regulated genes.  The package includes tools both for
planned experiments (for sample size assessment) and for already collected data
(identification of differentially expressed genes).")
    (license license:lgpl2.0+)))

(define-public r-occugene
  (package
    (name "r-occugene")
    (version "1.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "occugene" version))
       (sha256
        (base32 "0y5wj927gy938vnv5irj9n1a12rfbfq2m2q3zpny0rd390bdpxmc"))))
    (properties `((upstream-name . "occugene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/occugene")
    (synopsis "Functions for Multinomial Occupancy Distribution")
    (description
     "Statistical tools for building random mutagenesis libraries for prokaryotes.
The package has functions for handling the occupancy distribution for a
multinomial and for estimating the number of essential genes in random
transposon mutagenesis libraries.")
    (license license:gpl2+)))

(define-public r-obmiti
  (package
    (name "r-obmiti")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ObMiTi" version
                              'experiment))
       (sha256
        (base32 "0r43qcwgll7i11y1sb9p905wh2zvpd43qarfcgara3084jxxznda"))))
    (properties `((upstream-name . "ObMiTi")))
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
    (home-page "https://github.com/OmarElAshkar/ObMiTi")
    (synopsis "Ob/ob Mice Data on Normal and High Fat Diet")
    (description
     "The package provide RNA-seq count for 2 strains of mus musclus; Wild type and
Ob/Ob.  Each strain was divided into two groups, and each group received either
chow diet or high fat diet.  RNA expression was measured after 20 weeks in 7
tissues.")
    (license license:gpl3)))

