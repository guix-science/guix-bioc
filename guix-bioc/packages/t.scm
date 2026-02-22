(define-module (guix-bioc packages t)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages k)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages l)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages a)
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Sscrofa.UCSC.susScr3.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Sscrofa.UCSC.susScr11.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Scerevisiae.UCSC.sacCer3.sgdGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Scerevisiae.UCSC.sacCer2.sgdGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn7.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn6.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn6.ncbiRefSeq")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn5.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.UCSC.rn4.ensGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Rnorvegicus.BioMart.igis")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ptroglodytes.UCSC.panTro6.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ptroglodytes.UCSC.panTro5.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ptroglodytes.UCSC.panTro4.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
    (license license:artistic2.0)))

(define-public r-txdb-mmusculus-ucsc-mm39-refgene
  (package
    (name "r-txdb-mmusculus-ucsc-mm39-refgene")
    (version "3.19.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmusculus.UCSC.mm39.refGene" version
                              'annotation))
       (sha256
        (base32 "1rhfr4s0lxz86vigrbyyx27q1gbg0g512ld0rkfv2vxwdbcl9hc0"))))
    (properties `((upstream-name . "TxDb.Mmusculus.UCSC.mm39.refGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmusculus.UCSC.mm39.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
    (license license:artistic2.0)))

(define-public r-txdb-mmusculus-ucsc-mm39-knowngene
  (package
    (name "r-txdb-mmusculus-ucsc-mm39-knowngene")
    (version "3.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmusculus.UCSC.mm39.knownGene" version
                              'annotation))
       (sha256
        (base32 "1apn7prr57njqdc61y1zkw6l4f151dixq1k458gbmgg4pyvlk4jy"))))
    (properties `((upstream-name . "TxDb.Mmusculus.UCSC.mm39.knownGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmusculus.UCSC.mm39.knownGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmulatta.UCSC.rheMac8.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmulatta.UCSC.rheMac3.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Mmulatta.UCSC.rheMac10.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
    (license license:artistic2.0)))

(define-public r-txdb-hsapiens-ucsc-hg38-refgene
  (package
    (name "r-txdb-hsapiens-ucsc-hg38-refgene")
    (version "3.19.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Hsapiens.UCSC.hg38.refGene" version
                              'annotation))
       (sha256
        (base32 "1ylqdh23767x20npbx0527r353h4kdhc2cz6s2xdadjm3ia8zynn"))))
    (properties `((upstream-name . "TxDb.Hsapiens.UCSC.hg38.refGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Hsapiens.UCSC.hg38.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
    (license license:artistic2.0)))

(define-public r-txdb-hsapiens-ucsc-hg19-refgene
  (package
    (name "r-txdb-hsapiens-ucsc-hg19-refgene")
    (version "3.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Hsapiens.UCSC.hg19.refGene" version
                              'annotation))
       (sha256
        (base32 "0l2fpmyacyf644pkrrf35gsdpfplk4i9009miqbfg6p09gm5815p"))))
    (properties `((upstream-name . "TxDb.Hsapiens.UCSC.hg19.refGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Hsapiens.UCSC.hg19.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Hsapiens.UCSC.hg19.lincRNAsTranscripts")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Hsapiens.UCSC.hg18.knownGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page "https://bioconductor.org/packages/TxDb.Hsapiens.BioMart.igis")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ggallus.UCSC.galGal6.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ggallus.UCSC.galGal5.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Ggallus.UCSC.galGal4.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Drerio.UCSC.danRer11.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Drerio.UCSC.danRer10.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Cfamiliaris.UCSC.canFam6.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Cfamiliaris.UCSC.canFam5.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Cfamiliaris.UCSC.canFam4.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Cfamiliaris.UCSC.canFam3.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Celegans.UCSC.ce11.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Celegans.UCSC.ce11.ensGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Btaurus.UCSC.bosTau9.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Btaurus.UCSC.bosTau8.refGene")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from UCSC by exposing these as
@code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Athaliana.BioMart.plantsmart28")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Athaliana.BioMart.plantsmart25")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects.")
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
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicfeatures r-annotationdbi))
    (home-page
     "https://bioconductor.org/packages/TxDb.Athaliana.BioMart.plantsmart22")
    (synopsis "Annotation package for TxDb object(s)")
    (description
     "Exposes an annotation databases generated from @code{BioMart} by exposing these
as @code{TxDb} objects.")
    (license license:artistic2.0)))

(define-public r-txcutr
  (package
    (name "r-txcutr")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "txcutr" version))
       (sha256
        (base32 "14n4d74xlijf99nsmn6yj8q0nxx9gas8krkzmsmdpma232y2z791"))))
    (properties `((upstream-name . "txcutr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-txdbmaker
                             r-s4vectors
                             r-rtracklayer
                             r-iranges
                             r-genomicranges
                             r-genomicfeatures
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mfansler/txcutr")
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "twoddpcr" version))
       (sha256
        (base32 "18v73fxsy1xlflx89dzsph039j307x356dkizckmrjmmr1v3hzdk"))))
    (properties `((upstream-name . "twoddpcr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.86.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "twilight" version))
       (sha256
        (base32 "0s01z7q645qs5900vnwkfgpzchwnwdb7yi72a3p2nnbbwhdk0yb3"))))
    (properties `((upstream-name . "twilight")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tweeDEseqCountData" version
                              'experiment))
       (sha256
        (base32 "1rp7v0rh0hjvcv0kn8mmjkvqywigai05yl53xvjv2wqxv1c6k2dg"))))
    (properties `((upstream-name . "tweeDEseqCountData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tweeDEseq" version))
       (sha256
        (base32 "0vfxidfpl23m32v685ykyck7bfnmwzrncq2h10qcak3w0jfis5pc"))))
    (properties `((upstream-name . "tweeDEseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TVTB" version))
       (sha256
        (base32 "0v4mrcrdlncbi52mxl3pxa8w4p1v4ws6zmfin56c9kcsfrngwp6s"))))
    (properties `((upstream-name . "TVTB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-reshape2
                             r-limma
                             r-iranges
                             r-gviz
                             r-ggplot2
                             r-ggally
                             r-genomicranges
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
    (version "1.58.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TurboNorm" version))
       (sha256
        (base32 "068g9q3111bshis8f0f236jhbpyy5nm1h203ibfllkq1pvw4l6cr"))))
    (properties `((upstream-name . "TurboNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TumourMethData" version
                              'experiment))
       (sha256
        (base32 "1dpv623rfr1ns6svbnjjamhm0h2am7sha2dqwq5n1msrpwizp2x2"))))
    (properties `((upstream-name . "TumourMethData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tuberculosis" version
                              'experiment))
       (sha256
        (base32 "0c8vdk3gnd6s6yqbzaf0p4wp77imxg4bd0mww6zjwg3a9al90dw5"))))
    (properties `((upstream-name . "tuberculosis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TTMap" version))
       (sha256
        (base32 "0pz3h6ybckmfk6y7ajr1sk6yhybqxyhpmh65glfrvhf4rc1cpysc"))))
    (properties `((upstream-name . "TTMap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ttgsea" version))
       (sha256
        (base32 "1pxpfmy7d0m1fq7mq6wl9p5kdnyqiyavfiqarmi66pyrqw375kyi"))))
    (properties `((upstream-name . "ttgsea")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TSCAN" version))
       (sha256
        (base32 "14r33cyiy80pksbiwx7hnmxlhimvxhzw2vnvilx4hk90qypda9xk"))))
    (properties `((upstream-name . "TSCAN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-trajectoryutils
                             r-summarizedexperiment
                             r-sparsearray
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TSAR" version))
       (sha256
        (base32 "1bbrqx70hzjxcfr0pgvqxc6yas51qkqzarmncgpqc7b0cpwiv50i"))))
    (properties `((upstream-name . "TSAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
     "This package automates analysis workflow for Thermal Shift Analysis (TSA) data.
Processing, analyzing, and visualizing data through both shiny applications and
command lines.  Package aims to simplify data analysis and offer front to end
workflow, from raw data to multiple trial analysis.")
    (license license:agpl3)))

(define-public r-tronco
  (package
    (name "r-tronco")
    (version "2.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TRONCO" version))
       (sha256
        (base32 "0fwvyazzbfjjdivpgml5jjb9r0k07kapkrl4jif1m4mfz24icc9i"))))
    (properties `((upstream-name . "TRONCO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tRNAscanImport" version))
       (sha256
        (base32 "1xdwmbgmcqya010kfy2d5wlih922wkb8al93x0bnsf3k2cjmwg5h"))))
    (properties `((upstream-name . "tRNAscanImport")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xvector
                             r-trna
                             r-structstrings
                             r-stringr
                             r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-iranges
                             r-genomicranges
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tripr" version))
       (sha256
        (base32 "0n384vfxasbxspwryllzy37kgjgsn92q6x0asr2b4k0hksdn74r8"))))
    (properties `((upstream-name . "tripr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-stringr
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
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "triplex" version))
       (sha256
        (base32 "0q23akzzx374irjyj9sdvia46x626655rwccjqz2i2bak5azj87a"))))
    (properties `((upstream-name . "triplex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "3.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "trio" version))
       (sha256
        (base32 "02x86cf6ahs8cdb2gani83059h7ryldy4m1s8gsc7nqsv0ryg1pj"))))
    (properties `((upstream-name . "trio")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-siggenes r-logicreg r-data-table))
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

(define-public r-trident
  (package
    (name "r-trident")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TrIdent" version))
       (sha256
        (base32 "0ap55nnljg1q4d4vg1rz9k9d0fy5dx71ha26haw98kbb04jxbbps"))))
    (properties `((upstream-name . "TrIdent")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-roll
                             r-patchwork
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jlmaier12/TrIdent")
    (synopsis "TrIdent - Transduction Identification")
    (description
     "The `@code{TrIdent`} R package automates the analysis of transductomics data by
detecting, classifying, and characterizing read coverage patterns associated
with potential transduction events.  Transductomics is a DNA sequencing-based
method for the detection and characterization of transduction events in pure
cultures and complex communities.  Transductomics relies on mapping sequencing
reads from a viral-like particle (VLP)-fraction of a sample to contigs assembled
from the metagenome (whole-community) of the same sample.  Reads from bacterial
DNA carried by VLPs will map back to the bacterial contigs of origin creating
read coverage patterns indicative of ongoing transduction.")
    (license license:gpl2)))

(define-public r-tress
  (package
    (name "r-tress")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TRESS" version))
       (sha256
        (base32 "0xn1lgjb44vxfcwimq06dvj997ianr60nydfawl3pjjxpa7yfmi9"))))
    (properties `((upstream-name . "TRESS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Trendy" version))
       (sha256
        (base32 "0cyxb4xdfr52vynwjwysrnxd8xn386iy72yzg81d20v27yykd4yv"))))
    (properties `((upstream-name . "Trendy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-treg
  (package
    (name "r-treg")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TREG" version))
       (sha256
        (base32 "1c460crq072651h5156qb1wqraljnwhwm8bjy7d4gv8i57dbl6vx"))))
    (properties `((upstream-name . "TREG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "treekoR" version))
       (sha256
        (base32 "1ljq7a265flysfz7g0225ab46gqpws66nvgpm9pq901g9bjjh3sp"))))
    (properties `((upstream-name . "treekoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-treeclimbr
  (package
    (name "r-treeclimbr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "treeclimbR" version))
       (sha256
        (base32 "0kgkyl1kz7my9gxf2sb2h1xpb1hqr6zvs6zrjgprsgwy17p1cj32"))))
    (properties `((upstream-name . "treeclimbR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-treesummarizedexperiment
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-s4vectors
                             r-rlang
                             r-ggtree
                             r-ggplot2
                             r-ggnewscale
                             r-edger
                             r-dplyr
                             r-dirmult
                             r-diffcyt
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/csoneson/treeclimbR")
    (synopsis "An algorithm to find optimal signal levels in a tree")
    (description
     "The arrangement of hypotheses in a hierarchical structure appears in many
research fields and often indicates different resolutions at which data can be
viewed.  This raises the question of which resolution level the signal should
best be interpreted on. @code{treeclimbR} provides a flexible method to select
optimal resolution levels (potentially different levels in different parts of
the tree), rather than cutting the tree at an arbitrary level. @code{treeclimbR}
uses a tuning parameter to generate candidate resolutions and from these selects
the optimal one.")
    (license license:artistic2.0)))

(define-public r-treeandleaf
  (package
    (name "r-treeandleaf")
    (version "1.22.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TreeAndLeaf" version))
       (sha256
        (base32 "170l3z54qv41y69rr9mzyp13gzb8ymz6hfa3xy9zv907r0yazqxn"))))
    (properties `((upstream-name . "TreeAndLeaf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reder r-igraph r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1093/bioinformatics/btab819")
    (synopsis "Displaying binary trees with focus on dendrogram leaves")
    (description
     "@code{TreeAndLeaf} implements a hybrid layout strategy that enhances leaf-level
visualization in dendrograms.  By integrating force-directed graph and tree
layout algorithms, it enables projection of multiple layers of information onto
graph–tree diagrams.")
    (license license:artistic2.0)))

(define-public r-traser
  (package
    (name "r-traser")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "traseR" version))
       (sha256
        (base32 "1rwjfmliqihnbhybjk3svzpk02f80md6d8g8i51z03lnanjgca6f"))))
    (properties `((upstream-name . "traseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-transomicsdata
  (package
    (name "r-transomicsdata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TransOmicsData" version
                              'experiment))
       (sha256
        (base32 "0b74g5ad0v7y1jqzvsg3bvvcxj4gybdsnw48niw5f5lgs2yi82jj"))))
    (properties `((upstream-name . "TransOmicsData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PYangLab/TransOmicsData")
    (synopsis
     "collection of trans-omics datasets across various biological systems")
    (description
     "This package contains a collection of trans-omics datasets generated using
various sequencing technologies such as RNA-seq, Mass spectrometry and
@code{ChIP-seq}.  Modalities include the bulk profiling of the phosphoproteome,
proteome, transcriptome and epigenome.  Data reflects the timecourses of
different developmental systems from the mouse or human.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-transomics2cytoscape
  (package
    (name "r-transomics2cytoscape")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transomics2cytoscape" version))
       (sha256
        (base32 "1r6yr82s78vmfff5nsxmhc098s8y20ii9a4rfxxy0b3rv15bz0ry"))))
    (properties `((upstream-name . "transomics2cytoscape")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-transmogr
  (package
    (name "r-transmogr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transmogR" version))
       (sha256
        (base32 "13pwks45wqia6zlbkn85rngzsnzr86d980hc48caafn59cj1b057"))))
    (properties `((upstream-name . "transmogR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-seqinfo
                             r-scales
                             r-s4vectors
                             r-patchwork
                             r-matrixstats
                             r-jsonlite
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-data-table
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/smped/transmogR")
    (synopsis "Modify a set of reference sequences using a set of variants")
    (description
     "@code{transmogR} provides the tools needed to crate a new reference genome or
reference transcriptome, using a set of variants.  Variants can be any
combination of SNPs, Insertions and Deletions.  The intended use-case is to
enable creation of variant-modified reference transcriptomes for incorporation
into transcriptomic pseudo-alignment workflows, such as salmon.")
    (license license:gpl3)))

(define-public r-translatome
  (package
    (name "r-translatome")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tRanslatome" version))
       (sha256
        (base32 "01lmjdj2mf5j6zf007wgan4sfw6sjf89kd1wr6q08bscv3z7m2l7"))))
    (properties `((upstream-name . "tRanslatome")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transite" version))
       (sha256
        (base32 "070rfxna1qdk9vibci4kjjh8mpv9mhm66hnb6bgyncwxsn4v520a"))))
    (properties `((upstream-name . "transite")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tfmpvalue
                             r-stringr
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transformGamPoi" version))
       (sha256
        (base32 "1r34723v0q39w693im6z77rpf4jradklzvxj0dlrzv4y6k9nrzy2"))))
    (properties `((upstream-name . "transformGamPoi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transcriptogramer" version))
       (sha256
        (base32 "03p4h5n589aiin7zzlc8a2ma7sw0l0v61vnh0sd7n1ix9ahx94sb"))))
    (properties `((upstream-name . "transcriptogramer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TrajectoryGeometry" version))
       (sha256
        (base32 "12s9lq46admw4akfxpcgxkq6l46z02k00lx6q7h386p4lbr9f32k"))))
    (properties `((upstream-name . "TrajectoryGeometry")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tracktables" version))
       (sha256
        (base32 "0r2wgl0ammh794rgcll22y31l2988bq2gf7605xiq43vf1sgipv9"))))
    (properties `((upstream-name . "tracktables")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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

(define-public r-tpsvg
  (package
    (name "r-tpsvg")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tpSVG" version))
       (sha256
        (base32 "11fk4mipi0kql70mvys82pqfhzv5w4yphvv4b723i93xj54qgsba"))))
    (properties `((upstream-name . "tpSVG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-mgcv
                             r-matrixgenerics
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/boyiguo1/tpSVG")
    (synopsis "Thin plate models to detect spatially variable genes")
    (description
     "The goal of `@code{tpSVG`} is to detect and visualize spatial variation in the
gene expression for spatially resolved transcriptomics data analysis.
Specifically, `@code{tpSVG`} introduces a family of count-based models, with
generalizable parametric assumptions such as Poisson distribution or negative
binomial distribution.  In addition, comparing to currently available
count-based model for spatially resolved data analysis, the `@code{tpSVG`}
models improves computational time, and hence greatly improves the applicability
of count-based models in SRT data analysis.")
    (license license:expat)))

(define-public r-tpp2d
  (package
    (name "r-tpp2d")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TPP2D" version))
       (sha256
        (base32 "117avbbvnvnji5nlk8figs4j2ih9ylfy0k1ryvqv4b9gjg6hqhbn"))))
    (properties `((upstream-name . "TPP2D")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "3.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TPP" version))
       (sha256
        (base32 "043y7vjr2g62vqky6k7zr262vza5lswrapx0hx2jq9sh4xibizh9"))))
    (properties `((upstream-name . "TPP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ToxicoGx" version))
       (sha256
        (base32 "01y338mxf3sx3rkmzd5dnlk04x3nwbk15vnigjyhaq2h18gc5qqy"))))
    (properties `((upstream-name . "ToxicoGx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topdownrdata" version
                              'experiment))
       (sha256
        (base32 "12q8sp562r6qngzdny4lxdp2z9ya717wdr1g4aqi5cb4f4wqj7ny"))))
    (properties `((upstream-name . "topdownrdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-topdownr))
    (home-page "https://codeberg.org/sgibb/topdownrdata/")
    (synopsis "Example Files for the topdownr R Package")
    (description
     "Example data for the topdownr package generated on a Thermo Orbitrap Fusion
Lumos MS device.")
    (license license:gpl3+)))

(define-public r-topdownr
  (package
    (name "r-topdownr")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topdownr" version))
       (sha256
        (base32 "0ari49mb87gqkrlgk0ar31i4k4b989li7nnpkzsn8163m873qwqy"))))
    (properties `((upstream-name . "topdownr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-psmatch
                             r-protgenerics
                             r-mzr
                             r-msnbase
                             r-matrix
                             r-ggplot2
                             r-biostrings
                             r-biocgenerics
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://codeberg.org/sgibb/topdownr/")
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topconfects" version))
       (sha256
        (base32 "1n27xg9s7ml8ys3mhb6m62rlh37f4n3g3v174vl5rjdwv3f21kaf"))))
    (properties `((upstream-name . "topconfects")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-ggplot2 r-assertthat))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TOP" version))
       (sha256
        (base32 "152yyajddx7sxigky8s4pymsfrmabiiib4rfvpm3n8pb0mp5if2x"))))
    (properties `((upstream-name . "TOP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tomoseqr" version))
       (sha256
        (base32 "1bbfbih0zq83051izdl2v9c218bqz6b3r13bn4xkg7g096588g4b"))))
    (properties `((upstream-name . "tomoseqr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tomoda" version))
       (sha256
        (base32 "148fgacd38kqm7vrlhlh5bjddngzr999zsd2hb9shnpfjlaz8prl"))))
    (properties `((upstream-name . "tomoda")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tofsimsData" version
                              'experiment))
       (sha256
        (base32 "1k5s0gkg7rsyip9r6m9y9jy56fibc1522zh7bn6bnl9b1grk7ax0"))))
    (properties `((upstream-name . "tofsimsData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/tofsimsData")
    (synopsis "Import, process and analysis of ToF-SIMS imaging data")
    (description
     "This packages contains data to be used with the tofsims package.")
    (license license:gpl3)))

(define-public r-tnt
  (package
    (name "r-tnt")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TnT" version))
       (sha256
        (base32 "0f3q1g6zqcpxl5f1icj8frdlpmxwnf2lgrab7z1n6bssdvvjv5r2"))))
    (properties `((upstream-name . "TnT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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

(define-public r-tmsig
  (package
    (name "r-tmsig")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TMSig" version))
       (sha256
        (base32 "01hzm0b7qyyr666yhk6lb2yv130pjs0ar5ss7jphqshr16h6m0mc"))))
    (properties `((upstream-name . "TMSig")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix
                             r-limma
                             r-gseabase
                             r-data-table
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EMSL-Computing/TMSig")
    (synopsis "Tools for Molecular Signatures")
    (description
     "The TMSig package contains tools to prepare, analyze, and visualize named lists
of sets, with an emphasis on molecular signatures (such as gene or kinase sets).
 It includes fast, memory efficient functions to construct sparse incidence and
similarity matrices and filter, cluster, invert, and decompose sets.
Additionally, bubble heatmaps can be created to visualize the results of any
differential or molecular signatures analysis.")
    (license license:gpl3+)))

(define-public r-tmixclust
  (package
    (name "r-tmixclust")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TMixClust" version))
       (sha256
        (base32 "0ards0ri8g82ianzdidm6bdh64j4jljag8lw9dyilh9d5kqabciz"))))
    (properties `((upstream-name . "TMixClust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TMExplorer" version
                              'experiment))
       (sha256
        (base32 "1c2c17w7h1688xyd2c8pcf4jplxpyqlw6kpr51lkc9vvhgzjz2nh"))))
    (properties `((upstream-name . "TMExplorer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tLOH" version))
       (sha256
        (base32 "1qi4csdvwviz4dm9mdxigq8n0yp6axqzxi97d7dmp2hlyvz9y108"))))
    (properties `((upstream-name . "tLOH")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-tissuetreg
  (package
    (name "r-tissuetreg")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tissueTreg" version
                              'experiment))
       (sha256
        (base32 "0hiywrd90xiw17bzfi3zx0mbi5y70ah43wwgwd8xm6hhzr0bdkar"))))
    (properties `((upstream-name . "tissueTreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TissueEnrich" version))
       (sha256
        (base32 "0ysk3wx7c73ljgz78ywkriirxlbpnwg1n3rv24qi24rh9n9j2n5f"))))
    (properties `((upstream-name . "TissueEnrich")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tinesath1probe" version
                              'experiment))
       (sha256
        (base32 "0jc96qx9m09dxd8jxi0f0jpm0i1i4x7vg84rsvvjil3xfyqg25aq"))))
    (properties `((upstream-name . "tinesath1probe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tinesath1cdf" version
                              'experiment))
       (sha256
        (base32 "156rvd0jljn2xn1pw32n3qd4qa180rrl6r1qw41pd9pj7hx8bsx0"))))
    (properties `((upstream-name . "tinesath1cdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/tinesath1cdf")
    (synopsis "tinesath1cdf")
    (description
     "This package provides a package containing an environment represeting the
newcdf/@code{tinesATH1.cdf.cdf} file.")
    (license license:artistic2.0)))

(define-public r-tin
  (package
    (name "r-tin")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TIN" version))
       (sha256
        (base32 "1zzglfmipsabf3zbphv0dcjgzb2lwyksg728nvc8k2s2q2y6cbyk"))))
    (properties `((upstream-name . "TIN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-timescape
  (package
    (name "r-timescape")
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timescape" version))
       (sha256
        (base32 "0dlvr08k8dr7fw1igzkigpwwrn9iy8ca1wnvgca082jczlxgh19w"))))
    (properties `((upstream-name . "timescape")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (version "1.39.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TimerQuant" version
                              'experiment))
       (sha256
        (base32 "071x0kkn7963mfrgpq2zrxa1hznyzcyjy33cracj6ifnh92jd1x0"))))
    (properties `((upstream-name . "TimerQuant")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timeOmics" version))
       (sha256
        (base32 "0xqsxmn9jg475sbg54dbhqqs63154pqplpn0676fx96i8prv85rf"))))
    (properties `((upstream-name . "timeOmics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
                             r-dplyr
                             r-checkmate))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timecoursedata" version
                              'experiment))
       (sha256
        (base32 "0l44m6cw3p0qxmvp1427n7k4dvpskfnd9dk9ym2f73js3x3f54cp"))))
    (properties `((upstream-name . "timecoursedata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.82.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timecourse" version))
       (sha256
        (base32 "1zy6z2bhqzbkhn4y8fmf5jrn3qyvj4gjfhl1z1yj02xbc9xh6m1q"))))
    (properties `((upstream-name . "timecourse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TileDBArray" version))
       (sha256
        (base32 "0czy2xn55zld91zqpj16cd3nnys1v0bh61kw408njslxgwslsnrz"))))
    (properties `((upstream-name . "TileDBArray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tiledb r-sparsearray r-s4vectors r-delayedarray))
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
    (version "1.64.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tigre" version))
       (sha256
        (base32 "1kha8gpy9gwissf8hl9jb39bj5bmkbb1zc063c8vdsw02fwacpdw"))))
    (properties `((upstream-name . "tigre")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidySummarizedExperiment" version))
       (sha256
        (base32 "0i4qavwrx0d4ay3yrzd1zr53ds6lgxp0x24x37mn1qx4hd9s6bx6"))))
    (properties `((upstream-name . "tidySummarizedExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
                             r-plyxp
                             r-pkgconfig
                             r-pillar
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-generics
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

(define-public r-tidyspatialexperiment
  (package
    (name "r-tidyspatialexperiment")
    (version "1.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidySpatialExperiment" version))
       (sha256
        (base32 "07w744wnfli1k0hhc7gwf0l8mxc3690l27d87pdpy4ryxp0wgc9l"))))
    (properties `((upstream-name . "tidySpatialExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-ttservice
                             r-tidysinglecellexperiment
                             r-tidyselect
                             r-tidyr
                             r-tidygate
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-shiny
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-plotly
                             r-pkgconfig
                             r-pillar
                             r-magick
                             r-lifecycle
                             r-ggplot2
                             r-fansi
                             r-dplyr
                             r-cli
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/william-hutchison/tidySpatialExperiment")
    (synopsis "SpatialExperiment with tidy principles")
    (description
     "@code{tidySpatialExperiment} provides a bridge between the
@code{SpatialExperiment} package and the tidyverse ecosystem.  It creates an
invisible layer that allows you to interact with a @code{SpatialExperiment}
object as if it were a tibble; enabling the use of functions from dplyr, tidyr,
ggplot2 and plotly.  But, underneath, your data remains a
@code{SpatialExperiment} object.")
    (license license:gpl3+)))

(define-public r-tidysinglecellexperiment
  (package
    (name "r-tidysinglecellexperiment")
    (version "1.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidySingleCellExperiment" version))
       (sha256
        (base32 "0nqsls5p4q0q7d8rma158kc77gkp8l00q7d45jj1zx74q83mwmlr"))))
    (properties `((upstream-name . "tidySingleCellExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
                             r-pkgconfig
                             r-pillar
                             r-matrix
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-generics
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

(define-public r-tidysbml
  (package
    (name "r-tidysbml")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidysbml" version))
       (sha256
        (base32 "1c2yy1i5hfqa22znm7425zikdrsx9rzj07mncz19km9aaammrmm3"))))
    (properties `((upstream-name . "tidysbml")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/veronicapaparozzi/tidysbml")
    (synopsis "Extract SBML's data into dataframes")
    (description
     "Starting from one SBML file, it extracts information from each
@code{listOfCompartments}, @code{listOfSpecies} and @code{listOfReactions}
element by saving them into data frames.  Each table provides one row for each
entity (i.e.  either compartment, species, reaction or @code{speciesReference})
and one set of columns for the attributes, one column for the content of the
notes subelement and one set of columns for the content of the annotation
subelement.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-tidyomics
  (package
    (name "r-tidyomics")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidyomics" version))
       (sha256
        (base32 "1bwyhs3sv01qk3197mpv0sq0s0776a5p89lk8579axi9flyvgya2"))))
    (properties `((upstream-name . "tidyomics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidysummarizedexperiment
                             r-tidyspatialexperiment
                             r-tidysinglecellexperiment
                             r-tidyseurat
                             r-stringr
                             r-rlang
                             r-purrr
                             r-plyranges
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tidyomics/tidyomics")
    (synopsis "Easily install and load the tidyomics ecosystem")
    (description
     "The tidyomics ecosystem is a set of packages for ’omic data analysis that work
together in harmony; they share common data representations and API design,
consistent with the tidyverse ecosystem.  The tidyomics package is designed to
make it easy to install and load core packages from the tidyomics ecosystem with
a single command.")
    (license license:expat)))

(define-public r-tidyflowcore
  (package
    (name "r-tidyflowcore")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidyFlowCore" version))
       (sha256
        (base32 "10gh3g5v9zpcky3i6hxy9kk648bcfpxxrjmfbfx44h1p7g62d4cs"))))
    (properties `((upstream-name . "tidyFlowCore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-ggplot2
                             r-flowcore
                             r-dplyr
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/keyes-timothy/tidyFlowCore")
    (synopsis "tidyFlowCore: Bringing flowCore to the tidyverse")
    (description
     "@code{tidyFlowCore} bridges the gap between flow cytometry analysis using the
@code{flowCore} Bioconductor package and the tidy data principles advocated by
the tidyverse.  It provides a suite of dplyr-, ggplot2-, and tidyr-like verbs
specifically designed for working with @code{flowFrame} and @code{flowSet}
objects as if they were tibbles; however, your data remain @code{flowCore} data
structures under this layer of abstraction. @code{tidyFlowCore} enables
intuitive and streamlined analysis workflows that can leverage both the
Bioconductor and tidyverse ecosystems for cytometry data.")
    (license license:expat)))

(define-public r-tidycoverage
  (package
    (name "r-tidycoverage")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidyCoverage" version))
       (sha256
        (base32 "01d50vh3vmfnzn55vpkvmjpkdw8q3qjll20bbhw5vbi5drcc08wk"))))
    (properties `((upstream-name . "tidyCoverage")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rtracklayer
                             r-rlang
                             r-purrr
                             r-pillar
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomeinfodb
                             r-fansi
                             r-dplyr
                             r-cli
                             r-biocparallel
                             r-biocio))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/tidyCoverage")
    (synopsis
     "Extract and aggregate genomic coverage over features of interest")
    (description
     "`@code{tidyCoverage`} framework enables tidy manipulation of collections of
genomic tracks and features using `@code{tidySummarizedExperiment`} methods.  It
facilitates the extraction, aggregation and visualization of genomic coverage
over individual or thousands of genomic loci, relying on
`@code{CoverageExperiment`} and `@code{AggregatedCoverage`} classes.  This
accelerates the integration of genomic track data in genomic analysis workflows.")
    (license license:expat)))

(define-public r-tidybulk
  (package
    (name "r-tidybulk")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidybulk" version))
       (sha256
        (base32 "0pn9yaw576xzha9wiacrmbs2h5bx4wxkg3b77fxi8ha2hn1rxk7z"))))
    (properties `((upstream-name . "tidybulk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ttservice
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-purrr
                             r-matrix
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFutils" version))
       (sha256
        (base32 "14ks561m1n3jq96x51x3127nr5gjndvkcjvk1xrp2ccifdniwl29"))))
    (properties `((upstream-name . "TFutils")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-shiny
                             r-rsamtools
                             r-rjson
                             r-readxl
                             r-org-hs-eg-db
                             r-miniui
                             r-magrittr
                             r-httr
                             r-gseabase
                             r-genomicfiles
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFHAZ" version))
       (sha256
        (base32 "0fp26qlcq6yasj4m7zc05lvj2x45waj0w0862976m756z55ximzb"))))
    (properties `((upstream-name . "TFHAZ")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFEA.ChIP" version))
       (sha256
        (base32 "0cyd9qghhvan8gb8dgdcsglmi2c73axd50sd3g9bjzj7rxwpks36"))))
    (properties `((upstream-name . "TFEA.ChIP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-rlang
                             r-r-utils
                             r-org-mm-eg-db
                             r-org-hs-eg-db
                             r-iranges
                             r-genomicranges
                             r-genomicranges
                             r-genomicfeatures
                             r-experimenthub
                             r-dplyr
                             r-biomart))
    (native-inputs (list r-knitr r-biocstyle))
    (home-page "https://github.com/yberda/TFEA.ChIP")
    (synopsis "TFEA.ChIP, a Tool Kit for Transcription Factor Enrichment")
    (description
     "Package to analyze transcription factor enrichment in a gene set using data from
@code{ChIP-Seq} experiments.")
    (license license:artistic2.0)))

(define-public r-tfarm
  (package
    (name "r-tfarm")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFARM" version))
       (sha256
        (base32 "16izz3krw786k3ryf1zs6lhi9kdx0w1cwfcawcp0rzwwwhn8x7nm"))))
    (properties `((upstream-name . "TFARM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (arguments
     (list
      #:tests? #f))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "terraTCGAdata" version))
       (sha256
        (base32 "0a8m9672w3wribzb7ah3cdcq1d610s1m26zq90jrwfy6glbd5jyq"))))
    (properties `((upstream-name . "terraTCGAdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tcgautils
                             r-s4vectors
                             r-readr
                             r-raggedexperiment
                             r-multiassayexperiment
                             r-genomicranges
                             r-dplyr
                             r-biocfilecache
                             r-anvilgcp
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
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ternarynet" version))
       (sha256
        (base32 "12fl6szk85h317xc5pxfw2szyz93005bvsnlwg5drars652r24fs"))))
    (properties `((upstream-name . "ternarynet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-terapadog
  (package
    (name "r-terapadog")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "terapadog" version))
       (sha256
        (base32 "1fzjcrbxfdq4i7d42bajnd3v24ygb7ckm4mnycwbwcns15km2lxj"))))
    (properties `((upstream-name . "terapadog")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plotly
                             r-keggrest
                             r-htmlwidgets
                             r-dplyr
                             r-deseq2
                             r-biomart))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Gionmattia/terapadog")
    (synopsis
     "Translational Efficiency Regulation Analysis using the PADOG Method")
    (description
     "This package performs a Gene Set Analysis with the approach adopted by PADOG on
the genes that are reported as translationally regulated (ie.  exhibit a
significant change in TE) by the @code{DeltaTE} package.  It can be used on its
own to see the impact of translation regulation on gene sets, but it is also
integrated as an additional analysis method within @code{ReactomeGSA}, where
results are further contextualised in terms of pathways and directionality of
the change.")
    (license license:gpl2)))

(define-public r-teqc
  (package
    (name "r-teqc")
    (version "4.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TEQC" version))
       (sha256
        (base32 "1kh9h2lw0lg9qafxqv78wm5j5jc138zqr9raizpa7czvwg7ppc7b"))))
    (properties `((upstream-name . "TEQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-iranges
                             r-hwriter
                             r-genomicranges
                             r-biocgenerics
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

(define-public r-tenxxeniumdata
  (package
    (name "r-tenxxeniumdata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxXeniumData" version
                              'experiment))
       (sha256
        (base32 "0f2pgb6rf47074ln2c40n6kc8ml7ra3sh2yyasj2qa79nc7c2125"))))
    (properties `((upstream-name . "TENxXeniumData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-spatialfeatureexperiment
                             r-spatialexperiment r-experimenthub r-bumpymatrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mrbakhsh/TENxXeniumData")
    (synopsis "Collection of Xenium spatial data by 10X genomics")
    (description
     "Collection of Xenium spatial transcriptomics datasets provided by 10x Genomics,
formatted into the Bioconductor classes, the @code{SpatialExperiment} or
@code{SpatialFeatureExperiment} (SFE), to facilitate seamless integration into
various applications, including examples, demonstrations, and tutorials.  The
constructed data objects include gene expression profiles, per-transcript
location data, centroid, segmentation boundaries (e.g., cell or nucleus
boundaries), and image.")
    (license license:expat)))

(define-public r-tenxvisiumdata
  (package
    (name "r-tenxvisiumdata")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxVisiumData" version
                              'experiment))
       (sha256
        (base32 "0f7hacc4yvibs22hxqnykwj5dmjs89q7ad0ib620yb457sihj49c"))))
    (properties `((upstream-name . "TENxVisiumData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tenXplore" version))
       (sha256
        (base32 "08iayrc4415mcs0niy2bjs43zhni89d82p8h6bkj2zaaprivash5"))))
    (properties `((upstream-name . "tenXplore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-shiny
                             r-org-mm-eg-db
                             r-ontoproc
                             r-matrixstats
                             r-biocfilecache
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxPBMCData" version
                              'experiment))
       (sha256
        (base32 "0qpg8qvl6v9n3h21na130r70rgyq79zrzf5yjg3n4hwj70xa9md1"))))
    (properties `((upstream-name . "TENxPBMCData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxIO" version))
       (sha256
        (base32 "15mp0qncv3zs5xx0vp27nwbnjzr7wpcp0i76kzxkizigx7nrm668"))))
    (properties `((upstream-name . "TENxIO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-seqinfo
                             r-s4vectors
                             r-rhdf5
                             r-readr
                             r-rcurl
                             r-r-utils
                             r-matrixgenerics
                             r-matrix
                             r-hdf5array
                             r-genomicranges
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxBUSData" version
                              'experiment))
       (sha256
        (base32 "1809nhifxz8k4q5gqbx6nsayjmijz927h0pwia72yzhz7rsdcfy2"))))
    (properties `((upstream-name . "TENxBUSData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxBrainData" version
                              'experiment))
       (sha256
        (base32 "1jnhmnnmzpvgqh2q7aasjpi4gjxqr0a6kxcwyb7if24gx21qz52z"))))
    (properties `((upstream-name . "TENxBrainData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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

(define-public r-tenet-experimenthub
  (package
    (name "r-tenet-experimenthub")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENET.ExperimentHub" version
                              'experiment))
       (sha256
        (base32 "1ix80cfz2iixk1zmnag7m8gsz5mx9ar7q5w9g3kfvx7h0pjl5q6w"))))
    (properties `((upstream-name . "TENET.ExperimentHub")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-summarizedexperiment r-multiassayexperiment
                             r-ggplot2 r-genomicranges r-experimenthub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhielab/TENET.ExperimentHub")
    (synopsis "Experiment data for the TENET package")
    (description
     "@code{ExperimentHub} package containing datasets for use in the TENET package's
vignette and function examples.  These include a variety of different objects to
illustrate different datasets used in TENET functions.  Where applicable, all
datasets are aligned to the hg38 human genome.")
    (license license:gpl2)))

(define-public r-tenet-annotationhub
  (package
    (name "r-tenet-annotationhub")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENET.AnnotationHub" version
                              'annotation))
       (sha256
        (base32 "1m4nbz4d606f6w9b5p93pmk15qmd4cg5ajpsjhc5pfvf4xwz3wcy"))))
    (properties `((upstream-name . "TENET.AnnotationHub")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-genomicranges r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhielab/TENET.AnnotationHub")
    (synopsis "Annotation data for the TENET package")
    (description
     "@code{AnnotationHub} package containing datasets for use in the TENET package.
Includes @code{GenomicRanges} objects representing putative enhancer, promoter,
and open chromatin regions.  All included datasets are aligned to the hg38 human
genome.")
    (license license:gpl2)))

(define-public r-tenet
  (package
    (name "r-tenet")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENET" version))
       (sha256
        (base32 "1s5cb3lyy22p69x2vkd1igbn7limhkfchfk3dwg3fvkbxk299xdv"))))
    (properties `((upstream-name . "TENET")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tenet-experimenthub
                             r-tcgabiolinks
                             r-survminer
                             r-survival
                             r-summarizedexperiment
                             r-sesamedata
                             r-sesame
                             r-seqlogo
                             r-s4vectors
                             r-rtracklayer
                             r-rcircos
                             r-r-utils
                             r-pastecs
                             r-multiassayexperiment
                             r-motifdb
                             r-matlab
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-experimenthub
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-biostrings
                             r-bammtools
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhielab/TENET")
    (synopsis
     "R package for TENET (Tracing regulatory Element Networks using Epigenetic Traits) to identify key transcription factors")
    (description
     "TENET identifies key transcription factors (TFs) and regulatory elements (REs)
linked to a specific cell type by finding significantly correlated differences
in gene expression and RE DNA methylation between case and control input
datasets, and identifying the top genes by number of significant RE DNA
methylation site links.  It also includes many tools for visualization and
analysis of the results, including plots displaying and comparing methylation
and expression data and methylation site link counts, survival analysis, TF
motif searching in the vicinity of linked RE DNA methylation sites, custom TAD
and peak overlap analysis, and UCSC Genome Browser track file generation.  A
utility function is also provided to download methylation, expression, and
patient survival data from The Cancer Genome Atlas (TCGA) for use in TENET or
other analyses.")
    (license license:gpl2)))

(define-public r-tekrabber
  (package
    (name "r-tekrabber")
    (version "1.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TEKRABber" version))
       (sha256
        (base32 "1pbqd7qb9izd2iw9ajlkapgwgga2a0rqamv1pgryac8ir4mggm1d"))))
    (properties `((upstream-name . "TEKRABber")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scbn
                             r-rtracklayer
                             r-rcpp
                             r-magrittr
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-deseq2
                             r-biomart
                             r-apeglm
                             r-annotationhub))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TDbasedUFEadv" version))
       (sha256
        (base32 "0wqi3rdiyhl7sxccwqcmnyzl5yfd3c4f4nliksbmja7xm5frm4hq"))))
    (properties `((upstream-name . "TDbasedUFEadv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TDbasedUFE" version))
       (sha256
        (base32 "1d130jjazb21x93cw000z22hs9iic5l47sw7z38jv42pq7xv4xfa"))))
    (properties `((upstream-name . "TDbasedUFE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCseq" version))
       (sha256
        (base32 "156k83g75i2ndi7gc0li2zngad4s9bqn4ygi9lj5mlnf2lhr0rlq"))))
    (properties `((upstream-name . "TCseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.34.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAWorkflowData" version
                              'experiment))
       (sha256
        (base32 "07bi0n0gxfmadmmz3d0hbdgxi5srjhrlg28fk8g98xbmahx41lrw"))))
    (properties `((upstream-name . "TCGAWorkflowData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAMethylation450k" version
                              'experiment))
       (sha256
        (base32 "1ify4lhkjc9jwslpdqdgcj96xv27pqlrdvm2a559rfzljvnhrhvh"))))
    (properties `((upstream-name . "TCGAMethylation450k")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAcrcmRNA" version
                              'experiment))
       (sha256
        (base32 "06sy27f391fwkjapg2g0ms43cgxpksrcqxrlis9wgx7mqyhgj686"))))
    (properties `((upstream-name . "TCGAcrcmRNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/TCGAcrcmRNA")
    (synopsis "TCGA CRC 450 mRNA dataset")
    (description "colorectal cancer @code{mRNA} profile provided by TCGA.")
    (license license:gpl2)))

(define-public r-tcgacrcmirna
  (package
    (name "r-tcgacrcmirna")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAcrcmiRNA" version
                              'experiment))
       (sha256
        (base32 "1n399w723c33j160nifp1ikxf39j186cvl9fpzmaqjszix2y1hkl"))))
    (properties `((upstream-name . "TCGAcrcmiRNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biobase))
    (home-page "https://bioconductor.org/packages/TCGAcrcmiRNA")
    (synopsis "TCGA CRC 450 miRNA dataset")
    (description "colorectal cancer @code{miRNA} profile provided by TCGA.")
    (license license:gpl2)))

(define-public r-tcc
  (package
    (name "r-tcc")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCC" version))
       (sha256
        (base32 "14hbv28nrg81n905c5g0gmrl3qycwqn6mi2cbvc4cnhymzvcw20f"))))
    (properties `((upstream-name . "TCC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-roc r-edger r-deseq2))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TBX20BamSubset" version
                              'experiment))
       (sha256
        (base32 "1c6421rmqh5h64mvab50n84ysl31afd9fk963hnlsqh83vadj0aj"))))
    (properties `((upstream-name . "TBX20BamSubset")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TBSignatureProfiler" version))
       (sha256
        (base32 "0ilp68m46qdh45rzksmbvnykvbwbpw75gww66n0glga4pkp551xk"))))
    (properties `((upstream-name . "TBSignatureProfiler")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-summarizedexperiment
                             r-singscore
                             r-s4vectors
                             r-rocit
                             r-reshape2
                             r-rcolorbrewer
                             r-proc
                             r-magrittr
                             r-hgnchelper
                             r-gsva
                             r-glmnet
                             r-ggplot2
                             r-gdata
                             r-edger
                             r-dt
                             r-deseq2
                             r-complexheatmap
                             r-biocparallel
                             r-assign))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wejlab/TBSignatureProfiler")
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

(define-public r-taxsea
  (package
    (name "r-taxsea")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TaxSEA" version))
       (sha256
        (base32 "18dfz7pijpral6mzhx3vjm1gyf0d653jq9iypbs6z7p8g342wyyw"))))
    (properties `((upstream-name . "TaxSEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/feargalr/taxsea")
    (synopsis "Taxon Set Enrichment Analysis")
    (description
     "@code{TaxSEA} is an R package for Taxon Set Enrichment Analysis, which utilises
a Kolmogorov-Smirnov test analyses to investigate differential abundance
analysis output for whether there are alternations in a-priori defined sets of
taxa from public databases (@code{BugSigDB}, @code{MiMeDB}, @code{GutMGene},
@code{mBodyMap}, @code{BacDive} and GM@code{RepoV2}) and collated from the
literature. @code{TaxSEA} takes as input a list of taxonomic identifiers (e.g.
species names, NCBI IDs etc.) and a rank (E.g.  fold change, correlation
coefficient). @code{TaxSEA} be applied to any microbiota taxonomic profiling
technology (array-based, 16S @code{rRNA} gene sequencing, shotgun metagenomics &
metatranscriptomics etc.) and enables researchers to rapidly contextualize their
findings within the broader literature to accelerate interpretation of results.")
    (license license:gpl3)))

(define-public r-tartare
  (package
    (name "r-tartare")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tartare" version
                              'experiment))
       (sha256
        (base32 "0m6zydmyrn6rl4iidbsyiwh0mhs4i8dnwm2cq3nsb6279kjim15n"))))
    (properties `((upstream-name . "tartare")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetSearchData" version
                              'experiment))
       (sha256
        (base32 "1d3g1q7pmb4szv61bds54wkqr62wicm1415v9wvj9ixy6aw4kn8j"))))
    (properties `((upstream-name . "TargetSearchData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetSearch" version))
       (sha256
        (base32 "0cshl6mdqwkndzh2295rf5msg4niysfy2d82xg5c3842vbjlp40r"))))
    (properties `((upstream-name . "TargetSearch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetScoreData" version
                              'experiment))
       (sha256
        (base32 "14ijsmy1frdzclda2xn7rps6vslqf3wgjc64r5sprmbqzhkyxb0k"))))
    (properties `((upstream-name . "TargetScoreData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
using the package @code{TargetScore} (download separately).")
    (license license:gpl2)))

(define-public r-targetscore
  (package
    (name "r-targetscore")
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetScore" version))
       (sha256
        (base32 "0yrq8gmd62apl06m4ag3jdy0km8k0np2ijhda16xfk0y4kf4pdim"))))
    (properties `((upstream-name . "TargetScore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-targetdecoy
  (package
    (name "r-targetdecoy")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetDecoy" version))
       (sha256
        (base32 "0dcwnffgp6kmw62jfcnbw3shbb6gmsm4982yrmgrbwc0wddb6jgi"))))
    (properties `((upstream-name . "TargetDecoy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "target" version))
       (sha256
        (base32 "0ndb8vwvwfjl0wwjr783ijdlgaipa61lihzx0ja92s9p8lwyx4nr"))))
    (properties `((upstream-name . "target")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.22.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TAPseq" version))
       (sha256
        (base32 "027v8qnrz8aapkwicwbh9x2yg0a1w3pv7ls0n8fbh3qi60wgzqk1"))))
    (properties `((upstream-name . "TAPseq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tanggle" version))
       (sha256
        (base32 "1w7cbz3jwxa2qhcvx9x0vbmsdxc0jsfdf1qp06h4p2lqg9kaqfvd"))))
    (properties `((upstream-name . "tanggle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-phangorn
                             r-ggtree
                             r-ggplot2
                             r-dplyr
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://klausvigo.github.io/tanggle/")
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TADCompare" version))
       (sha256
        (base32 "0gwcc4rld9jm7wrq2dfg9fa1qvfb6v48ldcinfjzkjf2whj3kcn9"))))
    (properties `((upstream-name . "TADCompare")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tadar" version))
       (sha256
        (base32 "1a5h8kayfcbghq4ifbala2hp2awx1vcn0ka20ff49c351x1s46j2"))))
    (properties `((upstream-name . "tadar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-seqinfo
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-matrixgenerics
                             r-lifecycle
                             r-iranges
                             r-gviz
                             r-ggplot2
                             r-genomicranges
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TabulaMurisSenisData" version
                              'experiment))
       (sha256
        (base32 "0zn537c0dzqhnaqfpld3j10xxxdpcg7xrk6n8sdxr3hrm3fr4q0m"))))
    (properties `((upstream-name . "TabulaMurisSenisData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TabulaMurisData" version
                              'experiment))
       (sha256
        (base32 "1z71wj91hb71cr6d7bn7xkl1fdb9sp8bj3vv2nbli9mzbpsrg4nd"))))
    (properties `((upstream-name . "TabulaMurisData")))
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
    (home-page "https://bioconductor.org/packages/TabulaMurisData")
    (synopsis "10x And SmartSeq2 Data From The Tabula Muris Consortium")
    (description
     "Access to processed 10x (droplet) and @code{SmartSeq2} (on FACS-sorted cells)
single-cell RNA-seq data from the Tabula Muris consortium
(http://tabula-muris.ds.czbiohub.org/).")
    (license license:expat)))

