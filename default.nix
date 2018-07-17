# install for user with: nix-env -f default.nix -i intel-backlight
with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "intel-backlight";

  src = fetchurl {
    url = "https://gitlab.com/flexw/intel-backlight/-/archive/version-0.1/intel-backlight-version-0.1.tar.gz";
    sha256 = "85a050ee9d8d6a93da3901f0bb78f8e82c63181bc33b19b9b37a52d34746fdc1";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp intel-backlight $out/bin/intel-backlight
    chmod +x $out/bin/intel-backlight
  '';
}
