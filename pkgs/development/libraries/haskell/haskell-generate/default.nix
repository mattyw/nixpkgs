{ cabal, doctest, filepath, haskellSrcExts, transformers }:

cabal.mkDerivation (self: {
  pname = "haskell-generate";
  version = "0.2";
  sha256 = "0bkaarc40lcw3v2y6qdf91rx21v3w82y62kaadhmmh5ikq99pybw";
  buildDepends = [ haskellSrcExts transformers ];
  testDepends = [ doctest filepath ];
  meta = {
    homepage = "http://github.com/bennofs/haskell-generate/";
    description = "haskell-generate";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
