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
  #:use-module (guix-cran packages g)
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
    (version "3.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TxDb.Mmusculus.UCSC.mm39.knownGene" version
                              'annotation))
       (sha256
        (base32 "18ckr0sn8ff6ga2rzaxicbbfynvbpx56kl4949fnrgaygxgnlf9p"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "txcutr" version))
       (sha256
        (base32 "0p8wxnpbcvrbbmkx2fnsps8sv8f77a6zk1wv8d9lcsb5fxfd2s3m"))))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "twoddpcr" version))
       (sha256
        (base32 "0f8xakjz0177d2ckzrsy0kbwa9f40rlwkf8492w0x3wz9z8f71pf"))))
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
    (version "1.84.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "twilight" version))
       (sha256
        (base32 "0kamrxihicjy1n7kwyv8zfclprxysxcj9q04wpk8cwcr1yy34vqx"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tweeDEseqCountData" version
                              'experiment))
       (sha256
        (base32 "1cf7v7s474q08c7bmnrmdx5rv5wrwjk84xs1hdk7pbm2vq89g12v"))))
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
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tweeDEseq" version))
       (sha256
        (base32 "1xna9h9n7q8ay4a6xbbd293qhfq5vf59vls9vb21jb0zlwig2ikl"))))
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
    (version "1.34.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TVTB" version))
       (sha256
        (base32 "1w4ki0qrwk8sw5dy3020rqx8g2kymb4a17jlzl3wnadpsnn072zj"))))
    (properties `((upstream-name . "TVTB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TurboNorm" version))
       (sha256
        (base32 "14lnlmasfhbybmnxnrdvksihgilk8qv5c86pkpl0is3a8jjgcb7b"))))
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TumourMethData" version
                              'experiment))
       (sha256
        (base32 "0fgrws65cza54b7raj0vk48574xsk2r5q8zn7frxkx186fgz0pal"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tuberculosis" version
                              'experiment))
       (sha256
        (base32 "1q2f3jxapl1gjjp7bqnbhb0kblfgxh0g7zrarjvd2v5kbf3w2nc2"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TTMap" version))
       (sha256
        (base32 "1f3klkw9gy1f70dvpvgjrc4f1iq2001s22m57yr5g0d0vi9aprf0"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ttgsea" version))
       (sha256
        (base32 "16b46a59r3rihx9w83pwqpicphk70dszri45jj0xrk4fx5kzqgzr"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TSCAN" version))
       (sha256
        (base32 "1xn3wvrsydqyjd7nq8a3iz079ci25cv16zvx2s9gn9mjpcjw3hl6"))))
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TSAR" version))
       (sha256
        (base32 "1ng2l4k8wx8s4i2w16fv2b0pl5c95whx63ybmmva4l7abyrx5k0p"))))
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
    (version "2.40.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TRONCO" version))
       (sha256
        (base32 "09axgn5nxrxs26c25c3l0fhnqc664gnc5c15s4f9rfd9360wpvpz"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tRNAscanImport" version))
       (sha256
        (base32 "0zzkk6p7jw1z06faj55h8qqh0n8xm2x5i062f55b6nggfk5kam26"))))
    (properties `((upstream-name . "tRNAscanImport")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tripr" version))
       (sha256
        (base32 "0isw18lfs9dz0i5qrkdsw3vprfrd7zcqvr5726hv24pwn2irf3yk"))))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "triplex" version))
       (sha256
        (base32 "1iycda6qrhiqlq1zpih6mr4ch4cl1npjwxc9dz9j2n6043afz3sv"))))
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
    (version "3.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "trio" version))
       (sha256
        (base32 "05l4k349d7nwdbx7g89vl93sn6zqh66rxhjbaas3ffly611fycbd"))))
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

(define-public r-trigger
  (package
    (name "r-trigger")
    (version "1.53.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "trigger" version))
       (sha256
        (base32 "1m1gwqjz8b72csygl0yp2jz3i9pv8yxgb3gk5s53bbh27wfh9hk8"))))
    (properties `((upstream-name . "trigger")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-trident
  (package
    (name "r-trident")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TrIdent" version))
       (sha256
        (base32 "1pp5qm058k1kz03prq2072nwnzncxb6akwq005bj358v3k0gjlsn"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TRESS" version))
       (sha256
        (base32 "1hc755ng31ks1sxndg3lmr8faif5rcqdi17fvwi21x2cjy88msxy"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Trendy" version))
       (sha256
        (base32 "0b7crg1hw4kl0rizwivpzvbj5q0i7mz3kih5x6r01qdxg9a17v95"))))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TREG" version))
       (sha256
        (base32 "14yl6vxnrajmqh7nrpaa2nmyq8713rnkgq7b53vd9mxpb4plfv1f"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "treekoR" version))
       (sha256
        (base32 "100wzgh7bfq03k96k6k0m4xbxaas8fr04q18p5ppqrq4ywb9d0i8"))))
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "treeclimbR" version))
       (sha256
        (base32 "1v7k9lzlymsc5gxchz68abx8g35l5h012cp7z640zdgz30r49v83"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TreeAndLeaf" version))
       (sha256
        (base32 "12jg75hh8ldvcx6yp5ml9l4dps0y297za9v7snpqp5aj88aszxz8"))))
    (properties `((upstream-name . "TreeAndLeaf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reder r-igraph r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/TreeAndLeaf")
    (synopsis "Displaying binary trees with focus on dendrogram leaves")
    (description
     "The @code{TreeAndLeaf} package combines unrooted and force-directed graph
algorithms in order to layout binary trees, aiming to represent multiple layers
of information onto dendrogram leaves.")
    (license license:artistic2.0)))

(define-public r-traser
  (package
    (name "r-traser")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "traseR" version))
       (sha256
        (base32 "15xl952af9gskph0jxcj625z5g14m4r38l56gynjhsjmj9hcnfrm"))))
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TransOmicsData" version
                              'experiment))
       (sha256
        (base32 "1rns7kvf1nqbxqyb6sry5y20nm06ggaddysn1qg27mwxr6dhzm1c"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transomics2cytoscape" version))
       (sha256
        (base32 "0a3bnhknmj3kvkca2gssx7hv1ahiqzwdh9p8c0ijdi7ripqsv0cv"))))
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
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transmogR" version))
       (sha256
        (base32 "1wxr87svf3q7sdyjb4p5pink9kpcypbbchp9s5kyi3k1yg70gkj4"))))
    (properties `((upstream-name . "transmogR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-variantannotation
                             r-summarizedexperiment
                             r-scales
                             r-s4vectors
                             r-rlang
                             r-matrixstats
                             r-jsonlite
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tRanslatome" version))
       (sha256
        (base32 "041f3p900nxgdgj3dlas7wjlr6ix5qck01ccmq15cm4bspb3fw0g"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transite" version))
       (sha256
        (base32 "0gy1vvvfhyfxjp1pjzbrkv1hk7skbps677128dk73vw615fiv73s"))))
    (properties `((upstream-name . "transite")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transformGamPoi" version))
       (sha256
        (base32 "0v6k2rppy64n80c5fpk9d1hvjsqklrzmyp5pq3qr6pxcsgg6d63d"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "transcriptogramer" version))
       (sha256
        (base32 "00vg9f563jv0wdhyiyw1nfx1v434hhbb6g2bl6r4hvpccfjz2f3s"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TrajectoryGeometry" version))
       (sha256
        (base32 "0k639jwadjz9kg7l7cc5i30xc24dz456kn7y6d66b2w92ad0zvds"))))
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
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tracktables" version))
       (sha256
        (base32 "10s4j4p6znqjd8bgkfis1mn75801gj2wh4zvj26r60h49dq52q6a"))))
    (properties `((upstream-name . "tracktables")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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

(define-public r-tpsvg
  (package
    (name "r-tpsvg")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tpSVG" version))
       (sha256
        (base32 "0cxd5q1jk5whkcg486gqq90rp203j6ng3ahzvrk8aw1wg4fjzz8z"))))
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
    (version "1.24.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TPP2D" version))
       (sha256
        (base32 "0q35yy97w3myk9b9w35mxysalj6zqy44fqgbq168karjm8mfp4ga"))))
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
    (version "3.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TPP" version))
       (sha256
        (base32 "0mkwp5q0qm9cp7wwsnxy55ljrgkzxxzsf51yfr7428w33mmwwq2b"))))
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
    (version "2.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ToxicoGx" version))
       (sha256
        (base32 "072xin3r4hwbgln4qyj1w1by9w6vbjfn3fy1g6jpzhq9b6czj7m1"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topdownrdata" version
                              'experiment))
       (sha256
        (base32 "1d70z799qblvni8b04yf7nwapsd7xjilargsh3zv4nzw48ficv2g"))))
    (properties `((upstream-name . "topdownrdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topdownr" version))
       (sha256
        (base32 "1h6q9lqlk1h4bqww7hbhjgai3rwnhcnq946dad1xlhwdsw9yb22y"))))
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
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "topconfects" version))
       (sha256
        (base32 "1dn4b85jbgd9jbphaxq8ziabf7r02pfv6j42nvqhfnwwxcdfxi0w"))))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TOP" version))
       (sha256
        (base32 "1g7ghaw2diq3p7l985rid1yi8lgpig4pdj2m0a9bnp6ri22lxfr0"))))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tomoseqr" version))
       (sha256
        (base32 "0w8wajmxy8gk3kviqq65n1v7rnrih4c5c4ppb79hlab698i2nn9c"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tomoda" version))
       (sha256
        (base32 "01d8xrb35zaf0l4x8c28i1jy9yfwr5s9ngl4fxn67m2ncbg9wfpi"))))
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
    (version "1.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tofsimsData" version
                              'experiment))
       (sha256
        (base32 "1783qqf53mjding2p7zw8q8adi2fsw23p6v3ld19f5ggnh07q1yk"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TnT" version))
       (sha256
        (base32 "1f8790i64qlbl6kjyfq971vyjppx56qavrm8fh0hykp36f21swzs"))))
    (properties `((upstream-name . "TnT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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

(define-public r-tmsig
  (package
    (name "r-tmsig")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TMSig" version))
       (sha256
        (base32 "165xbvn61l8zxlywdczx1r0sakhq956qdhxjk73ixq486qz9zn16"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TMixClust" version))
       (sha256
        (base32 "06bk1h4ngxgaws27n8yd6pqp730gwimnvqq9acmvkxwh35yph9ab"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TMExplorer" version
                              'experiment))
       (sha256
        (base32 "0bbsk5ny619qpnpl3ii8gnj9a5s1jf7p2nbm631ccdzhfm2xk25d"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tLOH" version))
       (sha256
        (base32 "11yn96yb3i4kwqp41qdcgwj771xzdvrgwycdsxm83zycc38lqsdh"))))
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

(define-public r-titancna
  (package
    (name "r-titancna")
    (version "1.45.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TitanCNA" version))
       (sha256
        (base32 "19znhy9gd40fcv3m1zx6kdh178f74j88rb5pkrdv53q48vcq68l3"))))
    (properties `((upstream-name . "TitanCNA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tissueTreg" version
                              'experiment))
       (sha256
        (base32 "1wqnw3xnac6n4295h8gni4sc6h2cr0djkas3iqiplavfi8l4nw06"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TissueEnrich" version))
       (sha256
        (base32 "0b8claj69x94k79mgvy6jw2iz3axl9nkdh27vljsv29gw7lf2vyh"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tinesath1probe" version
                              'experiment))
       (sha256
        (base32 "1j5l5342blbnb6xa2ycv5zxk4vwx23s99pb9k5x4w5cs33w9d6ax"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tinesath1cdf" version
                              'experiment))
       (sha256
        (base32 "0nyrrpmh1pklwgyqz9zb91g8j52v45pm9xdpwx44147fw0mc5ki3"))))
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
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TIN" version))
       (sha256
        (base32 "063j4axil7yy1b555jhq36d2v6lsw4ar53vkghyb0hh1j9yhgcw6"))))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timescape" version))
       (sha256
        (base32 "11wm1ad2qfkiq78z3llk9i5114i10j3mg68r0wa34s90xx765s0k"))))
    (properties `((upstream-name . "timescape")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
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
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TimerQuant" version
                              'experiment))
       (sha256
        (base32 "1ja9dp762p5s5kvx8azkbx112g80bb41wipipp6hbpk1vr7r2lc6"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timeOmics" version))
       (sha256
        (base32 "00nrah03r01j1n26h2gfim0cwwpajv0k54pmf0dhgmxjy7dbsdqa"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timecoursedata" version
                              'experiment))
       (sha256
        (base32 "02qd7gywjhrf3l2rxj6glz9jvr0flvwkxs952di3nzais1xxh8m1"))))
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
    (version "1.80.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "timecourse" version))
       (sha256
        (base32 "16w5h3mwzw9kbg4wiw2g9k2n5znx2lkrfd2scj9vp55v6px04kn3"))))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TileDBArray" version))
       (sha256
        (base32 "1l7hgy39szsslzxi2hmhi5764l39a1jx1sh0xickbyawjn1jp442"))))
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
    (version "1.62.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tigre" version))
       (sha256
        (base32 "1mhlw8swf79rymbi6343bxls33czcnv97n59inv46vj5cmax5l2m"))))
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

(define-public r-tidytof
  (package
    (name "r-tidytof")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidytof" version))
       (sha256
        (base32 "13m028bm21j7404ncvpg7l7qvfkbvcnbrf4rp3xilyl5m6cyvidy"))))
    (properties `((upstream-name . "tidytof")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yardstick
                             r-tidyselect
                             r-tidyr
                             r-tidygraph
                             r-tibble
                             r-survival
                             r-stringr
                             r-rlang
                             r-recipes
                             r-readr
                             r-rcpphnsw
                             r-rcpp
                             r-purrr
                             r-glmnet
                             r-ggraph
                             r-ggplot2
                             r-foreach
                             r-flowcore
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://keyes-timothy.github.io/tidytof")
    (synopsis
     "Analyze High-dimensional Cytometry Data Using Tidy Data Principles")
    (description
     "This package implements an interactive, scientific analysis pipeline for
high-dimensional cytometry data built using tidy data principles.  It is
specifically designed to play well with both the tidyverse and Bioconductor
software ecosystems, with functionality for reading/writing data files, data
cleaning, preprocessing, clustering, visualization, modeling, and other
quality-of-life functions.  tidytof implements a \"grammar\" of high-dimensional
cytometry data analysis.")
    (license license:expat)))

(define-public r-tidysummarizedexperiment
  (package
    (name "r-tidysummarizedexperiment")
    (version "1.18.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidySummarizedExperiment" version))
       (sha256
        (base32 "1x0hznrycafn6n3mn4sr15974pvy7xzdhk3njv7qrrwvv6wqyyfq"))))
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

(define-public r-tidyspatialexperiment
  (package
    (name "r-tidyspatialexperiment")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidySpatialExperiment" version))
       (sha256
        (base32 "1cb0g0v6141c1kkq4w7qgihm5d145bxfnwg7zwaql19zw9zvizlm"))))
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
                             r-matrix
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
    (version "1.18.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidySingleCellExperiment" version))
       (sha256
        (base32 "12fbw9l2c8jjchicba17qbjbrgz1l0mw4idvfpfrldh4gp4yprnm"))))
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidysbml" version))
       (sha256
        (base32 "0yp08108r1njxg4dfvn7g9ccqxq0by2alxqdmy29j55ky482inz5"))))
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
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidyomics" version))
       (sha256
        (base32 "18imvbc8dcqn5iykp1gd73ndw39jyf8lymcafhlpswww9ibw2cb5"))))
    (properties `((upstream-name . "tidyomics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidysummarizedexperiment
                             r-tidysinglecellexperiment
                             r-tidyseurat
                             r-tidybulk
                             r-stringr
                             r-rlang
                             r-purrr
                             r-plyranges
                             r-nullranges
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
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidyFlowCore" version))
       (sha256
        (base32 "18nfv2i0kwv12mam2cja8pfja8amgj9ap5lpvp42zqhvjskgms4c"))))
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
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidyCoverage" version))
       (sha256
        (base32 "1gjk7qb6ckg64nfscx0cjhz14ivrxzg5rcjwv6nzyv4kc049w38n"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tidybulk" version))
       (sha256
        (base32 "0mpinpa29f1rzcch9vwjfhifsmzf8if0dg2ahqzpri074ih29abz"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFutils" version))
       (sha256
        (base32 "1ciwf64gia2fn7xxxksjf4kg9996yx9zfjn0fk0xlrjaj8ald4ps"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFHAZ" version))
       (sha256
        (base32 "0hl6wmbkaq9g7imhh95sqz832ccq524hax1j5vrypgbxcvk73vgv"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFEA.ChIP" version))
       (sha256
        (base32 "1pwf4gxxls9mzbzm7crnhw01pajl3plbh1fm6qaz4m5ra9b7wkq2"))))
    (properties `((upstream-name . "TFEA.ChIP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TFARM" version))
       (sha256
        (base32 "11qrxlcwdkhnqgki4b47dpc0zcv1w7scmprjiy84afid9kyykfp9"))))
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
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "terraTCGAdata" version))
       (sha256
        (base32 "0cf0ai3bdpz0xn2fk37lc1iyq3b2yk5k3f63hhhwya0k551liwll"))))
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
    (version "1.52.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ternarynet" version))
       (sha256
        (base32 "0a33srg37npd4x8y80s397ca49vfaslmi0mkldabr5kfyp4gpgib"))))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "terapadog" version))
       (sha256
        (base32 "0kbbcylr8f99gp2877lcjk786zasvjbjgzgyyrd0zg26r7c4jwzh"))))
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
    (version "4.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TEQC" version))
       (sha256
        (base32 "0mm33s75i527h8q3p4sdxmrcwh4xcr6lff3334719mh296gfgqja"))))
    (properties `((upstream-name . "TEQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-tenxxeniumdata
  (package
    (name "r-tenxxeniumdata")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxXeniumData" version
                              'experiment))
       (sha256
        (base32 "0v9imi1fjxifl2aay06n5936p3r52xk0vf1v0n93wkia190kncpn"))))
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
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxVisiumData" version
                              'experiment))
       (sha256
        (base32 "1jvnj16ijg03qcgclzm2qxp1wsmybicc3yz6w8xjfizmkzbska91"))))
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
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tenXplore" version))
       (sha256
        (base32 "0svqk2hcp3dkqa0r94yll17lzjxwnld5ci04k5fmjm28234770f0"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxPBMCData" version
                              'experiment))
       (sha256
        (base32 "1ylp43701h0pscp4apiinqa00m7wnmr44h7x6qal09pzf01a751v"))))
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
    (version "1.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxIO" version))
       (sha256
        (base32 "0bmvwp3ji15i044c4x6y4cslaxq5glwar0a0662c121m9m7kbffb"))))
    (properties `((upstream-name . "TENxIO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rhdf5
                             r-readr
                             r-rcurl
                             r-r-utils
                             r-matrixgenerics
                             r-matrix
                             r-hdf5array
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxBUSData" version
                              'experiment))
       (sha256
        (base32 "096c0n07njvvngy8svslh9rwv78kfq461sd7qv3mx44iq04rbld3"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENxBrainData" version
                              'experiment))
       (sha256
        (base32 "0ab2z51inycnb9lx0vjlnl4c5dz6wwqvr5nyb37knng9ndzz966r"))))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENET.ExperimentHub" version
                              'experiment))
       (sha256
        (base32 "0khi9shy3vr15rbqrapm9k9l2byqk0jr6sd3z5bzjika9d4fi2nb"))))
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
                             r-genomicranges r-experimenthub))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENET.AnnotationHub" version
                              'annotation))
       (sha256
        (base32 "0xxyh0w5vylncpckkna05ppmfyf3wzcgx1gr3w2vv41wny0bbgff"))))
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
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TENET" version))
       (sha256
        (base32 "03rrsld0rk40c6qyq5wpdq8dflhcx1hgs2svdlxjnxqa6dhyvqzh"))))
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
                             r-matlab
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-experimenthub
                             r-bsgenome-hsapiens-ucsc-hg38
                             r-biostrings
                             r-annotationhub))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhielab/TENET")
    (synopsis
     "R package for TENET (Tracing regulatory Element Networks using Epigenetic Traits) to identify key transcription factors")
    (description
     "TENET identifies key transcription factors (TFs) and regulatory elements (REs)
linked to a specific cell type by finding significantly correlated differences
in gene expression and RE methylation between case and control input datasets,
and identifying the top genes by number of significant RE DNA methylation site
links.  It also includes many additional tools to aid in visualization and
analysis of the results, including plots displaying and comparing methylation
and expression data and RE DNA methylation site link counts, survival analysis,
TF motif searching in the vicinity of linked RE DNA methylation sites, custom
TAD and peak overlap analysis, and UCSC Genome Browser track file generation.  A
utility function is also provided to download methylation, expression, and
patient survival data from The Cancer Genome Atlas (TCGA) for use in TENET or
other analyses.")
    (license license:gpl2)))

(define-public r-tekrabber
  (package
    (name "r-tekrabber")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TEKRABber" version))
       (sha256
        (base32 "1nbisldzrxadw86nffarrcnkyrhs76qsfimsx2mhj98dcv7190ig"))))
    (properties `((upstream-name . "TEKRABber")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scbn
                             r-rtracklayer
                             r-rcpp
                             r-magrittr
                             r-genomeinfodb
                             r-foreach
                             r-dplyr
                             r-doparallel
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
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TDbasedUFEadv" version))
       (sha256
        (base32 "01k0candqvkshpf6sc886c37481hh39b25ik67pvy7hqh8rg6h4r"))))
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
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TDbasedUFE" version))
       (sha256
        (base32 "17y5yi0x168ma9b33fhkykc1w94y394r5l716rfqr8s9iqsddmf2"))))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCseq" version))
       (sha256
        (base32 "0n3w1dgpqfyq6gkdc5cqx7p6srb1pjfwq66rn32956wja43v9q1x"))))
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
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAWorkflowData" version
                              'experiment))
       (sha256
        (base32 "1dv471xd051i47pyk3fy46q13c4in6bs0ak5px8wknwk8rzlg00h"))))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAMethylation450k" version
                              'experiment))
       (sha256
        (base32 "141k9a26nnia6r89y0jvak54pr3qbzwl4x23fsd1n3bvi37znccf"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAcrcmRNA" version
                              'experiment))
       (sha256
        (base32 "1cc44dw3hmxr5sgcnvcwvhhghjm0dqqhl6pshq0l3mb0xrr72v0k"))))
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
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCGAcrcmiRNA" version
                              'experiment))
       (sha256
        (base32 "0cykbga58zzi5yb3d00z0yj7jbhxqwxmiik43z9b8cv36965169y"))))
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
    (version "1.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TCC" version))
       (sha256
        (base32 "1f627k01p47rh6f8isba6ydwvsg28xr1n6zharnp5z4m0hiapf5w"))))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TBX20BamSubset" version
                              'experiment))
       (sha256
        (base32 "1jh5gzymmrl1hlc1bmxiij6jaa8w0bchjg5i9vb1hx0nychwif9w"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TBSignatureProfiler" version))
       (sha256
        (base32 "1k6hzklr16rh3fn79q1cskzvnwlq3sxmsymslra4bgyq9kik6bcv"))))
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

(define-public r-taxsea
  (package
    (name "r-taxsea")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TaxSEA" version))
       (sha256
        (base32 "1vhilxjfprbxl6vrms6ar4fm0pr1v3bydfwpwb1vgvh23wy3mvrr"))))
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
taxa from five previously published databases (@code{BugSigDB}, @code{MiMeDB},
@code{GutMGene}, @code{mBodyMap} and GM@code{RepoV2}). @code{TaxSEA} takes as
input a list of taxonomic identifiers (e.g. species names, NCBI IDs etc.) and a
rank (E.g.  fold change, correlation coefficient). @code{TaxSEA} be applied to
any microbiota taxonomic profiling technology (array-based, 16S @code{rRNA} gene
sequencing, shotgun metagenomics & metatranscriptomics etc.) and enables
researchers to rapidly contextualize their findings within the broader
literature to accelerate interpretation of results.")
    (license license:gpl3)))

(define-public r-tartare
  (package
    (name "r-tartare")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tartare" version
                              'experiment))
       (sha256
        (base32 "0jvavhxl763y70r6fqfny57b1bl9c4vy0pqkr36mzdyzy0y1s104"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetSearchData" version
                              'experiment))
       (sha256
        (base32 "02407wv7zbn2z83m8xhjlxph1d223zbakmfb4g29ymaysq7sigps"))))
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
    (version "2.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetSearch" version))
       (sha256
        (base32 "0iq9yhx897igc9gimkf7ig6116bk9rzvrh0v0sp8n9z3r79khzw9"))))
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
    (version "1.44.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetScoreData" version
                              'experiment))
       (sha256
        (base32 "161bmilsnja489ndk9wpcz1fj87s0hh3kn7f9j7hjnbvljhr242q"))))
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
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetScore" version))
       (sha256
        (base32 "1m1p9n3h7gsbln061fcnjynz4p8k97vwfnj7bz90v8608d456lbm"))))
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

(define-public r-targetscan-mm-eg-db
  (package
    (name "r-targetscan-mm-eg-db")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "targetscan.Mm.eg.db" version
                              'annotation))
       (sha256
        (base32 "1ph6kgzkrzjfhfk0iqiw45i7rxa29mynqyj19y2ik76ychc15r8p"))))
    (properties `((upstream-name . "targetscan.Mm.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "targetscan.Hs.eg.db" version
                              'annotation))
       (sha256
        (base32 "1blq6nllipp4ar4gcw0fay5rfc1rrfq9dj9fh7ghpyf490vk5d04"))))
    (properties `((upstream-name . "targetscan.Hs.eg.db")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TargetDecoy" version))
       (sha256
        (base32 "15l5adc20m4pf77ywifzm3m3yavm59nxjbk3kh51brj6s0y97k0x"))))
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
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "target" version))
       (sha256
        (base32 "00338jl5yw4g2g8kbkwaln7gxyvg21f4x61ng861ln3g4sad4c5v"))))
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
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TAPseq" version))
       (sha256
        (base32 "1p19mx3zipdrk5nmlsa8lc55rrrgdca4jflk1bhf4c0plviympz1"))))
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tanggle" version))
       (sha256
        (base32 "0v461653bm3sik6d1sy8ad87vkyl94yk60n3civ696j15mnk0rlx"))))
    (properties `((upstream-name . "tanggle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TADCompare" version))
       (sha256
        (base32 "0mc1rf56p5xyycn4rp73jfv46gi6vbgbd562ccvhkj0mb124xajl"))))
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
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "tadar" version))
       (sha256
        (base32 "0rnmsnd0k6psh69d11bcz2khx0ppqd92fn9lgnsayvx2kayayj50"))))
    (properties `((upstream-name . "tadar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-s4vectors
                             r-rsamtools
                             r-rlang
                             r-matrixgenerics
                             r-lifecycle
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
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TabulaMurisSenisData" version
                              'experiment))
       (sha256
        (base32 "1nq2cikyrnk7yld8zfps7hz74da1xnjhz71l3g7mmad9z3nqpnma"))))
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
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "TabulaMurisData" version
                              'experiment))
       (sha256
        (base32 "08fyvy8ynl23b2x3d2sa0l3iqy7vxr7cfcaia8lwrmnlzwym0dch"))))
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

