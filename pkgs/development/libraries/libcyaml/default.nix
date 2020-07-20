{ libyaml, stdenv, fetchFromGitHub, ... }:
stdenv.mkDerivation rec {
  pname = "libcyaml";
  version = "1.1.0";
  src = fetchFromGitHub {
    owner = "tlsa";
    repo = "libcyaml";
    rev = "v1.1.0";
    sha256 = "0428p0rwq71nhh5nzcbapsbrjxa0x5l6h6ns32nxv7j624f0zd93";
  };

  prePatch = ''
    substituteInPlace Makefile --replace '/usr/local' '$(out)'
  '';

  buildInputs = [ libyaml ];
}
