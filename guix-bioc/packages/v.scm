(define-module (guix-bioc packages v)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages web)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
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

(define-public r-vulcandata
  (package
    (name "r-vulcandata")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vulcandata" version
                              'experiment))
       (sha256
        (base32 "15v9v4cchjlpm0wjd7jl1hp8r5wf8xzgnz6d095c5m8bihgf6hbx"))))
    (properties `((upstream-name . "vulcandata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://bioconductor.org/packages/vulcandata")
    (synopsis "VirtUaL ChIP-Seq data Analysis using Networks, dummy dataset")
    (description
     "This package provides a dummy regulatory network and @code{ChIP-Seq} dataset for
running examples in the vulcan package.")
    (license license:lgpl3)))

(define-public r-vulcan
  (package
    (name "r-vulcan")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vulcan" version))
       (sha256
        (base32 "0pm8kflmm26yvzxb1npas98xpc0d04inzdaf9zgxj3283mdg0ymx"))))
    (properties `((upstream-name . "vulcan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-wordcloud
                             r-viper
                             r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-s4vectors
                             r-locfit
                             r-gplots
                             r-genomicranges
                             r-diffbind
                             r-deseq2
                             r-csaw
                             r-chippeakanno
                             r-catools
                             r-biobase))
    (home-page "https://bioconductor.org/packages/vulcan")
    (synopsis "VirtUaL ChIP-Seq data Analysis using Networks")
    (description
     "Vulcan (@code{VirtUaL} @code{ChIP-Seq} Analysis through Networks) is a package
that interrogates gene regulatory networks to infer cofactors significantly
enriched in a differential binding signature coming from @code{ChIP-Seq} data.
In order to do so, our package combines strategies from different
@code{BioConductor} packages: DESeq for data normalization, @code{ChIPpeakAnno}
and @code{DiffBind} for annotation and definition of @code{ChIP-Seq} genomic
peaks, csaw to define optimal peak width and viper for applying a regulatory
network over a differential binding signature.")
    (license license:lgpl3)))

(define-public r-vtpnet
  (package
    (name "r-vtpnet")
    (version "0.48.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vtpnet" version))
       (sha256
        (base32 "07fc511w8jk38blp4d81km8s71ffnshy6x8jjbfnx1vhfq4rjakj"))))
    (properties `((upstream-name . "vtpnet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gwascat r-graph r-genomicranges r-foreach
                             r-doparallel))
    (home-page "https://bioconductor.org/packages/vtpnet")
    (synopsis "variant-transcription factor-phenotype networks")
    (description
     "variant-transcription factor-phenotype networks, inspired by Maurano et al.,
Science (2012), PMID 22955828.")
    (license license:artistic2.0)))

(define-public r-vsclust
  (package
    (name "r-vsclust")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vsclust" version))
       (sha256
        (base32 "1kackwsy9fp5dk69s89kwdspngz6ak3blffkqx2aj1yj5sbqn6c4"))))
    (properties `((upstream-name . "vsclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-rcpp
                             r-qvalue
                             r-multiassayexperiment
                             r-matrixstats
                             r-limma))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/vsclust")
    (synopsis "Feature-based variance-sensitive quantitative clustering")
    (description
     "Feature-based variance-sensitive clustering of omics data.  Optimizes cluster
assignment by taking into account individual feature variance.  Includes several
modules for statistical testing, clustering and enrichment analysis.")
    (license license:gpl2)))

(define-public r-vplotr
  (package
    (name "r-vplotr")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VplotR" version))
       (sha256
        (base32 "01qs6cnbb4vb3z5al2irgllg3xk3g6vy4ymb4jjybaz0kykbn8bn"))))
    (properties `((upstream-name . "VplotR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-s4vectors
                             r-rsamtools
                             r-reshape2
                             r-rcolorbrewer
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/js2264/VplotR")
    (synopsis "Set of tools to make V-plots and compute footprint profiles")
    (description
     "The pattern of digestion and protection from DNA nucleases such as DNAse I,
micrococcal nuclease, and Tn5 transposase can be used to infer the location of
associated proteins.  This package contains useful functions to analyze patterns
of paired-end sequencing fragment density. @code{VplotR} facilitates the
generation of V-plots and footprint profiles over single or aggregated genomic
loci of interest.")
    (license license:gpl3+)))

(define-public r-voyager
  (package
    (name "r-voyager")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Voyager" version))
       (sha256
        (base32 "0q4bk4vgaxynrj2vqdlwv187fplxm86g5myizfwvb6s52q85d039"))))
    (properties `((upstream-name . "Voyager")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zeallot
                             r-terra
                             r-summarizedexperiment
                             r-spdep
                             r-spatialfeatureexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-sf
                             r-scico
                             r-scales
                             r-s4vectors
                             r-rspectra
                             r-rlang
                             r-patchwork
                             r-memuse
                             r-matrixgenerics
                             r-matrix
                             r-lifecycle
                             r-ggplot2
                             r-ggnewscale
                             r-delayedarray
                             r-bluster
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pachterlab/voyager")
    (synopsis "From geospatial to spatial omics")
    (description
     "@code{SpatialFeatureExperiment} (SFE) is a new S4 class for working with spatial
single-cell genomics data.  The voyager package implements basic exploratory
spatial data analysis (ESDA) methods for SFE. Univariate methods include
univariate global spatial ESDA methods such as Moran's I, permutation testing
for Moran's I, and correlograms.  Bivariate methods include Lee's L and cross
variogram.  Multivariate methods include MULTISPATI PCA and multivariate local
Geary's C recently developed by Anselin.  The Voyager package also implements
plotting functions to plot SFE data and ESDA results.")
    (license license:artistic2.0)))

(define-public r-vmrseq
  (package
    (name "r-vmrseq")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vmrseq" version))
       (sha256
        (base32 "1z3l0nnh8q98rj6f2ihr9jknwy4jhjbhxg9q12sf5cz32qxx554a"))))
    (properties `((upstream-name . "vmrseq")))
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
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-s4vectors
                             r-recommenderlab
                             r-locfit
                             r-iranges
                             r-hdf5array
                             r-ggplot2
                             r-genomicranges
                             r-gamlss-dist
                             r-dplyr
                             r-delayedarray
                             r-data-table
                             r-bumphunter
                             r-biocparallel))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/nshen7/vmrseq")
    (synopsis
     "Probabilistic Modeling of Single-cell Methylation Heterogeneity")
    (description
     "High-throughput single-cell measurements of DNA methylation allows studying
inter-cellular epigenetic heterogeneity, but this task faces the challenges of
sparsity and noise.  We present vmrseq, a statistical method that overcomes
these challenges and identifies variably methylated regions accurately and
robustly.")
    (license license:expat)))

(define-public r-vitisviniferaprobe
  (package
    (name "r-vitisviniferaprobe")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vitisviniferaprobe" version
                              'annotation))
       (sha256
        (base32 "1ggz1s37dwvrkhj4vx2civyhap7bgqsshy33lk14z4fjsayfi39a"))))
    (properties `((upstream-name . "vitisviniferaprobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/vitisviniferaprobe")
    (synopsis "Probe sequence data for microarrays of type vitisvinifera")
    (description
     "This package was automatically created by package @code{AnnotationForge} version
1.11.21.  The probe sequence data was obtained from http://www.affymetrix.com.
The file name was Vitis\\_Vinifera\\_probe\\_tab.")
    (license license:lgpl2.0+)))

(define-public r-vitisviniferacdf
  (package
    (name "r-vitisviniferacdf")
    (version "2.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vitisviniferacdf" version
                              'annotation))
       (sha256
        (base32 "027nn1fr5zixnlikw4pi704kdfrfm388j5qr30y9bsky445fn7g4"))))
    (properties `((upstream-name . "vitisviniferacdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-annotationdbi))
    (home-page "https://bioconductor.org/packages/vitisviniferacdf")
    (synopsis "vitisviniferacdf")
    (description
     "This package provides a package containing an environment representing the
Vitis_Vinifera.cdf file.")
    (license license:lgpl2.0+)))

(define-public r-visse
  (package
    (name "r-visse")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vissE" version))
       (sha256
        (base32 "0a1z4zjw740p6skm0pxvb7b7x5asdjk5dg2wa12nfc7im0a6nf41"))))
    (properties `((upstream-name . "vissE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tm
                             r-tidygraph
                             r-textstem
                             r-scico
                             r-scales
                             r-reshape2
                             r-rcolorbrewer
                             r-plyr
                             r-msigdb
                             r-igraph
                             r-gseabase
                             r-ggwordcloud
                             r-ggrepel
                             r-ggraph
                             r-ggplot2
                             r-ggforce))
    (native-inputs (list r-knitr))
    (home-page "https://davislaboratory.github.io/vissE")
    (synopsis "Visualising Set Enrichment Analysis Results")
    (description
     "This package enables the interpretation and analysis of results from a gene set
enrichment analysis using network-based and text-mining approaches.  Most
enrichment analyses result in large lists of significant gene sets that are
difficult to interpret.  Tools in this package help build a similarity-based
network of significant gene sets from a gene set enrichment analysis that can
then be investigated for their biological function using text-mining approaches.")
    (license license:gpl3)))

(define-public r-visiumstitched
  (package
    (name "r-visiumstitched")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "visiumStitched" version))
       (sha256
        (base32 "1rg0bybpbzvxz4wbq0m9fgpbvcz99gdc3dg0rg3sm1shxx1s54xf"))))
    (properties `((upstream-name . "visiumStitched")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-stringr
                             r-spatiallibd
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rjson
                             r-readr
                             r-pkgcond
                             r-matrix
                             r-imager
                             r-dropletutils
                             r-dplyr
                             r-biocgenerics
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LieberInstitute/visiumStitched")
    (synopsis
     "Enable downstream analysis of Visium capture areas stitched together with Fiji")
    (description
     "This package provides helper functions for working with multiple Visium capture
areas that overlap each other.  This package was developed along with the
companion example use case data available from
https://github.com/@code{LieberInstitute/visiumStitched_brain}.
@code{visiumStitched} prepares @code{SpaceRanger} (10x Genomics) output files so
you can stitch the images from groups of capture areas together with Fiji.  Then
@code{visiumStitched} builds a @code{SpatialExperiment} object with the stitched
data and makes an artificial hexogonal grid enabling the seamless use of spatial
clustering methods that rely on such grid to identify neighboring spots, such as
PRECAST and @code{BayesSpace}.  The @code{SpatialExperiment} objects created by
@code{visiumStitched} are compatible with @code{spatialLIBD}, which can be used
to build interactive websites for stitched @code{SpatialExperiment} objects.
@code{visiumStitched} also enables casting @code{SpatialExperiment} objects as
Seurat objects.")
    (license license:artistic2.0)))

(define-public r-visiumio
  (package
    (name "r-visiumio")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VisiumIO" version))
       (sha256
        (base32 "0j9yf2n8lvgygkb6l79n4yz64wl1bran1hdpjfggivccpi0c8icv"))))
    (properties `((upstream-name . "VisiumIO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tenxio
                             r-summarizedexperiment
                             r-spatialexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-jsonlite
                             r-biocio
                             r-biocgenerics
                             r-biocbaseutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/waldronlab/VisiumIO")
    (synopsis "Import Visium data from the 10X Space Ranger pipeline")
    (description
     "The package allows users to readily import spatial data obtained from either the
10X website or from the Space Ranger pipeline.  Supported formats include
tar.gz, h5, and mtx files.  Multiple files can be imported at once with *List
type of functions.  The package represents data mainly as
@code{SpatialExperiment} objects.")
    (license license:artistic2.0)))

(define-public r-viseago
  (package
    (name "r-viseago")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "ViSEAGO" version))
       (sha256
        (base32 "0hwaq9zlyfrb5yc10i4kbfxgq06b2272b0mb17smd5cmax3i336g"))))
    (properties `((upstream-name . "ViSEAGO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-upsetr
                             r-topgo
                             r-scales
                             r-rcolorbrewer
                             r-r-utils
                             r-plotly
                             r-igraph
                             r-htmlwidgets
                             r-heatmaply
                             r-gosemsim
                             r-go-db
                             r-ggplot2
                             r-fgsea
                             r-dynamictreecut
                             r-dt
                             r-diagrammer
                             r-dendextend
                             r-data-table
                             r-complexheatmap
                             r-circlize
                             r-biomart
                             r-annotationforge
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page
     "https://www.bioconductor.org/packages/release/bioc/html/ViSEAGO.html")
    (synopsis
     "ViSEAGO: a Bioconductor package for clustering biological functions using Gene Ontology and semantic similarity")
    (description
     "The main objective of @code{ViSEAGO} package is to carry out a data mining of
biological functions and establish links between genes involved in the study.
We developed @code{ViSEAGO} in R to facilitate functional Gene Ontology (GO)
analysis of complex experimental design with multiple comparisons of interest.
It allows to study large-scale datasets together and visualize GO profiles to
capture biological knowledge.  The acronym stands for three major concepts of
the analysis: Visualization, Semantic similarity and Enrichment Analysis of Gene
Ontology.  It provides access to the last current GO annotations, which are
retrieved from one of NCBI @code{EntrezGene}, Ensembl or Uniprot databases for
several species.  Using available R packages and novel developments,
@code{ViSEAGO} extends classical functional GO analysis to focus on functional
coherence by aggregating closely related biological themes while studying
multiple datasets at once.  It provides both a synthetic and detailed view using
interactive functionalities respecting the GO graph structure and ensuring
functional coherence supplied by semantic similarity. @code{ViSEAGO} has been
successfully applied on several datasets from different species with a variety
of biological questions.  Results can be easily shared between bioinformaticians
and biologists, enhancing reporting capabilities while maintaining
reproducibility.")
    (license (license:fsdg-compatible "GPL-3 bioconductor.org"))))

(define-public r-viper
  (package
    (name "r-viper")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "viper" version))
       (sha256
        (base32 "090j9vvsi7876hhl15bkfasbicc2rndil6ji6v66b8vk86gdclaz"))))
    (properties `((upstream-name . "viper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mixtools r-kernsmooth r-e1071 r-biobase))
    (home-page "https://bioconductor.org/packages/viper")
    (synopsis
     "Virtual Inference of Protein-activity by Enriched Regulon analysis")
    (description
     "Inference of protein activity from gene expression data, including the VIPER and
@code{msVIPER} algorithms.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-vidger
  (package
    (name "r-vidger")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vidger" version))
       (sha256
        (base32 "048sdliqp19726crn1jq0cw67wm237wmcc9sn8qchii4d0fijc4z"))))
    (properties `((upstream-name . "vidger")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-scales
                             r-rmarkdown
                             r-rcolorbrewer
                             r-knitr
                             r-ggrepel
                             r-ggplot2
                             r-ggally
                             r-edger
                             r-deseq2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/btmonier/vidger")
    (synopsis "Create rapid visualizations of RNAseq data in R")
    (description
     "The aim of vidger is to rapidly generate information-rich visualizations for the
interpretation of differential gene expression results from three widely-used
tools: Cuffdiff, DESeq2, and @code{edgeR}.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-verso
  (package
    (name "r-verso")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VERSO" version))
       (sha256
        (base32 "0ldn8ahzy1wlsx2jly2vkcvkgknzqmh7mb573rzk05m9fpaaym7l"))))
    (properties `((upstream-name . "VERSO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rfast r-data-tree r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BIMIB-DISCo/VERSO")
    (synopsis "Viral Evolution ReconStructiOn (VERSO)")
    (description
     "Mutations that rapidly accumulate in viral genomes during a pandemic can be used
to track the evolution of the virus and, accordingly, unravel the viral
infection network.  To this extent, sequencing samples of the virus can be
employed to estimate models from genomic epidemiology and may serve, for
instance, to estimate the proportion of undetected infected people by uncovering
cryptic transmissions, as well as to predict likely trends in the number of
infected, hospitalized, dead and recovered people.  VERSO is an algorithmic
framework that processes variants profiles from viral samples to produce
phylogenetic models of viral evolution.  The approach solves a Boolean Matrix
Factorization problem with phylogenetic constraints, by maximizing a
log-likelihood function.  VERSO includes two separate and subsequent steps; in
this package we provide an R implementation of VERSO STEP 1.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-venndetail
  (package
    (name "r-venndetail")
    (version "1.23.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VennDetail" version))
       (sha256
        (base32 "0c64dk2w4azavz2b9455gilimxnmng0ix02bksl4j99868wdfhgh"))))
    (properties `((upstream-name . "VennDetail")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venndiagram
                             r-upsetr
                             r-tibble
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-futile-logger
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/guokai8/VennDetail")
    (synopsis "package for visualization and extract details")
    (description
     "This package provides a set of functions to generate high-resolution
Venn,Vennpie plot,extract and combine details of these subsets with user
datasets in data frame is available.")
    (license license:gpl2)))

(define-public r-veloviz
  (package
    (name "r-veloviz")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "veloviz" version))
       (sha256
        (base32 "1n5xm73iygs8r3r75sibxinm32jh8609dy0ckghfzb0v4kliczcf"))))
    (properties `((upstream-name . "veloviz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rspectra r-rcpp r-mgcv r-matrix r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/veloviz")
    (synopsis
     "VeloViz: RNA-velocity informed 2D embeddings for visualizing cell state trajectories")
    (description
     "@code{VeloViz} uses each cell’s current observed and predicted future
transcriptional states inferred from RNA velocity analysis to build a nearest
neighbor graph between cells in the population.  Edges are then pruned based on
a cosine correlation threshold and/or a distance threshold and the resulting
graph is visualized using a force-directed graph layout algorithm.
@code{VeloViz} can help ensure that relationships between cell states are
reflected in the 2D embedding, allowing for more reliable representation of
underlying cellular trajectories.")
    (license license:gpl3)))

(define-public r-velociraptor
  (package
    (name "r-velociraptor")
    (version "1.18.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "velociraptor" version))
       (sha256
        (base32 "0j9gi0p2jgqhzbyfdykwdsphyjg74phdz6fw1r92qz94fs2hpis3"))))
    (properties `((upstream-name . "velociraptor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zellkonverter
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-scuttle
                             r-s4vectors
                             r-reticulate
                             r-matrix
                             r-delayedarray
                             r-biocsingular
                             r-biocparallel
                             r-biocgenerics
                             r-basilisk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kevinrue/velociraptor")
    (synopsis "Toolkit for Single-Cell Velocity")
    (description
     "This package provides Bioconductor-friendly wrappers for RNA velocity
calculations in single-cell RNA-seq data.  We use the basilisk package to manage
Conda environments, and the zellkonverter package to convert data structures
between @code{SingleCellExperiment} (R) and @code{AnnData} (Python).  The
information produced by the velocity methods is stored in the various components
of the @code{SingleCellExperiment} class.")
    (license license:expat)))

(define-public r-vegamc
  (package
    (name "r-vegamc")
    (version "3.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VegaMC" version))
       (sha256
        (base32 "0xxbpynwgaywrgkazd97shkk34yl3skhgbms1vxgypgrzhhhhiag"))))
    (properties `((upstream-name . "VegaMC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-biomart r-biobase))
    (home-page "https://bioconductor.org/packages/VegaMC")
    (synopsis
     "VegaMC: A Package Implementing a Variational Piecewise Smooth Model for Identification of Driver Chromosomal Imbalances in Cancer")
    (description
     "This package enables the detection of driver chromosomal imbalances including
loss of heterozygosity (LOH) from array comparative genomic hybridization
(@code{aCGH}) data. @code{VegaMC} performs a joint segmentation of a dataset and
uses a statistical framework to distinguish between driver and passenger
mutation. @code{VegaMC} has been implemented so that it can be immediately
integrated with the output produced by @code{PennCNV} tool.  In addition,
@code{VegaMC} produces in output two web pages that allows a rapid navigation
between both the detected regions and the altered genes.  In the web page that
summarizes the altered genes, the link to the respective Ensembl gene web page
is reported.")
    (license license:gpl2)))

(define-public r-vectrapolarisdata
  (package
    (name "r-vectrapolarisdata")
    (version "1.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VectraPolarisData" version
                              'experiment))
       (sha256
        (base32 "0wmyxfq96bwv8i0yywz0ib348m4wkkj1knpjndiay940b2m2d4qk"))))
    (properties `((upstream-name . "VectraPolarisData")))
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
    (home-page "https://github.com/julia-wrobel/VectraPolarisData")
    (synopsis "Vectra Polaris and Vectra 3 multiplex single-cell imaging data")
    (description
     "This package provides two multiplex imaging datasets collected on Vectra
instruments at the University of Colorado Anschutz Medical Campus.  Data are
provided as a Spatial Experiment objects.  Data is provided in tabular form and
has been segmented and phenotyped using Inform software.  Raw .tiff files are
not included.")
    (license license:artistic2.0)))

(define-public r-vdjdive
  (package
    (name "r-vdjdive")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VDJdive" version))
       (sha256
        (base32 "102ldkmabxw755y32yxba6604a61gxlsrn5a1zpk8qh4l54zpvj6"))))
    (properties `((upstream-name . "VDJdive")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-singlecellexperiment
                             r-s4vectors
                             r-rcpp
                             r-rcolorbrewer
                             r-matrix
                             r-iranges
                             r-gridextra
                             r-ggplot2
                             r-cowplot
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kstreet13/VDJdive")
    (synopsis "Analysis Tools for 10X V(D)J Data")
    (description
     "This package provides functions for handling and analyzing immune receptor
repertoire data, such as produced by the @code{CellRanger} V(D)J pipeline.  This
includes reading the data into R, merging it with paired single-cell data,
quantifying clonotype abundances, calculating diversity metrics, and producing
common plots.  It implements the E-M Algorithm for clonotype assignment, along
with other methods, which makes use of ambiguous cells for improved
quantification.")
    (license license:artistic2.0)))

(define-public r-vcfarray
  (package
    (name "r-vcfarray")
    (version "1.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VCFArray" version))
       (sha256
        (base32 "1az9sk8xydmpqlb3xcv5df11gpmcy1b12nq33svka1h0gxi1ynlj"))))
    (properties `((upstream-name . "VCFArray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation
                             r-s4vectors
                             r-rsamtools
                             r-genomicranges
                             r-genomicfiles
                             r-delayedarray
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Liubuntu/VCFArray")
    (synopsis "Representing on-disk / remote VCF files as array-like objects")
    (description
     "VCFArray extends the @code{DelayedArray} to represent VCF data entries as
array-like objects with on-disk / remote VCF file as backend.  Data entries from
VCF files, including info fields, FORMAT fields, and the fixed columns (REF,
ALT, QUAL, FILTER) could be converted into VCFArray instances with different
dimensions.")
    (license license:gpl3)))

(define-public r-vbmp
  (package
    (name "r-vbmp")
    (version "1.76.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "vbmp" version))
       (sha256
        (base32 "107fdsascnkf2sddqg6n3ncc4b2qiknhx9s74lg05lbzr2p1i12q"))))
    (properties `((upstream-name . "vbmp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page
     "http://bioinformatics.oxfordjournals.org/cgi/content/short/btm535v1")
    (synopsis "Variational Bayesian Multinomial Probit Regression")
    (description
     "Variational Bayesian Multinomial Probit Regression with Gaussian Process Priors.
 It estimates class membership posterior probability employing variational and
sparse approximation to the full posterior.  This software also incorporates
feature weighting by means of Automatic Relevance Determination.")
    (license license:gpl2+)))

(define-public r-vasp
  (package
    (name "r-vasp")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VaSP" version))
       (sha256
        (base32 "0d7rn0v0w5a71703ivw590f93qaa7720zpa9zaqzy24bg4nh19gn"))))
    (properties `((upstream-name . "VaSP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors
                             r-rsamtools
                             r-matrixstats
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-genomeinfodb
                             r-cluster
                             r-ballgown))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yuhuihui2011/VaSP")
    (synopsis
     "Quantification and Visualization of Variations of Splicing in Population")
    (description
     "Discovery of genome-wide variable alternative splicing events from short-read
RNA-seq data and visualizations of gene splicing information for
publication-quality multi-panel figures in a population. (Warning: The
visualizing function is removed due to the dependent package Sushi deprecated.
If you want to use it, please change back to an older version.).")
    (license license:gpl2+)))

(define-public r-varianttoolsdata
  (package
    (name "r-varianttoolsdata")
    (version "1.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VariantToolsData" version
                              'experiment))
       (sha256
        (base32 "1l1pkigx88ds5kp698lg1a0sa7l0f0ydy0zgzqn3i41168hs5lzc"))))
    (properties `((upstream-name . "VariantToolsData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-variantannotation r-genomicranges
                             r-biocgenerics))
    (home-page "https://bioconductor.org/packages/VariantToolsData")
    (synopsis "Data for the VariantTools tutorial")
    (description
     "Data from the sequencing of a 50/50 mixture of @code{HapMap} trio samples
NA12878 (CEU) and NA19240 (YRI), subset to the TP53 region.")
    (license license:artistic2.0)))

(define-public r-variantexperiment
  (package
    (name "r-variantexperiment")
    (version "1.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VariantExperiment" version))
       (sha256
        (base32 "112w5sqkvx4vi50z9n6h2xxjrh4ir9n35k3zybvxmv0glksamizg"))))
    (properties `((upstream-name . "VariantExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-snprelate
                             r-seqarray
                             r-s4vectors
                             r-iranges
                             r-genomicranges
                             r-gdsfmt
                             r-gdsarray
                             r-delayeddataframe
                             r-delayedarray
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bioconductor/VariantExperiment")
    (synopsis
     "RangedSummarizedExperiment Container for VCF/GDS Data with GDS Backend")
    (description
     "@code{VariantExperiment} is a Bioconductor package for saving data in VCF/GDS
format into @code{RangedSummarizedExperiment} object.  The high-throughput
genetic/genomic data are saved in GDSArray objects.  The annotation data for
features/samples are saved in @code{DelayedDataFrame} format with
mono-dimensional GDSArray in each column.  The on-disk representation of both
assay data and annotation data achieves on-disk reading and processing and saves
memory space significantly.  The interface of @code{RangedSummarizedExperiment}
data format enables easy and common manipulations for high-throughput
genetic/genomic data with common @code{SummarizedExperiment} metaphor in R and
Bioconductor.")
    (license license:gpl3)))

(define-public r-varcon
  (package
    (name "r-varcon")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VarCon" version))
       (sha256
        (base32 "0ssv561x3ippngwc64s1drf4ls7r93c082klkr2ayly1wp93kcyn"))))
    (properties `((upstream-name . "VarCon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinyfiles
                             r-shinycssloaders
                             r-shiny
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-bsgenome
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/VarCon")
    (synopsis
     "VarCon: an R package for retrieving neighboring nucleotides of an SNV")
    (description
     "@code{VarCon} is an R package which converts the positional information from the
annotation of an single nucleotide variation (SNV) (either referring to the
coding sequence or the reference genomic sequence).  It retrieves the genomic
reference sequence around the position of the single nucleotide variation.  To
asses, whether the SNV could potentially influence binding of splicing
regulatory proteins @code{VarCon} calcualtes the HEXplorer score as an
estimation.  Besides, @code{VarCon} additionally reports splice site strengths
of splice sites within the retrieved genomic sequence and any changes due to the
SNV.")
    (license license:gpl3)))

(define-public r-vanillaice
  (package
    (name "r-vanillaice")
    (version "1.70.1")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VanillaICE" version))
       (sha256
        (base32 "0d2r25msysal3142gn804hmmr2pbwrsy508l5znqgh2wvzpynnk6"))))
    (properties `((upstream-name . "VanillaICE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-summarizedexperiment
                             r-s4vectors
                             r-oligoclasses
                             r-matrixstats
                             r-matrixgenerics
                             r-lattice
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-foreach
                             r-data-table
                             r-crlmm
                             r-bsgenome-hsapiens-ucsc-hg18
                             r-biocgenerics
                             r-biobase))
    (home-page "https://bioconductor.org/packages/VanillaICE")
    (synopsis "Hidden Markov Model for high throughput genotyping arrays")
    (description
     "Hidden Markov Models for characterizing chromosomal alteration in high
throughput SNP arrays.")
    (license license:lgpl2.0)))

(define-public r-vaexprs
  (package
    (name "r-vaexprs")
    (version "1.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "VAExprs" version))
       (sha256
        (base32 "1g4n28m54kmswfqklfkv8ssdqzfzywv7vwjkglf74z98plymhrc0"))))
    (properties `((upstream-name . "VAExprs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tensorflow
                             r-summarizedexperiment
                             r-singlecellexperiment
                             r-scater
                             r-purrr
                             r-mclust
                             r-keras
                             r-diagrammer
                             r-deeppincs
                             r-catencoders))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/VAExprs")
    (synopsis
     "Generating Samples of Gene Expression Data with Variational Autoencoders")
    (description
     "This package provides a fundamental problem in biomedical research is the low
number of observations, mostly due to a lack of available biosamples,
prohibitive costs, or ethical reasons.  By augmenting a few real observations
with artificially generated samples, their analysis could lead to more robust
and higher reproducible.  One possible solution to the problem is the use of
generative models, which are statistical models of data that attempt to capture
the entire probability distribution from the observations.  Using the
variational autoencoder (VAE), a well-known deep generative model, this package
is aimed to generate samples with gene expression data, especially for
single-cell RNA-seq data.  Furthermore, the VAE can use conditioning to produce
specific cell types or subpopulations.  The conditional VAE (CVAE) allows us to
create targeted samples rather than completely random ones.")
    (license license:artistic2.0)))

