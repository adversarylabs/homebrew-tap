class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.26-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.26-beta.1/adversary_2026.7.26-beta.1_darwin_amd64.tar.gz"
      sha256 "e7d8eaadbc2e8d22ff3b435b5d116ab3cc695b8e4a9ddb22df62840a39129bc6"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.26-beta.1/adversary_2026.7.26-beta.1_darwin_arm64.tar.gz"
      sha256 "e15650c3d23490fe10d98d8436de6263419b1a575f9d4409a1cca291e0417d9e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.26-beta.1/adversary_2026.7.26-beta.1_linux_amd64.tar.gz"
      sha256 "80b8caa24f5bfd53160a3652695ce63d838346d84739d838c9d2c98e5d714a4d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.26-beta.1/adversary_2026.7.26-beta.1_linux_arm64.tar.gz"
      sha256 "a3e97b610107212d45256986a4daac94d4f361f9cb41890409f2d78c53da999f"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
