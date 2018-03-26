{ mkDerivation, base, containers, hspec, mtl, QuickCheck, stdenv
, z3
}:
mkDerivation {
  pname = "z3";
  version = "4.2.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base containers mtl ];
  librarySystemDepends = [ z3 ];
  testHaskellDepends = [ base hspec QuickCheck ];
  homepage = "http://bitbucket.org/iago/z3-haskell";
  description = "Bindings for the Z3 Theorem Prover";
  license = stdenv.lib.licenses.bsd3;
}
