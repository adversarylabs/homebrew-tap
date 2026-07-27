class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.28-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.5/adversary_2026.7.28-beta.5_darwin_amd64.tar.gz"
      sha256 "bbd08b829b74a0320480c92f1322c44eb645897fb3eb7986869ec88eeb7abcd8"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.5/adversary_2026.7.28-beta.5_darwin_arm64.tar.gz"
      sha256 "bc1159488734e684c0dd4a0775ca0a0e59141fae90efc44ce4b17b75b1eaa8a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.5/adversary_2026.7.28-beta.5_linux_amd64.tar.gz"
      sha256 "bf11c033e8e3f038b0d2df804141bacdc50b9e02b7dae5230f9520eca70e903e"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.5/adversary_2026.7.28-beta.5_linux_arm64.tar.gz"
      sha256 "3b74549394c3e65951a361c2247d1dba87f080655af74ed7f61e65649dca1ace"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
