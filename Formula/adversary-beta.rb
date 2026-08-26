class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.27-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.2/adversary_2026.8.27-beta.2_darwin_amd64.tar.gz"
      sha256 "1c4179c954b96b63b6cf77d516d640849917b745627b029cc1506b983e22a4fa"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.2/adversary_2026.8.27-beta.2_darwin_arm64.tar.gz"
      sha256 "dbc3076a997c3d3e61102780b923b48d7e1fc029fc5225f7c022028c81aba497"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.2/adversary_2026.8.27-beta.2_linux_amd64.tar.gz"
      sha256 "f60b5c6746d13ea0e7619b65c2c73bf1f6c54de2d41eff7429f391b537861077"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.2/adversary_2026.8.27-beta.2_linux_arm64.tar.gz"
      sha256 "bf94f6168763e8b51534df8f5e2ae879fdcaad40a5ac4a0509d5d06d04652fbb"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
