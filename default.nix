with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "intel-backlight";

  src = fetchurl {
    url = "https://gitlab.com/flexw/intel-backlight/-/archive/master/intel-backlight-master.tar.gz";
    sha256 = "5a8656c0b0c8702c7f54e9ca8af14a8247f3456a008468395b827fd8eb58bf6e";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp intel-backlight $out/bin/intel-backlight
    chmod +x $out/bin/intel-backlight
  '';
}
