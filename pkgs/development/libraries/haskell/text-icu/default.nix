{ cabal, deepseq, HUnit, icu, QuickCheck, random, testFramework
, testFrameworkHunit, testFrameworkQuickcheck2, text
}:

cabal.mkDerivation (self: {
  pname = "text-icu";
  version = "0.6.3.7";
  sha256 = "0mzzjamcxfrld9xwgdww3890zzkgmi1qb83v5z9zrixmdgwkvhf4";
  buildDepends = [ text ];
  testDepends = [
    deepseq HUnit QuickCheck random testFramework testFrameworkHunit
    testFrameworkQuickcheck2 text
  ];
  extraLibraries = [ icu ];
  doCheck = !self.stdenv.isDarwin;
  meta = {
    homepage = "https://github.com/bos/text-icu";
    description = "Bindings to the ICU library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
