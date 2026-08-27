class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.27-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.5/adversary_2026.8.27-beta.5_darwin_amd64.tar.gz"
      sha256 "a594ee534e07bb5cdf6fbfc3e74a954f008789b351768adc26b082078b3e1f0f"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.5/adversary_2026.8.27-beta.5_darwin_arm64.tar.gz"
      sha256 "ac0b5726f1b3c6aa1ba302e7c73d542d17b63d85e887944ed52a3a633bab258e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.5/adversary_2026.8.27-beta.5_linux_amd64.tar.gz"
      sha256 "49ec00f32b563369026800292eefbb9906d1f2eb5395162146f1a76ef5c225bc"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.5/adversary_2026.8.27-beta.5_linux_arm64.tar.gz"
      sha256 "5e87cd64979254b3562c01c1901b896409807a4db7c45f8986b99f3786fbe745"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
