FROM archlinux:base-20220731.0.71623

# Sort mirrors by speed
RUN yes | pacman --sync --refresh \
    reflector \
    && reflector \
    --save /etc/pacman.d/mirrorlist \
    --protocol https \
    --latest 5 \
    --sort rate

RUN yes | pacman --sync --refresh \
    ansible \
    ansible-lint \
    diffutils \
    docker \
    docker-compose \
    git \
    graphviz \
    helm \
    k9s \
    kubectl \
    kustomize \
    libisoburn \
    make \
    mdbook \
    neovim \
    openssh \
    p7zip \
    python \
    python-jinja \
    python-kubernetes \
    python-netaddr \
    python-pip \
    python-pre-commit \
    python-rich \
    shellcheck \
    sudo \
    terraform \
    yamllint

# TODO better way to install k3d?
RUN curl -L https://github.com/k3d-io/k3d/releases/download/v5.4.1/k3d-linux-amd64 > /usr/local/bin/k3d \
    && chmod +x /usr/local/bin/k3d

# TODO https://github.com/ansible-collections/community.docker/issues/216
RUN pip install docker-compose
