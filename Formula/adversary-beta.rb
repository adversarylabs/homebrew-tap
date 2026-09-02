class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.2-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.4/adversary_2026.9.2-beta.4_darwin_amd64.tar.gz"
      sha256 "1e41b522d8d400867217ec6039c739008e9703a6378e8f3a11c8d35e14424a73"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.4/adversary_2026.9.2-beta.4_darwin_arm64.tar.gz"
      sha256 "be3e4090d447630ce51049a2c7e430c6803d9c41496121e2741bfe95c3a51e67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.4/adversary_2026.9.2-beta.4_linux_amd64.tar.gz"
      sha256 "840c043055dee965a33351a754592171570b8e459274f83603d78dc1e4701fc4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.4/adversary_2026.9.2-beta.4_linux_arm64.tar.gz"
      sha256 "457d28c26fc2e1081733c9d708a504c69af45fb2047e971a7d1bbf64a5d38f56"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
