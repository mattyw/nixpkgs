{ cabal, heist, mtl, snap, snapCore, text, webRoutes, xmlhtml }:

cabal.mkDerivation (self: {
  pname = "snap-web-routes";
  version = "0.5.0.0";
  sha256 = "1ml0b759k2n9bd2x4akz4dfyk8ywnpgrdlcymng4vhjxbzngnniv";
  buildDepends = [ heist mtl snap snapCore text webRoutes xmlhtml ];
  meta = {
    homepage = "https://github.com/lukerandall/snap-web-routes";
    description = "Type safe URLs for Snap";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
