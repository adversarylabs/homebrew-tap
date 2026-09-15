class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.11"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.11/adversary_2026.9.15-beta.11_darwin_amd64.tar.gz"
      sha256 "8196d4688c1b08d8f844c2fa5a8241644703589002cf5d91ddbe3a6d26a88c30"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.11/adversary_2026.9.15-beta.11_darwin_arm64.tar.gz"
      sha256 "9fe7bda126f4b8a84f4d6b63853649907d9a1476e9879e5ddea39ac3483ee01f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.11/adversary_2026.9.15-beta.11_linux_amd64.tar.gz"
      sha256 "246dc65c0dda8adbd433eadf595f55df6eb54885930736930b27e9406eb3ef17"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.11/adversary_2026.9.15-beta.11_linux_arm64.tar.gz"
      sha256 "7e7ec6dcb92faf9b3ebc94462effea4002bfd0c06cfb6a109333f31b2634bc6c"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
