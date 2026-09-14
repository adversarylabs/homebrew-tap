class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.1/adversary_2026.9.15-beta.1_darwin_amd64.tar.gz"
      sha256 "ab612aa6b8a0c125fd3b02586944bd9523417dbce1da06171e02ae018af96946"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.1/adversary_2026.9.15-beta.1_darwin_arm64.tar.gz"
      sha256 "fd38bd6b16e6e76d270f31020b96f6ab33af75ef15b95cb897d96a2fae015795"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.1/adversary_2026.9.15-beta.1_linux_amd64.tar.gz"
      sha256 "24ed733465e0400005016624f3c6b65235def3e39cd2c34684bcb53dec5b565c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.1/adversary_2026.9.15-beta.1_linux_arm64.tar.gz"
      sha256 "343f8712132b2ebd84111a0030bf5518230441f12e89b93985cda7a8292451a9"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
