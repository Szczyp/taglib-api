{ mkDerivation, base, bytestring, containers, mtl, stdenv, taglib
, text, transformers
}:
mkDerivation {
  pname = "taglib-api";
  version = "0.1.1.4";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring containers mtl text transformers
  ];
  libraryPkgconfigDepends = [ taglib ];
  description = "An FFI layer over TagLib's C bindings";
  license = stdenv.lib.licenses.bsd3;
}
