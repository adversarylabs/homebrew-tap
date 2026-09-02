class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.2-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.3/adversary_2026.9.2-beta.3_darwin_amd64.tar.gz"
      sha256 "f5d534a089cd36be75c8fc6f06ff6e186901b6d1b17b31c984474e1801b071bb"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.3/adversary_2026.9.2-beta.3_darwin_arm64.tar.gz"
      sha256 "40d928d101b42f2ab318a6aefc6d510435494d7c92fa3ca682d310bad25dbfc5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.3/adversary_2026.9.2-beta.3_linux_amd64.tar.gz"
      sha256 "beb6fa71d0a9bd50c77819195b6aa58bcb80bb0005b9c8cb07dc630e6549fcae"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.3/adversary_2026.9.2-beta.3_linux_arm64.tar.gz"
      sha256 "5e39f0021a6babe45677a8b39d39d6ef5b10dcd11f17330d7762ca3260645f4d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
