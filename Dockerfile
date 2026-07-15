FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bash \
        coreutils \
        findutils \
        grep \
        sed \
        gawk \
        procps \
        less \
        tree \
        man-db \
        manpages && \
    rm -rf /var/lib/apt/lists/*

# Setup workspace
WORKDIR /workspace
COPY . .

RUN mkdir -p /workspace/bin && \
    for f in /workspace/commands/*.sh; do \
        cmd="$(basename "$f" .sh)"; \
        printf '#!/usr/bin/env bash\nexec /workspace/bin/sandbox "%s" "$@"\n' "$cmd" \
            > "/workspace/bin/$cmd"; \
        chmod +x "/workspace/bin/$cmd"; \
    done

RUN chmod +x /workspace/bin/sandbox && \
    chmod +x /workspace/commands/*.sh

ENV PATH="/workspace/bin:${PATH}"

RUN cat >> /root/.bashrc <<'EOF'
enable -n pwd
echo "Welcome to shell-sandbox!

Supported commands:
  sandbox               Browse available commands
  ls                    List files and directories.
  mkdir                 Create directories.
  pwd                   Print the current working directory.
  touch                 Create empty files or update file timestamps.
  exit                  Exit the sandbox
"
EOF

RUN echo "unalias -a 2>/dev/null" >> /root/.bashrc

CMD ["/bin/bash", "-c", "clear && exec bash"]
