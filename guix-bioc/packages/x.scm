(define-module (guix-bioc packages x)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-bioc packages z)
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

(define-public r-xnastring
  (package
    (name "r-xnastring")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XNAString" version))
       (sha256
        (base32 "0g47fdbgpvprx71qng0kdqicv2p0gk5pyx0c0zpa6ffv5mbhjhy4"))))
    (properties `((upstream-name . "XNAString")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-s4vectors
                             r-rcpp
                             r-iranges
                             r-genomicranges
                             r-future-apply
                             r-formattable
                             r-data-table
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/XNAString")
    (synopsis "Efficient Manipulation of Modified Oligonucleotide Sequences")
    (description
     "The XNAString package allows for description of base sequences and associated
chemical modifications in a single object.  XNAString is able to capture single
stranded, as well as double stranded molecules.  Chemical modifications are
represented as independent strings associated with different features of the
molecules (base sequence, sugar sequence, backbone sequence, modifications) and
can be read or written to a HELM notation.  It also enables secondary structure
prediction using RNAfold from @code{ViennaRNA}.  XNAString is designed to be
efficient representation of nucleic-acid based therapeutics, therefore it stores
information about target sequences and provides interface for matching and
alignment functions from Biostrings package.")
    (license license:gpl2)))

(define-public r-xeva
  (package
    (name "r-xeva")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Xeva" version))
       (sha256
        (base32 "1qyr1caf63f0sc6mrww6sdn7hh44r90rz6xdslm26b1827gz9zfn"))))
    (properties `((upstream-name . "Xeva")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rmisc
                             r-pharmacogx
                             r-nlme
                             r-ggplot2
                             r-downloader
                             r-doparallel
                             r-complexheatmap
                             r-biobase
                             r-bbmisc))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Xeva")
    (synopsis "Analysis of patient-derived xenograft (PDX) data")
    (description
     "The Xeva package provides efficient and powerful functions for patient-drived
xenograft (PDX) based pharmacogenomic data analysis.  This package contains a
set of functions to perform analysis of patient-derived xenograft data.  This
package was developed by the BHKLab, for further information please see our
documentation.")
    (license license:gpl3)))

(define-public r-xde
  (package
    (name "r-xde")
    (version "2.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "XDE" version))
       (sha256
        (base32 "0xnxbyrdafcx5dqms0sqp70bm62w1g92mjidmj99jm50ymjxpfl9"))))
    (properties `((upstream-name . "XDE")))
    (build-system r-build-system)
    (propagated-inputs (list r-siggenes
                             r-rcolorbrewer
                             r-mvtnorm
                             r-gtools
                             r-genemeta
                             r-genefilter
                             r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/XDE")
    (synopsis
     "XDE: a Bayesian hierarchical model for cross-study analysis of differential gene expression")
    (description
     "Multi-level model for cross-study detection of differential gene expression.")
    (license license:lgpl2.0)))

(define-public r-xcore
  (package
    (name "r-xcore")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "xcore" version))
       (sha256
        (base32 "0m176rbszbpi2900cf1p574hvi5qmvw9faf08g15wijk9r896qx7"))))
    (properties `((upstream-name . "xcore")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-multiassayexperiment
                             r-matrix
                             r-magrittr
                             r-iterators
                             r-iranges
                             r-glmnet
                             r-genomicranges
                             r-foreach
                             r-edger
                             r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/xcore")
    (synopsis "xcore expression regulators inference")
    (description
     "xcore is an R package for transcription factor activity modeling based on known
molecular signatures and user's gene expression data.  Accompanying xcoredata
package provides a collection of molecular signatures, constructed from publicly
available @code{ChiP-seq} experiments.  xcore use ridge regression to model
changes in expression as a linear combination of molecular signatures and find
their unknown activities.  Obtained, estimates can be further tested for
significance to select molecular signatures with the highest predicted effect on
the observed expression changes.")
    (license license:gpl2)))

