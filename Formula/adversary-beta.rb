class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/adversary"
  version "2026.9.18-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/adversary/releases/download/2026.9.18-beta.2/adversary_2026.9.18-beta.2_darwin_amd64.tar.gz"
      sha256 "496dd3a68822a9e487f148088f2f57020da8a7052046f3745c0e0730c4856f10"
    end

    on_arm do
      url "https://github.com/doomerlabs/adversary/releases/download/2026.9.18-beta.2/adversary_2026.9.18-beta.2_darwin_arm64.tar.gz"
      sha256 "dc969d934139af1e0849e6130126598b4cf81e85e6d90a00eb03174ff580bf6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/adversary/releases/download/2026.9.18-beta.2/adversary_2026.9.18-beta.2_linux_amd64.tar.gz"
      sha256 "60b1bb14dbc461b07ef933c63646371a134d11f9bd5a4c36e1ab0187be6e4045"
    end

    on_arm do
      url "https://github.com/doomerlabs/adversary/releases/download/2026.9.18-beta.2/adversary_2026.9.18-beta.2_linux_arm64.tar.gz"
      sha256 "654097415cb1df3acbd3ada193100558064d03222289a1471f403116a0c7a355"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
