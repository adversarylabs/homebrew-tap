class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.28-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.3/adversary_2026.7.28-beta.3_darwin_amd64.tar.gz"
      sha256 "6999a54fa0432548796c3c849047d14f1913fe2a4c435ae05c11c2c465325d59"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.3/adversary_2026.7.28-beta.3_darwin_arm64.tar.gz"
      sha256 "cb9307a72351cebad2e20e1a0a4d9a0e82bad52be505dccfbae2c2cbb46e793d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.3/adversary_2026.7.28-beta.3_linux_amd64.tar.gz"
      sha256 "47e4634edf030a189715a1c2b8f1170b2769cab135c52f3a246952cbb2dbe21b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.3/adversary_2026.7.28-beta.3_linux_arm64.tar.gz"
      sha256 "325b7e2a6c63f1561a62f2b12bd49d5feadff5b8df46eef9958ecaa87bb744d3"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
