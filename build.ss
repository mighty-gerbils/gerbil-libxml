#!/usr/bin/env gxi

(import :std/build-script :std/make)
(defbuild-script
  `((gsc: "xml/_libxml"
          "-cc-options" ,(shell-config "xml2-config" "--cflags")
          "-ld-options" ,(shell-config "xml2-config" "--libs")
          ,@(include-gambit-sharp))
    (ssi: "xml/_libxml")
    "xml/libxml"))
