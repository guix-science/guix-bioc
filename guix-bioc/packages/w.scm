(define-module (guix-bioc packages w)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages e)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages x)
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

(define-public r-wpm
  (package
    (name "r-wpm")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "wpm" version))
       (sha256
        (base32 "0g9cvxqyvmhd55s58n1940vsx8klkkmphakqz1apylkrlzylgzya"))))
    (properties `((upstream-name . "wpm")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-stringr
                             r-shinywidgets
                             r-shinydashboard
                             r-shinycustomloader
                             r-shiny
                             r-rlang
                             r-rcolorbrewer
                             r-logging
                             r-golem
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-config
                             r-cli
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HelBor/wpm")
    (synopsis "Well Plate Maker")
    (description
     "The Well-Plate Maker (WPM) is a shiny application deployed as an R package.
Functions for a command-line/script use are also available.  The WPM allows
users to generate well plate maps to carry out their experiments while improving
the handling of batch effects.  In particular, it helps controlling the \"plate
effect\" thanks to its ability to randomize samples over multiple well plates.
The algorithm for placing the samples is inspired by the backtracking algorithm:
the samples are placed at random while respecting specific spatial constraints.")
    (license license:artistic2.0)))

(define-public r-weitrix
  (package
    (name "r-weitrix")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "weitrix" version))
       (sha256
        (base32 "0rn3dnz8bg9rkc0ksfpn3hw0jhznqhnih91xgxnnka3zq1hs3bxv"))))
    (properties `((upstream-name . "weitrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-topconfects
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-rhpcblasctl
                             r-reshape2
                             r-purrr
                             r-limma
                             r-glm2
                             r-ggplot2
                             r-dplyr
                             r-delayedmatrixstats
                             r-delayedarray
                             r-ckmeans-1d-dp
                             r-biocparallel
                             r-biocgenerics
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/weitrix")
    (synopsis
     "Tools for matrices with precision weights, test and explore weighted or sparse data")
    (description
     "Data type and tools for working with matrices having precision weights and
missing data.  This package provides a common representation and tools that can
be used with many types of high-throughput data.  The meaning of the weights is
compatible with usage in the base R function \"lm\" and the package \"limma\".
Calibrate weights to account for known predictors of precision.  Find rows with
excess variability.  Perform differential testing and find rows with the largest
confident differences.  Find PCA-like components of variation even with many
missing values, rotated so that individual components may be meaningfully
interpreted. @code{DelayedArray} matrices and @code{BiocParallel} are supported.")
    (license (list license:lgpl2.1
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-weaver
  (package
    (name "r-weaver")
    (version "1.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "weaver" version))
       (sha256
        (base32 "1y3zrycmv8yg0k521v1pgwzrlrwhsq7nbsfq5nakmlnrra6m9hpr"))))
    (properties `((upstream-name . "weaver")))
    (build-system r-build-system)
    (propagated-inputs (list r-digest r-codetools))
    (home-page "https://bioconductor.org/packages/weaver")
    (synopsis "Tools and extensions for processing Sweave documents")
    (description
     "This package provides enhancements on the Sweave() function in the base package.
 In particular a facility for caching code chunk results is included.")
    (license license:gpl2)))

(define-public r-waddr
  (package
    (name "r-waddr")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "waddR" version))
       (sha256
        (base32 "07a5px5vixni5zcaqyarlhhqyf6md53k6ll4c6qc6lan2gj28pk7"))))
    (properties `((upstream-name . "waddR")))
    (build-system r-build-system)
    (propagated-inputs (list r-singlecellexperiment
                             r-rcpparmadillo
                             r-rcpp
                             r-eva
                             r-biocparallel
                             r-biocfilecache
                             r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/goncalves-lab/waddR.git")
    (synopsis
     "Statistical tests for detecting differential distributions based on the 2-Wasserstein distance")
    (description
     "The package offers statistical tests based on the 2-Wasserstein distance for
detecting and characterizing differences between two distributions given in the
form of samples.  Functions for calculating the 2-Wasserstein distance and
testing for differential distributions are provided, as well as a specifically
tailored test for differential expression in single-cell RNA sequencing data.")
    (license license:expat)))

