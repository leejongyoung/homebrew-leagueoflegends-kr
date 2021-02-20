cask "league-of-legends-kr" do
  version :latest
  sha256 :no_check

  url "https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.kr.zip",
  name "League of Legends"
  homepage "https://na.leagueoflegends.com/ko-kr/"

  auto_updates false

  app "Install League of Legends kr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.riotgames.maccontainer.sfl*",
    "~/Library/Saved Application State/com.riotgames.LeagueofLegends.GameClient.savedState",
    "~/Library/Saved Application State/com.riotgames.LeagueofLegends.LeagueClientUx.savedState",
    "~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist",
    "~/Library/Caches/com.riotgames.LeagueofLegends.LeagueClient",
    "/Users/Shared/Riot Games",
  ],
      rmdir: [
        "~/Documents/League of Legends",
        "/Users/Shared/Riot Games/Riot Client.app",
        "/Users/Shared/Riot Games/Metadata",
        "~/Library/Application Support/Riot Games/League of Legends",
        "~/Library/Application Support/Riot Games/Install League of Legends",
      ]
end