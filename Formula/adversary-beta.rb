class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.8"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.8/adversary_2026.9.15-beta.8_darwin_amd64.tar.gz"
      sha256 "00427fd64b700353bf018b3f169a1ec0bc2eb8504373c7914799dd36f03ec749"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.8/adversary_2026.9.15-beta.8_darwin_arm64.tar.gz"
      sha256 "05bf235d4b0a121ba76eaaaae2bc0bc52245ddcf106c09ccd63f021fa0963638"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.8/adversary_2026.9.15-beta.8_linux_amd64.tar.gz"
      sha256 "01197bdbac8737c7d4cce517389a5cc73300f5a116442199f6b6e1966380cd92"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.8/adversary_2026.9.15-beta.8_linux_arm64.tar.gz"
      sha256 "df18f5d1f4c681aacf9d516f5cba5f545e519e8427fff762befc290875547f2c"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
