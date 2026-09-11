class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.12-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.1/adversary_2026.9.12-beta.1_darwin_amd64.tar.gz"
      sha256 "47ad60b3514d591acdc9d45966db69248472469bd5997c7daaa6fedc06e72cb4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.1/adversary_2026.9.12-beta.1_darwin_arm64.tar.gz"
      sha256 "9589d9677e61c99e13c34ea983d93bf719f8b8d7f71f1792ceb4fa9f14b96f56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.1/adversary_2026.9.12-beta.1_linux_amd64.tar.gz"
      sha256 "5553a7b723e06baf79dc0f206ee930b5c764e883e223fc33c3880098893c769a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.1/adversary_2026.9.12-beta.1_linux_arm64.tar.gz"
      sha256 "153bd2176defda01573a889e0563f21adba4bf7b780b4ebc8504c3dbfcac7446"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
