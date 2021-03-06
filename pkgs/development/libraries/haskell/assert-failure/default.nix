{ cabal, prettyShow, text }:

cabal.mkDerivation (self: {
  pname = "assert-failure";
  version = "0.1.1.0";
  sha256 = "09djlhhyn9w822a5r41y7gk4cqk74a2fy7skzml2bah2an166gm1";
  buildDepends = [ prettyShow text ];
  jailbreak = true;
  meta = {
    homepage = "https://github.com/Mikolaj/assert-failure";
    description = "Syntactic sugar improving 'assert' and 'error'";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
