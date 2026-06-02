class Tilo < Formula
  desc "Tiled terminal editor"
  homepage "https://github.com/tilo-editor/tilo"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.1.0/tilo_Darwin_arm64.tar.gz"
      sha256 "ae2bf663013a58845343b9fbfd6b1fa56391ea8ab7352965e346407175f54190"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.1.0/tilo_Darwin_x86_64.tar.gz"
      sha256 "8c140dce647cf11e036bd90c0e35dbe4229529697d10af23881b04cee3ca6e1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.1.0/tilo_Linux_arm64.tar.gz"
      sha256 "88746ac5903f5deff3ec6cf045b72783ba96bd0b54ed2e616f00542a7b61f5f8"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.1.0/tilo_Linux_x86_64.tar.gz"
      sha256 "4ac25895947ce2f372b340795cbc7284302770f4d45526550133164d3fc8f151"
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
