class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.28-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.28-beta.1/adversary_2026.8.28-beta.1_darwin_amd64.tar.gz"
      sha256 "7bcc6deca17b216c11a53d38461043af0325cba7999490abe90eddbd0c5c6482"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.28-beta.1/adversary_2026.8.28-beta.1_darwin_arm64.tar.gz"
      sha256 "98b4c61ffe416219fb7e616a92db85ed27d54110e75d03c4a774390723211c11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.28-beta.1/adversary_2026.8.28-beta.1_linux_amd64.tar.gz"
      sha256 "a6459102a811647e8bbd78d18464971899c6927593559e6833835a7beb2e8cd7"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.28-beta.1/adversary_2026.8.28-beta.1_linux_arm64.tar.gz"
      sha256 "7408da6a57143f42becd703913de53c3c859924821adaa486c0f4604a0d8c27b"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
