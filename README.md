# Paint.QT

A Homebrew tap for [Paint.QT](https://github.com/RubCut/Paint.QT), a raster image
editor for Linux desktops written in C++20 on Qt 6.

```sh
brew tap RubCut/paint-qt
brew install --cask paint-qt
```

The cask installs the DragNDrop bundle from the
[releases](https://github.com/RubCut/Paint.QT/releases). The checksum in the cask is
verified by Homebrew before anything is put in `/Applications`.

`brew upgrade paint-qt` picks up a new release: the cask reads its version from the
GitHub release it points at.

## Elsewhere

The Flatpak repository is the shortest way to install on Linux:

```sh
flatpak install --user --noninteractive --from https://rubcut.github.io/Paint.QT/repo/io.github.RubCut.Paint.QT.flatpakref
```
