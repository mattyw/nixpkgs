{ cabal, parallel, transformers }:

cabal.mkDerivation (self: {
  pname = "monad-parallel";
  version = "0.7.1.2";
  sha256 = "0ybifm54dwaz5jqccw7hwlykjw4bcnl924808bi01j5i7ggyz5wj";
  buildDepends = [ parallel transformers ];
  meta = {
    homepage = "http://trac.haskell.org/SCC/wiki/monad-parallel";
    description = "Parallel execution of monadic computations";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
