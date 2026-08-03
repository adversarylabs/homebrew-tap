class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3/adversary_2026.8.3_darwin_amd64.tar.gz"
      sha256 "b8f1ad25f556f5e7fd1664e1f36f260b278e9d20a6a314d9572ef4b9699839ea"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3/adversary_2026.8.3_darwin_arm64.tar.gz"
      sha256 "7873386cf795d2f05feab15708ea0d945d22e463401d81475f3edbb8e20c77b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3/adversary_2026.8.3_linux_amd64.tar.gz"
      sha256 "92edb0834b371efe2b04107de5ae1ffdd58f334fa116a8918b3b875a4e973e7b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3/adversary_2026.8.3_linux_arm64.tar.gz"
      sha256 "d5bd655d372c99a9ba5b304eee36edf1e64999ed4e7a842bf2af25aac8ce52ad"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
