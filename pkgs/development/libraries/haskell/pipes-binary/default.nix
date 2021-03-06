{ cabal, binary, lensFamilyCore, pipes, pipesBytestring, pipesParse
, smallcheck, tasty, tastyHunit, tastySmallcheck, transformers
}:

cabal.mkDerivation (self: {
  pname = "pipes-binary";
  version = "0.4.0.2";
  sha256 = "1lbz2hybglkmm7dawg16pma2yr732yy1agh5b9vwlw2ik92hrm58";
  buildDepends = [
    binary pipes pipesBytestring pipesParse transformers
  ];
  testDepends = [
    binary lensFamilyCore pipes pipesParse smallcheck tasty tastyHunit
    tastySmallcheck transformers
  ];
  jailbreak = true;
  doCheck = false;
  meta = {
    homepage = "https://github.com/k0001/pipes-binary";
    description = "Encode and decode binary streams using the pipes and binary libraries";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
