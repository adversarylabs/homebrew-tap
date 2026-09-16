class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.17-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.1/adversary_2026.9.17-beta.1_darwin_amd64.tar.gz"
      sha256 "deddf587875881f6230810d9f49e613992613531a9e803b425eb92dbd310f989"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.1/adversary_2026.9.17-beta.1_darwin_arm64.tar.gz"
      sha256 "a1c9da999d4442cdd692e762af691d8097794d892c118e1c03903a85a469b710"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.1/adversary_2026.9.17-beta.1_linux_amd64.tar.gz"
      sha256 "4d6e96f5460145aee9437c208a4c53c7872eaa7bdac5b80678fa9a84c23d0f9c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.1/adversary_2026.9.17-beta.1_linux_arm64.tar.gz"
      sha256 "507168af09dcf410d07d1d862dc5d51e554f982f6c86baed23d7824bac77cc49"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
