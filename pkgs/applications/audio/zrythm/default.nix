{ wrapGAppsHook, bash, meson, stdenv, lilv, lv2, gettext, xdg_utils, help2man, guile, jack2, glib, cmake, pkg-config, alsaLib, libgtop, git, libcyaml, libaudec, libsndfile, libsamplerate, gtk3, fftw, fftwFloat, gtksourceview3, zstd, sratom, serd, sord, rubberband, pcre, ninja, libyaml, graphviz, ...}:

stdenv.mkDerivation rec {
  pname = "zrythm";
  version = "0.8.694";
  src = builtins.fetchGit {
    url = "https://git.zrythm.org/cgit/zrythm";
    rev = "9702f62dd1221ac1020bf8e3469efbda2aad9315";
  };

  prePatch = ''
    patchShebangs scripts/*
  '';

  nativeBuildInputs = [ wrapGAppsHook ];
  buildInputs = [ meson ninja pkg-config cmake gtk3 guile lilv lv2 gettext xdg_utils help2man guile jack2 glib cmake pkg-config alsaLib libgtop git libcyaml libaudec libsndfile libsamplerate gtk3 fftw fftwFloat gtksourceview3 zstd sratom serd sord rubberband pcre ninja libyaml graphviz wrapGAppsHook ];
    
}
