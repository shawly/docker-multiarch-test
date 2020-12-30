# see hooks/build and hooks/.config
ARG BASE_IMAGE_PREFIX
FROM ${BASE_IMAGE_PREFIX}alpine

# see hooks/post_checkout
ARG QEMU_ARCH
COPY qemu-${QEMU_ARCH}-static /usr/bin

RUN uname -ar > /uname.build
RUN apk --update add file