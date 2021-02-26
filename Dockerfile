# see hooks/build and hooks/.config
ARG BASE_IMAGE_PREFIX
FROM ${BASE_IMAGE_PREFIX}alpine

# see hooks/post_checkout
ARG QEMU_ARCH
COPY .gitignore qemu-${QEMU_ARCH}-static* /usr/bin/

RUN echo "TARGETPLATFORM=$TARGETPLATFORM" && \
  echo "TARGETOS=$TARGETOS" && \
  echo "TARGETARCH=$TARGETARCH" && \
  echo "TARGETVARIANT=$TARGETVARIANT" && \
  uname -ar > /uname.build && \
  apk --update add file
