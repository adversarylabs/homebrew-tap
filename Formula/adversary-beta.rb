class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.28-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.2/adversary_2026.7.28-beta.2_darwin_amd64.tar.gz"
      sha256 "6f367f4d3cce3178d7fd3fefef67c51e7a8f4f609731991acaf0565d088f93c8"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.2/adversary_2026.7.28-beta.2_darwin_arm64.tar.gz"
      sha256 "120f3fbe61835de3f3fa88f195a3701bb129efff54d24a063a70de6def9af08f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.2/adversary_2026.7.28-beta.2_linux_amd64.tar.gz"
      sha256 "acf3703ecaa682cb12c7285ef4e56005752601c24c7e22b5aec80f10c9cf2cdb"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.2/adversary_2026.7.28-beta.2_linux_arm64.tar.gz"
      sha256 "c787655a4b91bdb2a23e67f3b5187de552601d5906541a554a3e192cb003e75d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
