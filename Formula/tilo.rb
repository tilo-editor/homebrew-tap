class Tilo < Formula
  desc "Tiled terminal editor"
  homepage "https://github.com/tilo-editor/tilo"
  version "0.5.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.5.0/tilo_Darwin_arm64.tar.gz"
      sha256 "775a0817be1908132a36cb0aa21e6550af265983401cd6681570fa5e3eaebaaa"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.5.0/tilo_Darwin_x86_64.tar.gz"
      sha256 "1c55b6005a97d2bcb4d73ae4074e076a622bab2172f9313a293f2727209d525f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.5.0/tilo_Linux_arm64.tar.gz"
      sha256 "5e8ceb6447afb13a887cc775cb2c345b7d2aa3d1f1bb00ebccc75e204ef0c967"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.5.0/tilo_Linux_x86_64.tar.gz"
      sha256 "4d08dee9e2a733fb9cfd13ba0826e90b5a3210733221c5c6fb431521236601dd"
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
