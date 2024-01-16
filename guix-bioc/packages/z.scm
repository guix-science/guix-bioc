(define-module (guix-bioc packages z)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages web)
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

(define-public r-zygositypredictor
  (package
    (name "r-zygositypredictor")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ZygosityPredictor" version))
       (sha256
        (base32 "00vwrz9f8bcrksb41vklx1w8wp44vvbp5jac5bw5c405arman9nc"))))
    (properties `((upstream-name . "ZygosityPredictor")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-tibble
                             r-stringr
                             r-rsamtools
                             r-purrr
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

(define-public r-zenith
  (package
    (name "r-zenith")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "zenith" version))
       (sha256
        (base32 "0wy3v69pp8jhij1svncq86x35xxr2d0gl5mrk7h8w4341sbms4p4"))))
    (properties `((upstream-name . "zenith")))
    (build-system r-build-system)
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
                             r-enrichmentbrowser))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://DiseaseNeuroGenomics.github.io/zenith")
    (synopsis
     "Gene set analysis following differential expression using linear (mixed) modeling with dream")
    (description
     "Zenith performs gene set analysis on the result of differential expression using
linear (mixed) modeling with dream by considering the correlation between gene
expression traits.  This package implements the camera method from the limma
package proposed by Wu and Smyth (2012).  Zenith is a simple extension of camera
to be compatible with linear mixed models implemented in
@code{variancePartition::dream}().")
    (license license:artistic2.0)))

