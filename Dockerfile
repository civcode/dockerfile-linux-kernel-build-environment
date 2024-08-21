FROM ubuntu:22.04
# Install packages
RUN apt-get update && apt-get install -y \
    bc \
    bison \
    build-essential \
    cpio \
    crossbuild-essential-arm64 \
    crossbuild-essential-armhf \
    debhelper \
    fakeroot \
    flex \
    git \
    kmod \
    libelf-dev \
    libssl-dev \
    ncurses-dev \
    rsync \
    tmux \
    vim \
    xz-utils \
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
