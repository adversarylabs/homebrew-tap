class DoomerBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/doomerlabs/doomer"
  version "2026.9.20-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.4/doomer_2026.9.20-beta.4_darwin_amd64.tar.gz"
      sha256 "7907b66496495b9bfaf0656d8d160f028908fc962d90842c57758710737e62c5"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.4/doomer_2026.9.20-beta.4_darwin_arm64.tar.gz"
      sha256 "11900945df90109f166a46513e9e3e48b34a6abbae31af6fda65672caa0f10d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.4/doomer_2026.9.20-beta.4_linux_amd64.tar.gz"
      sha256 "453e629b15b3d761882612ee8722cbdca2b695c05d60d483b2729e19be4df9df"
    end

    on_arm do
      url "https://github.com/doomerlabs/doomer/releases/download/2026.9.20-beta.4/doomer_2026.9.20-beta.4_linux_arm64.tar.gz"
      sha256 "2100c568c5ec0303923fde042fce5975cdd6806f48a37d750bbe1aa725cec109"
    end
  end

  def install
    bin.install "doomer" => "doomer-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/doomer-beta version")
  end
end
