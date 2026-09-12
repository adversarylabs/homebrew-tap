class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.12-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.4/adversary_2026.9.12-beta.4_darwin_amd64.tar.gz"
      sha256 "aa54272c9b038ab57e53fd1bdd3892cd6951713983c73961d1a97f0eef3f3cc4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.4/adversary_2026.9.12-beta.4_darwin_arm64.tar.gz"
      sha256 "a0ccbd9a950694f20ff94bf8f3215936d97367b677f42ad5e0fb755f9a2d2cec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.4/adversary_2026.9.12-beta.4_linux_amd64.tar.gz"
      sha256 "110b81c9b115e92db8547ea2e285f003abb168facaef14f89afb1191209894f4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.4/adversary_2026.9.12-beta.4_linux_arm64.tar.gz"
      sha256 "838401adb0784e6c9fb1c66062177596770674a5bb44a31977a49b1177528768"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
