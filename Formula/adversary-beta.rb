class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.12-beta.8"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.8/adversary_2026.9.12-beta.8_darwin_amd64.tar.gz"
      sha256 "06cc7aa10511c0a607d4bdc113a6abe7fe91ab916044c77fe68d3ae86546ecc4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.8/adversary_2026.9.12-beta.8_darwin_arm64.tar.gz"
      sha256 "1dbec2c7449ae41f93c4bc3427a97020b090bc8fac4da14e3d07d09667bf01e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.8/adversary_2026.9.12-beta.8_linux_amd64.tar.gz"
      sha256 "f24e9432518a2b0f35457735f637f03be7d425f2a292eb1b89632a6583bd71ab"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.8/adversary_2026.9.12-beta.8_linux_arm64.tar.gz"
      sha256 "ca7a35eb2f03abd31bbe1c1329f7108ee6bfa9ea9aaca9ca7cfcc5c5b37bdcbb"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
