FROM ubuntu:22.04

# Set environment variable to prevent user interaction
ENV DEBIAN_FRONTEND=noninteractive

# Install packages
RUN apt-get update && apt-get install -y \
    alien \
    autoconf \
    automake \
    bc \
    bison \
    build-essential \
    cmake \
    cmake-curses-gui \
    cpio \
    crossbuild-essential-arm64 \
    crossbuild-essential-armhf \
    debhelper \
    debhelper-compat \
    dkms \
    fakeroot \
    flex \
    gawk \
    git \
    kmod \
    libaio-dev \
    libattr1-dev \
    libblkid-dev \
    libcurl4-openssl-dev \
    libelf-dev \
    libffi-dev \
    libssl-dev \
    libtool \
    linux-headers-generic \
    ncurses-dev \
    parallel \
    po-debconf \
    python3 \
    python3-all-dev \
    python3-cffi \
    python3-dev \
    python3-packaging \
    python3-setuptools \
    python3-sphinx \
    rsync \
    tmux \
    uuid-dev \
    vim \
    xz-utils \
    zlib1g-dev \
    zstd \
    && rm -rf /var/lib/apt/lists/*
 
# Modify .bashrc
RUN echo "alias l='ls -1'" >> ~/.bashrc && \
    echo "alias ll='ls -lah'" >> ~/.bashrc && \
    echo "alias 'cd..'='cd ..'" >> ~/.bashrc && \
    echo "alias tmux='tmux -2'" >> ~/.bashrc && \
    # make bash autocomplete write every suggestion in a separate line
    echo "bind 'set completion-display-width 0'" >> ~/.bashrc
    
# Ensure .bashrc is sourced when a new shell session starts
RUN echo 'source ~/.bashrc' >> ~/.bash_profile

CMD ["sleep", "infinity"]
