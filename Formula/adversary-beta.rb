class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.4-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.3/adversary_2026.9.4-beta.3_darwin_amd64.tar.gz"
      sha256 "602b8908820ab97eba231c7166a99c5316d876c07ab7b5e6df835a1aebb0f59d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.3/adversary_2026.9.4-beta.3_darwin_arm64.tar.gz"
      sha256 "6601c66eb69660007dd5a202beefd66c088d017abe398c2e8a384c05561e6247"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.3/adversary_2026.9.4-beta.3_linux_amd64.tar.gz"
      sha256 "a91b064fae03ffb137902052260a701796254ca93e8a8b485d67e86086dd9ae4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.3/adversary_2026.9.4-beta.3_linux_arm64.tar.gz"
      sha256 "104efc3e293e2d6002d6a2c65fc289033a0b9e180bb2ec1878d6d6c34ce26673"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
