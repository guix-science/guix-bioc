(define-module (guix-bioc packages o)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages u)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (guix-cran packages o)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages h)
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OVESEG" version))
       (sha256
        (base32 "1dad4bw2vnh9vkklrh1r0gmk1rrdnfgs85dirgh90zdcgzr6k5jz"))))
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OutSplice" version))
       (sha256
        (base32 "1ashzh7g527dz0xq6qv0rsy0sw8rszbrr5z9rjs1kgagjrz42g9v"))))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OUTRIDER" version))
       (sha256
        (base32 "0slpkq7smja67yrcz992jnr176324n6wan7q9lrs8j8cylz9zwsf"))))
    (properties `((upstream-name . "OUTRIDER")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-prroc
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
    (license license:expat)))

(define-public r-otubase
  (package
    (name "r-otubase")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OTUbase" version))
       (sha256
        (base32 "1mya1bg2a1dikbpq0yh7b6lwsal5aqzv1ifxxckfq3wf23snk5gl"))))
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

(define-public r-osat
  (package
    (name "r-osat")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OSAT" version))
       (sha256
        (base32 "078nnn7g497pci81wnxf166aidp41cb5vaj6bsbimhaxb75alyjk"))))
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "orthosData" version
                              'experiment))
       (sha256
        (base32 "0iv8r0rnbix06kfrwcnrxvn31l0p0mlzciwsbxi7cyz8ar9h85j2"))))
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "orthos" version))
       (sha256
        (base32 "13z4f1h5niaclmd0zn6lq3y1j2nnq4kb1l5kxak2kabhqj13ap2n"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Orthology.eg.db" version
                              'annotation))
       (sha256
        (base32 "0876srbhjg872v46373p4bjy9kxpyqncbysc577bn2zf7miaxsal"))))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "orthogene" version))
       (sha256
        (base32 "0jwf7ylw6i25xv4b01lz6k993hnln3v81rqqnqf5n4mi76ifk0yg"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Xl.eg.db" version
                              'annotation))
       (sha256
        (base32 "0g20n9c1rrh82w809sisrwm05jzldzqyzvmjj5rfv23i158rjhc2"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Ss.eg.db" version
                              'annotation))
       (sha256
        (base32 "0ls2w86r06rwdvmgsv54fksp0wk9nk0a88xaljx85d2x0x5vfkwj"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Rn.eg.db" version
                              'annotation))
       (sha256
        (base32 "009c22ry5nnklzdc5dywnf8lq41cj3141yr5vw1kgifys6lanj01"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Pt.eg.db" version
                              'annotation))
       (sha256
        (base32 "05hkhwjh5r18wpk60vwk06bfra6fwrnrr0jshc71hzr6cc15jqfk"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Pf.plasmo.db" version
                              'annotation))
       (sha256
        (base32 "1n8xs8l9ggg18x8gkhf6pr0ic6sgdf63gbfrm6w5ixzmwdfazq90"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Mmu.eg.db" version
                              'annotation))
       (sha256
        (base32 "0qpzslrjd77s4zgv68pmkm2kbbrb0h8ginzp9wppsnb58qvbz4nv"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Gg.eg.db" version
                              'annotation))
       (sha256
        (base32 "1v22p36gxjs4fjc4zamaj4h10qvhknvz22chlnjqn4lisifpg325"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.EcSakai.eg.db" version
                              'annotation))
       (sha256
        (base32 "1dqs6lkjlyy32pg3qiv6ll1mqbs4h0j0wkkn1zwdnban6migv1y2"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Cf.eg.db" version
                              'annotation))
       (sha256
        (base32 "0sf7lyh16mbh1h986dkbdci5rmkvg1rj80far1grcd2hwpdgaq7s"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.At.tair.db" version
                              'annotation))
       (sha256
        (base32 "01cchwj03hq8jng0xaxwc96ibbmrrai26hnp61g8bxlfgnn5zh4k"))))
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
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "org.Ag.eg.db" version
                              'annotation))
       (sha256
        (base32 "0r5flj8h3w0hxacwdk4hq54r0dvjnj6fyv31m22x7ld7c466awf0"))))
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
    (version "1.26.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ORFik" version))
       (sha256
        (base32 "0wfmxxrw8jlw0l2vngka4ywn8nlvwyb0qqhprnmgjwbnn3fmy6yn"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ORFhunteR" version))
       (sha256
        (base32 "1rzk7rmjjlsnba6kjwyv8y208g8pm361nr84fvm5b7qnh17nndq8"))))
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
    (version "1.78.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OrderedList" version))
       (sha256
        (base32 "17k3zyn7pcwnzpscmcyvz2z97gc1y0sdn48kkrjhjn3s5gyfq74v"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OPWeight" version))
       (sha256
        (base32 "1z9j5glj8522f4ldixl40gx02rila171ksc136zddcyl7whz52bd"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "optimalFlowData" version
                              'experiment))
       (sha256
        (base32 "0rmx15jxp6qqi8vi9y5n419bb6dph5m75r71p9i11q01lqbk0i5b"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "optimalFlow" version))
       (sha256
        (base32 "07rws3yrqk6v7i7abq3gv55zhbnrncw6012g51p0n0k87klhwlsi"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oppti" version))
       (sha256
        (base32 "09cjf0vzgixklmppsf8r9hplq7m8njrw81yhgy07ygwk78mx0glq"))))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oppar" version))
       (sha256
        (base32 "1h7i524lmhddbhj99jyn7a1m352r8s39pqxyc0gl285vajag2r0d"))))
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
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oposSOM" version))
       (sha256
        (base32 "00m15lqyb1w84zbhg11imw2ji0adaflwimxdfrgnr7acjw5mic9x"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OpenStats" version))
       (sha256
        (base32 "0mzg67y0wbd11cqizqha5hx51kii6zj1sylwd39bli8yk22rz7h8"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "openPrimeR" version))
       (sha256
        (base32 "18axx1r9vfwy5mwb1cg5l2hpghqwlx50qgqgvhplkg5khg7388ns"))))
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
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ontoProc" version))
       (sha256
        (base32 "0vxya3p8gzb74z4jiniidibbhwcjpjpl4rarhgj40zj2fh25873r"))))
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
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "onlineFDR" version))
       (sha256
        (base32 "0kajxc6ggw61n6yfg6vfimqwkd1djp4bb5azd2a097mz1d5wyrmq"))))
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
    (version "4.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OncoSimulR" version))
       (sha256
        (base32 "09060zpc9wyj1wixdg7ibahyhhmqnc0k95crwq8djb1f94vafzl7"))))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OncoScore" version))
       (sha256
        (base32 "128a2vfgcvvqah7d90d023q874r65rg8bhvmiyvc26fp7sl8gjks"))))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oncoscanR" version))
       (sha256
        (base32 "0n7x3m52xigafl4hj3szl5p592c8j90snkyz9gvfg4xa150n6hmj"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oncomix" version))
       (sha256
        (base32 "1w311rrnvpx8fkvdyhjvjdcyfslwfah840ci9cq54m934rjxajgg"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OnassisJavaLibs" version
                              'experiment))
       (sha256
        (base32 "00pryisrs1cy6xw9lmwxqd87ybmmjasch764d8kfbn0dhzn5s2h1"))))
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
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omXplore" version))
       (sha256
        (base32 "13jns9k2gkf6gbs6ff9nfyc23mk8v7ni9ys245n6idfpzwixhpbi"))))
    (properties `((upstream-name . "omXplore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-vioplot
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-shinyjs
                             r-shinyjqui
                             r-shinybs
                             r-shiny
                             r-rcolorbrewer
                             r-psmatch
                             r-multiassayexperiment
                             r-msnbase
                             r-htmlwidgets
                             r-highcharter
                             r-gplots
                             r-factominer
                             r-factoextra
                             r-dt
                             r-dplyr
                             r-dendextend))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ompBAM" version))
       (sha256
        (base32 "124i599k1ikxhz3xlzlz82rikmfff6f0c73cldi8cgy6qsqkwwf1"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Omixer" version))
       (sha256
        (base32 "1s0kdf2hjjjwz77mcvk65y8vi9py2d8cbxxglkx1krvj2xb1j3zr"))))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omicsViewer" version))
       (sha256
        (base32 "06sf3h3ajzyp572fkc7nhc5cha6djsfk86jfbclbpyn7q1mkqfim"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omicsPrint" version))
       (sha256
        (base32 "0a7k75gylzmbrlzvafa4iv48krn239980x02jp32plm6vf0r3iac"))))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OMICsPCAdata" version
                              'experiment))
       (sha256
        (base32 "0dqjx33flfcx54qwag5767gqxq09imvy6rgc1qw5d07ms9idv20l"))))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OMICsPCA" version))
       (sha256
        (base32 "01rh5f6ajyjd9nzxs2b3ykwrvfsaz4yn30m24rdlaz3qiw4zqjsk"))))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OmicsMLRepoR" version))
       (sha256
        (base32 "0pvm7w1ca9mgamhad6rb16rm38xmcfxipnkj9xv0xskmzc7wg361"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omicRexposome" version))
       (sha256
        (base32 "18iagcd6ylqh6x6kc32m3lzhb0q164a7ylj8fhbjcn4h5qx04c70"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omicplotR" version))
       (sha256
        (base32 "08v57k5bdssz2p4bqxk62fg2wvaviflnzmsas4izzas4zagnabci"))))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OmicCircos" version))
       (sha256
        (base32 "0k56433qrlg3hd6kj7wpcapv2jpn0c1c5l924shlfpb7xbxhhq2r"))))
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
    (version "2.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OmaDB" version))
       (sha256
        (base32 "1sz14v1cnxcfrynpra53dmwk5va9h20z2bhsqx91kril2k6yiyjk"))))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "omada" version))
       (sha256
        (base32 "1zxhp0yikp27ni020m1i6h10wkczwq03szi88rkjz2zb24bm8gf3"))))
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
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OLINgui" version))
       (sha256
        (base32 "0vcvxck7qpb1n5r0qli0z50h32c0pffc2qny3fmsklff5xi4c059"))))
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
    (version "1.84.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OLIN" version))
       (sha256
        (base32 "1vmpvkdzdks649xws45s144xjqynf845wffldgzhydib6lkwjm5j"))))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OGRE" version))
       (sha256
        (base32 "1hwc1wgaigjg1cikja7fa1asd2119nhq61mc7jg687bli44j1wy8"))))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "odseq" version))
       (sha256
        (base32 "1z8zxjfyq3v0rb1p4m1jrl1x0lcjmchyl6a7g08cn4a5n7wkhdr0"))))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "octad.db" version
                              'experiment))
       (sha256
        (base32 "0n39hiwyrzpc7qmdak6s49fp7vypgixyh0li64gwgvqn7xawds29"))))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "octad" version))
       (sha256
        (base32 "1ns496avsxifmar9v3056gsxav3dlmdhmnzf4kclqlkkb78r21nb"))))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "oct4" version
                              'experiment))
       (sha256
        (base32 "1lh7cw5rjiv8l7f6g3nkk4h2390l8j5id1r42qw3b9mgz2dhhkc0"))))
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
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "OCplus" version))
       (sha256
        (base32 "13wl5zfxc6ls5m7x5v5dpi6f850x72pbixggyhklyg90440dzr2b"))))
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
    (version "1.66.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "occugene" version))
       (sha256
        (base32 "1igpk8prnczlfvmcypn5n619lw18bx2bhbqdjwdfsm11j95sgp07"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ObMiTi" version
                              'experiment))
       (sha256
        (base32 "194m049axyprmvxfc3f40p8vkkwqnh2kjc47ayqiplfhdihr94n5"))))
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

