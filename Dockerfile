# Use the uv debian-slim base image
FROM ghcr.io/astral-sh/uv:debian-slim

# Set environment variables
ENV DISPLAY=:99.0
ENV QT_SELECT=qt6

# Install necessary packages for running tests and linting
RUN apt-get update && apt-get install -y --no-install-recommends \
    libfontconfig1 \    
    xvfb \
    libxkbcommon-x11-0 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-randr0 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxcb-xinput0 \
    libxcb-xfixes0 \
    libxcb-shape0 \
    libglib2.0-0 \
    libgl1-mesa-dev \
    '^libxcb.*-dev' \
    libx11-xcb-dev \
    libglu1-mesa-dev \
    libqt6widgets6 \
    libqt6gui6 \
    libqt6core6 \
    libxrender1 \
    libxext6 \
    libx11-6 \
    libxrender-dev \
    libxi-dev \
    libxkbcommon-dev \
    libxkbcommon-x11-dev \
    xvfb \
    x11-utils \
    x11-xserver-utils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install any additional project-specific dependencies if needed

# Start xvfb in the background
CMD ["Xvfb", ":99", "-screen", "0", "1920x1080x24"]
