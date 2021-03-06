{ cabal, HUnit, QuickCheck, random, testFramework
, testFrameworkHunit, testFrameworkQuickcheck2, text
}:

cabal.mkDerivation (self: {
  pname = "hashable";
  version = "1.2.2.0";
  sha256 = "08cfm1rzhf3d8dzn0iqadfs35151ff6szhnh4bwrpxcs6sq90fh3";
  buildDepends = [ text ];
  testDepends = [
    HUnit QuickCheck random testFramework testFrameworkHunit
    testFrameworkQuickcheck2 text
  ];
  doCheck = false;
  meta = {
    homepage = "http://github.com/tibbe/hashable";
    description = "A class for types that can be converted to a hash value";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
