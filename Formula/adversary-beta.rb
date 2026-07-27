class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.28-beta.7"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.7/adversary_2026.7.28-beta.7_darwin_amd64.tar.gz"
      sha256 "ccb2d1ed2264efe504f2212ebadda0568f34f7780720399fcff67b9cbff0e2e3"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.7/adversary_2026.7.28-beta.7_darwin_arm64.tar.gz"
      sha256 "d6ced9ca419ff00c4f459349dd2de047b41f3302dee5d52e20e49aac07a0a76e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.7/adversary_2026.7.28-beta.7_linux_amd64.tar.gz"
      sha256 "f2c6433dcef01560725a617d1980b43e88fd38e7fc7b8e69cd6f12ef9f209dec"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.7/adversary_2026.7.28-beta.7_linux_arm64.tar.gz"
      sha256 "5cbba21e996b89207aa40b08cfb362fde8dab6086005fc5fc1762105dea43a50"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
