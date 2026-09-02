class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.2-beta.6"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.6/adversary_2026.9.2-beta.6_darwin_amd64.tar.gz"
      sha256 "1a369309bcb172e0a43c63a646db6575ef814ce53e17bcce9754a4e23a2288e4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.6/adversary_2026.9.2-beta.6_darwin_arm64.tar.gz"
      sha256 "dbdb6ee5f369c6605477717993aecccfae42a5c95b4cb675672fc081d3e02977"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.6/adversary_2026.9.2-beta.6_linux_amd64.tar.gz"
      sha256 "e440524f9a48c7ddeb6568a2a7486cb5aa445fb393864957fcb6c2298418b6b1"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.6/adversary_2026.9.2-beta.6_linux_arm64.tar.gz"
      sha256 "ac8ffb3ed551c7779323fcd2679afc60eb36dfdde26fa2d93386efeb8239b8d1"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
