{ cabal }:

cabal.mkDerivation (self: {
  pname = "murmur-hash";
  version = "0.1.0.7";
  sha256 = "125v4ypiv8n2m8zd1yi46prz96yy79ap0yzhm4vhrws4cf1zapkp";
  meta = {
    homepage = "http://github.com/nominolo/murmur-hash";
    description = "MurmurHash2 implementation for Haskell";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
