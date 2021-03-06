{ cabal, async }:

cabal.mkDerivation (self: {
  pname = "io-memoize";
  version = "1.1.1.0";
  sha256 = "0ga85wdvz67jjx8qh6f687kfikcrfmp7winn13v6na7vlaqs2ly7";
  buildDepends = [ async ];
  meta = {
    homepage = "https://github.com/DanBurton/io-memoize";
    description = "Memoize IO actions";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
