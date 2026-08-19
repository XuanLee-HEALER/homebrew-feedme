# 由 XuanLee-HEALER/edev 的 release workflow 自动生成,别手改
class Edev < Formula
  desc "Diagnose and clean up services holding your local dev ports"
  homepage "https://github.com/XuanLee-HEALER/edev"
  url "https://github.com/XuanLee-HEALER/edev/releases/download/v0.1.0/edev-0.1.0-macos-universal.tar.gz"
  sha256 "f73b1e2048344a60fe132ac1dbcac96edd3723cf29e1031f873c33a514434b5d"
  license "GPL-2.0-only"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "edev"
  end

  test do
    assert_match "edev #{version}", shell_output("#{bin}/edev --version")
  end
end
