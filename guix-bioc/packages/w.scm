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
  #:use-module (guix-bioc packages y)
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

(define-public r-wpm
  (package
    (name "r-wpm")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "wpm" version))
       (sha256
        (base32 "0iax3qncywjfjyqhhj6m9wcfycaqk8yaywg29js387bjwscr2irc"))))
    (properties `((upstream-name . "wpm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-worm-db0
  (package
    (name "r-worm-db0")
    (version "3.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "worm.db0" version
                              'annotation))
       (sha256
        (base32 "1r5man0ad7gkl0444ys7r60jiandb93i6d23g4vx5p31a2ih07jj"))))
    (properties `((upstream-name . "worm.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/worm.db0")
    (synopsis "Base Level Annotation databases for worm")
    (description
     "Base annotation databases for worm, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-wheatprobe
  (package
    (name "r-wheatprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "wheatprobe" version
                              'annotation))
       (sha256
        (base32 "1fifi3pvzdrg356idwz0kx7qlf5mssdxlyvwpn3cjgw0z7n7cnw8"))))
    (properties `((upstream-name . "wheatprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/wheatprobe")
    (synopsis "Probe sequence data for microarrays of type wheat")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was wheat\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-wheatcdf
  (package
    (name "r-wheatcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "wheatcdf" version
                              'annotation))
       (sha256
        (base32 "1gmbrdilqvm54h6nkb1cm01ki8aipiywd4qj8gpwlm2hqrimr8kr"))))
    (properties `((upstream-name . "wheatcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/wheatcdf")
    (synopsis "wheatcdf")
    (description
     "This package provides a package containing an environment representing the
wheat.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-wgsmapp
  (package
    (name "r-wgsmapp")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "WGSmapp" version
                              'experiment))
       (sha256
        (base32 "1x96sq82qfsrbzijb8f9yyk8d60acar6wz5v0afc9rcavkina941"))))
    (properties `((upstream-name . "WGSmapp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges))
    (home-page "https://bioconductor.org/packages/WGSmapp")
    (synopsis
     "Mappability tracks of Whole-genome Sequencing from the ENCODE Project")
    (description
     "This package provides whole-genome mappability tracks on human hg19/hg38
assembly.  We employed the 100-mers mappability track from the ENCODE Project
and computed weighted average of the mappability scores if multiple ENCODE
regions overlap with the same bin. “Blacklist” bins, including segmental
duplication regions and gaps in reference assembly from telomere, centromere,
and/or heterochromatin regions are included.  The dataset consists of three
assembled .bam files of single-cell whole genome sequencing from 10X for
illustration purposes.")
    (license license:gpl2)))

(define-public r-wes-1kg-wugsc
  (package
    (name "r-wes-1kg-wugsc")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "WES.1KG.WUGSC" version
                              'experiment))
       (sha256
        (base32 "17iyj3klw9c7pwv4g8895k2mkzgjymzp518ra77b25l0lfm6k2fc"))))
    (properties `((upstream-name . "WES.1KG.WUGSC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/WES.1KG.WUGSC")
    (synopsis
     "Whole Exome Sequencing (WES) of chromosome 22 401st to 500th exon from the 1000 Genomes (1KG) Project by the Washington University Genome Sequencing Center (WUGSC)")
    (description
     "The assembled .bam files of whole exome sequencing data from the 1000 Genomes
Project.  46 samples sequenced by the Washington University Genome Sequencing
Center are included.")
    (license license:gpl2)))

(define-public r-weitrix
  (package
    (name "r-weitrix")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "weitrix" version))
       (sha256
        (base32 "0lvd6wf4bm5yxz9097hz18amx4kx5mm4lcj6nk8508qpnffz8pqs"))))
    (properties `((upstream-name . "weitrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-weberdivechalcdata
  (package
    (name "r-weberdivechalcdata")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "WeberDivechaLCdata" version
                              'experiment))
       (sha256
        (base32 "0chvnnn5ihmq24safy45fdh22h12d7ihbxsj7zwd9af0nb15g9z3"))))
    (properties `((upstream-name . "WeberDivechaLCdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-spatialexperiment r-singlecellexperiment
                             r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lmweber/WeberDivechaLCdata")
    (synopsis
     "Spatially-resolved transcriptomics and single-nucleus RNA-sequencing data from the locus coeruleus (LC) in postmortem human brain samples")
    (description
     "Spatially-resolved transcriptomics (SRT) and single-nucleus RNA-sequencing
(@code{snRNA-seq}) data from the locus coeruleus (LC) in postmortem human brain
samples.  Data were generated with the 10x Genomics Visium SRT and 10x Genomics
Chromium @code{snRNA-seq} platforms.  Datasets are stored in
@code{SpatialExperiment} and @code{SingleCellExperiment} formats.")
    (license license:expat)))

(define-public r-weaver
  (package
    (name "r-weaver")
    (version "1.72.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "weaver" version))
       (sha256
        (base32 "0vqnrwv204mavggps48pjhazkz2hk4wj2hhjny88m5h3f1amb3hb"))))
    (properties `((upstream-name . "weaver")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-digest r-codetools))
    (home-page "https://bioconductor.org/packages/weaver")
    (synopsis "Tools and extensions for processing Sweave documents")
    (description
     "This package provides enhancements on the @code{Sweave()} function in the base
package.  In particular a facility for caching code chunk results is included.")
    (license license:gpl2)))

(define-public r-waddr
  (package
    (name "r-waddr")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "waddR" version))
       (sha256
        (base32 "01w57p09mm7fbx9w7swfy6zvryx31gpmj5jsp9mklij7ivd7wp4c"))))
    (properties `((upstream-name . "waddR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

