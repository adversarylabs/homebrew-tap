class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.4/adversary_2026.9.15-beta.4_darwin_amd64.tar.gz"
      sha256 "a0073cae35ec6e1fa890b2ca874efd3f82438837884fc777ed526093ac8746a1"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.4/adversary_2026.9.15-beta.4_darwin_arm64.tar.gz"
      sha256 "a535d6d7b8209279b10ed32444dc0ab14f264a93b341760dacfdaf6d1b7c2f8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.4/adversary_2026.9.15-beta.4_linux_amd64.tar.gz"
      sha256 "1eb2f0d15e74470042c42e153b2bd64a81d1ac4cc8d78f210a43bc3f0985e7eb"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.4/adversary_2026.9.15-beta.4_linux_arm64.tar.gz"
      sha256 "3e61e151c02d4cfb02d319c0f1dd40eefc8787ce462495e9681544a54749094d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
