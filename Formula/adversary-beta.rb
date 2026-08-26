class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.26-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.3/adversary_2026.8.26-beta.3_darwin_amd64.tar.gz"
      sha256 "f03f440d4a9aa2706cfcb45f6a001c171b236b67f0f712db816483b0f117fe47"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.3/adversary_2026.8.26-beta.3_darwin_arm64.tar.gz"
      sha256 "5c7b43ac9b8985002069a70c06bc8a9c25975c57bb5c98ee6bb5b8487e18a088"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.3/adversary_2026.8.26-beta.3_linux_amd64.tar.gz"
      sha256 "b05f142d167b6c2d519d2d59831b345f05db2466907d1935bbc42d41a1306f3a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.3/adversary_2026.8.26-beta.3_linux_arm64.tar.gz"
      sha256 "79984a1084142f290da90c46504427adfe09ad7dcfff7f9a2a25e63c6f1f5a20"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
