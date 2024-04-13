(define-module (guix-bioc packages t)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages g)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages f)
  #:use-module (gnu packages bioinformatics)
  #:use-module (guix-cran packages p)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
  #:use-module (guix-bioc packages v)
  #:use-module (guix-bioc packages u)
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

(define-public r-typeinfo
  (package
    (name "r-typeinfo")
    (version "1.68.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TypeInfo" version))
       (sha256
        (base32 "1r299hi7kia0m6yhqc6n0qxzdbhk2lqrsnxgjiicgddy095cq1gs"))))
    (properties `((upstream-name . "TypeInfo")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/TypeInfo")
    (synopsis "Optional Type Specification Prototype")
    (description
     "This package provides a prototype for a mechanism for specifying the types of
parameters and the return value for an R function.  This is meta-information
that can be used to generate stubs for servers and various interfaces to these
functions.  Additionally, the arguments in a call to a typed function can be
validated using the type specifications.  We allow types to be specified as
either i) by class name using either inheritance - is(x, @code{className}), or
strict instance of - class(x) %in% @code{className}, or ii) a dynamic test given
as an R expression which is evaluated at run-time.  More precise information and
interesting tests can be done via ii), but it is harder to use this information
as meta-data as it requires more effort to interpret it and it is of course
run-time information.  It is typically more meaningful.")
    (license license:bsd-2)))

(define-public r-txdb-sscrofa-ucsc-susscr3-refgene
  (package
    (name "r-txdb-sscrofa-ucsc-susscr3-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Sscrofa.UCSC.susScr3.refGene" version
                              'annotation))
       (sha256
        (base32 "01bl7zdxyhhg4706jhi7271fs09riixkyr3x0bancl1fpzwszc6p"))))
    (properties `((upstream-name . "TxDb.Sscrofa.UCSC.susScr3.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Sscrofa.UCSC.susScr3.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-sscrofa-ucsc-susscr11-refgene
  (package
    (name "r-txdb-sscrofa-ucsc-susscr11-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Sscrofa.UCSC.susScr11.refGene" version
                              'annotation))
       (sha256
        (base32 "1i3w8avi5ihkynapya1wy70i6f0nq4jyy5nvlwikppqpdjwn7gb4"))))
    (properties `((upstream-name . "TxDb.Sscrofa.UCSC.susScr11.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Sscrofa.UCSC.susScr11.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-scerevisiae-ucsc-saccer3-sgdgene
  (package
    (name "r-txdb-scerevisiae-ucsc-saccer3-sgdgene")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Scerevisiae.UCSC.sacCer3.sgdGene" version
                              'annotation))
       (sha256
        (base32 "1sjwl7fb3l3zxxbk8gkvzxwdsind0xjj7kmh7dachm6fi17hpb3d"))))
    (properties `((upstream-name . "TxDb.Scerevisiae.UCSC.sacCer3.sgdGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Scerevisiae.UCSC.sacCer3.sgdGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-scerevisiae-ucsc-saccer2-sgdgene
  (package
    (name "r-txdb-scerevisiae-ucsc-saccer2-sgdgene")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Scerevisiae.UCSC.sacCer2.sgdGene" version
                              'annotation))
       (sha256
        (base32 "0l5gcwhbvzx60p9hjhd31angamb0hkgdg2avga7341j77rd5pwza"))))
    (properties `((upstream-name . "TxDb.Scerevisiae.UCSC.sacCer2.sgdGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Scerevisiae.UCSC.sacCer2.sgdGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-rnorvegicus-ucsc-rn7-refgene
  (package
    (name "r-txdb-rnorvegicus-ucsc-rn7-refgene")
    (version "3.15.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Rnorvegicus.UCSC.rn7.refGene" version
                              'annotation))
       (sha256
        (base32 "0vvz341sclwxrgn14srdingyah6skd4a2qp8978qnd871n2z394f"))))
    (properties `((upstream-name . "TxDb.Rnorvegicus.UCSC.rn7.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn7.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-rnorvegicus-ucsc-rn6-refgene
  (package
    (name "r-txdb-rnorvegicus-ucsc-rn6-refgene")
    (version "3.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Rnorvegicus.UCSC.rn6.refGene" version
                              'annotation))
       (sha256
        (base32 "1piqli0wdq3r289is8lmijnshm8rmx7rphp2qfymlvc0jmvgs9wr"))))
    (properties `((upstream-name . "TxDb.Rnorvegicus.UCSC.rn6.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn6.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-rnorvegicus-ucsc-rn6-ncbirefseq
  (package
    (name "r-txdb-rnorvegicus-ucsc-rn6-ncbirefseq")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Rnorvegicus.UCSC.rn6.ncbiRefSeq" version
                              'annotation))
       (sha256
        (base32 "1gb8l88z1xiyc1r8hvv4kdahd0py2dr5k0zizsrfh013p6q7z5yw"))))
    (properties `((upstream-name . "TxDb.Rnorvegicus.UCSC.rn6.ncbiRefSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn6.ncbiRefSeq")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-rnorvegicus-ucsc-rn5-refgene
  (package
    (name "r-txdb-rnorvegicus-ucsc-rn5-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Rnorvegicus.UCSC.rn5.refGene" version
                              'annotation))
       (sha256
        (base32 "08kf9kmdvifcbz0lc8paqp10x272b0f1jh6bj241ii455xsby2zi"))))
    (properties `((upstream-name . "TxDb.Rnorvegicus.UCSC.rn5.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn5.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-rnorvegicus-ucsc-rn4-ensgene
  (package
    (name "r-txdb-rnorvegicus-ucsc-rn4-ensgene")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Rnorvegicus.UCSC.rn4.ensGene" version
                              'annotation))
       (sha256
        (base32 "0gv8bynfxxa471ap069mjvfrb1d7a0c4w5k8hxkr4hnsm44mschm"))))
    (properties `((upstream-name . "TxDb.Rnorvegicus.UCSC.rn4.ensGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn4.ensGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-rnorvegicus-biomart-igis
  (package
    (name "r-txdb-rnorvegicus-biomart-igis")
    (version "2.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Rnorvegicus.BioMart.igis" version
                              'annotation))
       (sha256
        (base32 "1099vkk8g3lxbgjxsm1p1m3mjj08nsw282mqxgzpnrxf7m6jll76"))))
    (properties `((upstream-name . "TxDb.Rnorvegicus.BioMart.igis")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.BioMart.igis")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-ptroglodytes-ucsc-pantro6-refgene
  (package
    (name "r-txdb-ptroglodytes-ucsc-pantro6-refgene")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Ptroglodytes.UCSC.panTro6.refGene" version
                              'annotation))
       (sha256
        (base32 "0z4lq7wy48kkxnx29zmrbmrq4qjrj3digwxkw3x54qq80nvzxiza"))))
    (properties `((upstream-name . "TxDb.Ptroglodytes.UCSC.panTro6.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ptroglodytes.UCSC.panTro6.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-ptroglodytes-ucsc-pantro5-refgene
  (package
    (name "r-txdb-ptroglodytes-ucsc-pantro5-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Ptroglodytes.UCSC.panTro5.refGene" version
                              'annotation))
       (sha256
        (base32 "0yypv9iqn4i36hnvcr2lsfgaabl8g2pm72ya4psvia261jr2i12i"))))
    (properties `((upstream-name . "TxDb.Ptroglodytes.UCSC.panTro5.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ptroglodytes.UCSC.panTro5.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-ptroglodytes-ucsc-pantro4-refgene
  (package
    (name "r-txdb-ptroglodytes-ucsc-pantro4-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Ptroglodytes.UCSC.panTro4.refGene" version
                              'annotation))
       (sha256
        (base32 "036g5zn9rzy8qivb1snhpancsz1z60i3r7z3g91bgla4jpgwwjv6"))))
    (properties `((upstream-name . "TxDb.Ptroglodytes.UCSC.panTro4.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ptroglodytes.UCSC.panTro4.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-mmusculus-ucsc-mm39-refgene
  (package
    (name "r-txdb-mmusculus-ucsc-mm39-refgene")
    (version "3.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmusculus.UCSC.mm39.refGene" version
                              'annotation))
       (sha256
        (base32 "0f7392c9zd5489jfsdxvwwmpnzscp70ayxv78gcg50m5mkgwaydv"))))
    (properties `((upstream-name . "TxDb.Mmusculus.UCSC.mm39.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmusculus.UCSC.mm39.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-mmusculus-ucsc-mm39-knowngene
  (package
    (name "r-txdb-mmusculus-ucsc-mm39-knowngene")
    (version "3.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmusculus.UCSC.mm39.knownGene" version
                              'annotation))
       (sha256
        (base32 "061rfyddq15sz684jchvwxww1ipi94xljcgwbz4a92k8i9cnysva"))))
    (properties `((upstream-name . "TxDb.Mmusculus.UCSC.mm39.knownGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmusculus.UCSC.mm39.knownGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-mmusculus-ucsc-mm10-ensgene
  (package
    (name "r-txdb-mmusculus-ucsc-mm10-ensgene")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmusculus.UCSC.mm10.ensGene" version
                              'annotation))
       (sha256
        (base32 "0saxi1fdiwd38sfvy1rynd3v44rbp158jv6sjqcivvaqnd84zg9s"))))
    (properties `((upstream-name . "TxDb.Mmusculus.UCSC.mm10.ensGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmusculus.UCSC.mm10.ensGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-mmulatta-ucsc-rhemac8-refgene
  (package
    (name "r-txdb-mmulatta-ucsc-rhemac8-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmulatta.UCSC.rheMac8.refGene" version
                              'annotation))
       (sha256
        (base32 "1k7mq3p96wfd0694zw00hs4529zvv8nnfdwlsb94bn11qjhr1zrz"))))
    (properties `((upstream-name . "TxDb.Mmulatta.UCSC.rheMac8.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmulatta.UCSC.rheMac8.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-mmulatta-ucsc-rhemac3-refgene
  (package
    (name "r-txdb-mmulatta-ucsc-rhemac3-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmulatta.UCSC.rheMac3.refGene" version
                              'annotation))
       (sha256
        (base32 "1a0wbh4dajpgynmw2iwbvp836nklzlk0cfhqnwmqq9l4gzzh2w07"))))
    (properties `((upstream-name . "TxDb.Mmulatta.UCSC.rheMac3.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmulatta.UCSC.rheMac3.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-mmulatta-ucsc-rhemac10-refgene
  (package
    (name "r-txdb-mmulatta-ucsc-rhemac10-refgene")
    (version "3.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmulatta.UCSC.rheMac10.refGene" version
                              'annotation))
       (sha256
        (base32 "12gxs6s57l22013g40b7hb09vxhmdri73cp9rgs2icb88p7sjlib"))))
    (properties `((upstream-name . "TxDb.Mmulatta.UCSC.rheMac10.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmulatta.UCSC.rheMac10.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-hsapiens-ucsc-hg38-refgene
  (package
    (name "r-txdb-hsapiens-ucsc-hg38-refgene")
    (version "3.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Hsapiens.UCSC.hg38.refGene" version
                              'annotation))
       (sha256
        (base32 "03wfafd03gni9wpavfwjzfjhx6z8hv4f4jnh4hkjbxqld32sg1kr"))))
    (properties `((upstream-name . "TxDb.Hsapiens.UCSC.hg38.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Hsapiens.UCSC.hg38.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-hsapiens-ucsc-hg19-lincrnastranscripts
  (package
    (name "r-txdb-hsapiens-ucsc-hg19-lincrnastranscripts")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Hsapiens.UCSC.hg19.lincRNAsTranscripts"
                              version
                              'annotation))
       (sha256
        (base32 "0bmbp7kydvviczw8axgxq2wdlwq6fdas90jk9bg56avjq5syws2g"))))
    (properties `((upstream-name . "TxDb.Hsapiens.UCSC.hg19.lincRNAsTranscripts")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Hsapiens.UCSC.hg19.lincRNAsTranscripts")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-hsapiens-ucsc-hg18-knowngene
  (package
    (name "r-txdb-hsapiens-ucsc-hg18-knowngene")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Hsapiens.UCSC.hg18.knownGene" version
                              'annotation))
       (sha256
        (base32 "1yk9ggclkqqfzrdp8gcqyplvif824pa7df54ck5gb1xb9q5s975w"))))
    (properties `((upstream-name . "TxDb.Hsapiens.UCSC.hg18.knownGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Hsapiens.UCSC.hg18.knownGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-hsapiens-biomart-igis
  (package
    (name "r-txdb-hsapiens-biomart-igis")
    (version "2.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Hsapiens.BioMart.igis" version
                              'annotation))
       (sha256
        (base32 "0590a2hkrpm33hmjg5g0gm6sig3xvc09m0q6lwmafgaajf90h6ky"))))
    (properties `((upstream-name . "TxDb.Hsapiens.BioMart.igis")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page "https://bioconductor.org/packages/TxDb.Hsapiens.BioMart.igis")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-ggallus-ucsc-galgal6-refgene
  (package
    (name "r-txdb-ggallus-ucsc-galgal6-refgene")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Ggallus.UCSC.galGal6.refGene" version
                              'annotation))
       (sha256
        (base32 "0ddibdn6shlhqfmlajnq754z4vad7gi55vb5y8j89nc2k1sc5a3i"))))
    (properties `((upstream-name . "TxDb.Ggallus.UCSC.galGal6.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ggallus.UCSC.galGal6.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-ggallus-ucsc-galgal5-refgene
  (package
    (name "r-txdb-ggallus-ucsc-galgal5-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Ggallus.UCSC.galGal5.refGene" version
                              'annotation))
       (sha256
        (base32 "1fl0jnim4lx1a4b82b9nrgmb91najwhggqb611axcqp9bdkkhw1q"))))
    (properties `((upstream-name . "TxDb.Ggallus.UCSC.galGal5.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ggallus.UCSC.galGal5.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-ggallus-ucsc-galgal4-refgene
  (package
    (name "r-txdb-ggallus-ucsc-galgal4-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Ggallus.UCSC.galGal4.refGene" version
                              'annotation))
       (sha256
        (base32 "0c9msvqhx7zcxyhfj9h7rmlwmax1n48cwz1c0v58djcms6bqq2m5"))))
    (properties `((upstream-name . "TxDb.Ggallus.UCSC.galGal4.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ggallus.UCSC.galGal4.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-drerio-ucsc-danrer11-refgene
  (package
    (name "r-txdb-drerio-ucsc-danrer11-refgene")
    (version "3.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Drerio.UCSC.danRer11.refGene" version
                              'annotation))
       (sha256
        (base32 "0p5pr0fq1l9bp019w2214szf78y3nbw0p4819jcnba1v50y3336l"))))
    (properties `((upstream-name . "TxDb.Drerio.UCSC.danRer11.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Drerio.UCSC.danRer11.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-drerio-ucsc-danrer10-refgene
  (package
    (name "r-txdb-drerio-ucsc-danrer10-refgene")
    (version "3.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Drerio.UCSC.danRer10.refGene" version
                              'annotation))
       (sha256
        (base32 "1isd4idvh9flvirrq760cw5lc1nwqjx0q76p9dp01wbbbsb3rfnk"))))
    (properties `((upstream-name . "TxDb.Drerio.UCSC.danRer10.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Drerio.UCSC.danRer10.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-dmelanogaster-ucsc-dm3-ensgene
  (package
    (name "r-txdb-dmelanogaster-ucsc-dm3-ensgene")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Dmelanogaster.UCSC.dm3.ensGene" version
                              'annotation))
       (sha256
        (base32 "1337x23rdmiiza83ms225kri37h16q5hw1lw0m577abcgip3d7c7"))))
    (properties `((upstream-name . "TxDb.Dmelanogaster.UCSC.dm3.ensGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Dmelanogaster.UCSC.dm3.ensGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-cfamiliaris-ucsc-canfam6-refgene
  (package
    (name "r-txdb-cfamiliaris-ucsc-canfam6-refgene")
    (version "3.17.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Cfamiliaris.UCSC.canFam6.refGene" version
                              'annotation))
       (sha256
        (base32 "0ywbgcpd9cpyz7gjjv38fqin89iiqv3mmh3q16yv5aqqx0sykjsq"))))
    (properties `((upstream-name . "TxDb.Cfamiliaris.UCSC.canFam6.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Cfamiliaris.UCSC.canFam6.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-cfamiliaris-ucsc-canfam5-refgene
  (package
    (name "r-txdb-cfamiliaris-ucsc-canfam5-refgene")
    (version "3.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Cfamiliaris.UCSC.canFam5.refGene" version
                              'annotation))
       (sha256
        (base32 "1ikadiq14rn8f5ayas0ndkwpafzhpbmawgczyq2hcrl4jpky8vdj"))))
    (properties `((upstream-name . "TxDb.Cfamiliaris.UCSC.canFam5.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Cfamiliaris.UCSC.canFam5.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-cfamiliaris-ucsc-canfam4-refgene
  (package
    (name "r-txdb-cfamiliaris-ucsc-canfam4-refgene")
    (version "3.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Cfamiliaris.UCSC.canFam4.refGene" version
                              'annotation))
       (sha256
        (base32 "1xw3kkn2kbrv0yni95sm4sbrxzsg5y21si1plpfcdij78ndhia7d"))))
    (properties `((upstream-name . "TxDb.Cfamiliaris.UCSC.canFam4.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Cfamiliaris.UCSC.canFam4.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-cfamiliaris-ucsc-canfam3-refgene
  (package
    (name "r-txdb-cfamiliaris-ucsc-canfam3-refgene")
    (version "3.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Cfamiliaris.UCSC.canFam3.refGene" version
                              'annotation))
       (sha256
        (base32 "0rigyddnqxb3dfrj93198j0l8s1flp051xbkmz0b55qp1cyrl5kr"))))
    (properties `((upstream-name . "TxDb.Cfamiliaris.UCSC.canFam3.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Cfamiliaris.UCSC.canFam3.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-celegans-ucsc-ce11-refgene
  (package
    (name "r-txdb-celegans-ucsc-ce11-refgene")
    (version "3.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Celegans.UCSC.ce11.refGene" version
                              'annotation))
       (sha256
        (base32 "1aq4jhn2c67wibq02l8drrjscmicbj6z35d0jksq8mwhz8k30zn6"))))
    (properties `((upstream-name . "TxDb.Celegans.UCSC.ce11.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Celegans.UCSC.ce11.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-celegans-ucsc-ce11-ensgene
  (package
    (name "r-txdb-celegans-ucsc-ce11-ensgene")
    (version "3.15.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Celegans.UCSC.ce11.ensGene" version
                              'annotation))
       (sha256
        (base32 "0pr1f94bc0g88hnwnxf0gx4k83ic9mvdlhwmrjm3k1j5xjp8w0bi"))))
    (properties `((upstream-name . "TxDb.Celegans.UCSC.ce11.ensGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Celegans.UCSC.ce11.ensGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-btaurus-ucsc-bostau9-refgene
  (package
    (name "r-txdb-btaurus-ucsc-bostau9-refgene")
    (version "3.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Btaurus.UCSC.bosTau9.refGene" version
                              'annotation))
       (sha256
        (base32 "1v7q9jaaj1n2vabjj6ij6pz0g89nqlyy4y4g65irz6cm5mvik4q9"))))
    (properties `((upstream-name . "TxDb.Btaurus.UCSC.bosTau9.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Btaurus.UCSC.bosTau9.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-btaurus-ucsc-bostau8-refgene
  (package
    (name "r-txdb-btaurus-ucsc-bostau8-refgene")
    (version "3.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Btaurus.UCSC.bosTau8.refGene" version
                              'annotation))
       (sha256
        (base32 "1k06p4jk3lw8xkn31yjwmwk96rkrl6wqq3rmc8bxlbrdi99lh09c"))))
    (properties `((upstream-name . "TxDb.Btaurus.UCSC.bosTau8.refGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Btaurus.UCSC.bosTau8.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-athaliana-biomart-plantsmart51
  (package
    (name "r-txdb-athaliana-biomart-plantsmart51")
    (version "0.99.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Athaliana.BioMart.plantsmart51" version
                              'annotation))
       (sha256
        (base32 "17vbgpxzr7xkd4dnggj89hbnziczgdgk01gvmysl0cw68zsalsi6"))))
    (properties `((upstream-name . "TxDb.Athaliana.BioMart.plantsmart51")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Athaliana.BioMart.plantsmart51")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects.  This package is for Arabidopsis thaliana (@code{taxID}:
3702).  The @code{BioMart} plantsmart release number is 51.")
    (license license:artistic2.0)))

(define-public r-txdb-athaliana-biomart-plantsmart28
  (package
    (name "r-txdb-athaliana-biomart-plantsmart28")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Athaliana.BioMart.plantsmart28" version
                              'annotation))
       (sha256
        (base32 "1yjyvrbx55y024lqg3b2rlf8pngqw5xi3p83j5ipan05wf0aq6ir"))))
    (properties `((upstream-name . "TxDb.Athaliana.BioMart.plantsmart28")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Athaliana.BioMart.plantsmart28")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-athaliana-biomart-plantsmart25
  (package
    (name "r-txdb-athaliana-biomart-plantsmart25")
    (version "3.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Athaliana.BioMart.plantsmart25" version
                              'annotation))
       (sha256
        (base32 "0a6v0l6p13zmiysi3k8dxzdlxng552qqj9rnlbdavdiidla0pvm3"))))
    (properties `((upstream-name . "TxDb.Athaliana.BioMart.plantsmart25")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Athaliana.BioMart.plantsmart25")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txdb-athaliana-biomart-plantsmart22
  (package
    (name "r-txdb-athaliana-biomart-plantsmart22")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Athaliana.BioMart.plantsmart22" version
                              'annotation))
       (sha256
        (base32 "0j2zr4cddad7z1lxx9m9kfgyy7jajjnblpk9j8igd39ia3ixrpzc"))))
    (properties `((upstream-name . "TxDb.Athaliana.BioMart.plantsmart22")))
    (build-system r-build-system)
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Athaliana.BioMart.plantsmart22")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects")
    (license license:artistic2.0)))

(define-public r-txcutr
  (package
    (name "r-txcutr")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "txcutr" version))
       (sha256
        (base32 "0xq71y0rds16mkcnf7vdxq4qvx3n4h59237s3j9g6s8sj7iykxgj"))))
    (properties `((upstream-name . "txcutr")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/txcutr")
    (synopsis "Transcriptome CUTteR")
    (description
     "Various @code{mRNA} sequencing library preparation methods generate sequencing
reads specifically from the transcript ends.  Analyses that focus on
quantification of isoform usage from such data can be aided by using truncated
versions of transcriptome annotations, both at the alignment or pseudo-alignment
stage, as well as in downstream analysis.  This package implements some
convenience methods for readily generating such truncated annotations and their
corresponding sequences.")
    (license license:gpl3)))

(define-public r-twoddpcr
  (package
    (name "r-twoddpcr")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "twoddpcr" version))
       (sha256
        (base32 "1yjqmljfc6p11h68z7lmm4b43rwc992n4iyj10vyyjdfqrajll0s"))))
    (properties `((upstream-name . "twoddpcr")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-scales
                             r-s4vectors
                             r-rcolorbrewer
                             r-hexbin
                             r-ggplot2
                             r-class))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/CRUKMI-ComputationalBiology/twoddpcr/")
    (synopsis
     "Classify 2-d Droplet Digital PCR (ddPCR) data and quantify the number of starting molecules")
    (description
     "The twoddpcr package takes Droplet Digital PCR (@code{ddPCR}) droplet amplitude
data from Bio-Rad's @code{QuantaSoft} and can classify the droplets.  A summary
of the positive/negative droplet counts can be generated, which can then be used
to estimate the number of molecules using the Poisson distribution.  This is the
first open source package that facilitates the automatic classification of
general two channel @code{ddPCR} data.  Previous work includes definetherain
(Jones et al., 2014) and @code{ddpcRquant} (Trypsteen et al., 2015) which both
handle one channel @code{ddPCR} experiments only.  The ddpcr package available
on CRAN (Attali et al., 2016) supports automatic gating of a specific class of
two channel @code{ddPCR} experiments only.")
    (license license:gpl3)))

(define-public r-twilight
  (package
    (name "r-twilight")
    (version "1.78.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "twilight" version))
       (sha256
        (base32 "00ggr8z7swscrlqasny041jxczkwx6qskazwbc50v1f4n0m81hvh"))))
    (properties `((upstream-name . "twilight")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "http://compdiag.molgen.mpg.de/software/twilight.shtml")
    (synopsis "Estimation of local false discovery rate")
    (description
     "In a typical microarray setting with gene expression data observed under two
conditions, the local false discovery rate describes the probability that a gene
is not differentially expressed between the two conditions given its
corrresponding observed score or p-value level.  The resulting curve of p-values
versus local false discovery rate offers an insight into the twilight zone
between clear differential and clear non-differential gene expression.  Package
twilight contains two main functions: Function twilight.pval performs a
two-condition test on differences in means for a given input matrix or
expression set and computes permutation based p-values.  Function twilight
performs a stochastic downhill search to estimate local false discovery rates
and effect size distributions.  The package further provides means to filter for
permutations that describe the null distribution correctly.  Using filtered
permutations, the influence of hidden confounders could be diminished.")
    (license license:gpl2+)))

(define-public r-tweedeseqcountdata
  (package
    (name "r-tweedeseqcountdata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tweeDEseqCountData" version
                              'experiment))
       (sha256
        (base32 "1s071578qldq564ylrkd9azn5519rdc3g1gdp9v8hj4zh8kza56v"))))
    (properties `((upstream-name . "tweeDEseqCountData")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/isglobal-brge/tweeDEseqCountData/")
    (synopsis
     "RNA-seq count data employed in the vignette of the tweeDEseq package")
    (description
     "RNA-seq count data from Pickrell et al. (2010) employed to illustrate the use of
the Poisson-Tweedie family of distributions with the @code{tweeDEseq} package.")
    (license license:expat)))

(define-public r-tweedeseq
  (package
    (name "r-tweedeseq")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tweeDEseq" version))
       (sha256
        (base32 "0mg6kfnvxlpjibm0ghjqycggs6vsr60pg8vwrjvdk14p9c807cdp"))))
    (properties `((upstream-name . "tweeDEseq")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mass r-limma r-edger r-cqn))
    (home-page "https://github.com/isglobal-brge/tweeDEseq/")
    (synopsis
     "RNA-seq data analysis using the Poisson-Tweedie family of distributions")
    (description
     "Differential expression analysis of RNA-seq using the Poisson-Tweedie (PT)
family of distributions.  PT distributions are described by a mean, a dispersion
and a shape parameter and include Poisson and NB distributions, among others, as
particular cases.  An important feature of this family is that, while the
Negative Binomial (NB) distribution only allows a quadratic mean-variance
relationship, the PT distributions generalizes this relationship to any orde.")
    (license license:gpl2+)))

(define-public r-tvtb
  (package
    (name "r-tvtb")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TVTB" version))
       (sha256
        (base32 "11s5v2q02q9rmrry70zdsp8z1dx3mdgkgf9v1c9jilrj7ays2000"))))
    (properties `((upstream-name . "TVTB")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-s4vectors
                             r-rsamtools
                             r-reshape2
                             r-limma
                             r-iranges
                             r-gviz
                             r-ggplot2
                             r-ggally
                             r-genomicranges
                             r-genomeinfodb
                             r-ensemblvep
                             r-ensembldb
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-annotationfilter))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kevinrue/TVTB")
    (synopsis "TVTB: The VCF Tool Box")
    (description
     "The package provides S4 classes and methods to filter, summarise and visualise
genetic variation data stored in VCF files.  In particular, the package extends
the @code{FilterRules} class (S4Vectors package) to define news classes of
filter rules applicable to the various slots of VCF objects.  Functionalities
are integrated and demonstrated in a Shiny web-application, the Shiny Variant
Explorer (@code{tSVE}).")
    (license license:artistic2.0)))

(define-public r-turbonorm
  (package
    (name "r-turbonorm")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TurboNorm" version))
       (sha256
        (base32 "0mwqd2y8h2g9lsjnkd9k2na7g5zrj89cs4balzyk45dbk8qvy5yk"))))
    (properties `((upstream-name . "TurboNorm")))
    (build-system r-build-system)
    (propagated-inputs (list r-marray r-limma r-lattice r-convert r-affy))
    (home-page "http://www.humgen.nl/MicroarrayAnalysisGroup.html")
    (synopsis
     "fast scatterplot smoother suitable for microarray normalization")
    (description
     "This package provides a fast scatterplot smoother based on B-splines with
second-order difference penalty.  Functions for microarray normalization of
single-colour data i.e.  Affymetrix/Illumina and two-colour data supplied as
marray @code{MarrayRaw-objects} or limma RGList-objects are available.")
    (license license:lgpl2.0+)))

(define-public r-tumourmethdata
  (package
    (name "r-tumourmethdata")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TumourMethData" version
                              'experiment))
       (sha256
        (base32 "100kw4552rc48sqpw9makyf9nwgrs049hkvbrd8zjmrf542cj9md"))))
    (properties `((upstream-name . "TumourMethData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-rhdf5
                             r-r-utils
                             r-hdf5array
                             r-genomicranges
                             r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/richardheery/TumourMethData")
    (synopsis
     "Collection of DNA Methylation Datasets for Human Tumour Samples and Matching Normal Samples")
    (description
     "@code{TumourMethData} collects tumour methylation data from a variety of
different tumour types (and also matching normal samples where available) and
produced with different technologies (e.g. WGBS, RRBS and methylation arrays)
and provides them as @code{RangedSummarizedExperiments}.  This facilitates easy
extraction of methylation data for regions of interest across different tumour
types and studies.")
    (license license:artistic2.0)))

(define-public r-tuberculosis
  (package
    (name "r-tuberculosis")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tuberculosis" version
                              'experiment))
       (sha256
        (base32 "15jmhn7lrdwz19hv076yf0g2wqw7c32vp4pjzj2151f4xzxrl1iz"))))
    (properties `((upstream-name . "tuberculosis")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-experimenthub
                             r-dplyr
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/schifferl/tuberculosis")
    (synopsis "Tuberculosis Gene Expression Data for Machine Learning")
    (description
     "The tuberculosis R/Bioconductor package features tuberculosis gene expression
data for machine learning.  All human samples from GEO that did not come from
cell lines, were not taken postmortem, and did not feature recombination have
been included.  The package has more than 10,000 samples from both microarray
and sequencing studies that have been processed from raw data through a
hyper-standardized, reproducible pipeline.")
    (license license:artistic2.0)))

(define-public r-ttmap
  (package
    (name "r-ttmap")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TTMap" version))
       (sha256
        (base32 "1qsja2byl2skdb8qhrp3jia234ynzrzkn658abqf8ycc04nd8xwp"))))
    (properties `((upstream-name . "TTMap")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-rgl r-colorramps
                             r-biobase))
    (home-page "https://bioconductor.org/packages/TTMap")
    (synopsis
     "Two-Tier Mapper: a clustering tool based on topological data analysis")
    (description
     "TTMap is a clustering method that groups together samples with the same
deviation in comparison to a control group.  It is specially useful when the
data is small.  It is parameter free.")
    (license license:gpl2)))

(define-public r-ttgsea
  (package
    (name "r-ttgsea")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ttgsea" version))
       (sha256
        (base32 "00yk10hkfajd01s33al0kdc402n35axkywjpcp72zsrhx7j0xviw"))))
    (properties `((upstream-name . "ttgsea")))
    (build-system r-build-system)
    (propagated-inputs (list r-tokenizers
                             r-tm
                             r-textstem
                             r-text2vec
                             r-stopwords
                             r-purrr
                             r-keras
                             r-diagrammer
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ttgsea")
    (synopsis "Tokenizing Text of Gene Set Enrichment Analysis")
    (description
     "Functional enrichment analysis methods such as gene set enrichment analysis
(GSEA) have been widely used for analyzing gene expression data.  GSEA is a
powerful method to infer results of gene expression data at a level of gene sets
by calculating enrichment scores for predefined sets of genes.  GSEA depends on
the availability and accuracy of gene sets.  There are overlaps between terms of
gene sets or categories because multiple terms may exist for a single biological
process, and it can thus lead to redundancy within enriched terms.  In other
words, the sets of related terms are overlapping.  Using deep learning, this
pakage is aimed to predict enrichment scores for unique tokens or words from
text in names of gene sets to resolve this overlapping set issue.  Furthermore,
we can coin a new term by combining tokens and find its enrichment score by
predicting such a combined tokens.")
    (license license:artistic2.0)))

(define-public r-tscan
  (package
    (name "r-tscan")
    (version "1.40.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TSCAN" version))
       (sha256
        (base32 "0dgfqhq5ynjj11hscccab1ijhly2j1dmj9yhhpib83ivpj7l3cws"))))
    (properties `((upstream-name . "TSCAN")))
    (build-system r-build-system)
    (propagated-inputs (list r-trajectoryutils
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-s4vectors
                             r-plyr
                             r-mgcv
                             r-mclust
                             r-matrix
                             r-igraph
                             r-gplots
                             r-ggplot2
                             r-fastica
                             r-delayedarray
                             r-combinat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TSCAN")
    (synopsis "Tools for Single-Cell Analysis")
    (description
     "This package provides methods to perform trajectory analysis based on a minimum
spanning tree constructed from cluster centroids.  Computes pseudotemporal cell
orderings by mapping cells in each cluster (or new cells) to the closest edge in
the tree.  Uses linear modelling to identify differentially expressed genes
along each path through the tree.  Several plotting and interactive
visualization functions are also implemented.")
    (license (license:fsdg-compatible "GPL(>=2)"))))

(define-public r-tsar
  (package
    (name "r-tsar")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TSAR" version))
       (sha256
        (base32 "1kghp5w3fpbhj01hmz6q8zm72pa4c3vwwhqvvb0jax1p56ny6xdw"))))
    (properties `((upstream-name . "TSAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-shinywidgets
                             r-shinyjs
                             r-shiny
                             r-rhandsontable
                             r-readxl
                             r-plotly
                             r-openxlsx
                             r-minpack-lm
                             r-mgcv
                             r-magrittr
                             r-jsonlite
                             r-ggpubr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TSAR")
    (synopsis "Thermal Shift Analysis in R")
    (description
     "This package automates analysis workflow for Thermal Shift Analysis (TSAS) data.
 Processing, analyzing, and visualizing data through both shiny applications and
command lines.  Package aims to simplify data analysis and offer front to end
workflow, from raw data to multiple trial analysis.")
    (license license:agpl3)))

(define-public r-tronco
  (package
    (name "r-tronco")
    (version "2.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TRONCO" version))
       (sha256
        (base32 "0d48hwpl561ns5fyr0z046mqnz6790fqszwyxll1dh0mjilslahc"))))
    (properties `((upstream-name . "TRONCO")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-scales
                             r-rgraphviz
                             r-rcolorbrewer
                             r-r-matlab
                             r-iterators
                             r-igraph
                             r-gtools
                             r-gtable
                             r-gridextra
                             r-foreach
                             r-doparallel
                             r-circlize
                             r-bnlearn))
    (native-inputs (list r-knitr))
    (home-page "https://sites.google.com/site/troncopackage/")
    (synopsis "TRONCO, an R package for TRanslational ONCOlogy")
    (description
     "The TRONCO (TRanslational ONCOlogy) R package collects algorithms to infer
progression models via the approach of Suppes-Bayes Causal Network, both from an
ensemble of tumors (cross-sectional samples) and within an individual patient
(multi-region or single-cell samples).  The package provides parallel
implementation of algorithms that process binary matrices where each row
represents a tumor sample and each column a single-nucleotide or a structural
variant driving the progression; a 0/1 value models the absence/presence of that
alteration in the sample.  The tool can import data from plain, MAF or GISTIC
format files, and can fetch it from the @code{cBioPortal} for cancer genomics.
Functions for data manipulation and visualization are provided, as well as
functions to import/export such data to other bioinformatics tools for, e.g,
clustering or detection of mutually exclusive alterations.  Inferred models can
be visualized and tested for their confidence via bootstrap and
cross-validation.  TRONCO is used for the implementation of the Pipeline for
Cancer Inference (PICNIC).")
    (license license:gpl3)))

(define-public r-trnascanimport
  (package
    (name "r-trnascanimport")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tRNAscanImport" version))
       (sha256
        (base32 "18yp63mrgz497qcvf0cjgj22b75xmfb2f61jw2cd312c344iikzn"))))
    (properties `((upstream-name . "tRNAscanImport")))
    (build-system r-build-system)
    (propagated-inputs (list r-xvector
                             r-trna
                             r-structstrings
                             r-stringr
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-bsgenome
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FelixErnst/tRNAscanImport")
    (synopsis "Importing a tRNAscan-SE result file as GRanges object")
    (description
     "The package imports the result of @code{tRNAscan-SE} as a GRanges object.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-tripr
  (package
    (name "r-tripr")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tripr" version))
       (sha256
        (base32 "08f7xmhwx6s79lw5pb0manj6y5hxr6dvaczvacfmvvwf3l7p09pn"))))
    (properties `((upstream-name . "tripr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringdist
                             r-shinyjs
                             r-shinyfiles
                             r-shinybs
                             r-shiny
                             r-rcolorbrewer
                             r-plyr
                             r-plotly
                             r-plot3d
                             r-gridextra
                             r-golem
                             r-dt
                             r-dplyr
                             r-data-table
                             r-config))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BiodataAnalysisGroup/tripr")
    (synopsis "T-cell Receptor/Immunoglobulin Profiler (TRIP)")
    (description
     "TRIP is a software framework that provides analytics services on antigen
receptor (B cell receptor immunoglobulin, @code{BcR} IG | T cell receptor, TR)
gene sequence data.  It is a web application written in R Shiny.  It takes as
input the output files of the IMGT/@code{HighV-Quest} tool.  Users can select to
analyze the data from each of the input samples separately, or the combined data
files from all samples and visualize the results accordingly.")
    (license license:expat)))

(define-public r-triplex
  (package
    (name "r-triplex")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "triplex" version))
       (sha256
        (base32 "1rgws9fw0zhq55qjj1jhiy93anj21xxc45lqkjy2p5m65i3300zh"))))
    (properties `((upstream-name . "triplex")))
    (build-system r-build-system)
    (propagated-inputs (list r-xvector r-s4vectors r-iranges r-genomicranges
                             r-biostrings))
    (home-page "http://www.fi.muni.cz/~lexa/triplex/")
    (synopsis
     "Search and visualize intramolecular triplex-forming sequences in DNA")
    (description
     "This package provides functions for identification and visualization of
potential intramolecular triplex patterns in DNA sequence.  The main
functionality is to detect the positions of subsequences capable of folding into
an intramolecular triplex (H-DNA) in a much larger sequence.  The potential
H-DNA (triplexes) should be made of as many cannonical nucleotide triplets as
possible.  The package includes visualization showing the exact base-pairing in
1D, 2D or 3D.")
    (license license:bsd-2)))

(define-public r-trio
  (package
    (name "r-trio")
    (version "3.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "trio" version))
       (sha256
        (base32 "0hh3fk7jsgdi5v9gwc8f3lcp6snc1d9yxalf20zyhcilyn19vdhv"))))
    (properties `((upstream-name . "trio")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-siggenes r-logicreg))
    (home-page "https://bioconductor.org/packages/trio")
    (synopsis
     "Testing of SNPs and SNP Interactions in Case-Parent Trio Studies")
    (description
     "Testing SNPs and SNP interactions with a genotypic TDT. This package furthermore
contains functions for computing pairwise values of LD measures and for
identifying LD blocks, as well as functions for setting up matched case
pseudo-control genotype data for case-parent trios in order to run trio logic
regression, for imputing missing genotypes in trios, for simulating case-parent
trios with disease risk dependent on SNP interaction, and for power and sample
size calculation in trio data.")
    (license license:lgpl2.0)))

(define-public r-trigger
  (package
    (name "r-trigger")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "trigger" version))
       (sha256
        (base32 "0bwjsp7mksr7xw3dchq6n4d359x3jwb94y97f9cnap4x4v0jrx6i"))))
    (properties `((upstream-name . "trigger")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva r-qvalue r-qtl r-corpcor))
    (home-page "https://bioconductor.org/packages/trigger")
    (synopsis
     "Transcriptional Regulatory Inference from Genetics of Gene ExpRession")
    (description
     "This R package provides tools for the statistical analysis of integrative
genomic data that involve some combination of: genotypes, high-dimensional
intermediate traits (e.g., gene expression, protein abundance), and higher-order
traits (phenotypes).  The package includes functions to: (1) construct global
linkage maps between genetic markers and gene expression; (2) analyze
multiple-locus linkage (epistasis) for gene expression; (3) quantify the
proportion of genome-wide variation explained by each locus and identify
@code{eQTL} hotspots; (4) estimate pair-wise causal gene regulatory
probabilities and construct gene regulatory networks; and (5) identify causal
genes for a quantitative trait of interest.")
    (license license:gpl3)))

(define-public r-tress
  (package
    (name "r-tress")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TRESS" version))
       (sha256
        (base32 "1vlvfacr7q9m1phrfs4xj51i6ia54scv53zbwqq58ri06m4whcl7"))))
    (properties `((upstream-name . "TRESS")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-matrixstats
                             r-matrix
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TRESS")
    (synopsis "Toolbox for mRNA epigenetics sequencing analysis")
    (description
     "This package is devoted to analyzing @code{MeRIP-seq} data.  Current
functionalities include 1.  detect transcriptome wide m6A methylation regions 2.
 detect transcriptome wide differential m6A methylation regions.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-trendy
  (package
    (name "r-trendy")
    (version "1.24.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Trendy" version))
       (sha256
        (base32 "13plnyrr00m34dc25wqbk3ikxfd118vaz39z88ikhwa566k8kw5w"))))
    (properties `((upstream-name . "Trendy")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-shinyfiles
                             r-shiny
                             r-segmented
                             r-s4vectors
                             r-magrittr
                             r-gplots
                             r-dt
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhondabacher/Trendy")
    (synopsis "Breakpoint analysis of time-course expression data")
    (description
     "Trendy implements segmented (or breakpoint) regression models to estimate
breakpoints which represent changes in expression for each feature/gene in high
throughput data with ordered conditions.")
    (license license:gpl3)))

(define-public r-trena
  (package
    (name "r-trena")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "trena" version))
       (sha256
        (base32 "10bfpli443yrv4qm774xayyxdxz0p264pk5dcnwi3fzx22sq8jsm"))))
    (properties `((upstream-name . "trena")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-wgcna
                             r-rsqlite
                             r-rpostgresql
                             r-rmysql
                             r-randomforest
                             r-org-hs-eg-db
                             r-motifdb
                             r-lassopv
                             r-glmnet
                             r-genomicranges
                             r-dbi
                             r-bsgenome-mmusculus-ucsc-mm10
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-bsgenome-hsapiens-ucsc-hg19
                             r-bsgenome
                             r-biostrings
                             r-biomart
                             r-annotationdbi))
    (native-inputs (list r-rmarkdown r-markdown r-knitr r-formatr))
    (home-page "https://pricelab.github.io/trena/")
    (synopsis
     "Fit transcriptional regulatory networks using gene expression, priors, machine learning")
    (description
     "This package provides methods for reconstructing transcriptional regulatory
networks, especially in species for which genome-wide TF binding site
information is available.")
    (license license:gpl3)))

(define-public r-treg
  (package
    (name "r-treg")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TREG" version))
       (sha256
        (base32 "0zxbqnwwl2a9d7v0a2gn132vw8f2xw0gdig48r47gzc91bn0fsz5"))))
    (properties `((upstream-name . "TREG")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-rafalib r-purrr r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LieberInstitute/TREG")
    (synopsis
     "Tools for finding Total RNA Expression Genes in single nucleus RNA-seq data")
    (description
     "RNA abundance and cell size parameters could improve RNA-seq deconvolution
algorithms to more accurately estimate cell type proportions given the different
cell type transcription activity levels.  A Total RNA Expression Gene (TREG) can
facilitate estimating total RNA content using single molecule fluorescent in
situ hybridization (@code{smFISH}).  We developed a data-driven approach using a
measure of expression invariance to find candidate TREGs in postmortem human
brain single nucleus RNA-seq.  This R package implements the method for
identifying candidate TREGs from @code{snRNA-seq} data.")
    (license license:artistic2.0)))

(define-public r-treekor
  (package
    (name "r-treekor")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "treekoR" version))
       (sha256
        (base32 "059ars8rppa2pmykf4d1lhazbb9fdb4xjxrnsyihjfca8cc2i0n8"))))
    (properties `((upstream-name . "treekoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-singlecellexperiment
                             r-patchwork
                             r-multcomp
                             r-lme4
                             r-hopach
                             r-ggtree
                             r-ggplot2
                             r-ggiraph
                             r-edger
                             r-dplyr
                             r-diffcyt
                             r-data-table
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/treekoR")
    (synopsis
     "Cytometry Cluster Hierarchy and Cellular-to-phenotype Associations")
    (description
     "@code{treekoR} is a novel framework that aims to utilise the hierarchical nature
of single cell cytometry data to find robust and interpretable associations
between cell subsets and patient clinical end points.  These associations are
aimed to recapitulate the nested proportions prevalent in workflows inovlving
manual gating, which are often overlooked in workflows using automatic
clustering to identify cell populations.  We developed @code{treekoR} to: Derive
a hierarchical tree structure of cell clusters; quantify a cell types as a
proportion relative to all cells in a sample (%total), and, as the proportion
relative to a parent population (%parent); perform significance testing using
the calculated proportions; and provide an interactive html visualisation to
help highlight key results.")
    (license license:gpl3)))

(define-public r-treeandleaf
  (package
    (name "r-treeandleaf")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TreeAndLeaf" version))
       (sha256
        (base32 "131nbrngjldn0p5ghdr4rvwx3p5r04rdg5cqx61qvyja77nakpb1"))))
    (properties `((upstream-name . "TreeAndLeaf")))
    (build-system r-build-system)
    (propagated-inputs (list r-reder r-igraph r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TreeAndLeaf")
    (synopsis "Displaying binary trees with focus on dendrogram leaves")
    (description
     "The @code{TreeAndLeaf} package combines unrooted and force-directed graph
algorithms in order to layout binary trees, aiming to represent multiple layers
of information onto dendrogram leaves.")
    (license license:artistic2.0)))

(define-public r-traviz
  (package
    (name "r-traviz")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "traviz" version))
       (sha256
        (base32 "0yf0as3400wxgvbw7i5wmj3iqzv7racs6xsaydalgdpax2na70k6"))))
    (properties `((upstream-name . "traviz")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-summarizedexperiment
                             r-slingshot
                             r-singlecellexperiment
                             r-rgl
                             r-rcolorbrewer
                             r-princurve
                             r-mgcv
                             r-ggplot2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/traviz")
    (synopsis "Trajectory functions for visualization and interpretation")
    (description
     "traviz provides a suite of functions to plot trajectory related objects from
Bioconductor packages.  It allows plotting trajectories in reduced dimension, as
well as averge gene expression smoothers as a function of pseudotime.  Asides
from general utility functions, traviz also allows plotting trajectories
estimated by Slingshot, as well as smoothers estimated by @code{tradeSeq}.
Furthermore, it allows for visualization of Slingshot trajectories using
ggplot2.")
    (license license:expat)))

(define-public r-traser
  (package
    (name "r-traser")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "traseR" version))
       (sha256
        (base32 "05xi01cgz8vahn37rwx9ngxglxyhdk2ckkbdchd6g1if15pzm91q"))))
    (properties `((upstream-name . "traseR")))
    (build-system r-build-system)
    (propagated-inputs (list r-iranges r-genomicranges
                             r-bsgenome-hsapiens-ucsc-hg19))
    (home-page "https://bioconductor.org/packages/traseR")
    (synopsis
     "GWAS trait-associated SNP enrichment analyses in genomic intervals")
    (description
     "@code{traseR} performs GWAS trait-associated SNP enrichment analyses in genomic
intervals using different hypothesis testing approaches, also provides various
functionalities to explore and visualize the results.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-transview
  (package
    (name "r-transview")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TransView" version))
       (sha256
        (base32 "0knd6rxlgqrzacxax42zxm7k64kc5wqdsy7wanngc3psqla8g96m"))))
    (properties `((upstream-name . "TransView")))
    (build-system r-build-system)
    (propagated-inputs (list r-zlibbioc
                             r-s4vectors
                             r-rhtslib
                             r-iranges
                             r-gplots
                             r-genomicranges
                             r-biocgenerics))
    (home-page
     "http://bioconductor.org/packages/release/bioc/html/TransView.html")
    (synopsis
     "Read density map construction and accession. Visualization of ChIPSeq and RNASeq data sets")
    (description
     "This package provides efficient tools to generate, access and display read
densities of sequencing based data sets such as from RNA-Seq and
@code{ChIP-Seq}.")
    (license license:gpl3)))

(define-public r-transomics2cytoscape
  (package
    (name "r-transomics2cytoscape")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transomics2cytoscape" version))
       (sha256
        (base32 "0scib9ai6x7854cnwxn8imiycigsmin9q2hfvy26vdy72svv7q17"))))
    (properties `((upstream-name . "transomics2cytoscape")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rcy3
                             r-purrr
                             r-pbapply
                             r-keggrest
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/transomics2cytoscape")
    (synopsis
     "tool set for 3D Trans-Omic network visualization with Cytoscape")
    (description
     "transomics2cytoscape generates a file for 3D transomics visualization by
providing input that specifies the IDs of multiple KEGG pathway layers, their
corresponding Z-axis heights, and an input that represents the edges between the
pathway layers.  The edges are used, for example, to describe the relationships
between kinase on a pathway and enzyme on another pathway.  This package
automates creation of a transomics network as shown in the figure in Yugi.2014
(https://doi.org/10.1016/j.celrep.2014.07.021) using Cytoscape automation
(https://doi.org/10.1186/s13059-019-1758-4).")
    (license license:artistic2.0)))

(define-public r-translatome
  (package
    (name "r-translatome")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tRanslatome" version))
       (sha256
        (base32 "08fdamgafp2cjp6sp6lpknyfl243sp32xqmgbazm0x3qxf4fr9k0"))))
    (properties `((upstream-name . "tRanslatome")))
    (build-system r-build-system)
    (propagated-inputs (list r-topgo
                             r-rankprod
                             r-plotrix
                             r-org-hs-eg-db
                             r-limma
                             r-heatplus
                             r-gplots
                             r-gosemsim
                             r-edger
                             r-deseq2
                             r-biobase
                             r-anota))
    (home-page "https://bioconductor.org/packages/tRanslatome")
    (synopsis "Comparison between multiple levels of gene expression")
    (description
     "Detection of differentially expressed genes (DEGs) from the comparison of two
biological conditions (treated vs. untreated, diseased vs. normal, mutant vs.
wild-type) among different levels of gene expression (transcriptome
,translatome, proteome), using several statistical methods: Rank Product,
Translational Efficiency, t-test, Limma, ANOTA, DESeq, @code{edgeR}.
Possibility to plot the results with scatterplots, histograms, MA plots,
standard deviation (SD) plots, coefficient of variation (CV) plots.  Detection
of significantly enriched post-transcriptional regulatory factors (RBPs,
@code{miRNAs}, etc) and Gene Ontology terms in the lists of DEGs previously
identified for the two expression levels.  Comparison of GO terms enriched only
in one of the levels or in both.  Calculation of the semantic similarity score
between the lists of enriched GO terms coming from the two expression levels.
Visual examination and comparison of the enriched terms with heatmaps, radar
plots and barplots.")
    (license license:gpl3)))

(define-public r-transite
  (package
    (name "r-transite")
    (version "1.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transite" version))
       (sha256
        (base32 "089n19vwwi8cvsqcxd5dl5lqjs2sgnglg36a5wd87qbgmvk540sm"))))
    (properties `((upstream-name . "transite")))
    (build-system r-build-system)
    (propagated-inputs (list r-tfmpvalue
                             r-scales
                             r-rcpp
                             r-gridextra
                             r-ggplot2
                             r-genomicranges
                             r-dplyr
                             r-biostrings
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://transite.mit.edu")
    (synopsis "RNA-binding protein motif analysis")
    (description
     "transite is a computational method that allows comprehensive analysis of the
regulatory role of RNA-binding proteins in various cellular processes by
leveraging preexisting gene expression data and current knowledge of binding
preferences of RNA-binding proteins.")
    (license license:expat)))

(define-public r-transformgampoi
  (package
    (name "r-transformgampoi")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transformGamPoi" version))
       (sha256
        (base32 "0xa7hysk0ssjxhwhsz97487k3xxnzaz83d7bpq3nb0jvglqzja1x"))))
    (properties `((upstream-name . "transformGamPoi")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-rcpp
                             r-matrixgenerics
                             r-matrix
                             r-hdf5array
                             r-glmgampoi
                             r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/const-ae/transformGamPoi")
    (synopsis "Variance Stabilizing Transformation for Gamma-Poisson Models")
    (description
     "Variance-stabilizing transformations help with the analysis of heteroskedastic
data (i.e., data where the variance is not constant, like count data).  This
package provide two types of variance stabilizing transformations: (1) methods
based on the delta method (e.g., acosh', log(x+1)'), (2) model residual based
(Pearson and randomized quantile residuals).")
    (license license:gpl3)))

(define-public r-transcriptogramer
  (package
    (name "r-transcriptogramer")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transcriptogramer" version))
       (sha256
        (base32 "17jy1cxn1i2grbrd9l95y9rmm2k67xazgr77i7vyjxwc3dki61sl"))))
    (properties `((upstream-name . "transcriptogramer")))
    (build-system r-build-system)
    (propagated-inputs (list r-topgo
                             r-tidyr
                             r-snow
                             r-reder
                             r-progress
                             r-limma
                             r-igraph
                             r-ggplot2
                             r-foreach
                             r-dosnow
                             r-data-table
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arthurvinx/transcriptogramer")
    (synopsis "Transcriptional analysis based on transcriptograms")
    (description
     "R package for transcriptional analysis based on transcriptograms, a method to
analyze transcriptomes that projects expression values on a set of ordered
proteins, arranged such that the probability that gene products participate in
the same metabolic pathway exponentially decreases with the increase of the
distance between two proteins of the ordering.  Transcriptograms are, hence,
genome wide gene expression profiles that provide a global view for the cellular
metabolism, while indicating gene sets whose expressions are altered.")
    (license license:gpl2+)))

(define-public r-trajectorygeometry
  (package
    (name "r-trajectorygeometry")
    (version "1.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TrajectoryGeometry" version))
       (sha256
        (base32 "11lgcffh6pbjxlb20dhh34yvvs4iz9s6d32dn9lkn1z7b79x6vsd"))))
    (properties `((upstream-name . "TrajectoryGeometry")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-pracma r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TrajectoryGeometry")
    (synopsis
     "This Package Discovers Directionality in Time and Pseudo-times Series of Gene Expression Patterns")
    (description
     "Given a time series or pseudo-times series of gene expression data, we might
wish to know: Do the changes in gene expression in these data exhibit
directionality? Are there turning points in this directionality.  Do different
subsets of the data move in different directions? This package uses spherical
geometry to probe these sorts of questions.  In particular, if we are looking at
(say) the first n dimensions of the PCA of gene expression, directionality can
be detected as the clustering of points on the (n-1)-dimensional sphere.")
    (license license:expat)))

(define-public r-tracktables
  (package
    (name "r-tracktables")
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tracktables" version))
       (sha256
        (base32 "0ia4jqdapllgf51i4gjyjkmk6i6yrqx8np28hj1k0lr07j3k1hq4"))))
    (properties `((upstream-name . "tracktables")))
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
    (propagated-inputs (list r-xvector
                             r-xml
                             r-tractor-base
                             r-stringr
                             r-rsamtools
                             r-rcolorbrewer
                             r-iranges
                             r-genomicranges))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/tracktables")
    (synopsis "Build IGV tracks and HTML reports")
    (description
     "This package provides methods to create complex IGV genome browser sessions and
dynamic IGV reports in HTML pages.")
    (license license:gpl3+)))

(define-public r-tpp2d
  (package
    (name "r-tpp2d")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TPP2D" version))
       (sha256
        (base32 "0iaf34zk99bgdbnx4ygbpz7pgn3qblq1rdb5z6i80wh59y4519ff"))))
    (properties `((upstream-name . "TPP2D")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rcurl
                             r-openxlsx
                             r-mass
                             r-limma
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "http://bioconductor.org/packages/TPP2D")
    (synopsis
     "Detection of ligand-protein interactions from 2D thermal profiles (DLPTP)")
    (description
     "Detection of ligand-protein interactions from 2D thermal profiles (DLPTP),
Performs an FDR-controlled analysis of 2D-TPP experiments by functional analysis
of dose-response curves across temperatures.")
    (license license:gpl3)))

(define-public r-tpp
  (package
    (name "r-tpp")
    (version "3.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TPP" version))
       (sha256
        (base32 "10lfvd2mrqdpbmsx7whkyawzjm7qr4ral669038lsjds2zf0ihk6"))))
    (properties `((upstream-name . "TPP")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-venndiagram
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rmarkdown
                             r-reshape2
                             r-rcurl
                             r-rcolorbrewer
                             r-purrr
                             r-plyr
                             r-openxlsx
                             r-nls2
                             r-mefa
                             r-mass
                             r-magrittr
                             r-limma
                             r-knitr
                             r-gridextra
                             r-ggplot2
                             r-futile-logger
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-broom
                             r-biobroom
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TPP")
    (synopsis "Analyze thermal proteome profiling (TPP) experiments")
    (description
     "Analyze thermal proteome profiling (TPP) experiments with varying temperatures
(TR) or compound concentrations (CCR).")
    (license license:artistic2.0)))

(define-public r-toxicogx
  (package
    (name "r-toxicogx")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ToxicoGx" version))
       (sha256
        (base32 "0cwgf2ha1lm8v1hxmgn0y4j47laz23kcf10nj394wdfd6ymgm2mq"))))
    (properties `((upstream-name . "ToxicoGx")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-reshape2
                             r-magrittr
                             r-limma
                             r-jsonlite
                             r-ggplot2
                             r-dplyr
                             r-downloader
                             r-data-table
                             r-coregx
                             r-catools
                             r-biocparallel
                             r-biocgenerics
                             r-biobase
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/ToxicoGx")
    (synopsis "Analysis of Large-Scale Toxico-Genomic Data")
    (description
     "This package contains a set of functions to perform large-scale analysis of
toxicogenomic data, providing a standardized data structure to hold information
relevant to annotation, visualization and statistical analysis of toxicogenomic
data.")
    (license license:expat)))

(define-public r-topdownrdata
  (package
    (name "r-topdownrdata")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topdownrdata" version
                              'experiment))
       (sha256
        (base32 "01wxdwq87yan5a71z60bzs18w1ryjvgscnrrpdksqs56009k5992"))))
    (properties `((upstream-name . "topdownrdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-topdownr))
    (home-page "https://github.com/sgibb/topdownrdata/")
    (synopsis "Example Files for the topdownr R Package")
    (description
     "Example data for the topdownr package generated on a Thermo Orbitrap Fusion
Lumos MS device.")
    (license license:gpl3+)))

(define-public r-topdownr
  (package
    (name "r-topdownr")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topdownr" version))
       (sha256
        (base32 "01m9j4bbii35r8kzf4zi3xcma5g1cv87gcmmpc7cl2hp38gwpa4y"))))
    (properties `((upstream-name . "topdownr")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors
                             r-protgenerics
                             r-mzr
                             r-msnbase
                             r-matrix
                             r-ggplot2
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sgibb/topdownr/")
    (synopsis
     "Investigation of Fragmentation Conditions in Top-Down Proteomics")
    (description
     "The topdownr package allows automatic and systemic investigation of fragment
conditions.  It creates Thermo Orbitrap Fusion Lumos method files to test
hundreds of fragmentation conditions.  Additionally it provides functions to
analyse and process the generated MS data and determine the best conditions to
maximise overall fragment coverage.")
    (license license:gpl3+)))

(define-public r-topconfects
  (package
    (name "r-topconfects")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topconfects" version))
       (sha256
        (base32 "03fr9ghdmaqsriwrim6fbvq09dknsrq3dbfswqrwkfi785ddmmfk"))))
    (properties `((upstream-name . "topconfects")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pfh/topconfects")
    (synopsis "Top Confident Effect Sizes")
    (description
     "Rank results by confident effect sizes, while maintaining False Discovery Rate
and False Coverage-statement Rate control.  Topconfects is an alternative
presentation of TREAT results with improved usability, eliminating p-values and
instead providing confidence bounds.  The main application is differential gene
expression analysis, providing genes ranked in order of confident log2 fold
change, but it can be applied to any collection of effect sizes with associated
standard errors.")
    (license (list license:lgpl2.1
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-top
  (package
    (name "r-top")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TOP" version))
       (sha256
        (base32 "0dnvxjsqfamcyzhwdaw8dxzw0y4sv9kmfjirhvwdzpprp4230wzh"))))
    (properties `((upstream-name . "TOP")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidygraph
                             r-tibble
                             r-survival
                             r-stringr
                             r-statmod
                             r-reshape2
                             r-purrr
                             r-proc
                             r-plotly
                             r-magrittr
                             r-limma
                             r-latex2exp
                             r-igraph
                             r-hmisc
                             r-glmnet
                             r-ggthemes
                             r-ggrepel
                             r-ggraph
                             r-ggplot2
                             r-ggnewscale
                             r-dplyr
                             r-doparallel
                             r-directpa
                             r-classifyr
                             r-caret
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Harry25R/TOP")
    (synopsis
     "TOP Constructs Transferable Model Across Gene Expression Platforms")
    (description
     "TOP constructs a transferable model across gene expression platforms for
prospective experiments.  Such a transferable model can be trained to make
predictions on independent validation data with an accuracy that is similar to a
re-substituted model.  The TOP procedure also has the flexibility to be adapted
to suit the most common clinical response variables, including linear response,
binomial and Cox PH models.")
    (license license:gpl3)))

(define-public r-tomoseqr
  (package
    (name "r-tomoseqr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tomoseqr" version))
       (sha256
        (base32 "07ywzz2bkm408kv1c9hwfaww7vr63090jbcbi8x6k4z3c4jllmvw"))))
    (properties `((upstream-name . "tomoseqr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-shiny
                             r-readr
                             r-purrr
                             r-plotly
                             r-ggplot2
                             r-dplyr
                             r-biocfilecache
                             r-animation))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/tomoseqr")
    (synopsis "R Package for Analyzing Tomo-seq Data")
    (description
     "`tomoseqr` is an R package for analyzing Tomo-seq data.  Tomo-seq is a
genome-wide RNA tomography method that combines combining high-throughput RNA
sequencing with cryosectioning for spatially resolved transcriptomics.
`tomoseqr` reconstructs 3D expression patterns from tomo-seq data and visualizes
the reconstructed 3D expression patterns.")
    (license license:expat)))

(define-public r-tomoda
  (package
    (name "r-tomoda")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tomoda" version))
       (sha256
        (base32 "0lmibcsqasga6j6dwrq415yvrx1jqg88ayvrr4bca4pdshkkds6s"))))
    (properties `((upstream-name . "tomoda")))
    (build-system r-build-system)
    (propagated-inputs (list r-umap
                             r-summarizedexperiment
                             r-rtsne
                             r-reshape2
                             r-rcolorbrewer
                             r-ggrepel
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/liuwd15/tomoda")
    (synopsis "Tomo-seq data analysis")
    (description
     "This package provides many easy-to-use methods to analyze and visualize tomo-seq
data.  The tomo-seq technique is based on cryosectioning of tissue and
performing RNA-seq on consecutive sections. (Reference: Kruse F, Junker JP, van
Oudenaarden A, Bakkers J. Tomo-seq: A method to obtain genome-wide expression
data with spatial resolution.  Methods Cell Biol.  2016;135:299-307.
doi:10.1016/bs.mcb.2016.01.006) The main purpose of the package is to find zones
with similar transcriptional profiles and spatially expressed genes in a
tomo-seq sample.  Several visulization functions are available to create
easy-to-modify plots.")
    (license license:expat)))

(define-public r-tomatoprobe
  (package
    (name "r-tomatoprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tomatoprobe" version
                              'annotation))
       (sha256
        (base32 "1aj8zmpla9b9p7pj0qnp2jqrj7azp1nmfvjcbka5ns5vrnvfpf92"))))
    (properties `((upstream-name . "tomatoprobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/tomatoprobe")
    (synopsis "Probe sequence data for microarrays of type tomato")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Tomato\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-tomatocdf
  (package
    (name "r-tomatocdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tomatocdf" version
                              'annotation))
       (sha256
        (base32 "1ldq5pxzh2vms5nbhn3aiy55hx2x3zbzy9wlbf2v2wczwlzbiinm"))))
    (properties `((upstream-name . "tomatocdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/tomatocdf")
    (synopsis "tomatocdf")
    (description
     "This package provides a package containing an environment representing the
Tomato.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-tofsimsdata
  (package
    (name "r-tofsimsdata")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tofsimsData" version
                              'experiment))
       (sha256
        (base32 "18fn2krbc1mg3phx1sjpshsq9n39jlm75n9s7615h4jdcky9gzld"))))
    (properties `((upstream-name . "tofsimsData")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/tofsimsData")
    (synopsis "Import, process and analysis of ToF-SIMS imaging data")
    (description
     "This packages contains data to be used with the tofsims package.")
    (license license:gpl3)))

(define-public r-tnt
  (package
    (name "r-tnt")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TnT" version))
       (sha256
        (base32 "1y4v2rphdils0rvkjsyfynncvmn1js1n5d5qhqmc2v8rhh1wjyv5"))))
    (properties `((upstream-name . "TnT")))
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
    (propagated-inputs (list r-s4vectors
                             r-knitr
                             r-jsonlite
                             r-iranges
                             r-htmlwidgets
                             r-genomicranges
                             r-genomeinfodb
                             r-data-table
                             r-biobase))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/Marlin-Na/TnT")
    (synopsis "Interactive Visualization for Genomic Features")
    (description
     "This package provides a R interface to the @code{TnT} javascript library
(https://github.com/ tntvis) to provide interactive and flexible visualization
of track-based genomic data.")
    (license license:agpl3)))

(define-public r-tnbc-cms
  (package
    (name "r-tnbc-cms")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TNBC.CMS" version))
       (sha256
        (base32 "1syygq9br5icbjbmi1kq9gs7g3bw1vzmy8mlf8ga2rk1lw6ika90"))))
    (properties `((upstream-name . "TNBC.CMS")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-summarizedexperiment
                             r-rcolorbrewer
                             r-r-utils
                             r-quadprog
                             r-pracma
                             r-pheatmap
                             r-gsva
                             r-ggpubr
                             r-ggplot2
                             r-ggally
                             r-forestplot
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TNBC.CMS")
    (synopsis "TNBC.CMS: Prediction of TNBC Consensus Molecular Subtypes")
    (description
     "This package implements a machine learning-based classifier for the assignment
of consensus molecular subtypes to TNBC samples.  It also provides functions to
summarize genomic and clinical characteristics.")
    (license license:gpl3)))

(define-public r-tmixclust
  (package
    (name "r-tmixclust")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TMixClust" version))
       (sha256
        (base32 "0qcdm3mv7yx48gz0af7h7bcgisyq3vn2qvbxzcim0fp4p9cgwrm2"))))
    (properties `((upstream-name . "TMixClust")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-spem
                             r-mvtnorm
                             r-gss
                             r-flexclust
                             r-cluster
                             r-biocparallel
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TMixClust")
    (synopsis
     "Time Series Clustering of Gene Expression with Gaussian Mixed-Effects Models and Smoothing Splines")
    (description
     "Implementation of a clustering method for time series gene expression data based
on mixed-effects models with Gaussian variables and non-parametric cubic splines
estimation.  The method can robustly account for the high levels of noise
present in typical gene expression time series datasets.")
    (license (license:fsdg-compatible "GPL (>=2)"))))

(define-public r-tmexplorer
  (package
    (name "r-tmexplorer")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TMExplorer" version
                              'experiment))
       (sha256
        (base32 "0vi99vpbfzwwqpdxgjlhcr835nnbfngwz6fag9kvd7ndicb21zy4"))))
    (properties `((upstream-name . "TMExplorer")))
    (build-system r-build-system)
    (propagated-inputs (list r-singlecellexperiment r-matrix r-biocfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TMExplorer")
    (synopsis
     "Collection of Tumour Microenvironment Single-cell RNA Sequencing Datasets and Corresponding Metadata")
    (description
     "This package provides a tool to search and download a collection of tumour
microenvironment single-cell RNA sequencing datasets and their metadata.
TMExplorer aims to act as a single point of entry for users looking to study the
tumour microenvironment at the single cell level.  Users can quickly search
available datasets using the metadata table and then download the ones they are
interested in for analysis.")
    (license license:artistic2.0)))

(define-public r-tloh
  (package
    (name "r-tloh")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tLOH" version))
       (sha256
        (base32 "0yzbpy30hvpxdh1lsnab5jp2nj64ii4pmir8xq3bp871hpqiwmwd"))))
    (properties `((upstream-name . "tLOH")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-stringr
                             r-scales
                             r-purrr
                             r-naniar
                             r-matrixgenerics
                             r-ggplot2
                             r-genomicranges
                             r-dplyr
                             r-depmixs4
                             r-data-table
                             r-bestnormalize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USCDTG/tLOH")
    (synopsis
     "Assessment of evidence for LOH in spatial transcriptomics pre-processed data using Bayes factor calculations")
    (description
     "@code{tLOH}, or @code{transcriptomicsLOH}, assesses evidence for loss of
heterozygosity (LOH) in pre-processed spatial transcriptomics data.  This tool
requires spatial transcriptomics cluster and allele count information at likely
heterozygous single-nucleotide polymorphism (SNP) positions in VCF format.
Bayes factors are calculated at each SNP to determine likelihood of potential
loss of heterozygosity event.  Two plotting functions are included to visualize
allele fraction and aggregated Bayes factor per chromosome.  Data generated with
the 10X Genomics Visium Spatial Gene Expression platform must be pre-processed
to obtain an individual sample VCF with columns for each cluster.  Required
fields are allele depth (AD) with counts for reference/alternative alleles and
read depth (DP).")
    (license license:expat)))

(define-public r-titancna
  (package
    (name "r-titancna")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TitanCNA" version))
       (sha256
        (base32 "1n82j9sgaizykgxs8i7dc4jbxxxhmqng850qyzzglzliyq8859nz"))))
    (properties `((upstream-name . "TitanCNA")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-foreach
                             r-dplyr
                             r-data-table
                             r-biocgenerics))
    (home-page "https://github.com/gavinha/TitanCNA")
    (synopsis
     "Subclonal copy number and LOH prediction from whole genome sequencing of tumours")
    (description
     "Hidden Markov model to segment and predict regions of subclonal copy number
alterations (CNA) and loss of heterozygosity (LOH), and estimate cellular
prevalence of clonal clusters in tumour whole genome sequencing data.")
    (license license:gpl3)))

(define-public r-tissuetreg
  (package
    (name "r-tissuetreg")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tissueTreg" version
                              'experiment))
       (sha256
        (base32 "17hjzwvk9pa1zhvmqrs99dnm428bm2br4xjmydp7d8j2mdsbkfs3"))))
    (properties `((upstream-name . "tissueTreg")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cimbusch/tissueTreg")
    (synopsis
     "TWGBS and RNA-seq data from tissue T regulatory cells from mice")
    (description
     "The package provides ready to use epigenomes (obtained from TWGBS) and
transcriptomes (RNA-seq) from various tissues as obtained in the study (Delacher
and Imbusch 2017, PMID: 28783152).  Regulatory T cells (Treg cells) perform two
distinct functions: they maintain self-tolerance, and they support organ
homeostasis by differentiating into specialized tissue Treg cells.  The
underlying dataset characterises the epigenetic and transcriptomic modifications
for specialized tissue Treg cells.")
    (license license:gpl2+)))

(define-public r-tissueenrich
  (package
    (name "r-tissueenrich")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TissueEnrich" version))
       (sha256
        (base32 "13wcph6vy17y9xh16zrwn6dvqsm7lzgi9lkmz05bhqvlrmqxhn6j"))))
    (properties `((upstream-name . "TissueEnrich")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-summarizedexperiment r-gseabase
                             r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TissueEnrich")
    (synopsis "Tissue-specific gene enrichment analysis")
    (description
     "The @code{TissueEnrich} package is used to calculate enrichment of
tissue-specific genes in a set of input genes.  For example, the user can input
the most highly expressed genes from RNA-Seq data, or gene co-expression modules
to determine which tissue-specific genes are enriched in those datasets.
Tissue-specific genes were defined by processing RNA-Seq data from the Human
Protein Atlas (HPA) (Uhlén et al.  2015), GTEx (Ardlie et al.  2015), and mouse
ENCODE (Shen et al.  2012) using the algorithm from the HPA (Uhlén et al.
2015).The hypergeometric test is being used to determine if the tissue-specific
genes are enriched among the input genes.  Along with tissue-specific gene
enrichment, the @code{TissueEnrich} package can also be used to define
tissue-specific genes from expression datasets provided by the user, which can
then be used to calculate tissue-specific gene enrichments.")
    (license license:expat)))

(define-public r-tinesath1probe
  (package
    (name "r-tinesath1probe")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tinesath1probe" version
                              'experiment))
       (sha256
        (base32 "1s119zkz03rq0bs3fjx85rwr7f2fxk144ykvglbzz3m6wxwi94r9"))))
    (properties `((upstream-name . "tinesath1probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/tinesath1probe")
    (synopsis "Probe sequence data for microarrays of type tinesath1")
    (description
     "This package was automatically created by package matchprobes version 1.4.0.
The probe sequence data was obtained from http://www.affymetrix.com.")
    (license license:lgpl2.0+)))

(define-public r-tinesath1cdf
  (package
    (name "r-tinesath1cdf")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tinesath1cdf" version
                              'experiment))
       (sha256
        (base32 "12db5w6fsmpjx2xgq7f3hp5czm21jp17826mi7jdz1c0217i1h4s"))))
    (properties `((upstream-name . "tinesath1cdf")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/tinesath1cdf")
    (synopsis "tinesath1cdf")
    (description
     "This package provides a package containing an environment represeting the
newcdf/@code{tinesATH1.cdf.cdf} file.")
    (license license:artistic2.0)))

(define-public r-tin
  (package
    (name "r-tin")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TIN" version))
       (sha256
        (base32 "0spk4zxx6w26wncnbp26fsiqs8i5ggh7wq3b8w61chl6klxx8nbb"))))
    (properties `((upstream-name . "TIN")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-stringr
                             r-squash
                             r-impute
                             r-data-table
                             r-aroma-affymetrix))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TIN")
    (synopsis "Transcriptome instability analysis")
    (description
     "The TIN package implements a set of tools for transcriptome instability analysis
based on exon expression profiles.  Deviating exon usage is studied in the
context of splicing factors to analyse to what degree transcriptome instability
is correlated to splicing factor expression.  In the transcriptome instability
correlation analysis, the data is compared to both random permutations of
alternative splicing scores and expression of random gene sets.")
    (license license:artistic2.0)))

(define-public r-timirgen
  (package
    (name "r-timirgen")
    (version "1.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TimiRGeN" version))
       (sha256
        (base32 "104j3rdl1mfklqvpsr753zlplr001cqbkphbhf2xrcfw8si7bgr2"))))
    (properties `((upstream-name . "TimiRGeN")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-rwikipathways
                             r-reshape2
                             r-readxl
                             r-rcy3
                             r-multiassayexperiment
                             r-mfuzz
                             r-igraph
                             r-gtools
                             r-gplots
                             r-ggplot2
                             r-gghighlight
                             r-ggdendro
                             r-freqprof
                             r-dplyr
                             r-clusterprofiler
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Krutik6/TimiRGeN/")
    (synopsis
     "Time sensitive microRNA-mRNA integration, analysis and network generation tool")
    (description
     "@code{TimiRGeN} (Time Incorporated @code{miR-mRNA} Generation of Networks) is a
novel R package which functionally analyses and integrates time course
@code{miRNA-mRNA} differential expression data.  This tool can generate small
networks within R or export results into cytoscape or pathvisio for more
detailed network construction and hypothesis generation.  This tool is created
for researchers that wish to dive deep into time series multi-omic datasets.
@code{TimiRGeN} goes further than many other tools in terms of data reduction.
Here, potentially hundreds-of-thousands of potential @code{miRNA-mRNA}
interactions can be whittled down into a handful of high confidence
@code{miRNA-mRNA} interactions affecting a signalling pathway, across a time
course.")
    (license license:gpl3)))

(define-public r-timescape
  (package
    (name "r-timescape")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timescape" version))
       (sha256
        (base32 "1yb3nbx0d206gwkrifqhxdnij6qxlgj5dmk1f2zgqlqkp2fhw45y"))))
    (properties `((upstream-name . "timescape")))
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
    (propagated-inputs (list r-stringr r-jsonlite r-htmlwidgets r-gtools
                             r-dplyr))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://bioconductor.org/packages/timescape")
    (synopsis "Patient Clonal Timescapes")
    (description
     "@code{TimeScape} is an automated tool for navigating temporal clonal evolution
data.  The key attributes of this implementation involve the enumeration of
clones, their evolutionary relationships and their shifting dynamics over time.
@code{TimeScape} requires two inputs: (i) the clonal phylogeny and (ii) the
clonal prevalences.  Optionally, @code{TimeScape} accepts a data table of
targeted mutations observed in each clone and their allele prevalences over
time.  The output is the @code{TimeScape} plot showing clonal prevalence
vertically, time horizontally, and the plot height optionally encoding tumour
volume during tumour-shrinking events.  At each sampling time point (denoted by
a faint white line), the height of each clone accurately reflects its
proportionate prevalence.  These prevalences form the anchors for bezier curves
that visually represent the dynamic transitions between time points.")
    (license license:gpl3)))

(define-public r-timerquant
  (package
    (name "r-timerquant")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TimerQuant" version
                              'experiment))
       (sha256
        (base32 "18jl2x9ywfwm4ir2kwa9y4fq0lsz0295lx7f7qz08l4d1yrb1w4v"))))
    (properties `((upstream-name . "TimerQuant")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-locfit
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TimerQuant")
    (synopsis "Timer Quantification")
    (description
     "Supplementary Data package for tandem timer methods paper by Barry et al. (2015)
including @code{TimerQuant} shiny applications.")
    (license license:artistic2.0)))

(define-public r-timeomics
  (package
    (name "r-timeomics")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timeOmics" version))
       (sha256
        (base32 "11x8m0vr6sbnpxnxn352cjkidxxv1pq7d8zdp59gcydrqdgsq665"))))
    (properties `((upstream-name . "timeOmics")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-purrr
                             r-plyr
                             r-mixomics
                             r-magrittr
                             r-lmtest
                             r-ggrepel
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/timeOmics")
    (synopsis "Time-Course Multi-Omics data integration")
    (description
     "@code{timeOmics} is a generic data-driven framework to integrate multi-Omics
longitudinal data measured on the same biological samples and select key
temporal features with strong associations within the same sample group.  The
main steps of @code{timeOmics} are: 1.  Plaform and time-specific normalization
and filtering steps; 2.  Modelling each biological into one time expression
profile; 3.  Clustering features with the same expression profile over time; 4.
Post-hoc validation step.")
    (license license:gpl3)))

(define-public r-timecoursedata
  (package
    (name "r-timecoursedata")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timecoursedata" version
                              'experiment))
       (sha256
        (base32 "10i4wcdjqd2qh6rpl65xi5mj2hsam78hi3haqp4xhg0ha4f73nb3"))))
    (properties `((upstream-name . "timecoursedata")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/timecoursedata")
    (synopsis
     "data package for timecourse RNA-seq and microarray gene expression data sets")
    (description
     "This data package contains timecourse gene expression data sets.  The first
dataset, from Shoemaker et al, consists of microarray samples from lung tissue
of mice exposed to different influenzy strains from 14 timepoints.  The two
other datasets are leaf and root samples from sorghum crops exposed to pre- and
post-flowering drought stress and a control condition, sampled across the plants
lifetime.")
    (license (license:fsdg-compatible "BSD 3-clause License + file LICENSE"))))

(define-public r-timecourse
  (package
    (name "r-timecourse")
    (version "1.74.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timecourse" version))
       (sha256
        (base32 "0lfsw6migjxswxiv05ry6dr2by9i6z285y16h2r1dm2qc287vxbi"))))
    (properties `((upstream-name . "timecourse")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-marray r-limma r-biobase))
    (home-page "http://www.bioconductor.org")
    (synopsis
     "Statistical Analysis for Developmental Microarray Time Course Data")
    (description
     "This package provides functions for data analysis and graphical displays for
developmental microarray time course data.")
    (license license:lgpl2.0+)))

(define-public r-tiledbarray
  (package
    (name "r-tiledbarray")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TileDBArray" version))
       (sha256
        (base32 "1mx1mmwgh3p8mpwrbpzv31zmq7la7pxnwqmcm91svnxkd36061wj"))))
    (properties `((upstream-name . "TileDBArray")))
    (build-system r-build-system)
    (propagated-inputs (list r-tiledb r-s4vectors r-rcpp r-delayedarray))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LTLA/TileDBArray")
    (synopsis "Using TileDB as a DelayedArray Backend")
    (description
     "This package implements a @code{DelayedArray} backend for reading and writing
dense or sparse arrays in the @code{TileDB} format.  The resulting
@code{TileDBArrays} are compatible with all Bioconductor pipelines that can
accept @code{DelayedArray} instances.")
    (license license:expat)))

(define-public r-tigre
  (package
    (name "r-tigre")
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tigre" version))
       (sha256
        (base32 "1wn6fpkqzy29n1ghpk59cd63wdrz3imxmnkrmdv1j1hw7iljq8ax"))))
    (properties `((upstream-name . "tigre")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite
                             r-gplots
                             r-dbi
                             r-biocgenerics
                             r-biobase
                             r-annotationdbi
                             r-annotate))
    (home-page "https://github.com/ahonkela/tigre")
    (synopsis
     "Transcription factor Inference through Gaussian process Reconstruction of Expression")
    (description
     "The tigre package implements our methodology of Gaussian process differential
equation models for analysis of gene expression time series from single input
motif networks.  The package can be used for inferring unobserved transcription
factor (TF) protein concentrations from expression measurements of known target
genes, or for ranking candidate targets of a TF.")
    (license license:agpl3)))

(define-public r-tidysummarizedexperiment
  (package
    (name "r-tidysummarizedexperiment")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidySummarizedExperiment" version))
       (sha256
        (base32 "0vrs235vggsvmjmyys8h2n3714q0hnzi3qzp3rcnk3pfsj3mhi4f"))))
    (properties `((upstream-name . "tidySummarizedExperiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-ttservice
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-plotly
                             r-pkgconfig
                             r-pillar
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-fansi
                             r-ellipsis
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stemangiola/tidySummarizedExperiment")
    (synopsis "Brings SummarizedExperiment to the Tidyverse")
    (description
     "The @code{tidySummarizedExperiment} package provides a set of tools for creating
and manipulating tidy data representations of @code{SummarizedExperiment}
objects. @code{SummarizedExperiment} is a widely used data structure in
bioinformatics for storing high-throughput genomic data, such as gene expression
or DNA sequencing data.  The @code{tidySummarizedExperiment} package introduces
a tidy framework for working with @code{SummarizedExperiment} objects.  It
allows users to convert their data into a tidy format, where each observation is
a row and each variable is a column.  This tidy representation simplifies data
manipulation, integration with other tidyverse packages, and enables seamless
integration with the broader ecosystem of tidy tools for data analysis.")
    (license license:gpl3)))

(define-public r-tidysinglecellexperiment
  (package
    (name "r-tidysinglecellexperiment")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidySingleCellExperiment" version))
       (sha256
        (base32 "08vz3198cl0d8wh5hz4vkf47jsyvwczmnw5g8zawpkylmawr0xrp"))))
    (properties `((upstream-name . "tidySingleCellExperiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-ttservice
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-singlecellexperiment
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-plotly
                             r-pkgconfig
                             r-pillar
                             r-matrix
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-fansi
                             r-ellipsis
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stemangiola/tidySingleCellExperiment")
    (synopsis "Brings SingleCellExperiment to the Tidyverse")
    (description
     "@code{tidySingleCellExperiment} is an adapter that abstracts the
@code{SingleCellExperiment} container in the form of a tibble'.  This allows
*tidy* data manipulation, nesting, and plotting.  For example, a
@code{tidySingleCellExperiment} is directly compatible with functions from
tidyverse packages `dplyr` and `tidyr`, as well as plotting with `ggplot2` and
`plotly`.  In addition, the package provides various utility functions specific
to single-cell omics data analysis (e.g., aggregation of cell-level data to
pseudobulks).")
    (license license:gpl3)))

(define-public r-tidybulk
  (package
    (name "r-tidybulk")
    (version "1.14.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidybulk" version))
       (sha256
        (base32 "0dpcx6vx70iwrxvy5bcggqvnswsmc96b9n0da715wcinibw7i4yj"))))
    (properties `((upstream-name . "tidybulk")))
    (build-system r-build-system)
    (propagated-inputs (list r-ttservice
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-stringi
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-readr
                             r-purrr
                             r-preprocesscore
                             r-matrix
                             r-magrittr
                             r-lifecycle
                             r-genomicranges
                             r-dplyr
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stemangiola/tidybulk")
    (synopsis "Brings transcriptomics to the tidyverse")
    (description
     "This is a collection of utility functions that allow to perform exploration of
and calculations to RNA sequencing data, in a modular, pipe-friendly and tidy
fashion.")
    (license license:gpl3)))

(define-public r-tfutils
  (package
    (name "r-tfutils")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFutils" version))
       (sha256
        (base32 "0f1rimk2qsfvyznm70zqa5xjcm21fz66fwyf1i48f7pfdwykbzig"))))
    (properties `((upstream-name . "TFutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rsamtools
                             r-rjson
                             r-readxl
                             r-org-hs-eg-db
                             r-miniui
                             r-magrittr
                             r-httr
                             r-gseabase
                             r-dt
                             r-dplyr
                             r-biocfilecache
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TFutils")
    (synopsis "TFutils")
    (description
     "This package helps users to work with TF metadata from various sources.
Significant catalogs of TFs and classifications thereof are made available.
Tools for working with motif scans are also provided.")
    (license license:artistic2.0)))

(define-public r-tfhaz
  (package
    (name "r-tfhaz")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFHAZ" version))
       (sha256
        (base32 "0084ida6g6sr2y56vi7wfxg5wy4wcg6jiqzjcw52pg14j7ha5qli"))))
    (properties `((upstream-name . "TFHAZ")))
    (build-system r-build-system)
    (propagated-inputs (list r-s4vectors r-orfik r-iranges r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TFHAZ")
    (synopsis "Transcription Factor High Accumulation Zones")
    (description
     "It finds trascription factor (TF) high accumulation DNA zones, i.e., regions
along the genome where there is a high presence of different transcription
factors.  Starting from a dataset containing the genomic positions of TF binding
regions, for each base of the selected chromosome the accumulation of TFs is
computed.  Three different types of accumulation (TF, region and base
accumulation) are available, together with the possibility of considering, in
the single base accumulation computing, the TFs present not only in that single
base, but also in its neighborhood, within a window of a given width.  Two
different methods for the search of TF high accumulation DNA zones, called
\"binding regions\" and \"overlaps\", are available.  In addition, some functions
are provided in order to analyze, visualize and compare results obtained with
different input parameters.")
    (license license:artistic2.0)))

(define-public r-tfea-chip
  (package
    (name "r-tfea-chip")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFEA.ChIP" version))
       (sha256
        (base32 "0fawr8g13kw06z4a0k2vk38mgs4lv0ichrx0qxvn2qnbkx12f40g"))))
    (properties `((upstream-name . "TFEA.ChIP")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils
                             r-org-hs-eg-db
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-dplyr
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TFEA.ChIP")
    (synopsis "Analyze Transcription Factor Enrichment")
    (description
     "Package to analize transcription factor enrichment in a gene set using data from
@code{ChIP-Seq} experiments.")
    (license license:artistic2.0)))

(define-public r-tfarm
  (package
    (name "r-tfarm")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFARM" version))
       (sha256
        (base32 "1yjf1ck99hicm8fc14bd1rlkfx7infcy7iwh9dxrws6lggg1xh90"))))
    (properties `((upstream-name . "TFARM")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-gplots r-genomicranges r-fields
                             r-arules))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TFARM")
    (synopsis "Transcription Factors Association Rules Miner")
    (description
     "It searches for relevant associations of transcription factors with a
transcription factor target, in specific genomic regions.  It also allows to
evaluate the Importance Index distribution of transcription factors (and
combinations of transcription factors) in association rules.")
    (license license:artistic2.0)))

(define-public r-test3probe
  (package
    (name "r-test3probe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "test3probe" version
                              'annotation))
       (sha256
        (base32 "005s4sags80zkd6hvndqlcr6vxsbxgbdwilsrrjbwpw27w9yvymg"))))
    (properties `((upstream-name . "test3probe")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/test3probe")
    (synopsis "Probe sequence data for microarrays of type test3")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Test3\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-test3cdf
  (package
    (name "r-test3cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "test3cdf" version
                              'annotation))
       (sha256
        (base32 "0954g4qk52f53c34gl4x5dmpcm1dia5dl6vyr20vxz6ffpmqdb4h"))))
    (properties `((upstream-name . "test3cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/test3cdf")
    (synopsis "test3cdf")
    (description
     "This package provides a package containing an environment representing the
Test3.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-test2cdf
  (package
    (name "r-test2cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "test2cdf" version
                              'annotation))
       (sha256
        (base32 "0hr8y7s0vvg6dzridwj2qh4kmsn24lq7km28pipn9m4iyis0i2hw"))))
    (properties `((upstream-name . "test2cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/test2cdf")
    (synopsis "test2cdf")
    (description
     "This package provides a package containing an environment representing the
Test2.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-test1cdf
  (package
    (name "r-test1cdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "test1cdf" version
                              'annotation))
       (sha256
        (base32 "0nmkrp4b2p09pg8ndcnfv5y7w94xah6fa5pff60dp1s2s8dcgcr4"))))
    (properties `((upstream-name . "test1cdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/test1cdf")
    (synopsis "test1cdf")
    (description
     "This package provides a package containing an environment representing the
Test1.CDF file.")
    (license license:lgpl2.0+)))

(define-public r-terratcgadata
  (package
    (name "r-terratcgadata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "terraTCGAdata" version))
       (sha256
        (base32 "0capn1a7cdmrr9mbfhglxyr8jn8m5ai07bgsmi54hz01vkspba8f"))))
    (properties `((upstream-name . "terraTCGAdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tcgautils
                             r-s4vectors
                             r-readr
                             r-raggedexperiment
                             r-multiassayexperiment
                             r-genomicranges
                             r-dplyr
                             r-biocfilecache
                             r-anvil))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/terraTCGAdata")
    (synopsis "OpenAccess TCGA Data on Terra as MultiAssayExperiment")
    (description
     "Leverage the existing open access TCGA data on Terra with well-established
Bioconductor infrastructure.  Make use of the Terra data model without learning
its complexities.  With a few functions, you can copy / download and generate a
@code{MultiAssayExperiment} from the TCGA example workspaces provided by Terra.")
    (license license:artistic2.0)))

(define-public r-ternarynet
  (package
    (name "r-ternarynet")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ternarynet" version))
       (sha256
        (base32 "1y3fwxqniy1w61hjq20rmms1pl4341nh3lv8vr9g8y63lcf2nn0q"))))
    (properties `((upstream-name . "ternarynet")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph r-biocparallel))
    (home-page "https://bioconductor.org/packages/ternarynet")
    (synopsis "Ternary Network Estimation")
    (description
     "Gene-regulatory network (GRN) modeling seeks to infer dependencies between genes
and thereby provide insight into the regulatory relationships that exist within
a cell.  This package provides a computational Bayesian approach to GRN
estimation from perturbation experiments using a ternary network model, in which
gene expression is discretized into one of 3 states: up, unchanged, or down).
The ternarynet package includes a parallel implementation of the replica
exchange Monte Carlo algorithm for fitting network models, using MPI.")
    (license license:gpl2+)))

(define-public r-teqc
  (package
    (name "r-teqc")
    (version "4.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TEQC" version))
       (sha256
        (base32 "0n5zw3ylkqikq0b1wwla89v8h4fksn2r7dcs57ljwkva03zlp9fa"))))
    (properties `((upstream-name . "TEQC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsamtools r-iranges r-hwriter r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/TEQC")
    (synopsis "Quality control for target capture experiments")
    (description
     "Target capture experiments combine hybridization-based (in solution or on
microarrays) capture and enrichment of genomic regions of interest (e.g. the
exome) with high throughput sequencing of the captured DNA fragments.  This
package provides functionalities for assessing and visualizing the quality of
the target enrichment process, like specificity and sensitivity of the capture,
per-target read coverage and so on.")
    (license license:gpl2+)))

(define-public r-tenxvisiumdata
  (package
    (name "r-tenxvisiumdata")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxVisiumData" version
                              'experiment))
       (sha256
        (base32 "0yi7axdam9b0ps0818cgygbmjcdknn032bm2snb6xf3g4i8n45f4"))))
    (properties `((upstream-name . "TENxVisiumData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-spatialexperiment r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/helenalc/TENxVisiumData")
    (synopsis "Visium spatial gene expression data by 10X Genomics")
    (description
     "Collection of Visium spatial gene expression datasets by 10X Genomics, formatted
into objects of class @code{SpatialExperiment}.  Data cover various organisms
and tissues, and include: single- and multi-section experiments, as well as
single sections subjected to both whole transcriptome and targeted panel
analysis.  Datasets may be used for testing of and as examples in packages, for
tutorials and workflow demonstrations, or similar purposes.")
    (license license:expat)))

(define-public r-tenxplore
  (package
    (name "r-tenxplore")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tenXplore" version))
       (sha256
        (base32 "1sk8xxvrmxkqlz7hq6w10hsjf1x8g06gbaas75hx4m0f1hz6pdwm"))))
    (properties `((upstream-name . "tenXplore")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-shiny
                             r-restfulse
                             r-org-mm-eg-db
                             r-ontoproc
                             r-matrixstats
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/tenXplore")
    (synopsis
     "ontological exploration of scRNA-seq of 1.3 million mouse neurons from 10x genomics")
    (description
     "Perform ontological exploration of @code{scRNA-seq} of 1.3 million mouse neurons
from 10x genomics.")
    (license license:artistic2.0)))

(define-public r-tenxpbmcdata
  (package
    (name "r-tenxpbmcdata")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxPBMCData" version
                              'experiment))
       (sha256
        (base32 "09pgf31x1zqcrnvf2fwdbx4qn7pgsaby8damxcfq5xr3iksqhdwb"))))
    (properties `((upstream-name . "TENxPBMCData")))
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
    (home-page "https://bioconductor.org/packages/TENxPBMCData")
    (synopsis "PBMC data from 10X Genomics")
    (description
     "Single-cell RNA-seq data for on PBMC cells, generated by 10X Genomics.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-tenxio
  (package
    (name "r-tenxio")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxIO" version))
       (sha256
        (base32 "1191xc69nqqzpm6l24k9bil2nzkjvximjrnkg61byivp45zf9v5y"))))
    (properties `((upstream-name . "TENxIO")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-readr
                             r-rcurl
                             r-r-utils
                             r-matrixgenerics
                             r-matrix
                             r-genomicranges
                             r-genomeinfodb
                             r-biocio
                             r-biocgenerics
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/TENxIO")
    (synopsis "Import methods for 10X Genomics files")
    (description
     "This package provides a structured S4 approach to importing data files from the
10X pipelines.  It mainly supports Single Cell Multiome ATAC + Gene Expression
data among other data types.  The main Bioconductor data representations used
are @code{SingleCellExperiment} and @code{RaggedExperiment}.")
    (license license:artistic2.0)))

(define-public r-tenxbusdata
  (package
    (name "r-tenxbusdata")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxBUSData" version
                              'experiment))
       (sha256
        (base32 "071qbq0avzbs6c64l6lrmrs1hmbrg98bnf91vpz4x7s0p5axx87n"))))
    (properties `((upstream-name . "TENxBUSData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub r-biocgenerics r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BUStools/TENxBUSData")
    (synopsis "Single cell dataset from 10x in BUS format")
    (description
     "Download Barcode, UMI, and Set (BUS) format of 10x datasets from within R. This
package accompanies the package BU@code{SpaRse}, which can load BUS format into
R as a sparse matrix, and which has utility functions related to using the C++
command line package bustools.")
    (license license:bsd-2)))

(define-public r-tenxbraindata
  (package
    (name "r-tenxbraindata")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxBrainData" version
                              'experiment))
       (sha256
        (base32 "1ia7a6jq7giy130avgv5brffxk5r2yql7rjppxs9nab3a6y472yy"))))
    (properties `((upstream-name . "TENxBrainData")))
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
    (home-page "https://bioconductor.org/packages/TENxBrainData")
    (synopsis "Data from the 10X 1.3 Million Brain Cell Study")
    (description
     "Single-cell RNA-seq data for 1.3 million brain cells from E18 mice, generated by
10X Genomics.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-tekrabber
  (package
    (name "r-tekrabber")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TEKRABber" version))
       (sha256
        (base32 "0l0ri7dg7jc3k7xyhwkf5rnmsgm4192143vxzc1j6fqhjl4q95bl"))))
    (properties `((upstream-name . "TEKRABber")))
    (build-system r-build-system)
    (propagated-inputs (list r-scbn
                             r-rcpp
                             r-magrittr
                             r-dplyr
                             r-deseq2
                             r-biomart
                             r-apeglm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ferygood/TEKRABber")
    (synopsis
     "An R package estimates the correlations of orthologs and transposable elements between two species")
    (description
     "TEKRABber is made to provide a user-friendly pipeline for comparing orthologs
and transposable elements (TEs) between two species.  It considers the orthology
confidence between two species from @code{BioMart} to normalize expression
counts and detect differentially expressed orthologs/TEs.  Then it provides one
to one correlation analysis for desired orthologs and TEs.  There is also an app
function to have a first insight on the result.  Users can prepare orthologs/TEs
RNA-seq expression data by their own preference to run TEKRABber following the
data structure mentioned in the vignettes.")
    (license (license:fsdg-compatible "LGPL (>=3)"))))

(define-public r-tdbasedufeadv
  (package
    (name "r-tdbasedufeadv")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TDbasedUFEadv" version))
       (sha256
        (base32 "07r45zv33rlmahcwrhvkr0m437p86yc7hampa91ddk19rh7x1151"))))
    (properties `((upstream-name . "TDbasedUFEadv")))
    (build-system r-build-system)
    (propagated-inputs (list r-tdbasedufe
                             r-stringdb
                             r-shiny
                             r-rtensor
                             r-rtcga
                             r-hash
                             r-genomicranges
                             r-enrichr
                             r-enrichplot
                             r-dose
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tagtag/TDbasedUFEadv")
    (synopsis
     "Advanced package of tensor decomposition based unsupervised feature extraction")
    (description
     "This is an advanced version of T@code{DbasedUFE}, which is a comprehensive
package to perform Tensor decomposition based unsupervised feature extraction.
In contrast to T@code{DbasedUFE} which can perform simple the feature selection
and the multiomics analyses, this package can perform more complicated and
advanced features, but they are not so popularly required.  Only users who
require more specific features can make use of its functionality.")
    (license license:gpl3)))

(define-public r-tdbasedufe
  (package
    (name "r-tdbasedufe")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TDbasedUFE" version))
       (sha256
        (base32 "1n0ljmifcj38lbmyi1vaw05pxim8mvm75zbr42sl1n3p4vyrkvb6"))))
    (properties `((upstream-name . "TDbasedUFE")))
    (build-system r-build-system)
    (propagated-inputs (list r-tximportdata
                             r-tximport
                             r-shiny
                             r-rtensor
                             r-readr
                             r-mofadata
                             r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tagtag/TDbasedUFE")
    (synopsis "Tensor Decomposition Based Unsupervised Feature Extraction")
    (description
     "This is a comprehensive package to perform Tensor decomposition based
unsupervised feature extraction.  It can perform unsupervised feature
extraction.  It uses tensor decomposition.  It is applicable to gene expression,
DNA methylation, and histone modification etc.  It can perform multiomics
analysis.  It is also potentially applicable to single cell omics data sets.")
    (license license:gpl3)))

(define-public r-tcseq
  (package
    (name "r-tcseq")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCseq" version))
       (sha256
        (base32 "0k97bxzwx3wj5jf558a5z51cjb841ga34lxgss3im1awcs99m3vn"))))
    (properties `((upstream-name . "TCseq")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-rsamtools
                             r-reshape2
                             r-locfit
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments
                             r-edger
                             r-e1071
                             r-cluster
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/TCseq")
    (synopsis "Time course sequencing data analysis")
    (description
     "Quantitative and differential analysis of epigenomic and transcriptomic time
course sequencing data, clustering analysis and visualization of the temporal
patterns of time course data.")
    (license license:gpl2+)))

(define-public r-tcgaworkflowdata
  (package
    (name "r-tcgaworkflowdata")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAWorkflowData" version
                              'experiment))
       (sha256
        (base32 "03p3ifgr9w737v9dvx1qvj2kdyf1l9a2qnmwii0nmlak9dp1cc52"))))
    (properties `((upstream-name . "TCGAWorkflowData")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment))
    (native-inputs (list r-knitr))
    (home-page "https://f1000research.com/articles/5-1542/v2")
    (synopsis "Data for TCGA Workflow")
    (description
     "This experimental data package contains 11 data sets necessary to follow the
\"TCGA Workflow: Analyze cancer genomics and epigenomics data using Bioconductor
packages\".")
    (license license:gpl3)))

(define-public r-tcgamethylation450k
  (package
    (name "r-tcgamethylation450k")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAMethylation450k" version
                              'experiment))
       (sha256
        (base32 "0pz8xmi4zxp1qvpcwhf54sy5lhpaspdlad1dlrhxgjbfm8xl535q"))))
    (properties `((upstream-name . "TCGAMethylation450k")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/TCGAMethylation450k")
    (synopsis "The Cancer Genome Atlas Illumina 450k methylation example data")
    (description
     "The Cancer Genome Atlas (TCGA) is applying genomics technologies to over 20
different types of cancer.  This package contains a small set of 450k array data
in idat format.")
    (license license:gpl2)))

(define-public r-tcgacrcmrna
  (package
    (name "r-tcgacrcmrna")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAcrcmRNA" version
                              'experiment))
       (sha256
        (base32 "0vwd0pi8g4pmz8g61c0mr0njha6qsm5m1z7iyf0lnwrm6y6bv6px"))))
    (properties `((upstream-name . "TCGAcrcmRNA")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/TCGAcrcmRNA")
    (synopsis "TCGA CRC 450 mRNA dataset")
    (description "colorectal cancer @code{mRNA} profile provided by TCGA")
    (license license:gpl2)))

(define-public r-tcgacrcmirna
  (package
    (name "r-tcgacrcmirna")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAcrcmiRNA" version
                              'experiment))
       (sha256
        (base32 "0qrcj2mb58dwdwfpypnwyb2f7kcjjyqnyz4v42rc43r04xy14l2m"))))
    (properties `((upstream-name . "TCGAcrcmiRNA")))
    (build-system r-build-system)
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/TCGAcrcmiRNA")
    (synopsis "TCGA CRC 450 miRNA dataset")
    (description "colorectal cancer @code{miRNA} profile provided by TCGA")
    (license license:gpl2)))

(define-public r-tcc
  (package
    (name "r-tcc")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCC" version))
       (sha256
        (base32 "0yy960fkfral1jr1myja40wmb5pzh6drigdsh62azylb3d9a7cmk"))))
    (properties `((upstream-name . "TCC")))
    (build-system r-build-system)
    (propagated-inputs (list r-roc r-edger r-deseq2 r-bayseq))
    (home-page "https://bioconductor.org/packages/TCC")
    (synopsis
     "TCC: Differential expression analysis for tag count data with robust normalization strategies")
    (description
     "This package provides a series of functions for performing differential
expression analysis from RNA-seq count data using robust normalization strategy
(called DEGES).  The basic idea of DEGES is that potential differentially
expressed genes or transcripts (DEGs) among compared samples should be removed
before data normalization to obtain a well-ranked gene list where true DEGs are
top-ranked and non-DEGs are bottom ranked.  This can be done by performing a
multi-step normalization strategy (called DEGES for DEG elimination strategy).
A major characteristic of TCC is to provide the robust normalization methods for
several kinds of count data (two-group with or without replicates,
multi-group/multi-factor, and so on) by virtue of the use of combinations of
functions in depended packages.")
    (license license:gpl2)))

(define-public r-tbx20bamsubset
  (package
    (name "r-tbx20bamsubset")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TBX20BamSubset" version
                              'experiment))
       (sha256
        (base32 "1f09l2ihh80cqqg6sw5ypa51c1zsspkq2g06lbfi19zgllcfh80f"))))
    (properties `((upstream-name . "TBX20BamSubset")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-rsamtools))
    (home-page "https://bioconductor.org/packages/TBX20BamSubset")
    (synopsis "Subset of BAM files from the \"TBX20\" experiment")
    (description
     "Dual transcriptional activator and repressor roles of TBX20 regulate adult
cardiac structure and function.  A subset of the RNA-Seq data.")
    (license license:lgpl2.0+)))

(define-public r-tbsignatureprofiler
  (package
    (name "r-tbsignatureprofiler")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TBSignatureProfiler" version))
       (sha256
        (base32 "0cixafwsp7fd5j0zfrf63vsljv9ryj3bd0idy3jcg6gip1l92bnn"))))
    (properties `((upstream-name . "TBSignatureProfiler")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment
                             r-singscore
                             r-s4vectors
                             r-rocit
                             r-rlang
                             r-reshape2
                             r-rcolorbrewer
                             r-magrittr
                             r-gsva
                             r-ggplot2
                             r-gdata
                             r-edger
                             r-dt
                             r-deseq2
                             r-complexheatmap
                             r-biocparallel
                             r-assign))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TBSignatureProfiler")
    (synopsis "Profile RNA-Seq Data Using TB Pathway Signatures")
    (description
     "Gene signatures of TB progression, TB disease, and other TB disease states have
been validated and published previously.  This package aggregates known
signatures and provides computational tools to enlist their usage on other
datasets.  The TB@code{SignatureProfiler} makes it easy to profile RNA-Seq data
using these signatures and includes common signature profiling tools including
ASSIGN, GSVA, and @code{ssGSEA}.  Original models for some gene signatures are
also available.  A shiny app provides some functionality alongside for detailed
command line accessibility.")
    (license license:expat)))

(define-public r-tartare
  (package
    (name "r-tartare")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tartare" version
                              'experiment))
       (sha256
        (base32 "1w8z756s2c4vcxan8lid5mflyn8n718vhqn72x3mspg1pbb6k0l6"))))
    (properties `((upstream-name . "tartare")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cpanse/tartare")
    (synopsis
     "Raw ground spectra recorded on Thermo Fisher Scientific mass spectrometers")
    (description
     "This package provides raw files recorded on different Liquid Chromatography Mass
Spectrometry (LC-MS) instruments.  All included MS instruments are manufactured
by Thermo Fisher Scientific and belong to the Orbitrap Tribrid or Q Exactive
Orbitrap family of instruments.  Despite their common origin and shared hardware
components, e.g., Orbitrap mass analyser, the above instruments tend to write
data in different \"dialects\" in a shared binary file format (.raw).  The
intention behind tartare is to provide complex but slim real-world files that
can be used to make code robust with respect to this diversity.  In other words,
it is intended for enhanced unit testing.  The package is considered to be used
with the rawrr package and the Spectra @code{MsBackends}.")
    (license license:gpl3)))

(define-public r-targetsearchdata
  (package
    (name "r-targetsearchdata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetSearchData" version
                              'experiment))
       (sha256
        (base32 "12z820mwi779dlmg5hf1cq5gpvrxg9ijb38s43fbzzgagn25czff"))))
    (properties `((upstream-name . "TargetSearchData")))
    (build-system r-build-system)
    (home-page "https://github.com/acinostroza/TargetSearchData")
    (synopsis "Example GC-MS data for TargetSearch Package")
    (description
     "Example files of GC-MS data for the @code{TargetSearch} Package.  The package
contains raw @code{NetCDF} files from a E.coli salt stress experiment, extracted
peak lists, and sample metadata required for a GC-MS analysis.  The raw data has
been restricted for demonstration purposes.")
    (license license:gpl2+)))

(define-public r-targetsearch
  (package
    (name "r-targetsearch")
    (version "2.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetSearch" version))
       (sha256
        (base32 "1f6dw6jgbf22szg2kjmrrc9vggm5ihyawxp245gidsfxhz875ycq"))))
    (properties `((upstream-name . "TargetSearch")))
    (build-system r-build-system)
    (propagated-inputs (list r-ncdf4 r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/acinostroza/TargetSearch")
    (synopsis "package for the analysis of GC-MS metabolite profiling data")
    (description
     "This packages provides a flexible, fast and accurate method for targeted
pre-processing of GC-MS data.  The user provides a (often very large) set of GC
chromatograms and a metabolite library of targets.  The package will
automatically search those targets in the chromatograms resulting in a data
matrix that can be used for further data analysis.")
    (license license:gpl2+)))

(define-public r-targetscoredata
  (package
    (name "r-targetscoredata")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetScoreData" version
                              'experiment))
       (sha256
        (base32 "19s1jxrh04gfkx7a9h59v6vl063wlf2j71bi6lxq9lm689y23z4k"))))
    (properties `((upstream-name . "TargetScoreData")))
    (build-system r-build-system)
    (home-page "https://bioconductor.org/packages/TargetScoreData")
    (synopsis "TargetScoreData")
    (description
     "Precompiled and processed @code{miRNA-overexpression} fold-changes from 84 Gene
Expression Omnibus (GEO) series corresponding to 6 platforms, 77 human cells or
tissues, and 113 distinct @code{miRNAs}.  Accompanied with the data, we also
included in this package the sequence feature scores from @code{TargetScanHuman}
6.1 including the context+ score and the probabilities of conserved targeting
for each @code{miRNA-mRNA} interaction.  Thus, the user can use these static
sequence-based scores together with user-supplied tissue/cell-specific
fold-change due to @code{miRNA} overexpression to predict @code{miRNA} targets
using the package @code{TargetScore} (download separately)")
    (license license:gpl2)))

(define-public r-targetscore
  (package
    (name "r-targetscore")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetScore" version))
       (sha256
        (base32 "0lrnxdry9yrhxbrmvfhgmkmj0nfqq50sa0xdq8caypz996dkz4qi"))))
    (properties `((upstream-name . "TargetScore")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-matrix))
    (home-page "http://www.cs.utoronto.ca/~yueli/software.html")
    (synopsis
     "TargetScore: Infer microRNA targets using microRNA-overexpression data and sequence information")
    (description
     "Infer the posterior distributions of @code{microRNA} targets by
probabilistically modelling the likelihood @code{microRNA-overexpression}
fold-changes and sequence-based scores.  Variaitonal Bayesian Gaussian mixture
model (VB-GMM) is applied to log fold-changes and sequence scores to obtain the
posteriors of latent variable being the @code{miRNA} targets.  The final
@code{targetScore} is computed as the sigmoid-transformed fold-change weighted
by the averaged posteriors of target components over all of the features.")
    (license license:gpl2)))

(define-public r-targetscan-mm-eg-db
  (package
    (name "r-targetscan-mm-eg-db")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "targetscan.Mm.eg.db" version
                              'annotation))
       (sha256
        (base32 "0ad6vxpwn9x82qcrpwcy1lwg0q3ik4vabxn01k6gwmbpvydz9cf5"))))
    (properties `((upstream-name . "targetscan.Mm.eg.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/targetscan.Mm.eg.db")
    (synopsis "TargetScan miRNA target predictions for mouse")
    (description
     "@code{TargetScan} @code{miRNA} target predictions for mouse assembled using data
from the @code{TargetScan} website. @code{TargetScan} predicts biological
targets of @code{miRNAs} by searching for the presence of conserved 8mer and
7mer sites that match the seed region of each @code{miRNA}.  Also identified are
sites with mismatches in the seed region that are compensated by conserved 3
pairing.  In mammals, predictions are ranked based on the predicted efficacy of
targeting as calculated using the context scores of the sites.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-targetscan-hs-eg-db
  (package
    (name "r-targetscan-hs-eg-db")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "targetscan.Hs.eg.db" version
                              'annotation))
       (sha256
        (base32 "1p14jyhn1d2m6kww9vsb96263g8crnrff7qgyiz46pp9ww8mvxf4"))))
    (properties `((upstream-name . "targetscan.Hs.eg.db")))
    (build-system r-build-system)
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/targetscan.Hs.eg.db")
    (synopsis "TargetScan miRNA target predictions for human")
    (description
     "@code{TargetScan} @code{miRNA} target predictions for human assembled using data
from the @code{TargetScan} website. @code{TargetScan} predicts biological
targets of @code{miRNAs} by searching for the presence of conserved 8mer and
7mer sites that match the seed region of each @code{miRNA}.  Also identified are
sites with mismatches in the seed region that are compensated by conserved 3
pairing.  In mammals, predictions are ranked based on the predicted efficacy of
targeting as calculated using the context scores of the sites.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-targetdecoy
  (package
    (name "r-targetdecoy")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetDecoy" version))
       (sha256
        (base32 "03y4s21kbyj7kcsr86zjib0abz8cn5xg89lpss7ykdrrgmh2g0jb"))))
    (properties `((upstream-name . "TargetDecoy")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-mzr
                             r-mzid
                             r-miniui
                             r-ggpubr
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://www.bioconductor.org/packages/TargetDecoy")
    (synopsis "Diagnostic Plots to Evaluate the Target Decoy Approach")
    (description
     "This package provides a first step in the data analysis of Mass Spectrometry
(MS) based proteomics data is to identify peptides and proteins.  With this
respect the huge number of experimental mass spectra typically have to be
assigned to theoretical peptides derived from a sequence database.  Search
engines are used for this purpose.  These tools compare each of the observed
spectra to all candidate theoretical spectra derived from the sequence data base
and calculate a score for each comparison.  The observed spectrum is then
assigned to the theoretical peptide with the best score, which is also referred
to as the peptide to spectrum match (PSM).  It is of course crucial for the
downstream analysis to evaluate the quality of these matches.  Therefore False
Discovery Rate (FDR) control is used to return a reliable list PSMs. The FDR,
however, requires a good characterisation of the score distribution of PSMs that
are matched to the wrong peptide (bad target hits).  In proteomics, the target
decoy approach (TDA) is typically used for this purpose.  The TDA method matches
the spectra to a database of real (targets) and nonsense peptides (decoys).  A
popular approach to generate these decoys is to reverse the target database.
Hence, all the PSMs that match to a decoy are known to be bad hits and the
distribution of their scores are used to estimate the distribution of the bad
scoring target PSMs. A crucial assumption of the TDA is that the decoy PSM hits
have similar properties as bad target hits so that the decoy PSM scores are a
good simulation of the target PSM scores.  Users, however, typically do not
evaluate these assumptions.  To this end we developed @code{TargetDecoy} to
generate diagnostic plots to evaluate the quality of the target decoy method.")
    (license license:artistic2.0)))

(define-public r-target
  (package
    (name "r-target")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "target" version))
       (sha256
        (base32 "0jqa7wdxqyppindfzx0s9zybmmcbxgy5s7wf36hx87vy8ja5h4zf"))))
    (properties `((upstream-name . "target")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-matrixstats r-iranges r-genomicranges
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MahShaaban/target")
    (synopsis "Predict Combined Function of Transcription Factors")
    (description
     "Implement the BETA algorithm for infering direct target genes from DNA-binding
and perturbation expression data Wang et al. (2013) <doi:
10.1038/nprot.2013.150>.  Extend the algorithm to predict the combined function
of two DNA-binding elements from comprable binding and expression data.")
    (license license:gpl3)))

(define-public r-tapseq
  (package
    (name "r-tapseq")
    (version "1.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TAPseq" version))
       (sha256
        (base32 "14df2wp3ll87lzcww5lxic4y2ymyzmidibrf5dmgplkgxrnhypgg"))))
    (properties `((upstream-name . "TAPseq")))
    (build-system r-build-system)
    (inputs (list blast+))
    (propagated-inputs (list r-tidyr
                             r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-genomicalignments
                             r-genomeinfodb
                             r-dplyr
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/argschwind/TAPseq")
    (synopsis "Targeted scRNA-seq primer design for TAP-seq")
    (description
     "Design primers for targeted single-cell RNA-seq used by TAP-seq.  Create
sequence templates for target gene panels and design gene-specific primers using
Primer3.  Potential off-targets can be estimated with BLAST. Requires working
installations of Primer3 and BLASTn.")
    (license license:expat)))

(define-public r-tanggle
  (package
    (name "r-tanggle")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tanggle" version))
       (sha256
        (base32 "0gf5y5nwhmpxzl8yynp4352i969wgllj2xb9khc401qciznfmh0h"))))
    (properties `((upstream-name . "tanggle")))
    (build-system r-build-system)
    (propagated-inputs (list r-phangorn r-ggtree r-ggplot2 r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://klausvigo.github.io/tanggle")
    (synopsis "Visualization of Phylogenetic Networks")
    (description
     "Offers functions for plotting split (or implicit) networks (unrooted,
undirected) and explicit networks (rooted, directed) with reticulations
extending.  ggtree and using functions from ape and phangorn'.  It extends the
ggtree package [@@Yu2017] to allow the visualization of phylogenetic networks
using the ggplot2 syntax.  It offers an alternative to the plot functions
already available in ape Paradis and Schliep (2019)
<doi:10.1093/bioinformatics/bty633> and phangorn Schliep (2011)
<doi:10.1093/bioinformatics/btq706>.")
    (license license:artistic2.0)))

(define-public r-tadcompare
  (package
    (name "r-tadcompare")
    (version "1.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TADCompare" version))
       (sha256
        (base32 "0n590a6mal49w6yjxbp7ldb4f78b0bkmzk080a5frfcm6mlmkyba"))))
    (properties `((upstream-name . "TADCompare")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-reshape2
                             r-rcolorbrewer
                             r-primme
                             r-matrix
                             r-magrittr
                             r-hiccompare
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dozmorovlab/TADCompare")
    (synopsis
     "TADCompare: Identification and characterization of differential TADs")
    (description
     "TADCompare is an R package designed to identify and characterize differential
Topologically Associated Domains (TADs) between multiple Hi-C contact matrices.
It contains functions for finding differential TADs between two datasets,
finding differential TADs over time and identifying consensus TADs across
multiple matrices.  It takes all of the main types of @code{HiC} input and
returns simple, comprehensive, easy to analyze results.")
    (license license:expat)))

(define-public r-tadar
  (package
    (name "r-tadar")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tadar" version))
       (sha256
        (base32 "1v39gw3i202lzq7cjvm5rb043b3zyyrz48ikm6dawv6vv1p2kjp5"))))
    (properties `((upstream-name . "tadar")))
    (build-system r-build-system)
    (propagated-inputs (list r-variantannotation
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-matrixgenerics
                             r-iranges
                             r-gviz
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/baerlachlan/tadar")
    (synopsis "Transcriptome Analysis of Differential Allelic Representation")
    (description
     "This package provides functions to standardise the analysis of Differential
Allelic Representation (DAR).  DAR compromises the integrity of Differential
Expression analysis results as it can bias expression, influencing the
classification of genes (or transcripts) as being differentially expressed.  DAR
analysis results in an easy-to-interpret value between 0 and 1 for each genetic
feature of interest, where 0 represents identical allelic representation and 1
represents complete diversity.  This metric can be used to identify features
prone to false-positive calls in Differential Expression analysis, and can be
leveraged with statistical methods to alleviate the impact of such artefacts on
RNA-seq data.")
    (license license:gpl3)))

(define-public r-tabulamurissenisdata
  (package
    (name "r-tabulamurissenisdata")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TabulaMurisSenisData" version
                              'experiment))
       (sha256
        (base32 "0f6gj56rgcv378ry4h1sgm3zhv083yh23qf1pj9rvabwhdfgk8p1"))))
    (properties `((upstream-name . "TabulaMurisSenisData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-hdf5array
                             r-gdata
                             r-experimenthub
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fmicompbio/TabulaMurisSenisData")
    (synopsis
     "Bulk and single-cell RNA-seq data from the Tabula Muris Senis project")
    (description
     "This package provides access to RNA-seq data generated by the Tabula Muris Senis
project via the Bioconductor project.  The data is made available without
restrictions by the Chan Zuckerberg Biohub.  It is provided here without further
processing, collected in the form of @code{SingleCellExperiment} objects.")
    (license license:expat)))

(define-public r-tabulamurisdata
  (package
    (name "r-tabulamurisdata")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TabulaMurisData" version
                              'experiment))
       (sha256
        (base32 "1p0pyvgwzbnkx1687n2j7gxjzb5s49r1njklsff0di66m8nlis7k"))))
    (properties `((upstream-name . "TabulaMurisData")))
    (build-system r-build-system)
    (arguments
     (list
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TabulaMurisData")
    (synopsis "10x And SmartSeq2 Data From The Tabula Muris Consortium")
    (description
     "Access to processed 10x (droplet) and @code{SmartSeq2} (on FACS-sorted cells)
single-cell RNA-seq data from the Tabula Muris consortium
(http://tabula-muris.ds.czbiohub.org/).")
    (license license:expat)))

