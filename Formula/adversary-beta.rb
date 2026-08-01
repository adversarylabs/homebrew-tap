class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.1-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.2/adversary_2026.8.1-beta.2_darwin_amd64.tar.gz"
      sha256 "f3f0203cfaeb534446d45547f913275bf3dc97119327174d6713556c24c7f32c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.2/adversary_2026.8.1-beta.2_darwin_arm64.tar.gz"
      sha256 "cc34f194e9c6332294832c141d570320cf319a016f0b4390c69746e7ce4746b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.2/adversary_2026.8.1-beta.2_linux_amd64.tar.gz"
      sha256 "1624d09b656129ee90ea99b75af4787ab108d2fc13dcd3d74539c0a3a7d5502a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.2/adversary_2026.8.1-beta.2_linux_arm64.tar.gz"
      sha256 "c7c63cb00cce746e68b9d66faad4bc6386c1c24a85472429add8261054212e75"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
