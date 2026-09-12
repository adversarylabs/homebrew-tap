class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.12-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.2/adversary_2026.9.12-beta.2_darwin_amd64.tar.gz"
      sha256 "82e2e7fec5e4735afeb7c83b404eb2fd982bb1f67d0c8f1c9bbf8d7ac83550b3"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.2/adversary_2026.9.12-beta.2_darwin_arm64.tar.gz"
      sha256 "a4791c1b04bffcd7601475d7858ebeaa1e4defec6b59e0f40505fd8209200a0f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.2/adversary_2026.9.12-beta.2_linux_amd64.tar.gz"
      sha256 "c9418b5d1a3bb1ffdec5fd6fbe690c71c888b32a5ca8121ffc4036589c8cdb15"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.2/adversary_2026.9.12-beta.2_linux_arm64.tar.gz"
      sha256 "a96f802ff2ecd91a0a087844a7503aa173cd4fe57b5b4a6e98ae9a04807b2f49"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
