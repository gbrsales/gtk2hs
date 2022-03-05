# Gtk2Hs

![Build Status](https://github.com/gbrsales/gtk2hs/actions/workflows/build.yaml/badge.svg)

This is a fork of the [gtk2hs/gtk2hs](https://github.com/gtk2hs/gtk2hs)
repository.

I have modified the cairo library, adding support for direct drawing onto a
macOS Quartz surface. That can be accomplished using the
`withQuartzSurfaceForCGContext` function.

See the original repository for build instructions.
