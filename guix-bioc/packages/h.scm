(define-module (guix-bioc packages h)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages s)
  #:use-module (gnu packages web)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages compression)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages g)
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
  #:use-module (guix-bioc packages k)
  #:use-module (guix-bioc packages j)
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-hyper
  (package
    (name "r-hyper")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hypeR" version))
       (sha256
        (base32 "0qsz1fklbwlzlm6fk1xr27gv7ynvqgpzd3s8657pv79q2f7wkljf"))))
    (properties `((upstream-name . "hypeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-stringr
                             r-shiny
                             r-scales
                             r-rmarkdown
                             r-rlang
                             r-reshape2
                             r-reactable
                             r-r6
                             r-purrr
                             r-openxlsx
                             r-msigdbr
                             r-magrittr
                             r-kableextra
                             r-igraph
                             r-httr
                             r-htmltools
                             r-ggplot2
                             r-ggforce
                             r-dplyr
                             r-biocstyle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/montilab/hypeR")
    (synopsis "An R Package For Geneset Enrichment Workflows")
    (description "An R Package for Geneset Enrichment Workflows.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-hybridexpress
  (package
    (name "r-hybridexpress")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HybridExpress" version))
       (sha256
        (base32 "1cpvw6ycbh60wn39ws0l6hrgy9x97glb56f87sn2qg9li6hxjshh"))))
    (properties `((upstream-name . "HybridExpress")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-rlang
                             r-rcolorbrewer
                             r-patchwork
                             r-ggplot2
                             r-deseq2
                             r-complexheatmap
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/almeidasilvaf/HybridExpress")
    (synopsis
     "Comparative analysis of RNA-seq data for hybrids and their progenitors")
    (description
     "@code{HybridExpress} can be used to perform comparative transcriptomics analysis
of hybrids (or allopolyploids) relative to their progenitor species.  The
package features functions to perform exploratory analyses of sample grouping,
identify differentially expressed genes in hybrids relative to their
progenitors, classify genes in expression categories (N = 12) and classes (N =
5), and perform functional analyses.  We also provide users with graphical
functions for the seamless creation of publication-ready figures that are
commonly used in the literature.")
    (license license:gpl3)))

(define-public r-hwgcod-db
  (package
    (name "r-hwgcod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hwgcod.db" version
                              'annotation))
       (sha256
        (base32 "031y994csc2zfjp2qpki6mzqf4ybb849wn12gbdqphivvpccwm2b"))))
    (properties `((upstream-name . "hwgcod.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hwgcod.db")
    (synopsis
     "Codelink Human Whole Genome Bioarray (~55 000 human genes) annotation data (chip hwgcod)")
    (description
     "Codelink Human Whole Genome Bioarray (~55 000 human genes) annotation data (chip
hwgcod) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-huo22-db
  (package
    (name "r-huo22-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HuO22.db" version
                              'annotation))
       (sha256
        (base32 "159ml83s9r8kcb0phh2zalcmzacn6d5z7vq6bg5ygy9l85vkcqsf"))))
    (properties `((upstream-name . "HuO22.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/HuO22.db")
    (synopsis "FHCRC Genomics Shared Resource HuO22 Annotation Data (HuO22)")
    (description
     "FHCRC Genomics Shared Resource @code{HuO22} Annotation Data (@code{HuO22})
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hummingbird
  (package
    (name "r-hummingbird")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hummingbird" version))
       (sha256
        (base32 "1l8i7mhagysjxsnl4lhr31hi2v6xi4rxam5dhd24hrz8m867199p"))))
    (properties `((upstream-name . "hummingbird")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-rcpp r-iranges
                             r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hummingbird")
    (synopsis
     "Bayesian Hidden Markov Model for the detection of differentially methylated regions")
    (description
     "This package provides a package for detecting differential methylation.  It
exploits a Bayesian hidden Markov model that incorporates location dependence
among genomic loci, unlike most existing methods that assume independence among
observations.  Bayesian priors are applied to permit information sharing across
an entire chromosome for improved power of detection.  The direct output of our
software package is the best sequence of methylation states, eliminating the use
of a subjective, and most of the time an arbitrary, threshold of p-value for
determining significance.  At last, our methodology does not require replication
in either or both of the two comparison groups.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-humantranscriptomecompendium
  (package
    (name "r-humantranscriptomecompendium")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HumanTranscriptomeCompendium" version))
       (sha256
        (base32 "1y46zsl08k6sdih8psar85fyc5dfk2vraxmfry70zx57vbjbin92"))))
    (properties `((upstream-name . "HumanTranscriptomeCompendium")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-ssrch r-shiny
                             r-s4vectors r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page
     "https://bioconductor.org/packages/HumanTranscriptomeCompendium")
    (synopsis
     "Tools to work with a Compendium of 181000 human transcriptome sequencing studies")
    (description
     "Provide tools for working with a compendium of human transcriptome sequences
(originally htxcomp).")
    (license license:artistic2.0)))

(define-public r-humanstemcell
  (package
    (name "r-humanstemcell")
    (version "0.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "humanStemCell" version
                              'experiment))
       (sha256
        (base32 "0yr4z1j4xaxaby3ka9k6h5bshzn78ymp0ic0ycblbl6zzr0vzym2"))))
    (properties `((upstream-name . "humanStemCell")))
    (build-system r-build-system)
    (propagated-inputs (list r-hgu133plus2-db r-biobase))
    (home-page "https://bioconductor.org/packages/humanStemCell")
    (synopsis "Human Stem Cells time course experiment")
    (description
     "Affymetrix time course experiment on human stem cells (two time points:
undifferentiated and differentiated).")
    (license license:artistic2.0)))

(define-public r-humanomniexpress12v1bcrlmm
  (package
    (name "r-humanomniexpress12v1bcrlmm")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "humanomniexpress12v1bCrlmm" version
                              'annotation))
       (sha256
        (base32 "0kfx3yjq7mwg97m94sw7w26k0v4523sxjvp2g0p3fmrgqjm6xvf6"))))
    (properties `((upstream-name . "humanomniexpress12v1bCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/humanomniexpress12v1bCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina Omni Express 12 arrays using the
crlmm package.")
    (license license:artistic2.0)))

(define-public r-humanomni5quadv1bcrlmm
  (package
    (name "r-humanomni5quadv1bcrlmm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "humanomni5quadv1bCrlmm" version
                              'annotation))
       (sha256
        (base32 "1g4brwdvyxbdkd56i8iy4hhcs8ji82xqdk4wfyn8pkjbb5a183v9"))))
    (properties `((upstream-name . "humanomni5quadv1bCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/humanomni5quadv1bCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina Omni5 Quad arrays using the crlmm
package.")
    (license license:artistic2.0)))

(define-public r-humanomni25quadv1bcrlmm
  (package
    (name "r-humanomni25quadv1bcrlmm")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "humanomni25quadv1bCrlmm" version
                              'annotation))
       (sha256
        (base32 "1rhpqj9y57fxzbycyi8spwv0cfqrrsndzsi2lcnf4mfqwklq9hfh"))))
    (properties `((upstream-name . "humanomni25quadv1bCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/humanomni25quadv1bCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina Omni2.5 Quad arrays using the
crlmm package.")
    (license license:artistic2.0)))

(define-public r-humanomni1quadv1bcrlmm
  (package
    (name "r-humanomni1quadv1bcrlmm")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "humanomni1quadv1bCrlmm" version
                              'annotation))
       (sha256
        (base32 "1ahb2rbp9zgaaq7fr41ncd0nnrgpvkagg2ppjmn3kqv7ghjyaiq6"))))
    (properties `((upstream-name . "humanomni1quadv1bCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/humanomni1quadv1bCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina Omni1 Quad arrays using the crlmm
package.")
    (license license:artistic2.0)))

(define-public r-humancytosnp12v2p1hcrlmm
  (package
    (name "r-humancytosnp12v2p1hcrlmm")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "humancytosnp12v2p1hCrlmm" version
                              'annotation))
       (sha256
        (base32 "1b29yqsxj8w50zd2giwn1rnz65cd8npf5zgfwbssja36zibds82q"))))
    (properties `((upstream-name . "humancytosnp12v2p1hCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/humancytosnp12v2p1hCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina @code{CytoSNP} 12 arrays using the
crlmm package.")
    (license license:artistic2.0)))

(define-public r-humanchrloc
  (package
    (name "r-humanchrloc")
    (version "2.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "humanCHRLOC" version
                              'annotation))
       (sha256
        (base32 "1mxj7h8qjalax9hjxqydykldl3spavnpr5x9ar74784wabsllhgi"))))
    (properties `((upstream-name . "humanCHRLOC")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/humanCHRLOC")
    (synopsis "data package containing annotation data for humanCHRLOC")
    (description
     "Annotation data file for @code{humanCHRLOC} assembled using data from public
data repositories.")
    (license (license:fsdg-compatible "The Artistic License, Version 2.0"))))

(define-public r-humanaffydata
  (package
    (name "r-humanaffydata")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HumanAffyData" version
                              'experiment))
       (sha256
        (base32 "0jnikpd3djps3wp4vd3l9911jkzfm8h5pp0gv8l9bx5s2skkdrw1"))))
    (properties `((upstream-name . "HumanAffyData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub r-biobase))
    (home-page "https://bioconductor.org/packages/HumanAffyData")
    (synopsis
     "GEO accession GSE64985 and ArrayExpress accession E-MTAB-62 as ExpressionSet objects")
    (description
     "Re-analysis of human gene expression data generated on the Affymetrix
HG_U133@code{PlusV2} (EH176) and Affymetrix HG_U133A (EH177) platforms.  The
original data were normalized using robust multiarray averaging (RMA) to obtain
an integrated gene expression atlas across diverse biological sample types and
conditions.  The entire compendia comprisee 9395 arrays for EH176 and 5372
arrays for EH177.")
    (license license:artistic2.0)))

(define-public r-human660quadv1acrlmm
  (package
    (name "r-human660quadv1acrlmm")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human660quadv1aCrlmm" version
                              'annotation))
       (sha256
        (base32 "0gz9r08jdmc8zg9fpr8xs51krvbmi6g2ni7aaxq3yzzyv3ip04xx"))))
    (properties `((upstream-name . "human660quadv1aCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/human660quadv1aCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina 660@code{kQuad} arrays using the
crlmm package.")
    (license license:artistic2.0)))

(define-public r-human650v3acrlmm
  (package
    (name "r-human650v3acrlmm")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human650v3aCrlmm" version
                              'annotation))
       (sha256
        (base32 "05zpb18b5zcfpv9jhfjqq5la47cn7dwfr46dvph0z4hgxrj7qiwb"))))
    (properties `((upstream-name . "human650v3aCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/human650v3aCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina 650k arrays using the crlmm
package.")
    (license license:artistic2.0)))

(define-public r-human610quadv1bcrlmm
  (package
    (name "r-human610quadv1bcrlmm")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human610quadv1bCrlmm" version
                              'annotation))
       (sha256
        (base32 "0x8pvpzwhy46r8k9spb9vdanzwd3kcslib2aa97ziamm9rdgpnq4"))))
    (properties `((upstream-name . "human610quadv1bCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/human610quadv1bCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina 610@code{kQuad} arrays using the
crlmm package.")
    (license license:artistic2.0)))

(define-public r-human550v3bcrlmm
  (package
    (name "r-human550v3bcrlmm")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human550v3bCrlmm" version
                              'annotation))
       (sha256
        (base32 "01a7dchjdl5x3jy6q4f13vlpj5d5l0gn1rf7qpnqrsa33q7fkk0q"))))
    (properties `((upstream-name . "human550v3bCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/human550v3bCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina 550k arrays using the crlmm
package.")
    (license license:artistic2.0)))

(define-public r-human370v1ccrlmm
  (package
    (name "r-human370v1ccrlmm")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human370v1cCrlmm" version
                              'annotation))
       (sha256
        (base32 "1fhvgc6phhy8fqrl8bwjyskjl95bwlc08jyrkhsivml3ngbsfdf7"))))
    (properties `((upstream-name . "human370v1cCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/human370v1cCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina 370k arrays using the crlmm
package.")
    (license license:artistic2.0)))

(define-public r-human370quadv3ccrlmm
  (package
    (name "r-human370quadv3ccrlmm")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human370quadv3cCrlmm" version
                              'annotation))
       (sha256
        (base32 "1chjx9vsmqz2whslw1l7jn7nfn7zx6pcjfmqqm9mh81i74rzrdik"))))
    (properties `((upstream-name . "human370quadv3cCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/human370quadv3cCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina 370@code{kQuad} arrays using the
crlmm package.")
    (license license:artistic2.0)))

(define-public r-human1mv1ccrlmm
  (package
    (name "r-human1mv1ccrlmm")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human1mv1cCrlmm" version
                              'annotation))
       (sha256
        (base32 "1qlph3qrjv52ddzlj8pwa93zzh70x4mbdrdr7q9pan427lpck9gx"))))
    (properties `((upstream-name . "human1mv1cCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/human1mv1cCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata fast genotyping Illumina 1M arrays using the crlmm
package.")
    (license license:artistic2.0)))

(define-public r-human1mduov3bcrlmm
  (package
    (name "r-human1mduov3bcrlmm")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human1mduov3bCrlmm" version
                              'annotation))
       (sha256
        (base32 "1p7qpzk6svafgdafljhh4k0z7pcs78qmwwfd80r0a1yhkssmp0v9"))))
    (properties `((upstream-name . "human1mduov3bCrlmm")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/human1mduov3bCrlmm")
    (synopsis "Metadata for fast genotyping with the 'crlmm' package")
    (description
     "Package with metadata for genotyping Illumina 1M Duo arrays using the crlmm
package.")
    (license license:artistic2.0)))

(define-public r-human-db0
  (package
    (name "r-human-db0")
    (version "3.19.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "human.db0" version
                              'annotation))
       (sha256
        (base32 "006q28yvh8l5h7pa9qdhcvjd9049bzg1v5nnvphivwn186hv47ww"))))
    (properties `((upstream-name . "human.db0")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/human.db0")
    (synopsis "Base Level Annotation databases for human")
    (description
     "Base annotation databases for human, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-hugene21sttranscriptcluster-db
  (package
    (name "r-hugene21sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene21sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "1g7yfva96vhkdvcvsjwsj7sy8q6kczd5rmcwrwjc73v9qi4ywgal"))))
    (properties `((upstream-name . "hugene21sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/hugene21sttranscriptcluster.db")
    (synopsis
     "Affymetrix hugene21 annotation data (chip hugene21sttranscriptcluster)")
    (description
     "Affymetrix hugene21 annotation data (chip hugene21sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hugene21stprobeset-db
  (package
    (name "r-hugene21stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene21stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "0s4zl9lv5w3fkb9axhz9siliz73brwarw8a7cam1p9b2kmdrdqs0"))))
    (properties `((upstream-name . "hugene21stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hugene21stprobeset.db")
    (synopsis "Affymetrix hugene21 annotation data (chip hugene21stprobeset)")
    (description
     "Affymetrix hugene21 annotation data (chip hugene21stprobeset) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hugene20sttranscriptcluster-db
  (package
    (name "r-hugene20sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene20sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "00fjhz7gac0rssn3kplag68vfx7gimjrm4mc7z516bs013rppgsz"))))
    (properties `((upstream-name . "hugene20sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/hugene20sttranscriptcluster.db")
    (synopsis
     "Affymetrix hugene20 annotation data (chip hugene20sttranscriptcluster)")
    (description
     "Affymetrix hugene20 annotation data (chip hugene20sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hugene20stprobeset-db
  (package
    (name "r-hugene20stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene20stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "1g9frzx2m2q6b12f9af0hpb5hsjgiw1gy81w6vbsnbc41dw94kgr"))))
    (properties `((upstream-name . "hugene20stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hugene20stprobeset.db")
    (synopsis "Affymetrix hugene20 annotation data (chip hugene20stprobeset)")
    (description
     "Affymetrix hugene20 annotation data (chip hugene20stprobeset) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hugene11sttranscriptcluster-db
  (package
    (name "r-hugene11sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene11sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "0z26491y3fyqvgmhsd6lv1c360ym44fiar1wgffrq3s17zs67xwl"))))
    (properties `((upstream-name . "hugene11sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/hugene11sttranscriptcluster.db")
    (synopsis
     "Affymetrix hugene11 annotation data (chip hugene11sttranscriptcluster)")
    (description
     "Affymetrix hugene11 annotation data (chip hugene11sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hugene11stprobeset-db
  (package
    (name "r-hugene11stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene11stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "0ijf4i6ag1dmndzkw5mny1x1fmxr6imqw5nz1rrvqwk46q60nsg7"))))
    (properties `((upstream-name . "hugene11stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hugene11stprobeset.db")
    (synopsis "Affymetrix hugene11 annotation data (chip hugene11stprobeset)")
    (description
     "Affymetrix hugene11 annotation data (chip hugene11stprobeset) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hugene10stv1probe
  (package
    (name "r-hugene10stv1probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene10stv1probe" version
                              'annotation))
       (sha256
        (base32 "1cn6hdw1mj0i4f0syvx8g1r02bbki994y3s9hrdps3kvcbaw6brd"))))
    (properties `((upstream-name . "hugene10stv1probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hugene10stv1probe")
    (synopsis "Probe sequence data for microarrays of type hugene10stv1")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was @code{HuGene-1\\_0-st-v1\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-hugene10stv1cdf
  (package
    (name "r-hugene10stv1cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene10stv1cdf" version
                              'annotation))
       (sha256
        (base32 "1drsclrcf344z4m61qxd1a1lg2qrd2h7s3y6kk7xcy76s2mqjx2f"))))
    (properties `((upstream-name . "hugene10stv1cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hugene10stv1cdf")
    (synopsis "hugene10stv1cdf")
    (description
     "This package provides a package containing an environment representing the
@code{HuGene-1_0-st-v1.cdf} file.")
    (license license:lgpl2.0+)))

(define-public r-hugene10sttranscriptcluster-db
  (package
    (name "r-hugene10sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene10sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "13cv5038w8akkv5i3bh7fazym9h5x73fcm8l2jc2z4mgkk84skx0"))))
    (properties `((upstream-name . "hugene10sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/hugene10sttranscriptcluster.db")
    (synopsis
     "Affymetrix hugene10 annotation data (chip hugene10sttranscriptcluster)")
    (description
     "Affymetrix hugene10 annotation data (chip hugene10sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hugene10stprobeset-db
  (package
    (name "r-hugene10stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene10stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "05nbdvskilay0b7vp6pdqapkm5mzpw49zvzbbgab1kg93rbyrj2d"))))
    (properties `((upstream-name . "hugene10stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hugene10stprobeset.db")
    (synopsis "Affymetrix hugene10 annotation data (chip hugene10stprobeset)")
    (description
     "Affymetrix hugene10 annotation data (chip hugene10stprobeset) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hugene-1-0-st-v1frmavecs
  (package
    (name "r-hugene-1-0-st-v1frmavecs")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hugene.1.0.st.v1frmavecs" version
                              'annotation))
       (sha256
        (base32 "0jwk5mm37fil3h9h1hrc4bm3sxfdzywbmsqm1blvrvb5q6jgl50a"))))
    (properties `((upstream-name . "hugene.1.0.st.v1frmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hugene.1.0.st.v1frmavecs")
    (synopsis
     "Vectors used by frma for microarrays of type hugene.1.0.st.v1frmavecs")
    (description
     "This package was created by @code{frmaTools} version 1.13.0.")
    (license license:gpl2+)))

(define-public r-huexexonprobesetlocationhg19
  (package
    (name "r-huexexonprobesetlocationhg19")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HuExExonProbesetLocationHg19" version
                              'annotation))
       (sha256
        (base32 "0h240v2wc2c935bxws6xpha4c0hw89bm821w1c1digwhd04kbyxh"))))
    (properties `((upstream-name . "HuExExonProbesetLocationHg19")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/HuExExonProbesetLocationHg19")
    (synopsis
     "Exon-level probeset chromosome location for microarrays of type HuEx")
    (description
     "This package was automatically created by package @code{AnnotationDbi} version
1.11.8.  The exon-level probeset genome location was retrieved from Netaffx
using @code{AffyCompatible}.  The exon-level probeset genome location was
retrieved from Netaffx using @code{AffyCompatible}.  Genome release hg19.")
    (license license:lgpl2.0+)))

(define-public r-huexexonprobesetlocationhg18
  (package
    (name "r-huexexonprobesetlocationhg18")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HuExExonProbesetLocationHg18" version
                              'annotation))
       (sha256
        (base32 "14lbmcb0166rgv25d24g7kng5nvddynvmszfk5mq1yl1spbh7j9g"))))
    (properties `((upstream-name . "HuExExonProbesetLocationHg18")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/HuExExonProbesetLocationHg18")
    (synopsis
     "Exon-level probeset chromosome location for microarrays of type HuEx")
    (description
     "This package was automatically created by package @code{AnnotationDbi} version
1.8.0.  The exon-level probeset genome location was retrieved from Netaffx using
@code{AffyCompatible}.  The exon-level probeset genome location was retrieved
from Netaffx using @code{AffyCompatible}.  Genome release hg18.")
    (license license:lgpl2.0+)))

(define-public r-huexexonprobesetlocation
  (package
    (name "r-huexexonprobesetlocation")
    (version "1.15.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HuExExonProbesetLocation" version
                              'annotation))
       (sha256
        (base32 "0rpn9wh97gh9h795krfqnydxnliqnwgvp33xwqa4g8px3c34nmw1"))))
    (properties `((upstream-name . "HuExExonProbesetLocation")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/HuExExonProbesetLocation")
    (synopsis "Probe sequence data for microarrays of type HuEx")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.7.17.  The exon-level probeset genome location was retrieved from Netaffx
using @code{AffyCompatible}.")
    (license license:lgpl2.0+)))

(define-public r-huex10sttranscriptcluster-db
  (package
    (name "r-huex10sttranscriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "huex10sttranscriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "0pgns280jb77f0hajwqdbwhb78jd9cgi4d2sbk3dlva1iqnyr120"))))
    (properties `((upstream-name . "huex10sttranscriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/huex10sttranscriptcluster.db")
    (synopsis
     "Affymetrix huex10 annotation data (chip huex10sttranscriptcluster)")
    (description
     "Affymetrix huex10 annotation data (chip huex10sttranscriptcluster) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-huex10stprobeset-db
  (package
    (name "r-huex10stprobeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "huex10stprobeset.db" version
                              'annotation))
       (sha256
        (base32 "084g7h58n4nhj3hhzxw05sgzwm06gmg20r4qk7qdh5na5cw0klif"))))
    (properties `((upstream-name . "huex10stprobeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/huex10stprobeset.db")
    (synopsis "Affymetrix huex10 annotation data (chip huex10stprobeset)")
    (description
     "Affymetrix huex10 annotation data (chip huex10stprobeset) assembled using data
from public repositories.")
    (license license:artistic2.0)))

(define-public r-huex-1-0-st-v2frmavecs
  (package
    (name "r-huex-1-0-st-v2frmavecs")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "huex.1.0.st.v2frmavecs" version
                              'annotation))
       (sha256
        (base32 "0fnadflyg615v7w071jilg42w8w5fvnac7rm0wg33klvzx9c9knx"))))
    (properties `((upstream-name . "huex.1.0.st.v2frmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/huex.1.0.st.v2frmavecs")
    (synopsis "Vectors used by frma for microarrays of type huex.1.0.st.v2")
    (description "This package was created by @code{frmaTools} version 1.9.2.")
    (license license:gpl2+)))

(define-public r-hubpub
  (package
    (name "r-hubpub")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HubPub" version))
       (sha256
        (base32 "02xqw3xkhzk2fxx4l1h5gl5v0diamssr1dw9x871glxjl4kw07xm"))))
    (properties `((upstream-name . "HubPub")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-fs
                             r-dplyr
                             r-biocthis
                             r-biocmanager
                             r-aws-s3
                             r-available))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HubPub")
    (synopsis "Utilities to create and use Bioconductor Hubs")
    (description
     "@code{HubPub} provides users with functionality to help with the Bioconductor
Hub structures.  The package provides the ability to create a skeleton of a Hub
style package that the user can then populate with the necessary information.
There are also functions to help add resources to the Hub package metadata files
as well as publish data to the Bioconductor S3 bucket.")
    (license license:artistic2.0)))

(define-public r-hu6800subdcdf
  (package
    (name "r-hu6800subdcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu6800subdcdf" version
                              'annotation))
       (sha256
        (base32 "1caiyyna5ffnnx85h9f62h2fwd42wwi187g9igspcy8mn2hakpfw"))))
    (properties `((upstream-name . "hu6800subdcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu6800subdcdf")
    (synopsis "hu6800subdcdf")
    (description
     "This package provides a package containing an environment representing the
Hu6800@code{subD.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-hu6800subccdf
  (package
    (name "r-hu6800subccdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu6800subccdf" version
                              'annotation))
       (sha256
        (base32 "1xir2k62whqf39g7g5rm646nz6hxq83nldrrc3cyzch85723a55p"))))
    (properties `((upstream-name . "hu6800subccdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu6800subccdf")
    (synopsis "hu6800subccdf")
    (description
     "This package provides a package containing an environment representing the
Hu6800@code{subC.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-hu6800subbcdf
  (package
    (name "r-hu6800subbcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu6800subbcdf" version
                              'annotation))
       (sha256
        (base32 "1bqgcp17pj3r78n6lqr307r1snxb3vxpmr7h64qbq8jmwrlxgs60"))))
    (properties `((upstream-name . "hu6800subbcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu6800subbcdf")
    (synopsis "hu6800subbcdf")
    (description
     "This package provides a package containing an environment representing the
Hu6800@code{subB.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-hu6800subacdf
  (package
    (name "r-hu6800subacdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu6800subacdf" version
                              'annotation))
       (sha256
        (base32 "0ckywgdz9n9xz162jw6phj3qwdkiwjb4ya86a3imgb71k3w181wz"))))
    (properties `((upstream-name . "hu6800subacdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu6800subacdf")
    (synopsis "hu6800subacdf")
    (description
     "This package provides a package containing an environment representing the
Hu6800@code{subA.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-hu6800probe
  (package
    (name "r-hu6800probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu6800probe" version
                              'annotation))
       (sha256
        (base32 "1fnkwifpzv0rkb9f5b789f2r5vvz9riwiip5wmyanw2gzdyc2vr0"))))
    (properties `((upstream-name . "hu6800probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu6800probe")
    (synopsis "Probe sequence data for microarrays of type hu6800")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Hu6800\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hu6800cdf
  (package
    (name "r-hu6800cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu6800cdf" version
                              'annotation))
       (sha256
        (base32 "1anddmc7j8x79nrglzmyzdvpwhy8aq6b87hqh7gr40g3d6hxjg06"))))
    (properties `((upstream-name . "hu6800cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu6800cdf")
    (synopsis "hu6800cdf")
    (description
     "This package provides a package containing an environment representing the
Hu6800.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hu6800-db
  (package
    (name "r-hu6800-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu6800.db" version
                              'annotation))
       (sha256
        (base32 "0pha36khlag2bawj917wayc2h9n7gkw1hlk54rxsi2w02riq1rwh"))))
    (properties `((upstream-name . "hu6800.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu6800.db")
    (synopsis
     "Affymetrix Affymetrix Hu6800 Array annotation data (chip hu6800)")
    (description
     "Affymetrix Affymetrix Hu6800 Array annotation data (chip hu6800) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hu35ksubdprobe
  (package
    (name "r-hu35ksubdprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubdprobe" version
                              'annotation))
       (sha256
        (base32 "1vivxdpg6wn29jwfnw7brcqav1xbr62llqk13dgj10x0gvjmv26w"))))
    (properties `((upstream-name . "hu35ksubdprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubdprobe")
    (synopsis "Probe sequence data for microarrays of type hu35ksubd")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Hu35@code{KsubD\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-hu35ksubdcdf
  (package
    (name "r-hu35ksubdcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubdcdf" version
                              'annotation))
       (sha256
        (base32 "1ws1mfgi1bndlwhr049bssj6cmd819klp1vwnqppklggs081y22v"))))
    (properties `((upstream-name . "hu35ksubdcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubdcdf")
    (synopsis "hu35ksubdcdf")
    (description
     "This package provides a package containing an environment representing the
Hu35@code{KsubD.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-hu35ksubd-db
  (package
    (name "r-hu35ksubd-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubd.db" version
                              'annotation))
       (sha256
        (base32 "0bqhhh8wirh0crkqfd0vgrlphbwyxswa55r9jxc3s294f8r1achb"))))
    (properties `((upstream-name . "hu35ksubd.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubd.db")
    (synopsis
     "Affymetrix Affymetrix Hu35KsubD Array annotation data (chip hu35ksubd)")
    (description
     "Affymetrix Affymetrix Hu35@code{KsubD} Array annotation data (chip hu35ksubd)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hu35ksubcprobe
  (package
    (name "r-hu35ksubcprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubcprobe" version
                              'annotation))
       (sha256
        (base32 "1s22447qznyrlwpa98wric7xv2aj1qchd5wgq1zgwhg3gcj9lvmb"))))
    (properties `((upstream-name . "hu35ksubcprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubcprobe")
    (synopsis "Probe sequence data for microarrays of type hu35ksubc")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Hu35@code{KsubC\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-hu35ksubccdf
  (package
    (name "r-hu35ksubccdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubccdf" version
                              'annotation))
       (sha256
        (base32 "0fycaw7sngcj50qh8vw594g7i0fw9nmfh1lw72bc3i8jd5y08npi"))))
    (properties `((upstream-name . "hu35ksubccdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubccdf")
    (synopsis "hu35ksubccdf")
    (description
     "This package provides a package containing an environment representing the
Hu35@code{KsubC.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-hu35ksubc-db
  (package
    (name "r-hu35ksubc-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubc.db" version
                              'annotation))
       (sha256
        (base32 "0srgzxhlcb902qj2pc8bc9yj5gw2brip35dhrq66cqmw3k1npp6n"))))
    (properties `((upstream-name . "hu35ksubc.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubc.db")
    (synopsis
     "Affymetrix Affymetrix Hu35KsubC Array annotation data (chip hu35ksubc)")
    (description
     "Affymetrix Affymetrix Hu35@code{KsubC} Array annotation data (chip hu35ksubc)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hu35ksubbprobe
  (package
    (name "r-hu35ksubbprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubbprobe" version
                              'annotation))
       (sha256
        (base32 "0wml8g7nizljjfxq6xbbld3b2lsl1p8rzdmdqg5h81ncg7xhxy7c"))))
    (properties `((upstream-name . "hu35ksubbprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubbprobe")
    (synopsis "Probe sequence data for microarrays of type hu35ksubb")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Hu35@code{KsubB\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-hu35ksubbcdf
  (package
    (name "r-hu35ksubbcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubbcdf" version
                              'annotation))
       (sha256
        (base32 "0anzhbn7ad5yv3qd4vwxaag809yb9saqwx6575iwc9ha5w8hwv2m"))))
    (properties `((upstream-name . "hu35ksubbcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubbcdf")
    (synopsis "hu35ksubbcdf")
    (description
     "This package provides a package containing an environment representing the
Hu35@code{KsubB.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-hu35ksubb-db
  (package
    (name "r-hu35ksubb-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubb.db" version
                              'annotation))
       (sha256
        (base32 "0qzgfjwfch58hslm7agz5jv2abga8xj74yk6pm5xn0z6xv7ivagw"))))
    (properties `((upstream-name . "hu35ksubb.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubb.db")
    (synopsis
     "Affymetrix Affymetrix Hu35KsubB Array annotation data (chip hu35ksubb)")
    (description
     "Affymetrix Affymetrix Hu35@code{KsubB} Array annotation data (chip hu35ksubb)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hu35ksubaprobe
  (package
    (name "r-hu35ksubaprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubaprobe" version
                              'annotation))
       (sha256
        (base32 "0dnsch3wdcgffbg1ypnnmsxlrclk9wji11skcs1gih2f7wi4pk05"))))
    (properties `((upstream-name . "hu35ksubaprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubaprobe")
    (synopsis "Probe sequence data for microarrays of type hu35ksuba")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Hu35@code{KsubA\\_probe\\_tab}.")
    (license license:lgpl2.0+)))

(define-public r-hu35ksubacdf
  (package
    (name "r-hu35ksubacdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksubacdf" version
                              'annotation))
       (sha256
        (base32 "1aw41anp99r0m0c54yibvh3nzswi5wnqv9z7dwi5396sd5sniy81"))))
    (properties `((upstream-name . "hu35ksubacdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksubacdf")
    (synopsis "hu35ksubacdf")
    (description
     "This package provides a package containing an environment representing the
Hu35@code{KsubA.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-hu35ksuba-db
  (package
    (name "r-hu35ksuba-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hu35ksuba.db" version
                              'annotation))
       (sha256
        (base32 "0j2g9c7pvp5dl81rhfpafc1rfx5x4q8yh8r4zcwskmwcxr5ij6c3"))))
    (properties `((upstream-name . "hu35ksuba.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hu35ksuba.db")
    (synopsis
     "Affymetrix Affymetrix Hu35KsubA Array annotation data (chip hu35ksuba)")
    (description
     "Affymetrix Affymetrix Hu35@code{KsubA} Array annotation data (chip hu35ksuba)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-htsfilter
  (package
    (name "r-htsfilter")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HTSFilter" version))
       (sha256
        (base32 "11pqfg2msdxi57326slgp73j4dshj5r730sv1x0n9f7fd2187his"))))
    (properties `((upstream-name . "HTSFilter")))
    (build-system r-build-system)
    (propagated-inputs (list r-edger r-deseq2 r-biocparallel r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HTSFilter")
    (synopsis
     "Filter replicated high-throughput transcriptome sequencing data")
    (description
     "This package implements a filtering procedure for replicated transcriptome
sequencing data based on a global Jaccard similarity index in order to identify
genes with low, constant levels of expression across one or more experimental
conditions.")
    (license license:artistic2.0)))

(define-public r-htseqgenie
  (package
    (name "r-htseqgenie")
    (version "4.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HTSeqGenie" version))
       (sha256
        (base32 "1np04hiijz9jdxvlg1mk74w19ma32qrdjb9bc5cscrs1lgw78idh"))))
    (properties `((upstream-name . "HTSeqGenie")))
    (build-system r-build-system)
    (propagated-inputs (list r-varianttools
                             r-variantannotation
                             r-summarizedexperiment
                             r-shortread
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-pwalign
                             r-iranges
                             r-hwriter
                             r-gmapr
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-chipseq
                             r-cairo
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/HTSeqGenie")
    (synopsis "NGS analysis pipeline.")
    (description "Libraries to perform NGS analysis.")
    (license license:artistic2.0)))

(define-public r-htratfocusprobe
  (package
    (name "r-htratfocusprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htratfocusprobe" version
                              'annotation))
       (sha256
        (base32 "1yxpb9pq4gbmq8s6szlbnc70ngqgi5gwqxx3far673gm5czdlfzi"))))
    (properties `((upstream-name . "htratfocusprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htratfocusprobe")
    (synopsis "Probe sequence data for microarrays of type htratfocus")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HT\\_Rat-Focus\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-htratfocuscdf
  (package
    (name "r-htratfocuscdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htratfocuscdf" version
                              'annotation))
       (sha256
        (base32 "0jqn7y17sjn2cg8lidsbyzwpjygjs553gaw72g6v2kxj7j0fhfx9"))))
    (properties `((upstream-name . "htratfocuscdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htratfocuscdf")
    (synopsis "htratfocuscdf")
    (description
     "This package provides a package containing an environment representing the
HT_Rat-Focus.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-htratfocus-db
  (package
    (name "r-htratfocus-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htratfocus.db" version
                              'annotation))
       (sha256
        (base32 "0b7qfdp9mdqgphs7j3vh1xbyw2zkw8and9q4mmj2yd2kdkm23r79"))))
    (properties `((upstream-name . "htratfocus.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htratfocus.db")
    (synopsis
     "Affymetrix Affymetrix HT_Rat-Focus Array annotation data (chip htratfocus)")
    (description
     "Affymetrix Affymetrix HT_Rat-Focus Array annotation data (chip htratfocus)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-htrat230pmprobe
  (package
    (name "r-htrat230pmprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htrat230pmprobe" version
                              'annotation))
       (sha256
        (base32 "0xpyj6c8j4icx25yk570b4gnfqz8zrsp8wlsw8424xvkviz0wv4y"))))
    (properties `((upstream-name . "htrat230pmprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htrat230pmprobe")
    (synopsis "Probe sequence data for microarrays of type htrat230pm")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HT\\_Rat230\\_PM\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-htrat230pmcdf
  (package
    (name "r-htrat230pmcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htrat230pmcdf" version
                              'annotation))
       (sha256
        (base32 "0b0gwa32as2l5m951y01dk8i16yl995221dg7ycq97kq4jb5dmdx"))))
    (properties `((upstream-name . "htrat230pmcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htrat230pmcdf")
    (synopsis "htrat230pmcdf")
    (description
     "This package provides a package containing an environment representing the
HT_Rat230_PM.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-htrat230pm-db
  (package
    (name "r-htrat230pm-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htrat230pm.db" version
                              'annotation))
       (sha256
        (base32 "17v7irq01lxb1gl16mx2syyqvan10fjzsl4712l47khiscyi8jxk"))))
    (properties `((upstream-name . "htrat230pm.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-rn-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htrat230pm.db")
    (synopsis
     "Affymetrix Affymetrix HT_Rat230_PM Array annotation data (chip htrat230pm)")
    (description
     "Affymetrix Affymetrix HT_Rat230_PM Array annotation data (chip htrat230pm)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-htmg430pmprobe
  (package
    (name "r-htmg430pmprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430pmprobe" version
                              'annotation))
       (sha256
        (base32 "02cg12fnn3nbgra7f2lwabi750ws943372p5xc78bjxf9ypql4i5"))))
    (properties `((upstream-name . "htmg430pmprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430pmprobe")
    (synopsis "Probe sequence data for microarrays of type htmg430pm")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HT\\_MG-430\\_PM\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-htmg430pmcdf
  (package
    (name "r-htmg430pmcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430pmcdf" version
                              'annotation))
       (sha256
        (base32 "1ayd1xarlwh7jm3dmaq9j49z4fi2qsrz48jy37xfg9q1wwawvwyw"))))
    (properties `((upstream-name . "htmg430pmcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430pmcdf")
    (synopsis "htmg430pmcdf")
    (description
     "This package provides a package containing an environment representing the
HT_MG-430_PM.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-htmg430pm-db
  (package
    (name "r-htmg430pm-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430pm.db" version
                              'annotation))
       (sha256
        (base32 "0q1dczr4kcq15v63r4mbap5cxc79l5k76rggh28g623dp215l0cx"))))
    (properties `((upstream-name . "htmg430pm.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430pm.db")
    (synopsis
     "Affymetrix Affymetrix HT_MG-430_PM Array annotation data (chip htmg430pm)")
    (description
     "Affymetrix Affymetrix HT_MG-430_PM Array annotation data (chip htmg430pm)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-htmg430bprobe
  (package
    (name "r-htmg430bprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430bprobe" version
                              'annotation))
       (sha256
        (base32 "1qaw0213fvpn222hnpbm6hgi2cc69sv6bl72y3h85f50sl4rf8i9"))))
    (properties `((upstream-name . "htmg430bprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430bprobe")
    (synopsis "Probe sequence data for microarrays of type htmg430b")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HT\\_MG-430B\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-htmg430bcdf
  (package
    (name "r-htmg430bcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430bcdf" version
                              'annotation))
       (sha256
        (base32 "1a0r50z47sb8dyq0x43nibh3whq1gi3nggphybwmrd70nr2y09zh"))))
    (properties `((upstream-name . "htmg430bcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430bcdf")
    (synopsis "htmg430bcdf")
    (description
     "This package provides a package containing an environment representing the
HT_MG-430B.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-htmg430b-db
  (package
    (name "r-htmg430b-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430b.db" version
                              'annotation))
       (sha256
        (base32 "1iyvqnw3aqjnik3jmw7cn83czyny832xh3jfvgffmi305rydk5i5"))))
    (properties `((upstream-name . "htmg430b.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430b.db")
    (synopsis
     "Affymetrix Affymetrix HT_MG-430B Array annotation data (chip htmg430b)")
    (description
     "Affymetrix Affymetrix HT_MG-430B Array annotation data (chip htmg430b) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-htmg430aprobe
  (package
    (name "r-htmg430aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430aprobe" version
                              'annotation))
       (sha256
        (base32 "1alhk7h7a8d49plgaxw95nffwga51asrgwzf4zj52al8brymays8"))))
    (properties `((upstream-name . "htmg430aprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430aprobe")
    (synopsis "Probe sequence data for microarrays of type htmg430a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HT\\_MG-430A\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-htmg430acdf
  (package
    (name "r-htmg430acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430acdf" version
                              'annotation))
       (sha256
        (base32 "1m854lnr82gyx8hbbd5h66s46jh41s7mp1ymjm9fh32jw2pak1i9"))))
    (properties `((upstream-name . "htmg430acdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430acdf")
    (synopsis "htmg430acdf")
    (description
     "This package provides a package containing an environment representing the
HT_MG-430A.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-htmg430a-db
  (package
    (name "r-htmg430a-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "htmg430a.db" version
                              'annotation))
       (sha256
        (base32 "0lsaplzk1myhsdsagsbql4q95yhli3myhhczlzn415pqvx7ykmnj"))))
    (properties `((upstream-name . "htmg430a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-mm-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/htmg430a.db")
    (synopsis
     "Affymetrix Affymetrix HT_MG-430A Array annotation data (chip htmg430a)")
    (description
     "Affymetrix Affymetrix HT_MG-430A Array annotation data (chip htmg430a) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hthgu133pluspmprobe
  (package
    (name "r-hthgu133pluspmprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133pluspmprobe" version
                              'annotation))
       (sha256
        (base32 "0ifgrw6b5cr4fj88n4r0skzw6vj4c88bjlahjbik4jfi738qwqp7"))))
    (properties `((upstream-name . "hthgu133pluspmprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133pluspmprobe")
    (synopsis "Probe sequence data for microarrays of type hthgu133pluspm")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HT\\_HG-U133\\_Plus\\_PM\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hthgu133pluspmcdf
  (package
    (name "r-hthgu133pluspmcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133pluspmcdf" version
                              'annotation))
       (sha256
        (base32 "0bslylkmgrq9v1giz87kcikmxbs8yawpylxi0s1n6q4rcc2yg61y"))))
    (properties `((upstream-name . "hthgu133pluspmcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133pluspmcdf")
    (synopsis "hthgu133pluspmcdf")
    (description
     "This package provides a package containing an environment representing the
HT_HG-U133_Plus_PM.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hthgu133pluspm-db
  (package
    (name "r-hthgu133pluspm-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133pluspm.db" version
                              'annotation))
       (sha256
        (base32 "1g11zfvh7l8qmgdpsdbvbn83zqz37g4fiz5yllqa26jpr23a708z"))))
    (properties `((upstream-name . "hthgu133pluspm.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133pluspm.db")
    (synopsis
     "Affymetrix Affymetrix HT_HG-U133_Plus_PM Array annotation data (chip hthgu133pluspm)")
    (description
     "Affymetrix Affymetrix HT_HG-U133_Plus_PM Array annotation data (chip
hthgu133pluspm) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hthgu133plusb-db
  (package
    (name "r-hthgu133plusb-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133plusb.db" version
                              'annotation))
       (sha256
        (base32 "0hkfsdjpzbki8jc16bhvqspyg9dzi89shs14lz67d0id504iirrm"))))
    (properties `((upstream-name . "hthgu133plusb.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133plusb.db")
    (synopsis
     "Affymetrix Affymetrix HT_HG-U133_Plus_B Array annotation data (chip hthgu133plusb)")
    (description
     "Affymetrix Affymetrix HT_HG-U133_Plus_B Array annotation data (chip
hthgu133plusb) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hthgu133plusa-db
  (package
    (name "r-hthgu133plusa-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133plusa.db" version
                              'annotation))
       (sha256
        (base32 "0jym9djj7mm0smgk1sibkvf0xch06hlhpyqmwji24hl7b9flb7vd"))))
    (properties `((upstream-name . "hthgu133plusa.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133plusa.db")
    (synopsis
     "Affymetrix Affymetrix HT_HG-U133_Plus_A Array annotation data (chip hthgu133plusa)")
    (description
     "Affymetrix Affymetrix HT_HG-U133_Plus_A Array annotation data (chip
hthgu133plusa) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hthgu133bprobe
  (package
    (name "r-hthgu133bprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133bprobe" version
                              'annotation))
       (sha256
        (base32 "1cqv6zwdxgc27x1h6y6lqzdysx40bbiy1ywcxky4yc611l1lxbv5"))))
    (properties `((upstream-name . "hthgu133bprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133bprobe")
    (synopsis "Probe sequence data for microarrays of type hthgu133b")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HT\\_HG-U133B\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hthgu133bcdf
  (package
    (name "r-hthgu133bcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133bcdf" version
                              'annotation))
       (sha256
        (base32 "0v12g1xsmycxhapzl6i5m7jq683k05y9yaq1asxvwls0viph6dv0"))))
    (properties `((upstream-name . "hthgu133bcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133bcdf")
    (synopsis "hthgu133bcdf")
    (description
     "This package provides a package containing an environment representing the
HT_HG-U133B.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hthgu133b-db
  (package
    (name "r-hthgu133b-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133b.db" version
                              'annotation))
       (sha256
        (base32 "0c2ad1zkcl07sxg8i0bfvnmmsff01g2p818jdd6ia5j4zznsdprd"))))
    (properties `((upstream-name . "hthgu133b.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133b.db")
    (synopsis
     "Affymetrix Affymetrix HT_HG-U133B Array annotation data (chip hthgu133b)")
    (description
     "Affymetrix Affymetrix HT_HG-U133B Array annotation data (chip hthgu133b)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hthgu133aprobe
  (package
    (name "r-hthgu133aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133aprobe" version
                              'annotation))
       (sha256
        (base32 "0fanrxa21h961zsgzjrv4mzv8psd3h9sjxrzr126ca8qfqghvkc3"))))
    (properties `((upstream-name . "hthgu133aprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133aprobe")
    (synopsis "Probe sequence data for microarrays of type hthgu133a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HT\\_HG-U133A\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hthgu133afrmavecs
  (package
    (name "r-hthgu133afrmavecs")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133afrmavecs" version
                              'annotation))
       (sha256
        (base32 "0466xgi67r5rpp7cs06ib0cr6vvx8d881g5l96b8sh9948pbn4ss"))))
    (properties `((upstream-name . "hthgu133afrmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hthgu133afrmavecs")
    (synopsis "Vectors used by frma for microarrays of type hthgu133a")
    (description
     "This package was created by @code{frmaTools} version 1.19.3 and
hgu133ahsentrezgcdf version 19.0.0.")
    (license license:gpl2+)))

(define-public r-hthgu133acdf
  (package
    (name "r-hthgu133acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133acdf" version
                              'annotation))
       (sha256
        (base32 "1a5b421lx0nxy3mrrxjxifwjpnv289c5q2a89xhnkwlcfhqlzqrp"))))
    (properties `((upstream-name . "hthgu133acdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133acdf")
    (synopsis "hthgu133acdf")
    (description
     "This package provides a package containing an environment representing the
HT_HG-U133A.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hthgu133a-db
  (package
    (name "r-hthgu133a-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hthgu133a.db" version
                              'annotation))
       (sha256
        (base32 "1har3d5d92lpryaqfbwbpiwrlw31kbh4h6z0f7qpgcjijipl13i1"))))
    (properties `((upstream-name . "hthgu133a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hthgu133a.db")
    (synopsis
     "Affymetrix Affymetrix HT_HG-U133A Array annotation data (chip hthgu133a)")
    (description
     "Affymetrix Affymetrix HT_HG-U133A Array annotation data (chip hthgu133a)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hta20transcriptcluster-db
  (package
    (name "r-hta20transcriptcluster-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hta20transcriptcluster.db" version
                              'annotation))
       (sha256
        (base32 "0bx90ypbmvxs0gli4466alyr6vxlnq59wi0jqcqh8afl62whls3h"))))
    (properties `((upstream-name . "hta20transcriptcluster.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hta20transcriptcluster.db")
    (synopsis "Affymetrix hta20 annotation data (chip hta20transcriptcluster)")
    (description
     "Affymetrix hta20 annotation data (chip hta20transcriptcluster) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hta20probeset-db
  (package
    (name "r-hta20probeset-db")
    (version "8.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hta20probeset.db" version
                              'annotation))
       (sha256
        (base32 "00pqpqkjmkma9blbzhbmj98h18g46h75q2r2d2li7jhgns7b0pc3"))))
    (properties `((upstream-name . "hta20probeset.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hta20probeset.db")
    (synopsis "Affymetrix hta20 annotation data (chip hta20probeset)")
    (description
     "Affymetrix hta20 annotation data (chip hta20probeset) assembled using data from
public repositories.")
    (license license:artistic2.0)))

(define-public r-hspeccdf
  (package
    (name "r-hspeccdf")
    (version "0.99.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hspeccdf" version
                              'annotation))
       (sha256
        (base32 "07azl9zpg552ic7li14p6n09ba3jbqqclwffjfpd2vc249x0n4fw"))))
    (properties `((upstream-name . "hspeccdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hspeccdf")
    (synopsis "hspeccdf")
    (description
     "This package provides a package containing an environment representing the
HGU133Plus2_Hs_Hspec.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hspec
  (package
    (name "r-hspec")
    (version "0.99.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Hspec" version
                              'annotation))
       (sha256
        (base32 "18paxil1976g7c7zyh02wxqj55ndbnshl27z0jhlzc2dwzagx7mb"))))
    (properties `((upstream-name . "Hspec")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Hspec")
    (synopsis "Hspec")
    (description
     "This package provides a package containing an environment representing the
HGU133Plus2_Hs_Hspec.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hsagilentdesign026652-db
  (package
    (name "r-hsagilentdesign026652-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HsAgilentDesign026652.db" version
                              'annotation))
       (sha256
        (base32 "0x6nxvzmc8k4qp382ca32y58awkxpg0b3kc7m1mz9iag6sq7c5vx"))))
    (properties `((upstream-name . "HsAgilentDesign026652.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/HsAgilentDesign026652.db")
    (synopsis
     "Agilent Chips that use Agilent design number 026652 annotation data (chip HsAgilentDesign026652)")
    (description
     "Agilent Chips that use Agilent design number 026652 annotation data (chip
@code{HsAgilentDesign026652}) assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hs6ug171-db
  (package
    (name "r-hs6ug171-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Hs6UG171.db" version
                              'annotation))
       (sha256
        (base32 "034aady3hy8j9bm7pbl8l8h0gcfnzmpyxg9l9s1ky0pj7ryzr93a"))))
    (properties `((upstream-name . "Hs6UG171.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/Hs6UG171.db")
    (synopsis "package containing metadata for Hs6UG171 arrays")
    (description
     "This package provides a package containing metadata for Hs6UG171 arrays
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hs25kresogen-db
  (package
    (name "r-hs25kresogen-db")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hs25kresogen.db" version
                              'annotation))
       (sha256
        (base32 "1yp25ifm3bwzkzm8vimlxw5slini7drhvmh5ggh0z80sfrjyndyf"))))
    (properties `((upstream-name . "hs25kresogen.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hs25kresogen.db")
    (synopsis
     "RNG_MRC Human Pangenomic 25k Set annotation data (chip hs25kresogen)")
    (description
     "RNG_MRC Human Pangenomic 25k Set annotation data (chip hs25kresogen) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hpip
  (package
    (name "r-hpip")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HPiP" version))
       (sha256
        (base32 "1kjsa8q70zvmjqcvrpcijf7w6c5k21ysdd8pd8zsxwkvck174gih"))))
    (properties `((upstream-name . "HPiP")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-readr
                             r-purrr
                             r-prroc
                             r-protr
                             r-proc
                             r-mcl
                             r-magrittr
                             r-igraph
                             r-httr
                             r-ggplot2
                             r-dplyr
                             r-corrplot
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mrbakhsh/HPiP")
    (synopsis "Host-Pathogen Interaction Prediction")
    (description
     "H@code{PiP} (Host-Pathogen Interaction Prediction) uses an ensemble learning
algorithm for prediction of host-pathogen protein-protein interactions (HP-PPIs)
using structural and physicochemical descriptors computed from amino
acid-composition of host and pathogen proteins.The proposed package can
effectively address data shortages and data unavailability for HP-PPI network
reconstructions.  Moreover, establishing computational frameworks in that regard
will reveal mechanistic insights into infectious diseases and suggest potential
HP-PPI targets, thus narrowing down the range of possible candidates for
subsequent wet-lab experimental validations.")
    (license license:expat)))

(define-public r-hpannot
  (package
    (name "r-hpannot")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hpAnnot" version
                              'annotation))
       (sha256
        (base32 "1rnvmwyjq6vd6bh8a8y8gsw07kd4184h1a02i6aapp0szfghq9bp"))))
    (properties `((upstream-name . "hpAnnot")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hpAnnot")
    (synopsis "Anotation package for Hipathia package")
    (description
     "Package containing example and annotation data for Hipathia package.  Hipathia
is a method for the computation of signal transduction along signaling pathways
from transcriptomic data.  The method is based on an iterative algorithm which
is able to compute the signal intensity passing through the nodes of a network
by taking into account the level of expression of each gene and the intensity of
the signal arriving to it.  It also provides a new approach to functional
analysis allowing to compute the signal arriving to the functions annotated to
each pathway.  Hipathia depends on this package to be functional.")
    (license license:gpl2)))

(define-public r-hpaanalyze
  (package
    (name "r-hpaanalyze")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HPAanalyze" version))
       (sha256
        (base32 "1cm88rg43mwi6qqp0p48698z89niygy8zr0g1fk0s6cd5z2i6qpy"))))
    (properties `((upstream-name . "HPAanalyze")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-openxlsx
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/anhtr/HPAanalyze")
    (synopsis "Retrieve and analyze data from the Human Protein Atlas")
    (description
     "Provide functions for retrieving, exploratory analyzing and visualizing the
Human Protein Atlas data.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-hopach
  (package
    (name "r-hopach")
    (version "2.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hopach" version))
       (sha256
        (base32 "0i0p73arx8fyxq76plvpk61hpmwbmwm62ninkmx1dlbr2jzvzysx"))))
    (properties `((upstream-name . "hopach")))
    (build-system r-build-system)
    (propagated-inputs (list r-cluster r-biocgenerics r-biobase))
    (home-page "http://www.stat.berkeley.edu/~laan/")
    (synopsis
     "Hierarchical Ordered Partitioning and Collapsing Hybrid (HOPACH)")
    (description
     "The HOPACH clustering algorithm builds a hierarchical tree of clusters by
recursively partitioning a data set, while ordering and possibly collapsing
clusters at each level.  The algorithm uses the Mean/Median Split Silhouette
(MSS) criteria to identify the level of the tree with maximally homogeneous
clusters.  It also runs the tree down to produce a final ordered list of the
elements.  The non-parametric bootstrap allows one to estimate the probability
that each element belongs to each cluster (fuzzy clustering).")
    (license license:gpl2+)))

(define-public r-hoodscanr
  (package
    (name "r-hoodscanr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hoodscanR" version))
       (sha256
        (base32 "1dqmj5nisrndkldsa2qhy50a2bckvvyf96hcya6yqcvz6hb3w7d0"))))
    (properties `((upstream-name . "hoodscanR")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-scico
                             r-rmarkdown
                             r-rlang
                             r-rcpp
                             r-rann
                             r-knitr
                             r-ggplot2
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DavisLaboratory/hoodscanR")
    (synopsis "Spatial cellular neighbourhood scanning in R")
    (description
     "@code{hoodscanR} is an user-friendly R package providing functions to assist
cellular neighborhood analysis of any spatial transcriptomics data with
single-cell resolution.  All functions in the package are built based on the
@code{SpatialExperiment} object, allowing integration into various spatial
transcriptomics-related packages from Bioconductor.  The package can result in
cell-level neighborhood annotation output, along with funtions to perform
neighborhood colocalization analysis and neighborhood-based cell clustering.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-homosapiendee2cellscore
  (package
    (name "r-homosapiendee2cellscore")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "homosapienDEE2CellScore" version
                              'experiment))
       (sha256
        (base32 "1vwasylfqv4xgmhkzykdwhlxh0kk4pl4bcndx5dpn7i386zp6chs"))))
    (properties `((upstream-name . "homosapienDEE2CellScore")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-rtsne
                             r-matrixgenerics
                             r-getdee2
                             r-experimenthub
                             r-deseq2
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/homosapienDEE2CellScore")
    (synopsis "Example Data Package for CellScore")
    (description
     "This is a data package for normalised homosapien data downloaded from DEE2.  The
package both downloads, normalises, and filters the data, and provides a way to
access the data from a canonical store without needing local processing.  This
package was built as a way to generate and store canonical test data for
@code{CellScore}.")
    (license license:gpl3+)))

(define-public r-hmp2data
  (package
    (name "r-hmp2data")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HMP2Data" version
                              'experiment))
       (sha256
        (base32 "014bf29kg9dizi3p0fdxrs42bf9a0dc2f7zd7yxzvzs3jqvniji2"))))
    (properties `((upstream-name . "HMP2Data")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-readr
                             r-phyloseq
                             r-multiassayexperiment
                             r-magrittr
                             r-knitr
                             r-kableextra
                             r-experimenthub
                             r-dplyr
                             r-data-table
                             r-assertthat
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jstansfield0/HMP2Data")
    (synopsis "16s rRNA sequencing data from the Human Microbiome Project 2")
    (description
     "HMP2Data is a Bioconductor package of the Human Microbiome Project 2 (HMP2) 16S
@code{rRNA} sequencing data.  Processed data is provided as phyloseq,
@code{SummarizedExperiment}, and @code{MultiAssayExperiment} class objects.
Individual matrices and data.frames used for building these S4 class objects are
also provided in the package.")
    (license license:artistic2.0)))

(define-public r-hmp16sdata
  (package
    (name "r-hmp16sdata")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HMP16SData" version
                              'experiment))
       (sha256
        (base32 "16x7mw5bdsyda1qv0v739pkr8lxq8hga84vhmaa8qnx45pwqyyh0"))))
    (properties `((upstream-name . "HMP16SData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-readr
                             r-magrittr
                             r-knitr
                             r-kableextra
                             r-experimenthub
                             r-dplyr
                             r-assertthat
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/HMP16SData")
    (synopsis "16S rRNA Sequencing Data from the Human Microbiome Project")
    (description
     "HMP16SData is a Bioconductor @code{ExperimentData} package of the Human
Microbiome Project (HMP) 16S @code{rRNA} sequencing data for variable regions
1–3 and 3–5.  Raw data files are provided in the package as downloaded from the
HMP Data Analysis and Coordination Center.  Processed data is provided as
@code{SummarizedExperiment} class objects via @code{ExperimentHub}.")
    (license license:artistic2.0)))

(define-public r-hmmcopy
  (package
    (name "r-hmmcopy")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HMMcopy" version))
       (sha256
        (base32 "1i2n4i4vkxqfgdcmwhz1vcbhxk716m1blc2drzh5449y6x3qd026"))))
    (properties `((upstream-name . "HMMcopy")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://bioconductor.org/packages/HMMcopy")
    (synopsis
     "Copy number prediction with correction for GC and mappability bias for HTS data")
    (description
     "Corrects GC and mappability biases for readcounts (i.e.  coverage) in
non-overlapping windows of fixed length for single whole genome samples,
yielding a rough estimate of copy number for furthur analysis.  Designed for
rapid correction of high coverage whole genome tumour and normal samples.")
    (license license:gpl3)))

(define-public r-hmdbquery
  (package
    (name "r-hmdbquery")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hmdbQuery" version))
       (sha256
        (base32 "16mx6xhpxgajyglayzhgyv15m5mwggc141rkz4694l5923p3xzg8"))))
    (properties `((upstream-name . "hmdbQuery")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-s4vectors))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hmdbQuery")
    (synopsis "utilities for exploration of human metabolome database")
    (description
     "Define utilities for exploration of human metabolome database, including
functions to retrieve specific metabolite entries and data snapshots with
pairwise associations (metabolite-gene,-protein,-disease).")
    (license license:artistic2.0)))

(define-public r-hivprtplus2cdf
  (package
    (name "r-hivprtplus2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hivprtplus2cdf" version
                              'annotation))
       (sha256
        (base32 "1jv4qzajikz7x4vq87wzn7hf6hx9r4c2gkjhfp93kqzwzddmigf4"))))
    (properties `((upstream-name . "hivprtplus2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hivprtplus2cdf")
    (synopsis "hivprtplus2cdf")
    (description
     "This package provides a package containing an environment representing the HIV
PRTPlus 2.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hivcdnavantwout03
  (package
    (name "r-hivcdnavantwout03")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HIVcDNAvantWout03" version
                              'experiment))
       (sha256
        (base32 "1mrza15digswpqszff88caclfwbwxql7dx6gih4gz72cnpyx3fpj"))))
    (properties `((upstream-name . "HIVcDNAvantWout03")))
    (build-system r-build-system)
    (home-page
     "http://expression.microslu.washington.edu/expression/vantwoutjvi2002.html")
    (synopsis "T cell line infections with HIV-1 LAI (BRU)")
    (description
     "The expression levels of approximately 4600 cellular RNA transcripts were
assessed in CD4+ T cell lines at different times after infection with HIV-1BRU
using DNA microarrays.  This data corresponds to the first block of a 12 block
array image (001030_08_1.GEL) in the first data set (2000095918 A) in the first
experiment (CEM LAI vs HI-LAI 24hr).  There are two data sets, which are part of
a dye-swap experiment with replicates, representing the Cy3 (green) absorption
intensities for channel 1 (hiv1raw) and the Cy5 (red) absorption intensities for
channel 2 (hiv2raw).")
    (license license:gpl2+)))

(define-public r-hireewas
  (package
    (name "r-hireewas")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HIREewas" version))
       (sha256
        (base32 "1kdiqa1g34i5gmnaxm6xc4r2wfb8ypmglrxfgv8l39l81698lp04"))))
    (properties `((upstream-name . "HIREewas")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-gplots))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HIREewas")
    (synopsis
     "Detection of cell-type-specific risk-CpG sites in epigenome-wide association studies")
    (description
     "In epigenome-wide association studies, the measured signals for each sample are
a mixture of methylation profiles from different cell types.  The current
approaches to the association detection only claim whether a
cytosine-phosphate-guanine (@code{CpG}) site is associated with the phenotype or
not, but they cannot determine the cell type in which the risk-@code{CpG} site
is affected by the phenotype.  We propose a solid statistical method, HIgh
REsolution (HIRE), which not only substantially improves the power of
association detection at the aggregated level as compared to the existing
methods but also enables the detection of risk-@code{CpG} sites for individual
cell types.  The \"HIREewas\" R package is to implement HIRE model in R.")
    (license license:gpl2+)))

(define-public r-hireadsprocessor
  (package
    (name "r-hireadsprocessor")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hiReadsProcessor" version))
       (sha256
        (base32 "11hiz5ymjyjmsr78060602xi07lbjsq7gs4nh0pknjph2mzx9nqi"))))
    (properties `((upstream-name . "hiReadsProcessor")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-soniclength
                             r-readxl
                             r-pwalign
                             r-hiannotator
                             r-genomicranges
                             r-genomicalignments
                             r-dplyr
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hiReadsProcessor")
    (synopsis "Functions to process LM-PCR reads from 454/Illumina data")
    (description
     "@code{hiReadsProcessor} contains set of functions which allow users to process
LM-PCR products sequenced using any platform.  Given an excel/txt file
containing parameters for demultiplexing and sample metadata, the functions
automate trimming of adaptors and identification of the genomic product.
Genomic products are further processed for QC and abundance quantification.")
    (license license:gpl3)))

(define-public r-hippo
  (package
    (name "r-hippo")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HIPPO" version))
       (sha256
        (base32 "1fp2jxi5xlf3archv3z8gnrc3rsh12vkprk6xhdffw9n2mqap56c"))))
    (properties `((upstream-name . "HIPPO")))
    (build-system r-build-system)
    (propagated-inputs (list r-umap
                             r-singlecellexperiment
                             r-rtsne
                             r-rlang
                             r-reshape2
                             r-matrix
                             r-magrittr
                             r-irlba
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tk382/HIPPO")
    (synopsis "Heterogeneity-Induced Pre-Processing tOol")
    (description
     "For @code{scRNA-seq} data, it selects features and clusters the cells
simultaneously for single-cell UMI data.  It has a novel feature selection
method using the zero inflation instead of gene variance, and computationally
faster than other existing methods since it only relies on PCA+Kmeans rather
than graph-clustering or consensus clustering.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-hipathia
  (package
    (name "r-hipathia")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hipathia" version))
       (sha256
        (base32 "140ihldl1m7b249d184f717w9pycrsrx13gzjhamjvpdrn96hra4"))))
    (properties `((upstream-name . "hipathia")))
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
    (propagated-inputs (list r-visnetwork
                             r-tibble
                             r-summarizedexperiment
                             r-servr
                             r-s4vectors
                             r-reshape2
                             r-preprocesscore
                             r-multiassayexperiment
                             r-metbrewer
                             r-matrixstats
                             r-limma
                             r-igraph
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-delayedarray
                             r-coin
                             r-annotationhub))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/hipathia")
    (synopsis "HiPathia: High-throughput Pathway Analysis")
    (description
     "Hipathia is a method for the computation of signal transduction along signaling
pathways from transcriptomic data.  The method is based on an iterative
algorithm which is able to compute the signal intensity passing through the
nodes of a network by taking into account the level of expression of each gene
and the intensity of the signal arriving to it.  It also provides a new approach
to functional analysis allowing to compute the signal arriving to the functions
annotated to each pathway.")
    (license license:gpl2)))

(define-public r-hilda
  (package
    (name "r-hilda")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiLDA" version))
       (sha256
        (base32 "1v5gvb84q09l8i7f1d4q7zpyxlzaq5bqifia706d60700wvfan29"))))
    (properties `((upstream-name . "HiLDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-xvector
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-tidyr
                             r-stringr
                             r-s4vectors
                             r-rcpp
                             r-r2jags
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-forcats
                             r-cowplot
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-biostrings
                             r-biocgenerics
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USCbiostats/HiLDA")
    (synopsis
     "Conducting statistical inference on comparing the mutational exposures of mutational signatures by using hierarchical latent Dirichlet allocation")
    (description
     "This package provides a package built under the Bayesian framework of applying
hierarchical latent Dirichlet allocation.  It statistically tests whether the
mutational exposures of mutational signatures (Shiraishi-model signatures) are
different between two groups.  The package also provides inference and
visualization.")
    (license license:gpl3)))

(define-public r-hilbertvisgui
  (package
    (name "r-hilbertvisgui")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HilbertVisGUI" version))
       (sha256
        (base32 "0mzb9yb9f5d6yr8889cn8n20br5mf07xg97q09hxxhxgy8pq33mf"))))
    (properties `((upstream-name . "HilbertVisGUI")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-hilbertvis))
    (native-inputs (list pkg-config))
    (home-page "http://www.ebi.ac.uk/~anders/hilbert")
    (synopsis "HilbertVisGUI")
    (description
     "An interactive tool to visualize long vectors of integer data by means of
Hilbert curves.")
    (license license:gpl3+)))

(define-public r-hilbertvis
  (package
    (name "r-hilbertvis")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HilbertVis" version))
       (sha256
        (base32 "07ndnzqjpklr3k9bbnl9y7jpb91ng1wkssb4kqaxp5nsc2ixidpd"))))
    (properties `((upstream-name . "HilbertVis")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "http://www.ebi.ac.uk/~anders/hilbert")
    (synopsis "Hilbert curve visualization")
    (description
     "This package provides functions to visualize long vectors of integer data by
means of Hilbert curves.")
    (license license:gpl3+)))

(define-public r-hilbertcurve
  (package
    (name "r-hilbertcurve")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HilbertCurve" version))
       (sha256
        (base32 "0kka2haa84kv2xwqny0ii0mfq0gjdh4vv1zkjk0lbqszqk1h6hab"))))
    (properties `((upstream-name . "HilbertCurve")))
    (build-system r-build-system)
    (propagated-inputs (list r-polylabelr
                             r-png
                             r-iranges
                             r-hilbertvis
                             r-genomicranges
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jokergoo/HilbertCurve")
    (synopsis "Making 2D Hilbert Curve")
    (description
     "Hilbert curve is a type of space-filling curves that fold one dimensional axis
into a two dimensional space, but with still preserves the locality.  This
package aims to provide an easy and flexible way to visualize data through
Hilbert curve.")
    (license license:expat)))

(define-public r-hiiragi2013
  (package
    (name "r-hiiragi2013")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Hiiragi2013" version
                              'experiment))
       (sha256
        (base32 "0xn3ayh2x04cvwrr476k8vlp8lhk5lxaqg01a0ynkrrc4scf2f99"))))
    (properties `((upstream-name . "Hiiragi2013")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-rcolorbrewer
                             r-mouse4302-db
                             r-mass
                             r-latticeextra
                             r-lattice
                             r-keggrest
                             r-gtools
                             r-gplots
                             r-geneplotter
                             r-genefilter
                             r-cluster
                             r-clue
                             r-boot
                             r-biobase
                             r-affy))
    (home-page "https://bioconductor.org/packages/Hiiragi2013")
    (synopsis
     "Cell-to-cell expression variability followed by signal reinforcement progressively segregates early mouse lineages")
    (description
     "This package contains the experimental data and a complete executable transcript
(vignette) of the statistical analysis presented in the paper \"Cell-to-cell
expression variability followed by signal reinforcement progressively segregates
early mouse lineages\" by Y. Ohnishi, W. Huber, A. Tsumura, M. Kang, P.
Xenopoulos, K. Kurimoto, A. K. Oles, M. J. Arauzo-Bravo, M. Saitou, A.-K.
Hadjantonakis and T. Hiiragi; Nature Cell Biology (2014) 16(1): 27-37.  doi:
10.1038/ncb2881.\".")
    (license license:artistic2.0)))

(define-public r-highlyreplicatedrnaseq
  (package
    (name "r-highlyreplicatedrnaseq")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HighlyReplicatedRNASeq" version
                              'experiment))
       (sha256
        (base32 "01b09hk33p14lfrrpk0agi6prf9wbv6zs0qn07jdsm63vmawscds"))))
    (properties `((upstream-name . "HighlyReplicatedRNASeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-s4vectors
                             r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/const-ae/HighlyReplicatedRNASeq")
    (synopsis "Collection of Bulk RNA-Seq Experiments With Many Replicates")
    (description
     "Gene-level count matrix data for bulk RNA-seq dataset with many replicates.  The
data are provided as easy to use @code{SummarizedExperiment} objects.  The
source data that is made accessible through this package comes from
https://github.com/bartongroup/@code{profDGE48}.")
    (license license:expat)))

(define-public r-hierinf
  (package
    (name "r-hierinf")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hierinf" version))
       (sha256
        (base32 "1x5piwk5y2z9nxfwnvcp60sqg9l0vi2q6rxhxr4r439c9vqgfm4w"))))
    (properties `((upstream-name . "hierinf")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet r-fmsb))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hierinf")
    (synopsis "Hierarchical Inference")
    (description
     "This package provides tools to perform hierarchical inference for one or
multiple studies / data sets based on high-dimensional multivariate
(generalised) linear models.  A possible application is to perform hierarchical
inference for GWA studies to find significant groups or single SNPs (if the
signal is strong) in a data-driven and automated procedure.  The method is based
on an efficient hierarchical multiple testing correction and controls the FWER.
The functions can easily be run in parallel.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hiergwas
  (package
    (name "r-hiergwas")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hierGWAS" version))
       (sha256
        (base32 "140s7wvl1yl66yymq4vsiq0zb44nzjkip4x7l720lywmsj62v9zp"))))
    (properties `((upstream-name . "hierGWAS")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet r-fmsb r-fastcluster))
    (home-page "https://bioconductor.org/packages/hierGWAS")
    (synopsis "Asessing statistical significance in predictive GWA studies")
    (description
     "Testing individual SNPs, as well as arbitrarily large groups of SNPs in GWA
studies, using a joint model of all SNPs.  The method controls the FWER, and
provides an automatic, data-driven refinement of the SNP clusters to smaller
groups or single markers.")
    (license license:gpl3)))

(define-public r-hicvenndiagram
  (package
    (name "r-hicvenndiagram")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hicVennDiagram" version))
       (sha256
        (base32 "02ym5qiz38viddsrxmn3v6q791gwrc36hi505vcaar1fj2kblx2w"))))
    (properties `((upstream-name . "hicVennDiagram")))
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
    (propagated-inputs (list r-svglite
                             r-s4vectors
                             r-rtracklayer
                             r-reshape2
                             r-iranges
                             r-interactionset
                             r-htmlwidgets
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-eulerr
                             r-complexupset))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/jianhong/hicVennDiagram")
    (synopsis "Venn Diagram for genomic interaction data")
    (description
     "This package provides a package to generate high-resolution Venn and Upset plots
for genomic interaction data from @code{HiC}, @code{ChIA-PET}, @code{HiChIP},
PLAC-Seq, Hi-@code{TrAC}, @code{HiCAR} and etc.  The package generates plots
specifically crafted to eliminate the deceptive visual representation caused by
the counts method.")
    (license license:gpl3)))

(define-public r-hicool
  (package
    (name "r-hicool")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCool" version))
       (sha256
        (base32 "06b26szb23mngcfx5xwdw6kz10gqjs69py0iz5piia4a7vppk8zk"))))
    (properties `((upstream-name . "HiCool")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-stringr
                             r-sessioninfo
                             r-s4vectors
                             r-rmdformats
                             r-rmarkdown
                             r-reticulate
                             r-plotly
                             r-iranges
                             r-interactionset
                             r-hicexperiment
                             r-genomicranges
                             r-dplyr
                             r-biocio
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/HiCool")
    (synopsis "HiCool")
    (description
     "@code{HiCool} provides an R interface to process and normalize Hi-C paired-end
fastq reads into .(m)cool files. .(m)cool is a compact, indexed HDF5 file format
specifically tailored for efficiently storing @code{HiC-based} data.  On top of
processing fastq reads, @code{HiCool} provides a convenient reporting function
to generate shareable reports summarizing Hi-C experiments and including quality
controls.")
    (license license:expat)))

(define-public r-hicontactsdata
  (package
    (name "r-hicontactsdata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiContactsData" version
                              'experiment))
       (sha256
        (base32 "0q92gvvlx4zx6sxi9sdzwjmwvdzaw6fj0nkr5d4h8j0hv7ycylmi"))))
    (properties `((upstream-name . "HiContactsData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub r-biocfilecache r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/HiContactsData")
    (synopsis "HiContacts companion data package")
    (description
     "This package provides a collection of Hi-C files (pairs, (m)cool and fastq).
These datasets can be read into R and further investigated and visualized with
the @code{HiContacts} package.  Data includes yeast Hi-C data generated by the
Koszul lab from the Pasteur Institute.")
    (license license:expat)))

(define-public r-hicontacts
  (package
    (name "r-hicontacts")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiContacts" version))
       (sha256
        (base32 "18rfv9z03dqdqifrxqv1l3m9s8nykygd9y6d7pya2sdfx8f0hgza"))))
    (properties `((upstream-name . "HiContacts")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rspectra
                             r-readr
                             r-matrix
                             r-iranges
                             r-interactionset
                             r-hicexperiment
                             r-ggrastr
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biocparallel
                             r-biocio
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/HiContacts")
    (synopsis "Analysing cool files in R with HiContacts")
    (description
     "@code{HiContacts} provides a collection of tools to analyse and visualize Hi-C
datasets imported in R by @code{HiCExperiment}.")
    (license license:expat)))

(define-public r-hicexperiment
  (package
    (name "r-hicexperiment")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCExperiment" version))
       (sha256
        (base32 "0wz08jwljv8zc658xl55rwwsfvy3lc3qg9dw7d41cw37wh40dkw1"))))
    (properties `((upstream-name . "HiCExperiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-strawr
                             r-s4vectors
                             r-rhdf5
                             r-matrix
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-biocparallel
                             r-biocio
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/HiCExperiment")
    (synopsis "Bioconductor class for interacting with Hi-C files in R")
    (description
     "R generic interface to Hi-C contact matrices in `.(m)cool`, `.hic` or
@code{HiC-Pro} derived formats, as well as other Hi-C processed file formats.
Contact matrices can be partially parsed using a random access method, allowing
a memory-efficient representation of Hi-C data in R. The `@code{HiCExperiment`}
class stores the Hi-C contacts parsed from local contact matrix files.
`@code{HiCExperiment`} instances can be further investigated in R using the
`@code{HiContacts`} analysis package.")
    (license license:expat)))

(define-public r-hicdoc
  (package
    (name "r-hicdoc")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCDOC" version))
       (sha256
        (base32 "1p8n3yljzlk8ic47101nw8d6dmxgadacgfh6pknkpxgk6vlcq6kh"))))
    (properties `((upstream-name . "HiCDOC")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-zlibbioc
                             r-summarizedexperiment
                             r-s4vectors
                             r-rcpp
                             r-pbapply
                             r-multihiccompare
                             r-interactionset
                             r-gtools
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-cowplot
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mzytnicki/HiCDOC")
    (synopsis "A/B compartment detection and differential analysis")
    (description
     "@code{HiCDOC} normalizes intrachromosomal Hi-C matrices, uses unsupervised
learning to predict A/B compartments from multiple replicates, and detects
significant compartment changes between experiment conditions.  It provides a
collection of functions assembled into a pipeline to filter and normalize the
data, predict the compartments and visualize the results.  It accepts several
type of data: tabular `.tsv` files, Cooler `.cool` or `.mcool` files, Juicer
`.hic` files or @code{HiC-Pro} `.matrix` and `.bed` files.")
    (license license:lgpl3)))

(define-public r-hicdcplus
  (package
    (name "r-hicdcplus")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCDCPlus" version))
       (sha256
        (base32 "0x95v5h1qjks87gmis7p0y4bmj7xalqbgny0qfkaw8s561fhx3j9"))))
    (properties `((upstream-name . "HiCDCPlus")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-rcpp
                             r-r-utils
                             r-pscl
                             r-mass
                             r-iranges
                             r-interactionset
                             r-genomicranges
                             r-genomicinteractions
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-bsgenome
                             r-biostrings
                             r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HiCDCPlus")
    (synopsis "Hi-C Direct Caller Plus")
    (description
     "Systematic 3D interaction calls and differential analysis for Hi-C and
@code{HiChIP}.  The @code{HiC-DC+} (Hi-C/@code{HiChIP} direct caller plus)
package enables principled statistical analysis of Hi-C and @code{HiChIP} data
sets – including calling significant interactions within a single experiment and
performing differential analysis between conditions given replicate experiments
– to facilitate global integrative studies. @code{HiC-DC+} estimates significant
interactions in a Hi-C or @code{HiChIP} experiment directly from the raw contact
matrix for each chromosome up to a specified genomic distance, binned by uniform
genomic intervals or restriction enzyme fragments, by training a background
model to account for random polymer ligation and systematic sources of read
count variation.")
    (license license:gpl3)))

(define-public r-hicdatalymphoblast
  (package
    (name "r-hicdatalymphoblast")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCDataLymphoblast" version
                              'experiment))
       (sha256
        (base32 "1sb384dca5n1lanv5k4idjx1b1hmvfdv1xp14m8k00gcnacgj9v3"))))
    (properties `((upstream-name . "HiCDataLymphoblast")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/HiCDataLymphoblast")
    (synopsis "Human lymphoblastoid HiC data from Lieberman-Aiden et al. 2009")
    (description
     "The @code{HiC} data from human lymphoblastoid cell line (@code{HindIII}
restriction) was retrieved from the sequence read archive and two ends of the
paired reads were aligned separately with bowtie.")
    (license license:gpl3)))

(define-public r-hicdatahumanimr90
  (package
    (name "r-hicdatahumanimr90")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCDataHumanIMR90" version
                              'experiment))
       (sha256
        (base32 "1xndbds4clzpblc6gjz7lr48pkvi3j2m0a9jzavff45ds7aa6jxk"))))
    (properties `((upstream-name . "HiCDataHumanIMR90")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/HiCDataHumanIMR90")
    (synopsis "Human IMR90 Fibroblast HiC data from Dixon et al. 2012")
    (description
     "The @code{HiC} data from Human Fibroblast IMR90 cell line (@code{HindIII}
restriction) was retrieved from the GEO website, accession number GSE35156
(http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE35156).  The raw reads
were processed as explained in Dixon et al. (Nature 2012).")
    (license license:gpl3)))

(define-public r-hiccompare
  (package
    (name "r-hiccompare")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCcompare" version))
       (sha256
        (base32 "1rpdqij0lvs9cyl1z5lgw91332km1nb8053kk432bais9382jkxc"))))
    (properties `((upstream-name . "HiCcompare")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rhdf5
                             r-pheatmap
                             r-mgcv
                             r-kernsmooth
                             r-iranges
                             r-interactionset
                             r-gtools
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-dplyr
                             r-data-table
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/HiCcompare")
    (synopsis
     "HiCcompare: Joint normalization and comparative analysis of multiple Hi-C datasets")
    (description
     "@code{HiCcompare} provides functions for joint normalization and difference
detection in multiple Hi-C datasets. @code{HiCcompare} operates on processed
Hi-C data in the form of chromosome-specific chromatin interaction matrices.  It
accepts three-column tab-separated text files storing chromatin interaction
matrices in a sparse matrix format which are available from several sources.
@code{HiCcompare} is designed to give the user the ability to perform a
comparative analysis on the 3-Dimensional structure of the genomes of cells in
different biological states.`@code{HiCcompare`} differs from other packages that
attempt to compare Hi-C data in that it works on processed data in chromatin
interaction matrix format instead of pre-processed sequencing data.  In
addition, `@code{HiCcompare`} provides a non-parametric method for the joint
normalization and removal of biases between two Hi-C datasets for the purpose of
comparative analysis. `@code{HiCcompare`} also provides a simple yet robust
method for detecting differences between Hi-C datasets.")
    (license license:expat)))

(define-public r-hicbricks
  (package
    (name "r-hicbricks")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiCBricks" version))
       (sha256
        (base32 "0hbmy7vhg63n6r2lv8gvrlsj4xgqbf8mvaci2i4kpc9327jny2nn"))))
    (properties `((upstream-name . "HiCBricks")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tibble
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rhdf5
                             r-reshape2
                             r-readr
                             r-rcolorbrewer
                             r-r6
                             r-r-utils
                             r-jsonlite
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-digest
                             r-data-table
                             r-curl
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HiCBricks")
    (synopsis
     "Framework for Storing and Accessing Hi-C Data Through HDF Files")
    (description
     "@code{HiCBricks} is a library designed for handling large high-resolution Hi-C
datasets.  Over the years, the Hi-C field has experienced a rapid increase in
the size and complexity of datasets. @code{HiCBricks} is meant to overcome the
challenges related to the analysis of such large datasets within the R
environment. @code{HiCBricks} offers user-friendly and efficient solutions for
handling large high-resolution Hi-C datasets.  The package provides an
R/Bioconductor framework with the bricks to build more complex data analysis
pipelines and algorithms. @code{HiCBricks} already incorporates example
algorithms for calling domain boundaries and functions for high quality data
visualization.")
    (license license:expat)))

(define-public r-hicaggr
  (package
    (name "r-hicaggr")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HicAggR" version))
       (sha256
        (base32 "1lpf7m3rsm3ng0i6gqyl6l3jvawnl8wcfjl0gkxz604bwszjvhb3"))))
    (properties `((upstream-name . "HicAggR")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-strawr
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-rhdf5
                             r-reshape
                             r-purrr
                             r-matrix
                             r-iranges
                             r-interactionset
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-checkmate
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HicAggR")
    (synopsis "Set of 3D genomic interaction analysis tools")
    (description
     "This package provides a set of functions useful in the analysis of 3D genomic
interactions.  It includes the import of standard @code{HiC} data formats into R
and @code{HiC} normalisation procedures.  The main objective of this package is
to improve the visualization and quantification of the analysis of @code{HiC}
contacts through aggregation.  The package allows to import 1D genomics data,
such as peaks from ATACSeq, @code{ChIPSeq}, to create potential couples between
features of interest under user-defined parameters such as distance between
pairs of features of interest.  It allows then the extraction of contact values
from the @code{HiC} data for these couples and to perform Aggregated Peak
Analysis (APA) for visualization, but also to compare normalized contact values
between conditions.  Overall the package allows to integrate 1D genomics data
with 3D genomics data, providing an easy access to @code{HiC} contact values.")
    (license license:expat)))

(define-public r-hibed
  (package
    (name "r-hibed")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HiBED" version
                              'experiment))
       (sha256
        (base32 "0sqxlm2nn8g7qfwhndf79dg7v57ngmznr0b297v59nhhpigs1g2q"))))
    (properties `((upstream-name . "HiBED")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-minfi
                             r-flowsorted-dlpfc-450k
                             r-flowsorted-blood-epic
                             r-dplyr
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SalasLab/HiBED")
    (synopsis "HiBED")
    (description
     "Hierarchical deconvolution for extensive cell type resolution in the human brain
using DNA methylation.  The @code{HiBED} deconvolution estimates proportions up
to 7 cell types (GABAergic neurons, glutamatergic neurons, astrocytes,
microglial cells, oligodendrocytes, endothelial cells, and stromal cells) in
bulk brain tissues.")
    (license license:gpl3)))

(define-public r-hibag
  (package
    (name "r-hibag")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HIBAG" version))
       (sha256
        (base32 "1q059hqx0k9nm9xgxlzxnl93f44hjhjpf4iql0f87v560xzy1pgk"))))
    (properties `((upstream-name . "HIBAG")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zhengxwen/HIBAG")
    (synopsis "HLA Genotype Imputation with Attribute Bagging")
    (description
     "Imputes HLA classical alleles using GWAS SNP data, and it relies on a training
set of HLA and SNP genotypes.  HIBAG can be used by researchers with published
parameter estimates instead of requiring access to large training sample
datasets.  It combines the concepts of attribute bagging, an ensemble classifier
method, with haplotype inference for SNPs and HLA types.  Attribute bagging is a
technique which improves the accuracy and stability of classifier ensembles
using bootstrap aggregating and random variable selection.")
    (license license:gpl3)))

(define-public r-hiannotator
  (package
    (name "r-hiannotator")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hiAnnotator" version))
       (sha256
        (base32 "1mi15zpqbsf1x2bdagnd7mwspz7pdiq8v7s6a44zwxl0sas2qdmi"))))
    (properties `((upstream-name . "hiAnnotator")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rtracklayer
                             r-iterators
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-bsgenome))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hiAnnotator")
    (synopsis "Functions for annotating GRanges objects")
    (description
     "@code{hiAnnotator} contains set of functions which allow users to annotate a
GRanges object with custom set of annotations.  The basic philosophy of this
package is to take two GRanges objects (query & subject) with common set of
seqnames (i.e.  chromosomes) and return associated annotation per seqnames and
rows from the query matching seqnames and rows from the subject (i.e.  genes or
cpg islands).  The package comes with three types of annotation functions which
calculates if a position from query is: within a feature, near a feature, or
count features in defined window sizes.  Moreover, each function is equipped
with parallel backend to utilize the foreach package.  In addition, the package
is equipped with wrapper functions, which finds appropriate columns needed to
make a GRanges object from a common data frame.")
    (license license:gpl2+)))

(define-public r-hi16cod-db
  (package
    (name "r-hi16cod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hi16cod.db" version
                              'annotation))
       (sha256
        (base32 "0ydi0jljx8igzrqaspr9yywv43h2zimm9fk7xc55nm6mnp5jl7kl"))))
    (properties `((upstream-name . "hi16cod.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hi16cod.db")
    (synopsis
     "Codelink Human Inflammation 16 Bioarray annotation data (chip hi16cod)")
    (description
     "Codelink Human Inflammation 16 Bioarray annotation data (chip hi16cod) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hguqiagenv3-db
  (package
    (name "r-hguqiagenv3-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hguqiagenv3.db" version
                              'annotation))
       (sha256
        (base32 "1ylji60m2zb8ialbl5wdrxy425sriq17z3bg8ikvc5b5gjsw6l7w"))))
    (properties `((upstream-name . "hguqiagenv3.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hguqiagenv3.db")
    (synopsis
     "Qiagen Qiagen V3.0 oligo set annotation data (chip hguqiagenv3)")
    (description
     "Qiagen Qiagen V3.0 oligo set annotation data (chip hguqiagenv3) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgug4845a-db
  (package
    (name "r-hgug4845a-db")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgug4845a.db" version
                              'annotation))
       (sha256
        (base32 "1933n2n6yky40nxf1qlbpa6acjwfr07hbrpvvcick7m09al1wks6"))))
    (properties `((upstream-name . "hgug4845a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgug4845a.db")
    (synopsis "agilent AMADID 026652 annotation data (chip hgug4845a)")
    (description
     "agilent AMADID 026652 annotation data (chip hgug4845a) assembled using data from
public repositories.")
    (license license:artistic2.0)))

(define-public r-hgug4112a-db
  (package
    (name "r-hgug4112a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgug4112a.db" version
                              'annotation))
       (sha256
        (base32 "0l80pblm047pvl5sqvasb6d45lazqhsff3w5lljiwzjhn0r7x5m3"))))
    (properties `((upstream-name . "hgug4112a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgug4112a.db")
    (synopsis
     "Agilent \"Human Genome, Whole\" annotation data (chip hgug4112a)")
    (description
     "Agilent \"Human Genome, Whole\" annotation data (chip hgug4112a) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgug4111a-db
  (package
    (name "r-hgug4111a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgug4111a.db" version
                              'annotation))
       (sha256
        (base32 "0bd897592q92cf8bvl0hqkcxid451lwm36s7mpsvgb5yzw3rb63n"))))
    (properties `((upstream-name . "hgug4111a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgug4111a.db")
    (synopsis "Agilent Human 1B annotation data (chip hgug4111a)")
    (description
     "Agilent Human 1B annotation data (chip hgug4111a) assembled using data from
public repositories.")
    (license license:artistic2.0)))

(define-public r-hgug4110b-db
  (package
    (name "r-hgug4110b-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgug4110b.db" version
                              'annotation))
       (sha256
        (base32 "0qpiiy6dklf9alrmjmmv51q09p7hq4w8frn8zy12glcm65h2vfcy"))))
    (properties `((upstream-name . "hgug4110b.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgug4110b.db")
    (synopsis "Agilent Human 1A (V2) annotation data (chip hgug4110b)")
    (description
     "Agilent Human 1A (V2) annotation data (chip hgug4110b) assembled using data from
public repositories.")
    (license license:artistic2.0)))

(define-public r-hgug4101a-db
  (package
    (name "r-hgug4101a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgug4101a.db" version
                              'annotation))
       (sha256
        (base32 "1hnz2m9q52mw4mxykvaiilsq0d0jmkq666py8zjh94sy0gsnhsqx"))))
    (properties `((upstream-name . "hgug4101a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgug4101a.db")
    (synopsis
     "Agilent Human 2 cDNA Microarry Kit annotation data (chip hgug4101a)")
    (description
     "Agilent Human 2 @code{cDNA} Microarry Kit annotation data (chip hgug4101a)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgug4100a-db
  (package
    (name "r-hgug4100a-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgug4100a.db" version
                              'annotation))
       (sha256
        (base32 "0crvsnrx58smj45115qb05hss1qkpwmydpdm6qbzh0j16ab7p59n"))))
    (properties `((upstream-name . "hgug4100a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgug4100a.db")
    (synopsis
     "Agilent Human 1 cDNA Microarray Kit annotation data (chip hgug4100a)")
    (description
     "Agilent Human 1 @code{cDNA} Microarray Kit annotation data (chip hgug4100a)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgudkfz31-db
  (package
    (name "r-hgudkfz31-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hguDKFZ31.db" version
                              'annotation))
       (sha256
        (base32 "1pm0w9jdppd4xx9civh88b15nzyqv6rs7d8yljv6yf5sspxl8var"))))
    (properties `((upstream-name . "hguDKFZ31.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hguDKFZ31.db")
    (synopsis "Unknown annotation data (chip hguDKFZ31)")
    (description
     "Unknown annotation data (chip @code{hguDKFZ31}) assembled using data from public
repositories.")
    (license license:artistic2.0)))

(define-public r-hgubeta7-db
  (package
    (name "r-hgubeta7-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgubeta7.db" version
                              'annotation))
       (sha256
        (base32 "0dh1068ph7cq343df1csyc4j9jix9gcc4bfkvvc2whyq0a1kzr8h"))))
    (properties `((upstream-name . "hgubeta7.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgubeta7.db")
    (synopsis "Unknown annotation data (chip hgubeta7)")
    (description
     "Unknown annotation data (chip hgubeta7) assembled using data from public
repositories.")
    (license license:artistic2.0)))

(define-public r-hguatlas13k-db
  (package
    (name "r-hguatlas13k-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hguatlas13k.db" version
                              'annotation))
       (sha256
        (base32 "15psxwig9d836wdf410i093k0hbdxnzd9lix4d544yz160v93di0"))))
    (properties `((upstream-name . "hguatlas13k.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hguatlas13k.db")
    (synopsis
     "Clontech BD Atlas Long Oligos Human 13K annotation data (chip hguatlas13k)")
    (description
     "Clontech BD Atlas Long Oligos Human 13K annotation data (chip hguatlas13k)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu95eprobe
  (package
    (name "r-hgu95eprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95eprobe" version
                              'annotation))
       (sha256
        (base32 "1daflz4s99xb0v91ckb96bzjqmgm334xsngz18l2bd6r8nkxhgzb"))))
    (properties `((upstream-name . "hgu95eprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95eprobe")
    (synopsis "Probe sequence data for microarrays of type hgu95e")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U95E\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu95ecdf
  (package
    (name "r-hgu95ecdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95ecdf" version
                              'annotation))
       (sha256
        (base32 "02y97vbhxn3c31q1i2z5l6jv51z8bk8p7vp1kb2y8rkmsw171brv"))))
    (properties `((upstream-name . "hgu95ecdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95ecdf")
    (synopsis "hgu95ecdf")
    (description
     "This package provides a package containing an environment representing the
HG_U95E.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hgu95e-db
  (package
    (name "r-hgu95e-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95e.db" version
                              'annotation))
       (sha256
        (base32 "1p616vniy6rp7zswmq31yffcg8y2b8q39cfwr70243k4nsib86yz"))))
    (properties `((upstream-name . "hgu95e.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95e.db")
    (synopsis
     "Affymetrix Affymetrix HG_U95E Array annotation data (chip hgu95e)")
    (description
     "Affymetrix Affymetrix HG_U95E Array annotation data (chip hgu95e) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu95dprobe
  (package
    (name "r-hgu95dprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95dprobe" version
                              'annotation))
       (sha256
        (base32 "0mlj28c82b21010rhj2pzpmv2wf3fis4dwsi7q7292bza2sxxi6g"))))
    (properties `((upstream-name . "hgu95dprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95dprobe")
    (synopsis "Probe sequence data for microarrays of type hgu95d")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U95D\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu95dcdf
  (package
    (name "r-hgu95dcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95dcdf" version
                              'annotation))
       (sha256
        (base32 "0s60ibk6qsfqibhns2kidglvxkigia31yzr49b03kcazmwm4xqc0"))))
    (properties `((upstream-name . "hgu95dcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95dcdf")
    (synopsis "hgu95dcdf")
    (description
     "This package provides a package containing an environment representing the
HG_U95D.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hgu95d-db
  (package
    (name "r-hgu95d-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95d.db" version
                              'annotation))
       (sha256
        (base32 "0p7l3kpkp5jfszkmijb79qjrvxp7qy14dng4rf796nbhiljj4kh6"))))
    (properties `((upstream-name . "hgu95d.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95d.db")
    (synopsis
     "Affymetrix Affymetrix HG_U95D Array annotation data (chip hgu95d)")
    (description
     "Affymetrix Affymetrix HG_U95D Array annotation data (chip hgu95d) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu95cprobe
  (package
    (name "r-hgu95cprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95cprobe" version
                              'annotation))
       (sha256
        (base32 "0glbyjk0mfllfzwfj5hszmy4pwd5ghkb1lrzh215zzxyvnyb47fd"))))
    (properties `((upstream-name . "hgu95cprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95cprobe")
    (synopsis "Probe sequence data for microarrays of type hgu95c")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U95C\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu95ccdf
  (package
    (name "r-hgu95ccdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95ccdf" version
                              'annotation))
       (sha256
        (base32 "1mai2l81mwg3irncvddlcbcx24nvfk0gcx4h1r3mfg47smx1n3rd"))))
    (properties `((upstream-name . "hgu95ccdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95ccdf")
    (synopsis "hgu95ccdf")
    (description
     "This package provides a package containing an environment representing the
HG_U95C.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hgu95c-db
  (package
    (name "r-hgu95c-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95c.db" version
                              'annotation))
       (sha256
        (base32 "1f2mln8dkhvy58h26wlc6nzbkg0npz3x7v5x7p2w16km2mxkl76b"))))
    (properties `((upstream-name . "hgu95c.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95c.db")
    (synopsis
     "Affymetrix Affymetrix HG_U95C Array annotation data (chip hgu95c)")
    (description
     "Affymetrix Affymetrix HG_U95C Array annotation data (chip hgu95c) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu95bprobe
  (package
    (name "r-hgu95bprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95bprobe" version
                              'annotation))
       (sha256
        (base32 "1y8i2cn0zh2jkyi9j8giv5i4dag2c7jd5zyaza72nsyj4qhgmccg"))))
    (properties `((upstream-name . "hgu95bprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95bprobe")
    (synopsis "Probe sequence data for microarrays of type hgu95b")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U95B\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu95bcdf
  (package
    (name "r-hgu95bcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95bcdf" version
                              'annotation))
       (sha256
        (base32 "10inx0p0155ii4464la0amww91ynyqqh59zyl1lfhnvkl38k6ylj"))))
    (properties `((upstream-name . "hgu95bcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95bcdf")
    (synopsis "hgu95bcdf")
    (description
     "This package provides a package containing an environment representing the
HG_U95B.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hgu95b-db
  (package
    (name "r-hgu95b-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95b.db" version
                              'annotation))
       (sha256
        (base32 "0gsbs45wfrxisld9vjgw99ksz9nz2v4pjj6dhns4fwx6w0kyqhgv"))))
    (properties `((upstream-name . "hgu95b.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95b.db")
    (synopsis
     "Affymetrix Affymetrix HG_U95B Array annotation data (chip hgu95b)")
    (description
     "Affymetrix Affymetrix HG_U95B Array annotation data (chip hgu95b) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu95av2probe
  (package
    (name "r-hgu95av2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95av2probe" version
                              'annotation))
       (sha256
        (base32 "0hv0asd44b69h3n87j5ffi9i87w12iad74754wzxgfxihb0yn58g"))))
    (properties `((upstream-name . "hgu95av2probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95av2probe")
    (synopsis "Probe sequence data for microarrays of type hgu95av2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG\\_U95Av2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu95av2cdf
  (package
    (name "r-hgu95av2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95av2cdf" version
                              'annotation))
       (sha256
        (base32 "1zp1y5awnkprkmk01rmn881y50bslfi8s33i8bws39am5xma0jfl"))))
    (properties `((upstream-name . "hgu95av2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95av2cdf")
    (synopsis "hgu95av2cdf")
    (description
     "This package provides a package containing an environment representing the
HG_U95Av2.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hgu95av2-db
  (package
    (name "r-hgu95av2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95av2.db" version
                              'annotation))
       (sha256
        (base32 "1zk3mb9p8z2xabqr6y9jdiwidjzkgn22jlqyqg1bq0iahmj2ywpz"))))
    (properties `((upstream-name . "hgu95av2.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95av2.db")
    (synopsis
     "Affymetrix Affymetrix HG_U95Av2 Array annotation data (chip hgu95av2)")
    (description
     "Affymetrix Affymetrix HG_U95Av2 Array annotation data (chip hgu95av2) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu95av2
  (package
    (name "r-hgu95av2")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95av2" version
                              'annotation))
       (sha256
        (base32 "181bady90v89yx2gzwahhcl63aiypcx33pkfnjxkyq45qgb18bqi"))))
    (properties `((upstream-name . "hgu95av2")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hgu95av2")
    (synopsis "Affymetrix Human Genome U95 Set Annotation Data (hgu95av2)")
    (description
     "Affymetrix Human Genome U95 Set annotation data (hgu95av2) assembled using data
from public data repositories.")
    (license (license:fsdg-compatible "The Artistic License, Version 2.0"))))

(define-public r-hgu95aprobe
  (package
    (name "r-hgu95aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95aprobe" version
                              'annotation))
       (sha256
        (base32 "0sig3g5qmigv7vgcr3rpkn2cmcn2ljp0arhilni7yqsnzqn1dbma"))))
    (properties `((upstream-name . "hgu95aprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95aprobe")
    (synopsis "Probe sequence data for microarrays of type hgu95a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG\\_U95A\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu95acdf
  (package
    (name "r-hgu95acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95acdf" version
                              'annotation))
       (sha256
        (base32 "1mxac5vd0vzn3k8357lf0j1476q3b7nx6nr54n6j84qi2nx1wknr"))))
    (properties `((upstream-name . "hgu95acdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95acdf")
    (synopsis "hgu95acdf")
    (description
     "This package provides a package containing an environment representing the
HG_U95A.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hgu95a-db
  (package
    (name "r-hgu95a-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu95a.db" version
                              'annotation))
       (sha256
        (base32 "1krmnl5kqfvb4jvrqy72x0s8z7rha96d5nwcbnarpflf12k4hrha"))))
    (properties `((upstream-name . "hgu95a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu95a.db")
    (synopsis
     "Affymetrix Affymetrix HG_U95A Array annotation data (chip hgu95a)")
    (description
     "Affymetrix Affymetrix HG_U95A Array annotation data (chip hgu95a) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu2beta7
  (package
    (name "r-hgu2beta7")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu2beta7" version
                              'experiment))
       (sha256
        (base32 "0wlkv4yppzg520zbhk7v19jfxbiran9di0bm10bfb9lizdszwd75"))))
    (properties `((upstream-name . "hgu2beta7")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hgu2beta7")
    (synopsis "data package containing annotation data for hgu2beta7")
    (description
     "Annotation data file for hgu2beta7 assembled using data from public data
repositories.")
    (license license:artistic2.0)))

(define-public r-hgu219probe
  (package
    (name "r-hgu219probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu219probe" version
                              'annotation))
       (sha256
        (base32 "0sy5q95yppyg8bvwc6prznqzl01xrbl0ic22rj2s8wwsrppsm3m5"))))
    (properties `((upstream-name . "hgu219probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu219probe")
    (synopsis "Probe sequence data for microarrays of type hgu219")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U219\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu219cdf
  (package
    (name "r-hgu219cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu219cdf" version
                              'annotation))
       (sha256
        (base32 "14kbn7r84hp4vssxl8pfs7zlg34mdm4qf1m2dw7agrixmdblnz0d"))))
    (properties `((upstream-name . "hgu219cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu219cdf")
    (synopsis "hgu219cdf")
    (description
     "This package provides a package containing an environment representing the
HG-U219.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hgu219-db
  (package
    (name "r-hgu219-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu219.db" version
                              'annotation))
       (sha256
        (base32 "1yv7wlz49pfjqwg5s9mzr31457imwn8cq97bg4m1ybib7787m134"))))
    (properties `((upstream-name . "hgu219.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu219.db")
    (synopsis
     "Affymetrix Human Genome 219 Plate annotation data (chip hgu219)")
    (description
     "Affymetrix Human Genome 219 Plate annotation data (chip hgu219) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu133plus2probe
  (package
    (name "r-hgu133plus2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133plus2probe" version
                              'annotation))
       (sha256
        (base32 "1xdg6x6iv9xi0vdlfl4c65zvqs2946yd2bhr9nqhhyqp6h8ghsdc"))))
    (properties `((upstream-name . "hgu133plus2probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133plus2probe")
    (synopsis "Probe sequence data for microarrays of type hgu133plus2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U133\\_Plus\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu133plus2frmavecs
  (package
    (name "r-hgu133plus2frmavecs")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133plus2frmavecs" version
                              'annotation))
       (sha256
        (base32 "1r3g4hqxxm3l054kx33bsl9qkd46mkd4d266pm0jgqih6mv5640c"))))
    (properties `((upstream-name . "hgu133plus2frmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hgu133plus2frmavecs")
    (synopsis "Vectors used by frma for microarrays of type hgu133plus2")
    (description
     "This package was created by @code{frmaTools} version 1.19.3 and
hgu133ahsentrezgcdf version 19.0.0.")
    (license license:gpl2+)))

(define-public r-hgu133plus2cellscore
  (package
    (name "r-hgu133plus2cellscore")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133plus2CellScore" version
                              'experiment))
       (sha256
        (base32 "0akf6y1pwjiffhxgd2s01kmw4aylbfbh9hv8yyfvm3r72j07lbvs"))))
    (properties `((upstream-name . "hgu133plus2CellScore")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hgu133plus2CellScore")
    (synopsis "CellScore Standard Cell Types Expression Dataset [hgu133plus2]")
    (description
     "The @code{CellScore} Standard Dataset contains expression data from a wide
variety of human cells and tissues, which should be used as standard cell types
in the calculation of the @code{CellScore}.  All data was curated from public
databases such as Gene Expression Omnibus (https://www.ncbi.nlm.nih.gov/geo/) or
@code{ArrayExpress} (https://www.ebi.ac.uk/arrayexpress/).  This standard
dataset only contains data from the Affymetrix @code{GeneChip} Human Genome U133
Plus 2.0 microarrays.  Samples were manually annotated using the database
information or consulting the publications in which the datasets originated.
The sample annotations are stored in the @code{phenoData} slot of the
@code{expressionSet} object.  Raw data (CEL files) were processed with the affy
package to generate present/absent calls (mas5calls) and background-subtracted
values, which were then normalized by the R-package yugene to yield the final
expression values for the standard expression matrix.  The annotation table for
the microarray was retrieved from the @code{BioC} annotation package
hgu133plus2.  All data are stored in an @code{expressionSet} object.")
    (license license:gpl3)))

(define-public r-hgu133plus2cdf
  (package
    (name "r-hgu133plus2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133plus2cdf" version
                              'annotation))
       (sha256
        (base32 "03n9vmclv2ri6n88lsz8yzgsrz33vfclj468jv01h3is2gq09x99"))))
    (properties `((upstream-name . "hgu133plus2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133plus2cdf")
    (synopsis "hgu133plus2cdf")
    (description
     "This package provides a package containing an environment representing the
HG-U133_Plus_2.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hgu133plus2barcodevecs
  (package
    (name "r-hgu133plus2barcodevecs")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133plus2barcodevecs" version
                              'experiment))
       (sha256
        (base32 "0d6jcyb1v58f1p76mng0l327v6i1cskrgcj4p2r9z2pjbgyicgq2"))))
    (properties `((upstream-name . "hgu133plus2barcodevecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hgu133plus2barcodevecs")
    (synopsis "hgu133plus2 data for barcode")
    (description
     "Data used by the barcode package for microarrays of type hgu133plus2.")
    (license license:gpl2+)))

(define-public r-hgu133bprobe
  (package
    (name "r-hgu133bprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133bprobe" version
                              'annotation))
       (sha256
        (base32 "1i8v1fbjfnzv556551kbj13q9i0lvzjgvzq8xapmwph8y86bfcx3"))))
    (properties `((upstream-name . "hgu133bprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133bprobe")
    (synopsis "Probe sequence data for microarrays of type hgu133b")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U133B\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu133bcdf
  (package
    (name "r-hgu133bcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133bcdf" version
                              'annotation))
       (sha256
        (base32 "0dlg45pf35cff48704laryrxgwr0p31njki6c74ibxacpxmvwzv3"))))
    (properties `((upstream-name . "hgu133bcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133bcdf")
    (synopsis "hgu133bcdf")
    (description
     "This package provides a package containing an environment representing the
HG-U133B.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hgu133b-db
  (package
    (name "r-hgu133b-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133b.db" version
                              'annotation))
       (sha256
        (base32 "0w0p53w1kqahwxramb62lngpdkkymvdy0xfzcscswc8iddsdvb0x"))))
    (properties `((upstream-name . "hgu133b.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133b.db")
    (synopsis
     "Affymetrix Affymetrix HG-U133B Array annotation data (chip hgu133b)")
    (description
     "Affymetrix Affymetrix HG-U133B Array annotation data (chip hgu133b) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu133atagprobe
  (package
    (name "r-hgu133atagprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133atagprobe" version
                              'annotation))
       (sha256
        (base32 "1qxrdi0rjj8kcl8rl3lack5ky25n39hj5a91scd0fy32zvnazmk6"))))
    (properties `((upstream-name . "hgu133atagprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133atagprobe")
    (synopsis "Probe sequence data for microarrays of type hgu133atag")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U133A\\_tag\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu133atagcdf
  (package
    (name "r-hgu133atagcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133atagcdf" version
                              'annotation))
       (sha256
        (base32 "0rbnhzwbv6nbkssdgsibjpnqfads7x9rpgy2n7qy02mkr6kysndg"))))
    (properties `((upstream-name . "hgu133atagcdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133atagcdf")
    (synopsis "hgu133atagcdf")
    (description
     "This package provides a package containing an environment representing the
HG-U133A_tag.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hgu133aprobe
  (package
    (name "r-hgu133aprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133aprobe" version
                              'annotation))
       (sha256
        (base32 "15r9zy4g9p86344zf0w7m0vfln8js19kmr68vq670kncf6j6ypbn"))))
    (properties `((upstream-name . "hgu133aprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133aprobe")
    (synopsis "Probe sequence data for microarrays of type hgu133a")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U133A\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu133afrmavecs
  (package
    (name "r-hgu133afrmavecs")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133afrmavecs" version
                              'annotation))
       (sha256
        (base32 "1dh37ilc1df4i67k1by22r1r4d7iqy77f3hvnd470fwmcg07mkj6"))))
    (properties `((upstream-name . "hgu133afrmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hgu133afrmavecs")
    (synopsis "Vectors used by frma for microarrays of type hgu133a")
    (description
     "This package was created by @code{frmaTools} version 1.19.3 and
hgu133ahsentrezgcdf version 19.0.0.")
    (license license:gpl2+)))

(define-public r-hgu133acdf
  (package
    (name "r-hgu133acdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133acdf" version
                              'annotation))
       (sha256
        (base32 "10aa0vz4hpb26k5jrz56s2f8zszvwc7axj03zzrn3q0wgrw68nc6"))))
    (properties `((upstream-name . "hgu133acdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133acdf")
    (synopsis "hgu133acdf")
    (description
     "This package provides a package containing an environment representing the
HG-U133A.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hgu133abarcodevecs
  (package
    (name "r-hgu133abarcodevecs")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133abarcodevecs" version
                              'experiment))
       (sha256
        (base32 "1p9l32lhk5cvqfgxkk3bdz4s9dcyczh9b0a8rvb2cf6zz0i3l6fh"))))
    (properties `((upstream-name . "hgu133abarcodevecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hgu133abarcodevecs")
    (synopsis "hgu133a data for barcode")
    (description
     "Data used by the barcode package for microarrays of type hgu133a.")
    (license license:gpl2+)))

(define-public r-hgu133a2probe
  (package
    (name "r-hgu133a2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133a2probe" version
                              'annotation))
       (sha256
        (base32 "0ais6f92kmjmzywsdqvxcd5fs6y7kf0ip9wm62szhahyl9chwj9k"))))
    (properties `((upstream-name . "hgu133a2probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133a2probe")
    (synopsis "Probe sequence data for microarrays of type hgu133a2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-U133A\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgu133a2frmavecs
  (package
    (name "r-hgu133a2frmavecs")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133a2frmavecs" version
                              'annotation))
       (sha256
        (base32 "1qy2z6z135q8xncjqn1n31xg8az9wnwrz78cis57lzav9r0fw853"))))
    (properties `((upstream-name . "hgu133a2frmavecs")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hgu133a2frmavecs")
    (synopsis "Vectors used by frma for microarrays of type hgu133a2")
    (description
     "This package was created by @code{frmaTools} version 1.19.3 and
hgu133ahsentrezgcdf version 19.0.0.")
    (license license:gpl2+)))

(define-public r-hgu133a2cdf
  (package
    (name "r-hgu133a2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133a2cdf" version
                              'annotation))
       (sha256
        (base32 "0lqllzvp0w3s46kjvpvjn1snz63im33m3hhvnkl3knb86k6pn3za"))))
    (properties `((upstream-name . "hgu133a2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133a2cdf")
    (synopsis "hgu133a2cdf")
    (description
     "This package provides a package containing an environment representing the
HG-U133A_2.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hgu133a2-db
  (package
    (name "r-hgu133a2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133a2.db" version
                              'annotation))
       (sha256
        (base32 "0wmjf6hwfm4znnm6xcpf0z57f2r3i39rjgspyvjamq32knmq8vqs"))))
    (properties `((upstream-name . "hgu133a2.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133a2.db")
    (synopsis
     "Affymetrix Affymetrix HG-U133A_2 Array annotation data (chip hgu133a2)")
    (description
     "Affymetrix Affymetrix HG-U133A_2 Array annotation data (chip hgu133a2) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgu133a-db
  (package
    (name "r-hgu133a-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgu133a.db" version
                              'annotation))
       (sha256
        (base32 "00jcginfs161ls9hxsvynbrghg3awjrphnc54b8g0gj8g6x22pll"))))
    (properties `((upstream-name . "hgu133a.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgu133a.db")
    (synopsis
     "Affymetrix Affymetrix HG-U133A Array annotation data (chip hgu133a)")
    (description
     "Affymetrix Affymetrix HG-U133A Array annotation data (chip hgu133a) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgfocusprobe
  (package
    (name "r-hgfocusprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgfocusprobe" version
                              'annotation))
       (sha256
        (base32 "0fizkj2g1imslxk43ibf52nj8jzsfryq7h2pzhvqw5n9vnpinrc2"))))
    (properties `((upstream-name . "hgfocusprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgfocusprobe")
    (synopsis "Probe sequence data for microarrays of type hgfocus")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HG-Focus\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hgfocuscdf
  (package
    (name "r-hgfocuscdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgfocuscdf" version
                              'annotation))
       (sha256
        (base32 "0vxgz3wwjf4qqzpsa8d03s7p2az9xbzlkxkdj0czcj67nmq467ya"))))
    (properties `((upstream-name . "hgfocuscdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgfocuscdf")
    (synopsis "hgfocuscdf")
    (description
     "This package provides a package containing an environment representing the
HG-Focus.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-hgfocus-db
  (package
    (name "r-hgfocus-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hgfocus.db" version
                              'annotation))
       (sha256
        (base32 "0wi1xlmyad1ni071vmrfl374brifmpzk7ylnz8xvinxs66w1yakv"))))
    (properties `((upstream-name . "hgfocus.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hgfocus.db")
    (synopsis
     "Affymetrix Affymetrix HG-Focus Array annotation data (chip hgfocus)")
    (description
     "Affymetrix Affymetrix HG-Focus Array annotation data (chip hgfocus) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hgc
  (package
    (name "r-hgc")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HGC" version))
       (sha256
        (base32 "10g4lmhs8brfrci6n28iarzwm4dlvsbysssv2n25l1rp8wnl2sip"))))
    (properties `((upstream-name . "HGC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen
                             r-rcpp
                             r-rann
                             r-patchwork
                             r-mclust
                             r-matrix
                             r-ggplot2
                             r-dplyr
                             r-dendextend
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HGC")
    (synopsis "fast hierarchical graph-based clustering method")
    (description
     "HGC (short for Hierarchical Graph-based Clustering) is an R package for
conducting hierarchical clustering on large-scale single-cell RNA-seq
(@code{scRNA-seq}) data.  The key idea is to construct a dendrogram of cells on
their shared nearest neighbor (SNN) graph.  HGC provides functions for building
graphs and for conducting hierarchical clustering on the graph.  The users with
old R version could visit
https://github.com/@code{XuegongLab/HGC/tree/HGC4oldRVersion} to get HGC package
built for R 3.6.")
    (license license:gpl3)))

(define-public r-herper
  (package
    (name "r-herper")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Herper" version))
       (sha256
        (base32 "0aj9gskx02p986n29cd1z5hrzp4qp5cvwki25vyafb805wf7v69v"))))
    (properties `((upstream-name . "Herper")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-rjson r-reticulate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RockefellerUniversity/Herper")
    (synopsis
     "The Herper package is a simple toolset to install and manage conda packages and environments from R")
    (description
     "Many tools for data analysis are not available in R, but are present in public
repositories like conda.  The Herper package provides a comprehensive set of
functions to interact with the conda package managament system.  With Herper
users can install, manage and run conda packages from the comfort of their R
session.  Herper also provides an ad-hoc approach to handling external system
requirements for R packages.  For people developing packages with python conda
dependencies we recommend using basilisk
(https://bioconductor.org/packages/release/bioc/html/basilisk.html) to
internally support these system requirments pre-hoc.")
    (license license:gpl3)))

(define-public r-heron
  (package
    (name "r-heron")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HERON" version))
       (sha256
        (base32 "0z8bsvsj1xa4r93y244381yckqk4mc39ij3pabcbn2mgbihcs94d"))))
    (properties `((upstream-name . "HERON")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-spdep
                             r-s4vectors
                             r-metap
                             r-matrixstats
                             r-matrix
                             r-limma
                             r-iranges
                             r-harmonicmeanp
                             r-genomicranges
                             r-data-table
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ong-Research/HERON")
    (synopsis "Hierarchical Epitope pROtein biNding")
    (description
     "HERON is a software package for analyzing peptide binding array data.  In
addition to identifying significant binding probes, HERON also provides
functions for finding epitopes (string of consecutive peptides within a
protein).  HERON also calculates significance on the probe, epitope, and protein
level by employing meta p-value methods.  HERON is designed for obtaining calls
on the sample level and calculates fractions of hits for different conditions.")
    (license license:gpl3+)))

(define-public r-hermes
  (package
    (name "r-hermes")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hermes" version))
       (sha256
        (base32 "0mm9lvpgzbpcdbwks3ly7q4pl3w596jcin1c23mkvsj7gfh6r4nl"))))
    (properties `((upstream-name . "hermes")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-s4vectors
                             r-rlang
                             r-rdpack
                             r-r6
                             r-purrr
                             r-multiassayexperiment
                             r-matrixstats
                             r-magrittr
                             r-limma
                             r-lifecycle
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-ggfortify
                             r-genomicranges
                             r-forcats
                             r-envstats
                             r-edger
                             r-dplyr
                             r-deseq2
                             r-complexheatmap
                             r-circlize
                             r-checkmate
                             r-biomart
                             r-biocgenerics
                             r-biobase
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/insightsengineering/hermes/")
    (synopsis "Preprocessing, analyzing, and reporting of RNA-seq data")
    (description
     "This package provides classes and functions for quality control, filtering,
normalization and differential expression analysis of pre-processed `RNA-seq`
data.  Data can be imported from `@code{SummarizedExperiment`} as well as
`matrix` objects and can be annotated from `@code{BioMart`}.  Filtering for
genes without too low expression or containing required annotations, as well as
filtering for samples with sufficient correlation to other samples or total
number of reads is supported.  The standard normalization methods including cpm,
rpkm and tpm can be used, and DESeq2` as well as voom differential expression
analyses are available.")
    (license license:asl2.0)))

(define-public r-hem
  (package
    (name "r-hem")
    (version "1.76.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HEM" version))
       (sha256
        (base32 "091axqfgm8alz4k76b7ap1dl2cx7cim4l43zyvf91wimr6a13pbx"))))
    (properties `((upstream-name . "HEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page
     "http://www.healthsystem.virginia.edu/internet/hes/biostat/bioinformatics/")
    (synopsis
     "Heterogeneous error model for identification of differentially expressed genes under multiple conditions")
    (description
     "This package fits heterogeneous error models for analysis of microarray data.")
    (license license:gpl2+)))

(define-public r-help
  (package
    (name "r-help")
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HELP" version))
       (sha256
        (base32 "08g9xivzgwla4qvsca015d2hr2xbgiga9wd2xm5xphhb64lgzass"))))
    (properties `((upstream-name . "HELP")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/HELP")
    (synopsis "Tools for HELP data analysis")
    (description
     "The package contains a modular pipeline for analysis of HELP microarray data,
and includes graphical and mathematical tools with more general applications.")
    (license license:gpl2+)))

(define-public r-hellorangesdata
  (package
    (name "r-hellorangesdata")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HelloRangesData" version
                              'experiment))
       (sha256
        (base32 "19gk0xhvpnqqrr6pxiwyyhszi93pjjfiknfj1gvzdrj81p06qhbh"))))
    (properties `((upstream-name . "HelloRangesData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/HelloRangesData")
    (synopsis "Data for the HelloRanges tutorial vignette")
    (description
     "This package provides the data that were used in the bedtools tutorial by Aaron
Quinlan (http://quinlanlab.org/tutorials/bedtools/bedtools.html).  Includes a
subset of the @code{DnaseI} hypersensitivity data from \"Maurano et al.
Systematic Localization of Common Disease-Associated Variation in Regulatory
DNA. Science.  2012.  Vol.  337 no.  6099 pp.  1190-1195.\" The rest of the
tracks were originally downloaded from the UCSC table browser.  See the
@code{HelloRanges} vignette for a port of the bedtools tutorial to R.")
    (license license:gpl2+)))

(define-public r-helloranges
  (package
    (name "r-helloranges")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HelloRanges" version))
       (sha256
        (base32 "0idv6aravk0jj8p33kvc620p60ciyrkd293ba034g6j5921ym6gx"))))
    (properties `((upstream-name . "HelloRanges")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-docopt
                             r-bsgenome
                             r-biostrings
                             r-biocio
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/HelloRanges")
    (synopsis "Introduce *Ranges to bedtools users")
    (description
     "Translates bedtools command-line invocations to R code calling functions from
the Bioconductor *Ranges infrastructure.  This is intended to educate novice
Bioconductor users and to compare the syntax and semantics of the two
frameworks.")
    (license license:gpl2+)))

(define-public r-heebodata
  (package
    (name "r-heebodata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HEEBOdata" version
                              'experiment))
       (sha256
        (base32 "0nkggzidbzya9g7v412iwjkm6pah5siha1jai48k3hhfa4i51jj7"))))
    (properties `((upstream-name . "HEEBOdata")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/HEEBOdata")
    (synopsis "HEEBO set and HEEBO controls")
    (description "R objects describing the HEEBO oligo set.")
    (license license:lgpl2.0+)))

(define-public r-heatmaps
  (package
    (name "r-heatmaps")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "heatmaps" version))
       (sha256
        (base32 "0295lsiicwcdsnm1annyix7na6xipmvany8qpqwi4d87i5z2imhw"))))
    (properties `((upstream-name . "heatmaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-plotrix
                             r-matrix
                             r-kernsmooth
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-ebimage
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/heatmaps")
    (synopsis
     "Flexible Heatmaps for Functional Genomics and Sequence Features")
    (description
     "This package provides functions for plotting heatmaps of genome-wide data across
genomic intervals, such as @code{ChIP-seq} signals at peaks or across promoters.
 Many functions are also provided for investigating sequence features.")
    (license license:artistic2.0)))

(define-public r-healthyflowdata
  (package
    (name "r-healthyflowdata")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "healthyFlowData" version
                              'experiment))
       (sha256
        (base32 "01hq1nchjyzps5nvsvpgxrw1vds92fv0sggzlls21ggrjhyrx8kp"))))
    (properties `((upstream-name . "healthyFlowData")))
    (build-system r-build-system)
    (propagated-inputs (list r-flowcore))
    (home-page "https://bioconductor.org/packages/healthyFlowData")
    (synopsis "Healthy dataset used by the flowMatch package")
    (description
     "This package provides a healthy dataset with 20 flow cytometry samples used by
the @code{flowMatch} package.")
    (license license:artistic2.0)))

(define-public r-healthycontrolspresencechecker
  (package
    (name "r-healthycontrolspresencechecker")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "healthyControlsPresenceChecker" version
                              'experiment))
       (sha256
        (base32 "14gq24z99l04kcn13414zjn17184l3p5l6draxwy3820m9sijzgq"))))
    (properties `((upstream-name . "healthyControlsPresenceChecker")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-magrittr r-geoquery
                             r-geneexpressionfromgeo))
    (native-inputs (list r-knitr))
    (home-page
     "https://github.com/davidechicco/healthyControlsPresenceChecker")
    (synopsis
     "Dowloads A Gene Expression Dataset From GEO And Checks If It Contains Data Of Healthy Controls Or Not")
    (description
     "This package provides a function that reads in the GEO accession code of a gene
expression dataset, retrieves its data from GEO, and checks if data of healthy
controls are present in the dataset.  It returns true if healthy controls data
are found, and false otherwise.  GEO: Gene Expression Omnibus.  ID: identifier
code.  The GEO datasets are downloaded from the URL
<https://ftp.ncbi.nlm.nih.gov/geo/series/>.")
    (license license:gpl3)))

(define-public r-hdtd
  (package
    (name "r-hdtd")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HDTD" version))
       (sha256
        (base32 "15lc2g6mcvgy0v0pjl9f1khhznpxc7ij8aimj20w2qaz1h6sqmpp"))))
    (properties `((upstream-name . "HDTD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/AnestisTouloumis/HDTD")
    (synopsis
     "Statistical Inference about the Mean Matrix and the Covariance Matrices in High-Dimensional Transposable Data (HDTD)")
    (description
     "Characterization of intra-individual variability using physiologically relevant
measurements provides important insights into fundamental biological questions
ranging from cell type identity to tumor development.  For each individual, the
data measurements can be written as a matrix with the different subsamples of
the individual recorded in the columns and the different phenotypic units
recorded in the rows.  Datasets of this type are called high-dimensional
transposable data.  The HDTD package provides functions for conducting
statistical inference for the mean relationship between the row and column
variables and for the covariance structure within and between the row and column
variables.")
    (license license:gpl3)))

(define-public r-hd2013sgi
  (package
    (name "r-hd2013sgi")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HD2013SGI" version
                              'experiment))
       (sha256
        (base32 "0r4nlbz7b70z1ii9wisk8nj218m2j5qmpfj8k2sp8k723gmsg4x0"))))
    (properties `((upstream-name . "HD2013SGI")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcd
                             r-splots
                             r-rcolorbrewer
                             r-lsd
                             r-limma
                             r-gplots
                             r-geneplotter
                             r-ebimage))
    (home-page "https://bioconductor.org/packages/HD2013SGI")
    (synopsis
     "Mapping genetic interactions in human cancer cells with RNAi and multiparametric phenotyping")
    (description
     "This package contains the experimental data and a complete executable transcript
(vignette) of the analysis of the HCT116 genetic interaction matrix presented in
the paper \"Mapping genetic interactions in human cancer cells with RNAi and
multiparametric phenotyping\" by C. Laufer, B. Fischer, M. Billmann, W. Huber, M.
Boutros; Nature Methods (2013) 10:427-31.  doi: 10.1038/nmeth.2436.")
    (license license:artistic2.0)))

(define-public r-hcg110probe
  (package
    (name "r-hcg110probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hcg110probe" version
                              'annotation))
       (sha256
        (base32 "0avr5dmm86b81fli5zb2vp6ax8imqxvc5bzsksq574a8rn6xf1dq"))))
    (properties `((upstream-name . "hcg110probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hcg110probe")
    (synopsis "Probe sequence data for microarrays of type hcg110")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was HC-G110\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-hcg110cdf
  (package
    (name "r-hcg110cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hcg110cdf" version
                              'annotation))
       (sha256
        (base32 "1208b5sn9cdsvz4wa29ha5vp9mpvafkq0adj7nlzs4yav2z26van"))))
    (properties `((upstream-name . "hcg110cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hcg110cdf")
    (synopsis "hcg110cdf")
    (description
     "This package provides a package containing an environment representing the
HC_G110.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-hcg110-db
  (package
    (name "r-hcg110-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hcg110.db" version
                              'annotation))
       (sha256
        (base32 "0g4j80rn76cm4dcdan091awlmxldq5dp6lhr7g7gqbiiq5czbbmd"))))
    (properties `((upstream-name . "hcg110.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/hcg110.db")
    (synopsis
     "Affymetrix Affymetrix HC_G110 Array annotation data (chip hcg110)")
    (description
     "Affymetrix Affymetrix HC_G110 Array annotation data (chip hcg110) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-hcatonsildata
  (package
    (name "r-hcatonsildata")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HCATonsilData" version
                              'experiment))
       (sha256
        (base32 "1wg0mvc3gwf80bgsfkvdcnnzy7qbnffbbrcy3f87jyw4a20irpp1"))))
    (properties `((upstream-name . "HCATonsilData")))
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
                             r-rmarkdown
                             r-htmltools
                             r-hdf5array
                             r-experimenthub
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/massonix/HCATonsilData")
    (synopsis "Provide programmatic access to the tonsil cell atlas datasets")
    (description
     "This package provides access to the @code{scRNA-seq}, @code{scATAC-seq},
multiome, CITE-seq and spatial transcriptomics (Visium) data generated by the
tonsil cell atlas in the context of the Human Cell Atlas (HCA).  The data is
provided via the Bioconductor project in the form of
@code{SingleCellExperiments}.  Additionally, information on the whole compendium
of identified cell types is provided in form of a glossary.")
    (license license:expat)))

(define-public r-hcadata
  (package
    (name "r-hcadata")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HCAData" version
                              'experiment))
       (sha256
        (base32 "1kdp9iwn0vy7hlxyh09vrl6cwj7ajy2zqk23w3rxa5py710prp1q"))))
    (properties `((upstream-name . "HCAData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-singlecellexperiment r-hdf5array
                             r-experimenthub r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/federicomarini/HCAData")
    (synopsis
     "Accessing The Datasets Of The Human Cell Atlas in R/Bioconductor")
    (description
     "This package allows a direct access to the dataset generated by the Human Cell
Atlas project for further processing in R and Bioconductor, in the comfortable
format of @code{SingleCellExperiment} objects (available in other formats here:
http://preview.data.humancellatlas.org/).")
    (license license:expat)))

(define-public r-hca
  (package
    (name "r-hca")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hca" version))
       (sha256
        (base32 "143np5y93b3ik5lrjiz7hhwwp89hq8h9ygvprydwcvn6k530111r"))))
    (properties `((upstream-name . "hca")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-shiny
                             r-readr
                             r-miniui
                             r-jsonlite
                             r-httr
                             r-dt
                             r-dplyr
                             r-digest
                             r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/hca")
    (synopsis "Exploring the Human Cell Atlas Data Coordinating Platform")
    (description
     "This package provides users with the ability to query the Human Cell Atlas data
repository for single-cell experiment data.  The `projects()`, `files()`,
`samples()` and `bundles()` functions retrieve summary information on each of
these indexes; corresponding `*_details()` are available for individual entries
of each index.  File-based resources can be downloaded using `files_download()`.
 Advanced use of the package allows the user to page through large result sets,
and to flexibly query the list-of-lists structure representing query responses.")
    (license license:expat)))

(define-public r-harmonizr
  (package
    (name "r-harmonizr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HarmonizR" version))
       (sha256
        (base32 "1bjyfxhlsslns7jiaaivld56w9j1gavdnrbciil6kiqs2q63fpj9"))))
    (properties `((upstream-name . "HarmonizR")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva
                             r-summarizedexperiment
                             r-seriation
                             r-plyr
                             r-limma
                             r-janitor
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HarmonizR")
    (synopsis "Handles missing values and makes more data available")
    (description
     "An implementation, which takes input data and makes it available for proper
batch effect removal by @code{ComBat} or Limma.  The implementation
appropriately handles missing values by dissecting the input matrix into smaller
matrices with sufficient data to feed the @code{ComBat} or limma algorithm.  The
adjusted data is returned to the user as a rebuild matrix.  The implementation
is meant to make as much data available as possible with minimal data loss.")
    (license license:gpl3)))

(define-public r-harmonizedtcgadata
  (package
    (name "r-harmonizedtcgadata")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HarmonizedTCGAData" version
                              'experiment))
       (sha256
        (base32 "1zi0605nq51zpgap9jsbkilpxalwlpld0crvxivk6pmgrbavvlf7"))))
    (properties `((upstream-name . "HarmonizedTCGAData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/HarmonizedTCGAData")
    (synopsis "Processed Harmonized TCGA Data of Five Selected Cancer Types")
    (description
     "This package contains the processed harmonized TCGA data of five cancer types
used in \"Tianle Ma and Aidong Zhang, Integrate Multi-omic Data Using Affinity
Network Fusion (ANF) for Cancer Patient Clustering\".")
    (license license:gpl3)))

(define-public r-harmandata
  (package
    (name "r-harmandata")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "HarmanData" version
                              'experiment))
       (sha256
        (base32 "1bf9jl9gl10gawv835hp8wxzzs1v9g3y3qzpki63j3dw5yssazh5"))))
    (properties `((upstream-name . "HarmanData")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://www.bioinformatics.csiro.au/harman/")
    (synopsis "Data for the Harman package")
    (description
     "Datasets of accompany Harman, a PCA and constrained optimisation based
technique.  Contains three example datasets: IMR90, Human lung fibroblast cells
exposed to nitric oxide; NPM, an experiment to test skin penetration of metal
oxide nanoparticles following topical application of sunscreens in non-pregnant
mice; OLF; an experiment to gauge the response of human olfactory
neurosphere-derived (@code{hONS}) cells to @code{ZnO} nanoparticles.  Since
version 1.24, this package also contains the Infinium5 dataset, a set of batch
correction adjustments across 5 Illumina Infinium Methylation @code{BeadChip}
datasets.  This file does not contain methylation data, but summary statistics
of 5 datasets after correction.  There is also an @code{EpiSCOPE_sample} file as
exampling for the new methylation clustering functionality in Harman.")
    (license license:gpl3)))

(define-public r-harman
  (package
    (name "r-harman")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Harman" version))
       (sha256
        (base32 "1b6w8wrlsvxpzbsp4vkrpfvx4icbvncl11q4j773knz5q0q9l6q0"))))
    (properties `((upstream-name . "Harman")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrixstats r-ckmeans-1d-dp))
    (native-inputs (list r-knitr))
    (home-page "http://www.bioinformatics.csiro.au/harman/")
    (synopsis
     "The removal of batch effects from datasets using a PCA and constrained optimisation based technique")
    (description
     "Harman is a PCA and constrained optimisation based technique that maximises the
removal of batch effects from datasets, with the constraint that the probability
of overcorrection (i.e.  removing genuine biological signal along with batch
noise) is kept to a fraction which is set by the end-user.")
    (license (license:fsdg-compatible "GPL-3 + file LICENCE"))))

(define-public r-harbchip
  (package
    (name "r-harbchip")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "harbChIP" version
                              'experiment))
       (sha256
        (base32 "1pliyvn6g3gbkiinz4q24ajmq0apw035a2c9xq6b91ccm8m7ddrk"))))
    (properties `((upstream-name . "harbChIP")))
    (build-system r-build-system)
    (propagated-inputs (list r-iranges r-biostrings r-biobase))
    (home-page "https://bioconductor.org/packages/harbChIP")
    (synopsis "Experimental Data Package: harbChIP")
    (description "data from a yeast @code{ChIP-chip} experiment.")
    (license license:artistic2.0)))

(define-public r-hapmapsnp6
  (package
    (name "r-hapmapsnp6")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapmapsnp6" version
                              'experiment))
       (sha256
        (base32 "15npa8h6qpp1i0ir2y6knvzb5f4rn9zimyl6sw24ccqbvimjkf7f"))))
    (properties `((upstream-name . "hapmapsnp6")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hapmapsnp6")
    (synopsis "Sample data - Hapmap SNP 6.0 Affymetrix")
    (description "Sample dataset obtained from http://www.hapmap.org.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hapmapsnp5
  (package
    (name "r-hapmapsnp5")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapmapsnp5" version
                              'experiment))
       (sha256
        (base32 "03pmlz3cskxf683dpdns258gh8rv33amzpvb9mabbg0jagg2b9lw"))))
    (properties `((upstream-name . "hapmapsnp5")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hapmapsnp5")
    (synopsis "Sample data - Hapmap SNP 5.0 Affymetrix")
    (description "Sample dataset obtained from http://www.hapmap.org.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hapmap500ksty
  (package
    (name "r-hapmap500ksty")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapmap500ksty" version
                              'experiment))
       (sha256
        (base32 "0lnzwdcjz5f9imqprkh9qxrakg8qdh3j83bq5qaaq54mdh76kd68"))))
    (properties `((upstream-name . "hapmap500ksty")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hapmap500ksty")
    (synopsis "Sample data - Hapmap 500K STY Affymetrix")
    (description "Sample dataset obtained from http://www.hapmap.org.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hapmap500knsp
  (package
    (name "r-hapmap500knsp")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapmap500knsp" version
                              'experiment))
       (sha256
        (base32 "0lbrn02lyca76xk2h2iddxpkvsj2kvz37m1dn0l5pwbz6igpllqp"))))
    (properties `((upstream-name . "hapmap500knsp")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hapmap500knsp")
    (synopsis "Sample data - Hapmap 500K NSP Affymetrix")
    (description "Sample dataset obtained from http://www.hapmap.org.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hapmap370k
  (package
    (name "r-hapmap370k")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapmap370k" version
                              'annotation))
       (sha256
        (base32 "0n6rmrqcbl665a1l6jxk1gn6518x4gxadzy5dc9k9v01cbh3qzmw"))))
    (properties `((upstream-name . "hapmap370k")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hapmap370k")
    (synopsis "Example Illumina 370k HapMap Data")
    (description
     "Example @code{HapMap} data from Illumina 370k @code{BeadChips}.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hapmap100kxba
  (package
    (name "r-hapmap100kxba")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapmap100kxba" version
                              'experiment))
       (sha256
        (base32 "1afvfh6mckyi575qlp579p1akya4q7h0c9zp28s7n5nyljmh572i"))))
    (properties `((upstream-name . "hapmap100kxba")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hapmap100kxba")
    (synopsis "Sample data - Hapmap 100K XBA Affymetrix")
    (description "Sample dataset obtained from http://www.hapmap.org.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hapmap100khind
  (package
    (name "r-hapmap100khind")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapmap100khind" version
                              'experiment))
       (sha256
        (base32 "0a8j45fxr3sm4q689v29n9gj60g21pk3ixhv7s9plig12ma7nfnz"))))
    (properties `((upstream-name . "hapmap100khind")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/hapmap100khind")
    (synopsis "Sample data - Hapmap 100K HIND Affymetrix")
    (description "Sample dataset obtained from http://www.hapmap.org.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hapfabia
  (package
    (name "r-hapfabia")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "hapFabia" version))
       (sha256
        (base32 "0vqfljpdlsdnq0ms98ar2niy5yrlmixlwvaq5ynfvsrpr8hj4wwq"))))
    (properties `((upstream-name . "hapFabia")))
    (build-system r-build-system)
    (propagated-inputs (list r-fabia r-biobase))
    (home-page "http://www.bioinf.jku.at/software/hapFabia/hapFabia.html")
    (synopsis
     "hapFabia: Identification of very short segments of identity by descent (IBD) characterized by rare variants in large sequencing data")
    (description
     "This package provides a package to identify very short IBD segments in large
sequencing data by FABIA biclustering.  Two haplotypes are identical by descent
(IBD) if they share a segment that both inherited from a common ancestor.
Current IBD methods reliably detect long IBD segments because many minor alleles
in the segment are concordant between the two haplotypes.  However, many cohort
studies contain unrelated individuals which share only short IBD segments.  This
package provides software to identify short IBD segments in sequencing data.
Knowledge of short IBD segments are relevant for phasing of genotyping data,
association studies, and for population genetics, where they shed light on the
evolutionary history of humans.  The package supports VCF formats, is based on
sparse matrix operations, and provides visualization of haplotype clusters in
different formats.")
    (license license:lgpl2.1+)))

(define-public r-h5vcdata
  (package
    (name "r-h5vcdata")
    (version "2.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "h5vcData" version
                              'experiment))
       (sha256
        (base32 "04ymiclfwwp68h8pzpxrfrb5x9njqknhyhihbcj4v51qzx0y4jid"))))
    (properties `((upstream-name . "h5vcData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/h5vcData")
    (synopsis "Example data for the h5vc package")
    (description
     "This package contains the data used in the vignettes and examples of the h5vc
package.")
    (license license:gpl3+)))

(define-public r-h5vc
  (package
    (name "r-h5vc")
    (version "2.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "h5vc" version))
       (sha256
        (base32 "0nv6x14adjwz7izsfyirnr13k9aa5kh34nqq9p4lawxa76d0bv4p"))))
    (properties `((upstream-name . "h5vc")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-rhtslib
                             r-rhdf5
                             r-reshape
                             r-iranges
                             r-h5vcdata
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-biostrings
                             r-biocparallel
                             r-batchjobs
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/h5vc")
    (synopsis "Managing alignment tallies using a hdf5 backend")
    (description
     "This package contains functions to interact with tally data from NGS experiments
that is stored in HDF5 files.")
    (license license:gpl3+)))

(define-public r-h20kcod-db
  (package
    (name "r-h20kcod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "h20kcod.db" version
                              'annotation))
       (sha256
        (base32 "0csh59bgpn5xyaw6bfg7nvi9vcvjd4f66f0dr3xh7c6316835mnx"))))
    (properties `((upstream-name . "h20kcod.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/h20kcod.db")
    (synopsis
     "Codelink UniSet Human 20k I Bioarray annotation data (chip h20kcod)")
    (description
     "Codelink @code{UniSet} Human 20k I Bioarray annotation data (chip h20kcod)
assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-h10kcod-db
  (package
    (name "r-h10kcod-db")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "h10kcod.db" version
                              'annotation))
       (sha256
        (base32 "0f30n339ib8q478a7axjdh8hzrqws762m680ha0sxm3a0nxwapgg"))))
    (properties `((upstream-name . "h10kcod.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/h10kcod.db")
    (synopsis
     "Codelink UniSet Human I Bioarray (~10 000 human genes) annotation data (chip h10kcod)")
    (description
     "Codelink @code{UniSet} Human I Bioarray (~10 000 human genes) annotation data
(chip h10kcod) assembled using data from public repositories.")
    (license license:artistic2.0)))

