(define-module (guix-bioc packages y)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (guix-bioc packages z)
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

(define-public r-ygs98probe
  (package
    (name "r-ygs98probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ygs98probe" version
                              'annotation))
       (sha256
        (base32 "0awf6z4j2vb2jk9a9j2r512yd3m31660y68pasa9mp488m270a3q"))))
    (properties `((upstream-name . "ygs98probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ygs98probe")
    (synopsis "Probe sequence data for microarrays of type ygs98")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was YG-S98\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-ygs98frmavecs
  (package
    (name "r-ygs98frmavecs")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ygs98frmavecs" version
                              'annotation))
       (sha256
        (base32 "1xrm1209xnknwvad7nvg1a0mbxz15z12yd4x5bia3cq03zcmzf9m"))))
    (properties `((upstream-name . "ygs98frmavecs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/ygs98frmavecs")
    (synopsis "Vectors used by frma for microarrays of type ygs98")
    (description
     "This package was created by @code{frmaTools} version 1.19.3 and
hgu133ahsentrezgcdf version 19.0.0.")
    (license license:gpl2+)))

(define-public r-ygs98cdf
  (package
    (name "r-ygs98cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ygs98cdf" version
                              'annotation))
       (sha256
        (base32 "0j04biahbm2l31aayddp0z9rh3jq1ydxf3h8pxr3pvq2vjj1q2mh"))))
    (properties `((upstream-name . "ygs98cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ygs98cdf")
    (synopsis "ygs98cdf")
    (description
     "This package provides a package containing an environment representing the
YG_S98.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-ygs98-db
  (package
    (name "r-ygs98-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ygs98.db" version
                              'annotation))
       (sha256
        (base32 "1mp24vhx0fnjc2hhcsbnrr0ir0s1sn7bkx8j43d9kw7vzqm5xqxd"))))
    (properties `((upstream-name . "ygs98.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-sc-sgd-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ygs98.db")
    (synopsis
     "Affymetrix Affymetrix YG_S98 Array annotation data (chip ygs98)")
    (description
     "Affymetrix Affymetrix YG_S98 Array annotation data (chip ygs98) assembled using
data from public repositories.")
    (license license:artistic2.0)))

(define-public r-yeastrnaseq
  (package
    (name "r-yeastrnaseq")
    (version "0.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeastRNASeq" version
                              'experiment))
       (sha256
        (base32 "1ldxibqfl3y8ww1a6xcybjzpi90sy8cv4qlg84rki5kzd6lpjdl0"))))
    (properties `((upstream-name . "yeastRNASeq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/yeastRNASeq")
    (synopsis "Yeast RNA-Seq Experimental Data from Lee et al. 2008")
    (description
     "This package provides a selection of RNA-Seq data from a yeast transcriptome
experiment.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-yeastnagalakshmi
  (package
    (name "r-yeastnagalakshmi")
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeastNagalakshmi" version
                              'experiment))
       (sha256
        (base32 "1208pb425cbm34paqcx6waq79cxrsw0h2ja9ahv8x6c1nq3ij1a7"))))
    (properties `((upstream-name . "yeastNagalakshmi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/yeastNagalakshmi")
    (synopsis "Yeast genome RNA sequencing data based on Nagalakshmi et. al")
    (description
     "The yeast genome data was retrieved from the sequence read archive, aligned with
bwa, and converted to BAM format with samtools.")
    (license license:artistic2.0)))

(define-public r-yeastgsdata
  (package
    (name "r-yeastgsdata")
    (version "0.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeastGSData" version
                              'experiment))
       (sha256
        (base32 "0gv8pi1mvchip895pm770hgnwbk7y9748py46vfjhj0jh9ykr041"))))
    (properties `((upstream-name . "yeastGSData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/yeastGSData")
    (synopsis "Yeast Gold Standard Data")
    (description
     "This package provides a collection of so-called gold (and other) standard data
sets.")
    (license license:artistic2.0)))

(define-public r-yeastexpdata
  (package
    (name "r-yeastexpdata")
    (version "0.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeastExpData" version
                              'experiment))
       (sha256
        (base32 "0g2a61kaafz1ckym67dnn2azhdd06akvrprsxm5myg268mfvb1wc"))))
    (properties `((upstream-name . "yeastExpData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-graph))
    (home-page "https://bioconductor.org/packages/yeastExpData")
    (synopsis "Yeast Experimental Data")
    (description
     "This package provides a collection of different sets of experimental data from
yeast.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-yeastcc
  (package
    (name "r-yeastcc")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeastCC" version
                              'experiment))
       (sha256
        (base32 "00205z90ydybirpji60x8fqj3c53c2pcm5bavinc4jyb4dvfqn2y"))))
    (properties `((upstream-name . "yeastCC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/yeastCC")
    (synopsis
     "Spellman et al. (1998) and Pramila/Breeden (2006) yeast cell cycle microarray data")
    (description
     "@code{ExpressionSet} for Spellman et al. (1998) yeast cell cycle microarray
experiment.")
    (license license:artistic2.0)))

(define-public r-yeast2probe
  (package
    (name "r-yeast2probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeast2probe" version
                              'annotation))
       (sha256
        (base32 "125nif693qcmxc0nnnz917f9avggcdr8g9rfvx2qdc54a2l7vdb7"))))
    (properties `((upstream-name . "yeast2probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/yeast2probe")
    (synopsis "Probe sequence data for microarrays of type yeast2")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Yeast\\_2\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-yeast2cdf
  (package
    (name "r-yeast2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeast2cdf" version
                              'annotation))
       (sha256
        (base32 "0c68val9x8bfnv4xx0vag9dxwsx5q8dzbj0dpha3nshh12jw48w9"))))
    (properties `((upstream-name . "yeast2cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/yeast2cdf")
    (synopsis "yeast2cdf")
    (description
     "This package provides a package containing an environment representing the
Yeast_2.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-yeast2-db
  (package
    (name "r-yeast2-db")
    (version "3.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeast2.db" version
                              'annotation))
       (sha256
        (base32 "0aqbs3p6f3sc6nyggyk7gvg191b551rwq20009fnk0li50dg1ps6"))))
    (properties `((upstream-name . "yeast2.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-org-sc-sgd-db r-annotationdbi))
    (home-page "https://bioconductor.org/packages/yeast2.db")
    (synopsis
     "Affymetrix Affymetrix Yeast_2 Array annotation data (chip yeast2)")
    (description
     "Affymetrix Affymetrix Yeast_2 Array annotation data (chip yeast2) assembled
using data from public repositories.")
    (license license:artistic2.0)))

(define-public r-yeast-db0
  (package
    (name "r-yeast-db0")
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "yeast.db0" version
                              'annotation))
       (sha256
        (base32 "0vh15i4nnyl2g2l22hib3j8gscll57vgyr2hyq971pbpz6s7iv48"))))
    (properties `((upstream-name . "yeast.db0")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/yeast.db0")
    (synopsis "Base Level Annotation databases for yeast")
    (description
     "Base annotation databases for yeast, intended ONLY to be used by
@code{AnnotationDbi} to produce regular annotation packages.")
    (license license:artistic2.0)))

(define-public r-ye6100subdcdf
  (package
    (name "r-ye6100subdcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ye6100subdcdf" version
                              'annotation))
       (sha256
        (base32 "11b1fflgc34lrj4yf1p7way5n83cm9c7znsbxpzlwddwyy8qib30"))))
    (properties `((upstream-name . "ye6100subdcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ye6100subdcdf")
    (synopsis "ye6100subdcdf")
    (description
     "This package provides a package containing an environment representing the
Ye6100@code{subD.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-ye6100subccdf
  (package
    (name "r-ye6100subccdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ye6100subccdf" version
                              'annotation))
       (sha256
        (base32 "0mhr4zd33gfvvivc17k7fb6nvmhq6h3q0xbx2zl09zd6qk09kizm"))))
    (properties `((upstream-name . "ye6100subccdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ye6100subccdf")
    (synopsis "ye6100subccdf")
    (description
     "This package provides a package containing an environment representing the
Ye6100@code{subC.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-ye6100subbcdf
  (package
    (name "r-ye6100subbcdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ye6100subbcdf" version
                              'annotation))
       (sha256
        (base32 "1169hv56981b915rlr5w5sn6ppyjd8as7f4k1hbjzadrdrl3glwp"))))
    (properties `((upstream-name . "ye6100subbcdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ye6100subbcdf")
    (synopsis "ye6100subbcdf")
    (description
     "This package provides a package containing an environment representing the
Ye6100@code{subB.CDF} file.")
    (license license:lgpl2.0+)))

(define-public r-ye6100subacdf
  (package
    (name "r-ye6100subacdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ye6100subacdf" version
                              'annotation))
       (sha256
        (base32 "0pkiw0lh4p2ng0rf9n0d589yasdx7mbw0srn5drdqyr5qwi9wfis"))))
    (properties `((upstream-name . "ye6100subacdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/ye6100subacdf")
    (synopsis "ye6100subacdf")
    (description
     "This package provides a package containing an environment representing the
Ye6100@code{subA.CDF} file.")
    (license license:lgpl2.0+)))

