class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.20-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.2/doomer_2026.9.20-beta.2_darwin_amd64.tar.gz"
      sha256 "0b1865647af4fb754e4445aa8834171a645fd1cfa44943d0afe43b2d8cdaaa33"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.2/doomer_2026.9.20-beta.2_darwin_arm64.tar.gz"
      sha256 "ae0d15a817f3cecc40aed4204d9548e4e277796d9031e0107b4033a36c2d8d30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.2/doomer_2026.9.20-beta.2_linux_amd64.tar.gz"
      sha256 "2d8fbd692042f32a738f5587239cd40cc908e1db020d757e22ca1f7dcd2d1838"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.2/doomer_2026.9.20-beta.2_linux_arm64.tar.gz"
      sha256 "8c60e26e61bf1b592417b43f84e6719876ec45bf1ff5bd52a12976daf5d8a4ae"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
