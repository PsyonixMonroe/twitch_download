FROM nixos/nix

RUN nix-env -f '<nixpkgs>' -iA youtube-dl bash

VOLUME /mnt/vods

ENV LINK "https://twitch.tv/Laserath"
ENV COOLDOWN "60"

RUN mkdir -p /root/cwd
ADD runService.sh /root/cwd

WORKDIR /mnt/vods
ENTRYPOINT ["/root/.nix-profile/bin/bash", "/root/cwd/runService.sh"]

