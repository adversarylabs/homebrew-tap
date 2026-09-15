class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.14"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.14/adversary_2026.9.15-beta.14_darwin_amd64.tar.gz"
      sha256 "f2619773b6f3aba0d0bdb68e1cd22088d9e620e4f9c2e44f9e1465b84b361bea"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.14/adversary_2026.9.15-beta.14_darwin_arm64.tar.gz"
      sha256 "41cdc4e4cd7604fa1d5ecfdf626248fa9ec563407467062b424b3d4738113ef5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.14/adversary_2026.9.15-beta.14_linux_amd64.tar.gz"
      sha256 "1e5aa271b2d1cf9f77e9a970e9897e34b022c34d2c63fddcb6b50411af1d0cba"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.14/adversary_2026.9.15-beta.14_linux_arm64.tar.gz"
      sha256 "66ae6189472afc1c5757641278f6fc2ba0037d5b1328bd3db92c6c737db2e1ac"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
