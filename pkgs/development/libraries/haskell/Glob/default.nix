{ cabal, dlist, filepath, transformers }:

cabal.mkDerivation (self: {
  pname = "Glob";
  version = "0.7.5";
  sha256 = "0hdyi49zp2yr4h4wgngl8ajrss1p309c3pn0alj543yrh33bnqq0";
  buildDepends = [ dlist filepath transformers ];
  meta = {
    homepage = "http://iki.fi/matti.niemenmaa/glob/";
    description = "Globbing library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
