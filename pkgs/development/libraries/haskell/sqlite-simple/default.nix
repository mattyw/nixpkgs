{ cabal, attoparsec, base16Bytestring, blazeBuilder, blazeTextual
, directSqlite, HUnit, text, time, transformers
}:

cabal.mkDerivation (self: {
  pname = "sqlite-simple";
  version = "0.4.8.0";
  sha256 = "098d1s80wlvsp307422f79bm3a9knvgw5ni6jap62fl4rpa7fsmz";
  buildDepends = [
    attoparsec blazeBuilder blazeTextual directSqlite text time
    transformers
  ];
  testDepends = [ base16Bytestring directSqlite HUnit text time ];
  meta = {
    homepage = "http://github.com/nurpax/sqlite-simple";
    description = "Mid-Level SQLite client library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
