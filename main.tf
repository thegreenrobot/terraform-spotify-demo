terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.7"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

resource "spotify_playlist" "playlist" {
  name        = "Better living through Automation"
  description = "A bunch of rando songs that rattle around in my head rent free. Managed via Terraform."
  public      = true

  tracks = [
    "0c2OTdcvtEtz3EEoNrs3ge",
    "3HMOMdRPywfouYx5B4PvaH",
    "3QuzslMgjJGsw6wC1E9eRi",
    "6kjNwoSgt7F3cQ5sru8ylO",
    "2ewqljni8eLyJGQ14StbPB",
    "51dEuOWi7oP68iKMBkpvYA",
    "2M53FYJ8EE9pyZNHIr43Zo",
    "09JxX9P3dqSl0I3lDGrTie",
    "5HakR2lfKC0gmbjBmMmqwg",
    "3clIHVzJ9J2rvvrFUKLICo",
  ]
}
