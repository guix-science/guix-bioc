(define-module (guix-bioc packages z)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
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
  #:use-module (guix-bioc packages b)
  #:use-module (guix-bioc packages a))

(define-public r-zygositypredictor
  (package
    (name "r-zygositypredictor")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ZygosityPredictor" version))
       (sha256
        (base32 "00nckxl38ajbzxlm011x3zx2q3ka844q6f4fxhyvd8587dl1qlxd"))))
    (properties `((upstream-name . "ZygosityPredictor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-tibble
                             r-stringr
                             r-rsamtools
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-knitr
                             r-iranges
                             r-igraph
                             r-genomicranges
                             r-genomicalignments
                             r-dplyr
                             r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ZygosityPredictor")
    (synopsis
     "Package for prediction of zygosity for variants/genes in NGS data")
    (description
     "The @code{ZygosityPredictor} allows to predict how many copies of a gene are
affected by small variants.  In addition to the basic calculations of the
affected copy number of a variant, the Zygosity-Predictor can integrate the
influence of several variants on a gene and ultimately make a statement if and
how many wild-type copies of the gene are left.  This information proves to be
of particular use in the context of translational medicine.  For example, in
cancer genomes, the Zygosity-Predictor can address whether unmutated copies of
tumor-suppressor genes are present.  Beyond this, it is possible to make this
statement for all genes of an organism.  The Zygosity-Predictor was primarily
developed to handle SNVs and INDELs (later addressed as small-variants) of
somatic and germline origin.  In order not to overlook severe effects outside of
the small-variant context, it has been extended with the assessment of large
scale deletions, which cause losses of whole genes or parts of them.")
    (license license:gpl2)))

(define-public r-zitools
  (package
    (name "r-zitools")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "zitools" version))
       (sha256
        (base32 "01mgf9m4080ws92zbdgxg28qlh9ly83nqa78x20kwhci3x95xy88"))))
    (properties `((upstream-name . "zitools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-reshape2
                             r-rcolorbrewer
                             r-pscl
                             r-phyloseq
                             r-matrixstats
                             r-matrixgenerics
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-deseq2
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kreutz-lab/zitools")
    (synopsis "Analysis of zero-inflated count data")
    (description
     "zitools allows for zero inflated count data analysis by either using
down-weighting of excess zeros or by replacing an appropriate proportion of
excess zeros with NA. Through overloading frequently used statistical functions
(such as mean, median, standard deviation), plotting functions (such as boxplots
or heatmap) or differential abundance tests, it allows a wide range of
downstream analyses for zero-inflated data in a less biased manner.  This
becomes applicable in the context of microbiome analyses, where the data is
often overdispersed and zero-inflated, therefore making data analysis extremly
challenging.")
    (license license:bsd-3)))

(define-public r-zenith
  (package
    (name "r-zenith")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "zenith" version))
       (sha256
        (base32 "02dm4gi996qb3v09915zg0b4ibakjv5gmv2p39i1x185y2rbjmr9"))))
    (properties `((upstream-name . "zenith")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variancepartition
                             r-tidyr
                             r-rfast
                             r-reshape2
                             r-rdpack
                             r-progress
                             r-msigdbr
                             r-limma
                             r-gseabase
                             r-ggplot2
                             r-enrichmentbrowser
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://DiseaseNeuroGenomics.github.io/zenith")
    (synopsis
     "Gene set analysis following differential expression using linear (mixed) modeling with dream")
    (description
     "Zenith performs gene set analysis on the result of differential expression using
linear (mixed) modeling with dream by considering the correlation between gene
expression traits.  This package implements the camera method from the limma
package proposed by Wu and Smyth (2012).  Zenith is a simple extension of camera
to be compatible with linear mixed models implemented in
@code{variancePartition::dream()}.")
    (license license:artistic2.0)))

(define-public r-zebrafishprobe
  (package
    (name "r-zebrafishprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "zebrafishprobe" version
                              'annotation))
       (sha256
        (base32 "1pb8z2rdhq11hq391xyi236scyafbp56kbhhwsnha36yygz5drw0"))))
    (properties `((upstream-name . "zebrafishprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/zebrafishprobe")
    (synopsis "Probe sequence data for microarrays of type zebrafish")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Zebrafish\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-zebrafishcdf
  (package
    (name "r-zebrafishcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "zebrafishcdf" version
                              'annotation))
       (sha256
        (base32 "0sq1xqhblbilvaiabhqyl9gxdj3jg576vgq8v0cls1zvvx0isrx0"))))
    (properties `((upstream-name . "zebrafishcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/zebrafishcdf")
    (synopsis "zebrafishcdf")
    (description
     "This package provides a package containing an environment representing the
Zebrafish.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-zebrafish-db0
  (package
    (name "r-zebrafish-db0")
    (version "3.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "zebrafish.db0" version
                              'annotation))
       (sha256
        (base32 "1kb8libhdkq3msa3h1nj4ysrfr1swn6irq2rnsihfamn5ggwnxkn"))))
    (properties `((upstream-name . "zebrafish.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/zebrafish.db0")
    (synopsis "Base Level Annotation databases for zebrafish")
    (description
     "Base annotation databases for zebrafish, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-zebrafish-db
  (package
    (name "r-zebrafish-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "zebrafish.db" version
                              'annotation))
       (sha256
        (base32 "13a65jxr3r5qjf82h1dr0k9qq20g14canqgqdd11k9gk5h31xhc7"))))
    (properties `((upstream-name . "zebrafish.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-dr-eg-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/zebrafish.db")
    (synopsis
     "Affymetrix Affymetrix Zebrafish Array annotation data (chip zebrafish)")
    (description
     "Affymetrix Affymetrix Zebrafish Array annotation data (chip zebrafish) assembled
using data from public repositories.")
    (license license:artistic2.0)))

