class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.3-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3-beta.2/adversary_2026.8.3-beta.2_darwin_amd64.tar.gz"
      sha256 "0e4651a3e3c31ec9abcecebc658d4cf490f847eaea6b1789f85f46d2e4539abe"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3-beta.2/adversary_2026.8.3-beta.2_darwin_arm64.tar.gz"
      sha256 "9525a3fc2c1e1f0c13c250f4901e59658f421479eb1f75099101e3c956ce1adc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3-beta.2/adversary_2026.8.3-beta.2_linux_amd64.tar.gz"
      sha256 "bc14fc4f555ab9117d012671d1e6624e0a3156e63cb84b505df1ab02e5be409e"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3-beta.2/adversary_2026.8.3-beta.2_linux_arm64.tar.gz"
      sha256 "9bd2f25dc7b9fd155a8c083eb73d631d71192f386dac77d60070aebec2a55858"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
