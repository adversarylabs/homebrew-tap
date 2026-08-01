class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.1-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.3/adversary_2026.8.1-beta.3_darwin_amd64.tar.gz"
      sha256 "747a9a7865d65ee6281c1a2e7f4b14fd7474be1a53232686130916e0bbe2fcf0"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.3/adversary_2026.8.1-beta.3_darwin_arm64.tar.gz"
      sha256 "e71e575fdb486d5598d931f81d841d8d8ae393b828f4d66e90430ab8c380ed95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.3/adversary_2026.8.1-beta.3_linux_amd64.tar.gz"
      sha256 "878ef08921ed99adc6936dc810510936a1172a736f1b8515c053c7b9cb51cf81"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.3/adversary_2026.8.1-beta.3_linux_arm64.tar.gz"
      sha256 "5617b33bdb1dee3f6a50d5285b2147211373dd3c7d3f34b7f306852a13b00424"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
