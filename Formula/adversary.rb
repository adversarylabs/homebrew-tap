class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.11"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.11/adversary_2026.9.11_darwin_amd64.tar.gz"
      sha256 "40c8c1c766197f64448d5c293d984441137d4e0b68887f9b940aebb193666163"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.11/adversary_2026.9.11_darwin_arm64.tar.gz"
      sha256 "5bcf485f49a9e339b150bb3095ecd2cbf48db143c8b5bcc3c3a0ad1fc2aeb89b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.11/adversary_2026.9.11_linux_amd64.tar.gz"
      sha256 "9ae09f7c02fc9f01819067930a5a22b27535b0fc6b7c053f3ccca1a092e93655"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.11/adversary_2026.9.11_linux_arm64.tar.gz"
      sha256 "6027c39f3d7e0636f10505ed3e0ad4a2465be938b76036da985001cb725564fd"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
