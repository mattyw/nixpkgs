{ stdenv, fetchurl, makeWrapper, go, lxc, sqlite, iproute, bridge_utils, devicemapper,
btrfsProgs, iptables, bash}:

stdenv.mkDerivation rec {
  name = "docker-${version}";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/dotcloud/docker/archive/v${version}.tar.gz";
    sha256 = "0b2fqhrgp3d2i0536asdjbjwbcnx87j0ggkcxnj31mj20hj5lfmb";
  };

  phases = ["unpackPhase" "preBuild" "buildPhase" "installPhase"];

  buildInputs = [ makeWrapper go sqlite lxc iproute bridge_utils devicemapper btrfsProgs iptables ];

  preBuild = ''
    patchShebangs ./hack
  '';

  buildPhase = ''
    export AUTO_GOPATH=1
    export DOCKER_GITCOMMIT="79812e36468c6e9be19b7c028e37787d5ae6288b"
    ./hack/make.sh dynbinary
  '';

  installPhase = ''
    install -Dm755 ./bundles/${version}/dynbinary/docker-${version} $out/bin/docker
    install -Dm755 ./bundles/${version}/dynbinary/dockerinit-${version} $out/bin/dockerinit
    wrapProgram $out/bin/docker --prefix PATH : "${iproute}/sbin:sbin:${lxc}/bin:${iptables}/sbin"

    # systemd
    install -Dm644 ./contrib/init/systemd/docker.service $out/etc/systemd/system/docker.service

    # completion
    install -Dm644 ./contrib/completion/bash/docker $out/share/bash-completion/completions/docker
    install -Dm644 ./contrib/completion/zsh/_docker $out/share/zsh/site-functions/_docker
  '';

  meta = with stdenv.lib; {
    homepage = http://www.docker.io/;
    description = "An open source project to pack, ship and run any application as a lightweight container";
    license = licenses.asl20;
    maintainers = with maintainers; [ offline ];
    platforms = platforms.linux;
  };
}
