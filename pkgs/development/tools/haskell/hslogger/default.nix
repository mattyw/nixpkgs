{ cabal, mtl, network, time }:

cabal.mkDerivation (self: {
  pname = "hslogger";
  version = "1.2.4";
  sha256 = "0r0c7wqz49lzxg7sakkw6nwmxnyzhqscxvnxiqwkwsgv3q2sh3wc";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ mtl network time ];
  meta = {
    homepage = "http://software.complete.org/hslogger";
    description = "Versatile logging framework";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
