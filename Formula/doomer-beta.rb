class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.20-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.5/doomer_2026.9.20-beta.5_darwin_amd64.tar.gz"
      sha256 "76f9f718f58f49f23a5e48aa9b814ad1a45570e0a00729258d61759ab4017318"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.5/doomer_2026.9.20-beta.5_darwin_arm64.tar.gz"
      sha256 "24483e78824cce1d3765f01f8a89f3e188a94c6941ce29f0a64f00c88966a446"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.5/doomer_2026.9.20-beta.5_linux_amd64.tar.gz"
      sha256 "93add2bb92218a3001555fc69621c051715b21378f1b9912c3287232d7e21342"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.5/doomer_2026.9.20-beta.5_linux_arm64.tar.gz"
      sha256 "0d3fa34c6989d9143c5817a89198ffa7deb33eed0dfb5deb4ff11b79a93a57ec"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
