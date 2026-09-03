class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.2/adversary_2026.9.3-beta.2_darwin_amd64.tar.gz"
      sha256 "b4986f16edf88024a4b0769050c3287509c8d1d3b0c578c43dc7d8728098cfb5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.2/adversary_2026.9.3-beta.2_darwin_arm64.tar.gz"
      sha256 "fd19019630541a231d8f831bb8fe17a0b292460432a076cc14ce1fbb06a689d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.2/adversary_2026.9.3-beta.2_linux_amd64.tar.gz"
      sha256 "9544ad42148768e607868797894c797bd0325730bf1aa5a9baf1c46ef27da91d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.2/adversary_2026.9.3-beta.2_linux_arm64.tar.gz"
      sha256 "314fc7cdfa2f407590dd0cfe5ff3b609134972ce35d66a00e9eb3c532e0b0952"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
