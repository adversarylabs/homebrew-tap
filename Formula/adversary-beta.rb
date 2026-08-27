class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.27-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.3/adversary_2026.8.27-beta.3_darwin_amd64.tar.gz"
      sha256 "b81e59bf8793bcdf3d75e22f7e823012a74eb6992a82ef20e58cf7ee799c38eb"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.3/adversary_2026.8.27-beta.3_darwin_arm64.tar.gz"
      sha256 "fab9da015fc0c8b6a69e8b5d8592eceea918becabfe8c9af2fe8c13a13d295ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.3/adversary_2026.8.27-beta.3_linux_amd64.tar.gz"
      sha256 "9c4c1ea5988effa8afddf5c34e2a1181bd01c0056995e1189acd3643bd63adc0"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.3/adversary_2026.8.27-beta.3_linux_arm64.tar.gz"
      sha256 "be3a940b0ca5a23fe9ce041e779909478a308d031c63d5a3a8d791906735fa9c"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
