class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.9-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.4/adversary_2026.9.9-beta.4_darwin_amd64.tar.gz"
      sha256 "acfa4f54429be749e05ec291a85c982a4f5981fb9ae717c19dddc6a4b04a9758"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.4/adversary_2026.9.9-beta.4_darwin_arm64.tar.gz"
      sha256 "6740d477b8b86589215d5faba7dd3c6f4388ba9b5517e07300b0c443a8f16057"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.4/adversary_2026.9.9-beta.4_linux_amd64.tar.gz"
      sha256 "c09a876cf94f5abbe3fee0d614099f6a30a435837a97beb0bd4bb9d30bd8f5bb"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.4/adversary_2026.9.9-beta.4_linux_arm64.tar.gz"
      sha256 "3d32097a99a508b36603a057cb8da580d56d14c78b42188916a5cc6cf05bf675"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
