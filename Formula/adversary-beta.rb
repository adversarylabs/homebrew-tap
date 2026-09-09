class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.9-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.3/adversary_2026.9.9-beta.3_darwin_amd64.tar.gz"
      sha256 "01410692485dcc8420ec7d20966a6add863f00c2ce63dfab3e9315cfd8c369ec"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.3/adversary_2026.9.9-beta.3_darwin_arm64.tar.gz"
      sha256 "b1a8be37d5d56c180a1b90a05d185352cb528997febea021dff94b52fbadc7ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.3/adversary_2026.9.9-beta.3_linux_amd64.tar.gz"
      sha256 "47d430778b72d39b14c9eb8feac03989c8602b9dc706611c315f873b33562d0d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.3/adversary_2026.9.9-beta.3_linux_arm64.tar.gz"
      sha256 "6e4fc89ebd23c539cc1291f1bb500fbe161ff17fadace23ce54418603c0dc331"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
