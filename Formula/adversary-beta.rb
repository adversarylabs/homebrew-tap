class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.14-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.2/adversary_2026.8.14-beta.2_darwin_amd64.tar.gz"
      sha256 "ca3e89ad0a253e3f2593223502f7e572f337f9003e1d83a7f88f32a390d754ed"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.2/adversary_2026.8.14-beta.2_darwin_arm64.tar.gz"
      sha256 "dfa32d0f6ce7bb7346ed32d3fb7b102d09f1ef9cfc1d386f152e36a9b29d6bed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.2/adversary_2026.8.14-beta.2_linux_amd64.tar.gz"
      sha256 "4de92a138581c366dae647be2790a0154d66b318e4701bb3c2320dd3e0016add"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.2/adversary_2026.8.14-beta.2_linux_arm64.tar.gz"
      sha256 "6dd42f7643f390349036f59b709c8fd523b439b832eec6c9241089e247cc03a8"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
