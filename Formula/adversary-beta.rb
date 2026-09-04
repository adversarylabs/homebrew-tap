class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.8"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.8/adversary_2026.9.3-beta.8_darwin_amd64.tar.gz"
      sha256 "beb6d1c39c18bab998b7d323660e79e47a84a4216db3cc1fc1915e1c506faf95"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.8/adversary_2026.9.3-beta.8_darwin_arm64.tar.gz"
      sha256 "bd817bce35ef429c6a33056714fe154b4cffc0b5867b9017a14a46685c39c136"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.8/adversary_2026.9.3-beta.8_linux_amd64.tar.gz"
      sha256 "6175e5ffd0ff380a7ee6f9e0e62a84c0e12a78b4c9c11d7b737c5d198d17568a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.8/adversary_2026.9.3-beta.8_linux_arm64.tar.gz"
      sha256 "fecbb22e261f36806141c4ab5af0ec0c26e103154db89071c2500f2695cc177a"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
