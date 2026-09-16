class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.17-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.2/adversary_2026.9.17-beta.2_darwin_amd64.tar.gz"
      sha256 "b0ca3ce7446a8d2eed61394786fa0168bca2258e394e0524dea0f843c72c9f04"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.2/adversary_2026.9.17-beta.2_darwin_arm64.tar.gz"
      sha256 "82740b3fb98cedfdc380de5010e36d7cfffc3b961fb5156c90ff27b311b9741d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.2/adversary_2026.9.17-beta.2_linux_amd64.tar.gz"
      sha256 "a66bd27eaf3a9cb8ee2c0605623d2af6ce087234127b1e1bc5f0002b8a0e47cd"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.2/adversary_2026.9.17-beta.2_linux_arm64.tar.gz"
      sha256 "99a42ec6147715589b2d354a6d255be9797058fb58516d2ffa8d8c1055a5c27b"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
