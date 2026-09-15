class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.5/adversary_2026.9.15-beta.5_darwin_amd64.tar.gz"
      sha256 "b66ff13976ffb8f9f5268eb6d87397e374f9b8a5408ddb0f02e3db9ac4d39743"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.5/adversary_2026.9.15-beta.5_darwin_arm64.tar.gz"
      sha256 "d31eec900a0366b8405f596cdfed05038d11ea97bb0f4c7830d5c0a426988d1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.5/adversary_2026.9.15-beta.5_linux_amd64.tar.gz"
      sha256 "8b0b4c8c210f648af169348c8b12cff2246b5fc9022b52c04bef08d1c982317b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.5/adversary_2026.9.15-beta.5_linux_arm64.tar.gz"
      sha256 "706fd1a8823531cf97c3eead97160cab906297ecec08b35a6ec87c68a26be7e4"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
