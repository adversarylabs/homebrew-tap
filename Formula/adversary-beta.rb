class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.9"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.9/adversary_2026.9.3-beta.9_darwin_amd64.tar.gz"
      sha256 "3947b38485b6ec2fa280377ebc26072bdd9947ef792307786e6414c4d926e3a9"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.9/adversary_2026.9.3-beta.9_darwin_arm64.tar.gz"
      sha256 "50e4894f7cfd5a9e78c252394d88f967105b69363ea9f0e631e65ec2feffcc11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.9/adversary_2026.9.3-beta.9_linux_amd64.tar.gz"
      sha256 "c47c5d20ed7bff60c0280ed7a0257238847286424514cf45986c5e8276e4da45"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.9/adversary_2026.9.3-beta.9_linux_arm64.tar.gz"
      sha256 "e05dbcddf86d203cac98b29c54d52708ef8acdc42128e6edbc7ec5180cba8788"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
