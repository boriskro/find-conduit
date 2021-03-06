{ cabal, conduit, conduitCombinators, attoparsec, systemFilepath
, unixCompat, text, regexPosix, hspec, time, semigroups, exceptions
, doctest, either, streamingCommons, transformers, filepath
}:

cabal.mkDerivation (self: {
  pname = "find-conduit";
  version = "0.4.1";
  src = ./.;
  buildDepends = [
    conduit conduitCombinators attoparsec systemFilepath text
    unixCompat regexPosix hspec time semigroups exceptions
    doctest either streamingCommons transformers filepath
  ];
  meta = {
    homepage = "https://github.com/yesodweb/Shelly.hs";
    description = "shell-like (systems) programming in Haskell";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
