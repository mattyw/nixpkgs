{ cabal, dependentSum, thExtras }:

cabal.mkDerivation (self: {
  pname = "dependent-sum-template";
  version = "0.0.0.1";
  sha256 = "16p6ckl6ml8lgy42mvivnqphfd73cg8chms3fxid66gv4fif68zl";
  buildDepends = [ dependentSum thExtras ];
  meta = {
    homepage = "/dev/null";
    description = "Template Haskell code to generate instances of classes in dependent-sum package";
    license = self.stdenv.lib.licenses.publicDomain;
    platforms = self.ghc.meta.platforms;
  };
})
