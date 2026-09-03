class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.1/adversary_2026.9.3-beta.1_darwin_amd64.tar.gz"
      sha256 "398671e37b3d66eee6bfb0caf5f9b13484e442e5328c4ebf2aceb631cd88319b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.1/adversary_2026.9.3-beta.1_darwin_arm64.tar.gz"
      sha256 "4e72e7b5fc1bfcc41463238f6b890942f8000432ce333856f8825298adf79b88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.1/adversary_2026.9.3-beta.1_linux_amd64.tar.gz"
      sha256 "15be0e36b96c109d97214b1ca965f08b7f07a8c9c8d064ba571a78733c9e70e4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.1/adversary_2026.9.3-beta.1_linux_arm64.tar.gz"
      sha256 "352b84e89395aeced294ec427ad82a78917fce3ffd8589fb7bfb8d5c7eed0ddc"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
