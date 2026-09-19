class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.20-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.1/doomer_2026.9.20-beta.1_darwin_amd64.tar.gz"
      sha256 "4bf57dba0c16fdf8980f8d2e96c36af6870c55b2ba5ba40839b9e1e5e94e1170"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.1/doomer_2026.9.20-beta.1_darwin_arm64.tar.gz"
      sha256 "ca7de90c95387767886a780b3678889dfb47e03d17874ef81cace5abe1ad3e36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.1/doomer_2026.9.20-beta.1_linux_amd64.tar.gz"
      sha256 "9237723437d1e4efb2e0c843dcd80a3f8f56bb50fc4f628d22a444d1dd9fdaab"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.1/doomer_2026.9.20-beta.1_linux_arm64.tar.gz"
      sha256 "bee47ad25c17286dcc38f015b2b8686ee020943e64e84965e052b0aa9209c7df"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
