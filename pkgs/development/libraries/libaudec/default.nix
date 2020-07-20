{ cmake, pkg-config, meson, ninja, libsamplerate, libsndfile, ffmpeg, stdenv, fetchFromGitHub, ... }:
stdenv.mkDerivation rec {
  pname = "libaudec";
  version = "0.2.2";
  src = fetchFromGitHub {
    owner = "zrythm";
    repo = "libaudec";
    rev = "v0.2.2";
    sha256 = "04mpmfmqc43asw0m3zxhb6jj4qms7x4jw7mx4xb1d3lh16xllniz";
  };

  prePatch = ''
    # substituteInPlace Makefile --replace '/usr/local' '$(out)'
  '';

  # buildPhase = ''
  #  meson bld
  # '';

  buildInputs = [ libsndfile libsamplerate ffmpeg ];
  nativeBuildInputs = [ meson ninja cmake pkg-config ];
}
