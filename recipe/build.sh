set -ex
meson setup builddir \
    ${MESON_ARGS} \
    --buildtype=release \
    --prefix=$PREFIX

ninja -C builddir -j${CPU_COUNT}
ninja -C builddir install
