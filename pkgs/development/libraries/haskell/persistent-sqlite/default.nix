{ cabal, aeson, conduit, monadControl, monadLogger, persistent
, resourcet, text, transformers
}:

cabal.mkDerivation (self: {
  pname = "persistent-sqlite";
  version = "1.3.0.5";
  sha256 = "05b7byc4z7mhni90cj2aan63f599wv0511zqbsm6kbylk1zpyizb";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson conduit monadControl monadLogger persistent resourcet text
    transformers
  ];
  meta = {
    homepage = "http://www.yesodweb.com/book/persistent";
    description = "Backend for the persistent library using sqlite3";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
