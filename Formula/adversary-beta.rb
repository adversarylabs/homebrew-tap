class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.2-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.1/adversary_2026.9.2-beta.1_darwin_amd64.tar.gz"
      sha256 "8db716d15741e0023019fb33d45d0e05fd8b901931d61e422e9d5a73c0c803c6"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.1/adversary_2026.9.2-beta.1_darwin_arm64.tar.gz"
      sha256 "fd3281a8346e9d1d8409b80c51d04c15a3e1cad256e72983c3ce24804e420fdf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.1/adversary_2026.9.2-beta.1_linux_amd64.tar.gz"
      sha256 "020245aa72044c861857a83d5743bfb68b1329cf5b2a8b081dbb32cb8b31bf10"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.1/adversary_2026.9.2-beta.1_linux_arm64.tar.gz"
      sha256 "21f932677b64f9478aac60d7ebb465132dc2b9585bc35fcba1d7216a14df4a91"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
