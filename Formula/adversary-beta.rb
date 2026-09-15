class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.7"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.7/adversary_2026.9.15-beta.7_darwin_amd64.tar.gz"
      sha256 "b726ea8fe13e4e7f0ae5526ed94f463aa29908caffd77e643b5b37407e19033b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.7/adversary_2026.9.15-beta.7_darwin_arm64.tar.gz"
      sha256 "740386fc99ab6577465152c6b298ad294e6ac545bc9aa96b496dd4fac1a13fca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.7/adversary_2026.9.15-beta.7_linux_amd64.tar.gz"
      sha256 "e4919b36b1c3bdeefedd99cd2be4e88836a520c87ff036a424f06d569bcf82f6"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.7/adversary_2026.9.15-beta.7_linux_arm64.tar.gz"
      sha256 "98c0d4e1bb3e112712adc232b3af0ead244e25cddc62de5b821875d5c2be935d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
