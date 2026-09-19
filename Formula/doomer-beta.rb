class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.20-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.3/doomer_2026.9.20-beta.3_darwin_amd64.tar.gz"
      sha256 "f3006a30b434df190356565d126536fa5c510fe8330897ef0aa3c266d19a7c5d"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.3/doomer_2026.9.20-beta.3_darwin_arm64.tar.gz"
      sha256 "96f026c6da691997d1910d81d609894a51c03edd39d955ea2db25ba79a9466ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.3/doomer_2026.9.20-beta.3_linux_amd64.tar.gz"
      sha256 "22fe8185664de1e1340968090487454663e7496b94601911f595a9299bbfe05c"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.3/doomer_2026.9.20-beta.3_linux_arm64.tar.gz"
      sha256 "da80b4d2fe2998e4aa18a06706abcc44397a79268fc6df63a6a57b5cb1c44f46"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
