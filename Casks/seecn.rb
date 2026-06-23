cask "seecn" do
  version "0.1.0"
  sha256 "4f3d0b66bd38d71abf22762ddc83d22b18fcc45675ed88d72182dd2f6d2b3883"

  url "https://github.com/XuanLee-HEALER/seecn/releases/download/v#{version}/seecn-macos.zip"
  name "seecn"
  desc "Passive network status sensor for Claude Code CLI sessions"
  homepage "https://github.com/XuanLee-HEALER/seecn"

  depends_on macos: ">= :big_sur"

  app "seecn.app"

  # seecn is not code-signed or notarized, so the zip carries the
  # com.apple.quarantine xattr and Gatekeeper blocks the first launch.
  # Strip it after install so the menu-bar app opens cleanly (same as blowup).
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/seecn.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Logs/seecn",
  ]
end
