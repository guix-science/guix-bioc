(define-module (guix-bioc packages j)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
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
  #:use-module (guix-bioc packages i)
  #:use-module (guix-bioc packages h)
  #:use-module (guix-bioc packages g)
  #:use-module (guix-bioc packages f)
  #:use-module (guix-bioc packages e)
  #:use-module (guix-bioc packages d)
  #:use-module (guix-bioc packages c)
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-johnsonkinasedata
  (package
    (name "r-johnsonkinasedata")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "JohnsonKinaseData" version
                              'experiment))
       (sha256
        (base32 "0dpn8hw9f5bd7rf5ahz812hz93b1dc0zwszh3im2lq2ylfjy14c0"))))
    (properties `((upstream-name . "JohnsonKinaseData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-purrr
                             r-experimenthub
                             r-dplyr
                             r-checkmate
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fgeier/JohnsonKinaseData/")
    (synopsis
     "Kinase PWMs based on data published by Johnson et al. 2023 and Yaron-Barir et al. 2024")
    (description
     "The packages provides position specific weight matrices (PWMs) for 303 human
serine/threonine and 93 tyrosine kinases originally published in Johnson et al.
2023 (doi:10.1038/s41586-022-05575-3) and Yaron-Barir et al.  2024
(doi:10.1038/s41586-024-07407-y).  The package includes basic functionality to
score user provided phosphosites.  It also includes pre-computed PWM scores
(\"background scores\") for a large collection of curated human phosphosites which
can be used to rank PWM scores relative to the background scores (\"percentile
rank\").")
    (license license:expat)))

(define-public r-jazzpanda
  (package
    (name "r-jazzpanda")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "jazzPanda" version))
       (sha256
        (base32 "1imq45l0yzdznvz0v0ibz2ghdhz9kzzi35x3ana7gc2zviabcgjl"))))
    (properties `((upstream-name . "jazzPanda")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatstat-geom
                             r-spatialexperiment
                             r-magrittr
                             r-glmnet
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-caret
                             r-bumpymatrix
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/phipsonlab/jazzPanda")
    (synopsis
     "Finding spatially relevant marker genes in image based spatial transcriptomics data")
    (description
     "This package contains the function to find marker genes for image-based spatial
transcriptomics data.  There are functions to create spatial vectors from the
cell and transcript coordiantes, which are passed as inputs to find marker
genes.  Marker genes are detected for every cluster by two approaches.  The
first approach is by permtuation testing, which is implmented in parallel for
finding marker genes for one sample study.  The other approach is to build a
linear model for every gene.  This approach can account for multiple samples and
backgound noise.")
    (license license:gpl3)))

(define-public r-jazaerimetadata-db
  (package
    (name "r-jazaerimetadata-db")
    (version "3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "JazaeriMetaData.db" version
                              'annotation))
       (sha256
        (base32 "04lvcmm4ybxkfwgbiwcnpyj6kpbd0gd7jz6ijlbbvv6zdgdmvykb"))))
    (properties `((upstream-name . "JazaeriMetaData.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-hs-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/JazaeriMetaData.db")
    (synopsis "data package containing annotation data for JazaeriMetaData")
    (description
     "This package provides a data package containing annotation data for
@code{JazaeriMetaData} assembled using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-jaspar2024
  (package
    (name "r-jaspar2024")
    (version "0.99.7")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "JASPAR2024" version
                              'annotation))
       (sha256
        (base32 "1zrbymy9r278znsrmy11m2akdlhyz4i4jq2px3vfxj98bw4msv6f"))))
    (properties `((upstream-name . "JASPAR2024")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://jaspar.elixir.no/")
    (synopsis "Data package for JASPAR database (version 2024)")
    (description
     "JASPAR (https://jaspar.elixir.no/) is a widely-used open-access database
presenting manually curated high-quality and non-redundant DNA-binding profiles
for transcription factors (TFs) across taxa.  In this 10th release and
20th-anniversary update, the CORE collection has expanded with 329 new profiles.
 We updated three existing profiles and provided orthogonal support for 72
profiles from the previous release UNVALIDATED collection.  Altogether, the
JASPAR 2024 update provides a 20 percent increase in CORE profiles from the
previous release.  A trimming algorithm enhanced profiles by removing low
information content flanking base pairs, which were likely uninformative (within
the capacity of the PFM models) for TFBS predictions and modelling TF-DNA
interactions.  This release includes enhanced metadata, featuring a refined
classification for plant TFs structural DNA-binding domains.  The new JASPAR
collections prompt updates to the genomic tracks of predicted TF-binding sites
in 8 organisms, with human and mouse tracks available as native tracks in the
UCSC Genome browser.  All data are available through the JASPAR web interface
and programmatically through its API and the updated Bioconductor and
@code{pyJASPAR} packages.  Finally, a new TFBS extraction tool enables users to
retrieve predicted JASPAR TFBSs intersecting their genomic regions of interest.")
    (license license:gpl2)))

(define-public r-jaspar2022
  (package
    (name "r-jaspar2022")
    (version "0.99.8")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "JASPAR2022" version
                              'annotation))
       (sha256
        (base32 "0di84aydk5brgdz1qh30fh1jizwd8w1rsz74mw4apv5s8ayryl48"))))
    (properties `((upstream-name . "JASPAR2022")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "http://jaspar.genereg.net/")
    (synopsis "Data package for JASPAR database (version 2022)")
    (description
     "JASPAR is an open-access database containing manually curated, non-redundant
transcription factor (TF) binding profiles for TFs across six taxonomic groups.
In this 9th release, we expanded the CORE collection with 341 new profiles (148
for plants, 101 for vertebrates, 85 for urochordates, and 7 for insects), which
corresponds to a 19% expansion over the previous release.  To search
thisdatabases, please use the package TFBSTools (>= 1.31.2).")
    (license license:gpl2)))

(define-public r-jaspar2018
  (package
    (name "r-jaspar2018")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "JASPAR2018" version
                              'annotation))
       (sha256
        (base32 "1iq5b51ryah2ccdx16yyigfa2jiapcpm94l6vgvd4v7b94jjp8l7"))))
    (properties `((upstream-name . "JASPAR2018")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://jaspar.genereg.net/")
    (synopsis "Data package for JASPAR 2018")
    (description
     "Data package for JASPAR 2018.  To search this databases, please use the package
TFBSTools (>= 1.15.6).")
    (license license:gpl2)))

(define-public r-jaspar2014
  (package
    (name "r-jaspar2014")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "JASPAR2014" version
                              'experiment))
       (sha256
        (base32 "052zhj7zcs143imb5gmd21ai76j7algi42dr4fc0j7i8y6klpq3a"))))
    (properties `((upstream-name . "JASPAR2014")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biostrings))
    (home-page "http://jaspar.genereg.net/")
    (synopsis "Data package for JASPAR")
    (description
     "Data package for JASPAR 2014.  To search this databases, please use the package
TFBSTools.")
    (license license:gpl2)))

