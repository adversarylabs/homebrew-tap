class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.11"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.11/adversary_2026.9.3-beta.11_darwin_amd64.tar.gz"
      sha256 "04e06e6249b44f1699a371146cad7823a2204326215d1ff6df1a71049f9ce166"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.11/adversary_2026.9.3-beta.11_darwin_arm64.tar.gz"
      sha256 "9aa1f2f05c8fe0fd60785cf024ae53d4aae953b349cc0570e5e57b8c9f023a9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.11/adversary_2026.9.3-beta.11_linux_amd64.tar.gz"
      sha256 "6e4bc17ee027c26562f741ab18de9a5b55af710b2e6d7d478a3ca362d6c9ff54"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.11/adversary_2026.9.3-beta.11_linux_arm64.tar.gz"
      sha256 "9dd55d7c3ecb8264f5a1dfb5d32b829518d0aa18ee1a398a06ad18479e7d53b4"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
