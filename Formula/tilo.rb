class Tilo < Formula
  desc "Tiled terminal editor"
  homepage "https://github.com/tilo-editor/tilo"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.0/tilo_Darwin_arm64.tar.gz"
      sha256 "b2cbb523288d262842d8abd84e0dc68007df79a14047edda0ccaf93c8865b075"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.0/tilo_Darwin_x86_64.tar.gz"
      sha256 "136f9fa22f9946838e050680ccd36f728237fa8975cd86dfd906b44db51add27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.0/tilo_Linux_arm64.tar.gz"
      sha256 "115158eeb233faf12b83d1fc875eb187bbdb9e1197fa3284536e18476e377dbf"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.0/tilo_Linux_x86_64.tar.gz"
      sha256 "65948fbc2378e21a95754158c46da7123ebd2dd04514f176e897dde9ba81996b"
    end
  end

  def install
    bin.install "tilo"
    doc.install "README.md"
    prefix.install "LICENSE-BINARY.md"
  end

  test do
    assert_match "tilo v#{version}", shell_output("#{bin}/tilo --version")
  end
end
