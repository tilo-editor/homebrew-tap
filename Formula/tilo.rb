class Tilo < Formula
  desc "Tiled terminal editor"
  homepage "https://github.com/tilo-editor/tilo"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.3.0/tilo_Darwin_arm64.tar.gz"
      sha256 "967fe6f812f784ec80a2a1e6b34dc179c50c5d4d5df6895baf6c6738110e98cd"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.3.0/tilo_Darwin_x86_64.tar.gz"
      sha256 "e1da639695f4e58e54daa565c79af24d67ea61c09ffc3094df222882cb3f0963"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.3.0/tilo_Linux_arm64.tar.gz"
      sha256 "26ad0f6efb5f15d7e6f9b783efd24143bddc6f7d0732dfdfaea608ed607fe274"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.3.0/tilo_Linux_x86_64.tar.gz"
      sha256 "a72b0a0fc9015c39b5d9926fd5b574b553111d4ec0e41bb8fcdd4008958195f4"
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
