(define-module (guix-bioc packages q)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages cran)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages a)
  #:use-module (guix-cran packages h)
  #:use-module (guix-bioc packages z)
  #:use-module (guix-bioc packages y)
  #:use-module (guix-bioc packages x)
  #:use-module (guix-bioc packages w)
  #:use-module (guix-bioc packages v)
  #:use-module (guix-bioc packages u)
  #:use-module (guix-bioc packages t)
  #:use-module (guix-bioc packages s)
  #:use-module (guix-bioc packages r)
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

(define-public r-qusage
  (package
    (name "r-qusage")
    (version "2.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qusage" version))
       (sha256
        (base32 "0k0yh7gkcxi1aq4jvjm7j8yx54lf2dvrgwmmkfl3v0xhi2ihyif5"))))
    (properties `((upstream-name . "qusage")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme r-limma r-fftw r-emmeans r-biobase))
    (home-page "http://clip.med.yale.edu/qusage")
    (synopsis "qusage: Quantitative Set Analysis for Gene Expression")
    (description
     "This package is an implementation the Quantitative Set Analysis for Gene
Expression (@code{QuSAGE}) method described in (Yaari G. et al, Nucl Acids Res,
2013).  This is a novel Gene Set Enrichment-type test, which is designed to
provide a faster, more accurate, and easier to understand test for gene
expression studies.  qusage accounts for inter-gene correlations using the
Variance Inflation Factor technique proposed by Wu et al. (Nucleic Acids Res,
2012).  In addition, rather than simply evaluating the deviation from a null
hypothesis with a single number (a P value), qusage quantifies gene set activity
with a complete probability density function (PDF).  From this PDF, P values and
confidence intervals can be easily extracted.  Preserving the PDF also allows
for post-hoc analysis (e.g., pair-wise comparisons of gene set activity) while
maintaining statistical traceability.  Finally, while qusage is compatible with
individual gene statistics from existing methods (e.g., LIMMA), a Welch-based
method is implemented that is shown to improve specificity.  The @code{QuSAGE}
package also includes a mixed effects model implementation, as described in
(Turner JA et al, BMC Bioinformatics, 2015), and a meta-analysis framework as
described in (Meng H, et al.  P@code{LoS} Comput Biol.  2019).  For questions,
contact Chris Bolen (cbolen1@@gmail.com) or Steven Kleinstein
(steven.kleinstein@@yale.edu).")
    (license license:gpl2+)))

(define-public r-queeems
  (package
    (name "r-queeems")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "queeems" version))
       (sha256
        (base32 "03i0djy6ajas0yabn7xm739bns35m73kjaa3pfl9a5y9jd32j51x"))))
    (properties `((upstream-name . "queeems")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-gtools r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/thsadiq/queeems")
    (synopsis
     "Quantify the Extent of Evolutionary Evidence in Molecular Sequences")
    (description
     "Biological inferences obtained from molecular data are only as good as the
extent of evolutionary signatures retained in the genetic data.  Techniques
available to quantify these signatures are largely targeted towards phylogeny
reconstruction and they often rely on adhoc hypothesis tests of significance.  I
present a Bayesian function that assesses whether a set of genetic sequences are
saturated.  That is, it is useful for determining whether the evolutionary
information in the sequences has eroded with time.  Site specific Bayes factors
are generated with respect to codon bases to allow for straightforward
applications in extensive computational biology inquiries, including natural
selection analyses.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-qubicdata
  (package
    (name "r-qubicdata")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "QUBICdata" version
                              'experiment))
       (sha256
        (base32 "1g6dg3xvlhyvxir0jd0md11mv7h84pb6djz100p2kk2bq08pjcmi"))))
    (properties `((upstream-name . "QUBICdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/zy26/QUBICdata")
    (synopsis "Data employed in the vignette of the QUBIC package")
    (description
     "The data employed in the vignette of the QUBIC package.  These data belong to
Many Microbe Microarrays Database and STRING v10.")
    (license (list (license:fsdg-compatible "Unlimited")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-qubic
  (package
    (name "r-qubic")
    (version "1.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "QUBIC" version))
       (sha256
        (base32 "0x3py7q51lsiw78q8fpx01h0x3pqwagv696p1nmyh9rcn33pb4il"))))
    (properties `((upstream-name . "QUBIC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zy26/QUBIC")
    (synopsis
     "An R Package for Qualitative Biclustering in Support of Gene Co-Expression Analyses")
    (description
     "The core function of this R package is to provide the implementation of the
well-cited and well-reviewed QUBIC algorithm, aiming to deliver an effective and
efficient biclustering capability.  This package also includes the following
related functions: (i) a qualitative representation of the input gene expression
data, through a well-designed discretization way considering the underlying data
property, which can be directly used in other biclustering programs; (ii)
visualization of identified biclusters using heatmap in support of overall
expression pattern analysis; (iii) bicluster-based co-expression network
elucidation and visualization, where different correlation coefficient scores
between a pair of genes are provided; and (iv) a generalize output format of
biclusters and corresponding network can be freely downloaded so that a user can
easily do following comprehensive functional enrichment analysis (e.g. DAVID)
and advanced network visualization (e.g. Cytoscape).")
    (license (license:fsdg-compatible "CC BY-NC-ND 4.0 + file LICENSE"))))

(define-public r-quaternaryprod
  (package
    (name "r-quaternaryprod")
    (version "1.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "QuaternaryProd" version))
       (sha256
        (base32 "0y1cd2945f73flkhkcl2ivznqwpwram02zr2xnpg3361k1cn5h69"))))
    (properties `((upstream-name . "QuaternaryProd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-rcpp r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/QuaternaryProd")
    (synopsis
     "Computes the Quaternary Dot Product Scoring Statistic for Signed and Unsigned Causal Graphs")
    (description
     "@code{QuaternaryProd} is an R package that performs causal reasoning on
biological networks, including publicly available networks such as STRINGdb.
@code{QuaternaryProd} is an open-source alternative to commercial products such
as Inginuity Pathway Analysis.  For a given a set of differentially expressed
genes, @code{QuaternaryProd} computes the significance of upstream regulators in
the network by performing causal reasoning using the Quaternary Dot Product
Scoring Statistic (Quaternary Statistic), Ternary Dot product Scoring Statistic
(Ternary Statistic) and Fisher's exact test (Enrichment test).  The Quaternary
Statistic handles signed, unsigned and ambiguous edges in the network.
Ambiguity arises when the direction of causality is unknown, or when the source
node (e.g., a protein) has edges with conflicting signs for the same target
gene.  On the other hand, the Ternary Statistic provides causal reasoning using
the signed and unambiguous edges only.  The Vignette provides more details on
the Quaternary Statistic and illustrates an example of how to perform causal
reasoning using STRINGdb.")
    (license license:gpl3+)))

(define-public r-quantiseqr
  (package
    (name "r-quantiseqr")
    (version "1.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "quantiseqr" version))
       (sha256
        (base32 "04ykh0bf8ipq3abkg6z0mzx0smy2vbdpp1nndy1k6vzzzqdmpn0f"))))
    (properties `((upstream-name . "quantiseqr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-summarizedexperiment
                             r-rlang
                             r-preprocesscore
                             r-mass
                             r-limsolve
                             r-ggplot2
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/quantiseqr")
    (synopsis
     "Quantification of the Tumor Immune contexture from RNA-seq data")
    (description
     "This package provides a streamlined workflow for the @code{quanTIseq} method,
developed to perform the quantification of the Tumor Immune contexture from
RNA-seq data.  The quantification is performed against the TIL10 signature
(dissecting the contributions of ten immune cell types), carefully crafted from
a collection of human RNA-seq samples.  The TIL10 signature has been extensively
validated using simulated, flow cytometry, and immunohistochemistry data.")
    (license license:gpl3)))

(define-public r-qtlizer
  (package
    (name "r-qtlizer")
    (version "1.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "Qtlizer" version))
       (sha256
        (base32 "0kizxdwdwzxhjxdkdwdxfff8h2zf6z7hjgkc1631vqgn1nv82ln5"))))
    (properties `((upstream-name . "Qtlizer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi r-httr r-genomicranges r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/Qtlizer")
    (synopsis "Comprehensive QTL annotation of GWAS results")
    (description
     "This R package provides access to the Qtlizer web server.  Qtlizer annotates
lists of common small variants (mainly SNPs) and genes in humans with associated
changes in gene expression using the most comprehensive database of published
quantitative trait loci (QTLs).")
    (license license:gpl3)))

(define-public r-qtlexperiment
  (package
    (name "r-qtlexperiment")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "QTLExperiment" version))
       (sha256
        (base32 "141hcfwlp1ii1djhznr14aglc7b673ga52dq07vzllivfhqx7bq8"))))
    (properties `((upstream-name . "QTLExperiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vroom
                             r-tidyr
                             r-tibble
                             r-summarizedexperiment
                             r-s4vectors
                             r-rlang
                             r-dplyr
                             r-collapse
                             r-checkmate
                             r-biocgenerics
                             r-ashr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dunstone-a/QTLExperiment")
    (synopsis "S4 classes for QTL summary statistics and metadata")
    (description
     "QLTExperiment defines an S4 class for storing and manipulating summary
statistics from QTL mapping experiments in one or more states.  It is based on
the @code{SummarizedExperiment} class and contains functions for creating,
merging, and subsetting objects.  QTLExperiment also stores experiment metadata
and has checks in place to ensure that transformations apply correctly.")
    (license license:gpl3)))

(define-public r-qsvar
  (package
    (name "r-qsvar")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qsvaR" version))
       (sha256
        (base32 "05rdqy9ci7gp9is0y2r9q4zy540p16rdxvpwywr2lm9r81s3x2zp"))))
    (properties `((upstream-name . "qsvaR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva r-summarizedexperiment r-rlang r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LieberInstitute/qsvaR")
    (synopsis
     "Generate Quality Surrogate Variable Analysis for Degradation Correction")
    (description
     "The @code{qsvaR} package contains functions for removing the effect of degration
in rna-seq data from postmortem brain tissue.  The package is equipped to help
users generate principal components associated with degradation.  The components
can be used in differential expression analysis to remove the effects of
degradation.")
    (license license:artistic2.0)))

(define-public r-qsutils
  (package
    (name "r-qsutils")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "QSutils" version))
       (sha256
        (base32 "1z0bx4ig7ys43vp1svqq4d8rfic6g4xs6dj8jk010si17yfa37n3"))))
    (properties `((upstream-name . "QSutils")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pwalign r-psych r-biostrings r-biocgenerics
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/QSutils")
    (synopsis "Quasispecies Diversity")
    (description
     "Set of utility functions for viral quasispecies analysis with NGS data.  Most
functions are equally useful for metagenomic studies.  There are three main
types: (1) data manipulation and exploration—functions useful for converting
reads to haplotypes and frequencies, repairing reads, intersecting strand
haplotypes, and visualizing haplotype alignments. (2) diversity
indices—functions to compute diversity and entropy, in which incidence,
abundance, and functional indices are considered. (3) data simulation—functions
useful for generating random viral quasispecies data.")
    (license license:gpl2)))

(define-public r-qsmooth
  (package
    (name "r-qsmooth")
    (version "1.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qsmooth" version))
       (sha256
        (base32 "043bw62h918agszz6csfkggl2q3nl439fpp9pca4rrf6jlz95lk6"))))
    (properties `((upstream-name . "qsmooth")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva r-summarizedexperiment r-hmisc))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/qsmooth")
    (synopsis "Smooth quantile normalization")
    (description
     "Smooth quantile normalization is a generalization of quantile normalization,
which is average of the two types of assumptions about the data generation
process: quantile normalization and quantile normalization between groups.")
    (license license:gpl3)))

(define-public r-qsea
  (package
    (name "r-qsea")
    (version "1.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qsea" version))
       (sha256
        (base32 "193hkmx8k91jm4jlfcrvg5xxylppgkyyhwf92c1pd790vmdmlwky"))))
    (properties `((upstream-name . "qsea")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-seqinfo
                             r-s4vectors
                             r-rtracklayer
                             r-rsamtools
                             r-limma
                             r-iranges
                             r-hmmcopy
                             r-gtools
                             r-genomicranges
                             r-bsgenome
                             r-biostrings
                             r-biocparallel
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/qsea")
    (synopsis "IP-seq data analysis and vizualization")
    (description
     "qsea (quantitative sequencing enrichment analysis) was developed as the
successor of the MEDIPS package for analyzing data derived from methylated DNA
immunoprecipitation (@code{MeDIP}) experiments followed by sequencing
(@code{MeDIP-seq}).  However, qsea provides several functionalities for the
analysis of other kinds of quantitative sequencing data (e.g. @code{ChIP-seq},
MBD-seq, CMS-seq and others) including calculation of differential enrichment
between groups of samples.")
    (license license:gpl2)))

(define-public r-qrscore
  (package
    (name "r-qrscore")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "QRscore" version))
       (sha256
        (base32 "17micdynzav9q873hiyrql223f397xc17axf6yf687w9ffwmq62m"))))
    (properties `((upstream-name . "QRscore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pscl
                             r-mass
                             r-hitandrun
                             r-dplyr
                             r-biocparallel
                             r-assertthat
                             r-arrangements))
    (native-inputs (list r-biocstyle))
    (home-page "https://github.com/songlab-cal/QRscore")
    (synopsis "Quantile Rank Score")
    (description
     "In genomics, differential analysis enables the discovery of groups of genes
implicating important biological processes such as cell differentiation and
aging.  Non-parametric tests of differential gene expression usually detect
shifts in centrality (such as mean or median), and therefore suffer from
diminished power against alternative hypotheses characterized by shifts in
spread (such as variance).  This package provides a flexible family of
non-parametric two-sample tests and K-sample tests, which is based on
theoretical work around non-parametric tests, spacing statistics and local
asymptotic normality (Erdmann-Pham et al., 2022+ [@code{arXiv:2008.06664v2}];
Erdmann-Pham, 2023+ [@code{arXiv:2209.14235v2}]).")
    (license license:gpl3+)))

(define-public r-qplexanalyzer
  (package
    (name "r-qplexanalyzer")
    (version "1.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qPLEXanalyzer" version))
       (sha256
        (base32 "0kcm9m59ckrjz92nzdijzb1c5vkca35kzj3yfch6japj8d60iby4"))))
    (properties `((upstream-name . "qPLEXanalyzer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-preprocesscore
                             r-msnbase
                             r-magrittr
                             r-limma
                             r-iranges
                             r-ggplot2
                             r-ggdendro
                             r-dplyr
                             r-biostrings
                             r-biocgenerics
                             r-biobase
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bioconductor.org/packages/qPLEXanalyzer")
    (synopsis "Tools for quantitative proteomics data analysis")
    (description
     "This package provides tools for TMT based quantitative proteomics data analysis.")
    (license license:gpl2)))

(define-public r-qpgraph
  (package
    (name "r-qpgraph")
    (version "2.46.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qpgraph" version))
       (sha256
        (base32 "0pd6wihnfz6klhzrmndf1kknidz6aiqcjbh8d8wm9aqq1j8955h1"))))
    (properties `((upstream-name . "qpgraph")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinfo
                             r-s4vectors
                             r-rgraphviz
                             r-qtl
                             r-mvtnorm
                             r-matrix
                             r-iranges
                             r-graph
                             r-genomicranges
                             r-genomicfeatures
                             r-biocparallel
                             r-biobase
                             r-annotationdbi
                             r-annotate))
    (home-page "https://github.com/rcastelo/qpgraph")
    (synopsis
     "Estimation of Genetic and Molecular Regulatory Networks from High-Throughput Genomics Data")
    (description
     "Estimate gene and @code{eQTL} networks from high-throughput expression and
genotyping assays.")
    (license license:gpl2+)))

(define-public r-qpcrnorm
  (package
    (name "r-qpcrnorm")
    (version "1.70.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qpcrNorm" version))
       (sha256
        (base32 "0pb5n1zhr2bg4q3l3w7zgi5gbdpbnnhmzigng2z93wmanbd7d9l5"))))
    (properties `((upstream-name . "qpcrNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-limma r-biobase r-affy))
    (home-page "https://bioconductor.org/packages/qpcrNorm")
    (synopsis
     "Data-driven normalization strategies for high-throughput qPCR data")
    (description
     "The package contains functions to perform normalization of high-throughput
@code{qPCR} data.  Basic functions for processing raw Ct data plus functions to
generate diagnostic plots are also available.")
    (license license:lgpl2.0+)))

(define-public r-qmtools
  (package
    (name "r-qmtools")
    (version "1.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qmtools" version))
       (sha256
        (base32 "0kashzbjnchdjh2qbajlz5f6zkl1c92rp7npa67m1cfbh3jgrfkx"))))
    (properties `((upstream-name . "qmtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vim
                             r-summarizedexperiment
                             r-scales
                             r-rlang
                             r-patchwork
                             r-mscoreutils
                             r-limma
                             r-igraph
                             r-heatmaply
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HimesGroup/qmtools")
    (synopsis "Quantitative Metabolomics Data Processing Tools")
    (description
     "The qmtools (quantitative metabolomics tools) package provides basic tools for
processing quantitative metabolomics data with the standard
@code{SummarizedExperiment} class.  This includes functions for imputation,
normalization, feature filtering, feature clustering, dimension-reduction, and
visualization to help users prepare data for statistical analysis.  This package
also offers a convenient way to compute empirical Bayes statistics for which
metabolic features are different between two sets of study samples.  Several
functions in this package could also be used in other types of omics data.")
    (license license:gpl3)))

(define-public r-qdnaseq-mm10
  (package
    (name "r-qdnaseq-mm10")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "QDNAseq.mm10" version
                              'experiment))
       (sha256
        (base32 "1518axzm9d5pqwa7nyqpidxbj1ml1z3a1fyxzb5y8ywiy81gcmy5"))))
    (properties `((upstream-name . "QDNAseq.mm10")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qdnaseq))
    (home-page "https://github.com/tgac-vumc/QDNAseq.mm10")
    (synopsis "Bin annotation mm10")
    (description
     "This package provides QDNAseq bin annotations for the mouse genome build mm10.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-qdnaseq-hg19
  (package
    (name "r-qdnaseq-hg19")
    (version "1.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "QDNAseq.hg19" version
                              'experiment))
       (sha256
        (base32 "0ms8f3f4h3ligrwngnn89j9s1gljhcnwqalrpqghpczabdfgcgn8"))))
    (properties `((upstream-name . "QDNAseq.hg19")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qdnaseq))
    (home-page "https://github.com/tgac-vumc/QDNAseq.hg19")
    (synopsis "QDNAseq bin annotation for hg19")
    (description
     "This package provides QDNAseq bin annotations for the human genome build hg19.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-qcmetrics
  (package
    (name "r-qcmetrics")
    (version "1.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (bioconductor-uri "qcmetrics" version))
       (sha256
        (base32 "0clvb0dp6cny3dgp3dqc82xm9i8d8f3b7m3wyc060jfvgard0np4"))))
    (properties `((upstream-name . "qcmetrics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable r-s4vectors r-pander r-knitr r-biobase))
    (native-inputs (list r-knitr))
    (home-page "http://lgatto.github.io/qcmetrics/articles/qcmetrics.html")
    (synopsis "Framework for Quality Control")
    (description
     "The package provides a framework for generic quality control of data.  It
permits to create, manage and visualise individual or sets of quality control
metrics and generate quality control reports in various formats.")
    (license license:gpl2)))

