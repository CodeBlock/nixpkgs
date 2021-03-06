{ cabal }:

cabal.mkDerivation (self: {
  pname = "multimap";
  version = "1.2.1";
  sha256 = "0d3l5q4yvmywl6i9ip96zz0fvhjdh00mfbbniphbjxsi8wlwack3";
  meta = {
    homepage = "http://hub.darcs.net/scravy/multimap";
    description = "A multimap";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
