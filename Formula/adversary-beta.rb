class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.9-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.1/adversary_2026.9.9-beta.1_darwin_amd64.tar.gz"
      sha256 "41af5780bffd8924296690e8a273cd128e33ade5a5bf71d498a74bf985edc8e5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.1/adversary_2026.9.9-beta.1_darwin_arm64.tar.gz"
      sha256 "2a11e93b71233d651323b4cbd7fc75a743731ca822dbc1839a2de6d7cface5f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.1/adversary_2026.9.9-beta.1_linux_amd64.tar.gz"
      sha256 "2c7e45a0200506645ed6bca6de1639b22323bba3f64f86e981e9df68901408d3"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.1/adversary_2026.9.9-beta.1_linux_arm64.tar.gz"
      sha256 "f2a566770fcac0139ce73a31bbea6e6d5fb2b97277e8e98f0956bd5ba846649d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
