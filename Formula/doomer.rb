class Doomer < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.18"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.18/doomer_2026.9.18_darwin_amd64.tar.gz"
      sha256 "716810424bb8cb09840b752646c32ebb028cfaf001e7f4bc2fba4ef916bfe8fa"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.18/doomer_2026.9.18_darwin_arm64.tar.gz"
      sha256 "196df566c0bfaa3c69dd617b81e24fad1ac1c802e8ba414033a29a27b5259e4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.18/doomer_2026.9.18_linux_amd64.tar.gz"
      sha256 "bc902451a58199a0e74a65fe5306c650172426c06e2f25e02e84720caad36cb2"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.18/doomer_2026.9.18_linux_arm64.tar.gz"
      sha256 "9319e314236516a9c9eb4f841fa7acd7f22ed5303ad7b7083412f4cc841a6d8d"
    end
  end

  def install
    bin.install "doomer" => "doomer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer version")
  end
end
