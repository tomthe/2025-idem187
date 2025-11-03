library(httr)

cookies = c(
  `_user_attributes` = '{"curr":"EUR"}',
  bev = "1762182567_EAYTEwYWMxNmMxMj",
  everest_cookie = "1762182567.EANjljNWI2N2FhZmVjNW.B6B-_7NBfNf3R72FxOLZMOFiknX-oEp-oBGAah3FqDE",
  country = "DE",
  ak_bmsc = "7710529EAB1FF2789E5784423665FF2C~000000000000000000000000000000~YAAQRrMUAoJ5byaaAQAACBdESh2TcdtYnE yVKo4lQTqPtQxyQaB/ITrVSzQV2 XoNjSpcWXbLzBY0c cnbmkSgRmt4Zhkih7xv4XooXO/SL12yamIoAhWmGi3a2pASJKgytzd7iZxQ5IHITzIums pF4 tdSS/okNc7kEVUbJsafOzXcaMyDTUaMsJQ/nuiDhmFDRtf6gS pUMe1Qh0kSzrJ0m8GqP1wmcwlSSB9ULhROr8kZXLDWVNSEg4lG3yb1TKJxPX0xIn3u9BGiP9Ez4vUlD2PjZqUbbQuDt/NjYjNWbSZilGbMtlTO T mjtgxou8P5/ipwA5zWjOS8PifWUvl9yTzf0u72JnbtjwOCPvQZfzupnEu8 HznAqPJFP5JROJz6E6BgLEw=",
  previousTab = '{"id":"ae431055-837c-4a95-8053-5b29ef5f7819"}',
  jitney_client_session_id = "c16dcce1-ddec-45f2-bf85-b5e0e5b863de",
  jitney_client_session_created_at = "1762182568.479",
  `_cci` = "cban:ac-13796b1c-88ec-4f8d-9c92-628783f1a039",
  `_ccv` = "cban:0_183215=1,0_200000=1,0_183345=1,0_183243=1,0_183216=1,0_179751=1,0_200003=1,0_200005=1,0_179754=1,0_179750=1,0_179737=1,0_179744=1,0_179739=1,0_179743=1,0_179749=1,0_200012=1,0_200011=1,0_183217=1,0_183219=1,0_183096=1,0_179747=1,0_179740=1,0_179752=1,0_183241=1,0_200007=1,0_183346=1,0_183095=1,0_210000=1,0_210001=1,0_210002=1,0_210003=1,0_210004=1,0_210010=1,0_210012=1,0_210008=1,0_210016=1,0_210017=1,0_210018=1,0_210020=1,0_210021=1,0_210022=1",
  cfrmfctr = "MOBILE",
  cbkp = "1",
  frmfctr = "compact",
  jitney_client_session_updated_at = "1762183148.199",
  bm_sv = "E2C07FC1C6BDC374A3285EFDE0570A03~YAAQYrMUAt1o7y aAQAAaPlMSh3TDeEYS IaZWwfvD9NhJqYDtaRmZPA nyDhT4i9CIQGA62qXsqKBgPAifSbfoS0HY36qO7W4LoHKcxfYL874Xaw/jN4oFVGc1Mi V/SaTiFxL 8FbFv8Eh0cawNSvjIodBZ9eQZIunw9W2FxRB1UVtRNeNZROWTdtgyqI/FnHBsbMUMH9afi/aCKH7Zu5aGktsIW Hag7rJG Zr7qhYZfJPnkMYZhtvQJ1LCdL g==~1"
)

headers = c(
  accept = "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7",
  `accept-language` = "en,de;q=0.9,de-DE;q=0.8,en-GB;q=0.7,en-US;q=0.6",
  `cache-control` = "max-age=0",
  ect = "4g",
  priority = "u=0, i",
  referer = "https://www.google.com/",
  `sec-ch-device-memory` = "8",
  `sec-ch-dpr` = "1.5",
  `sec-ch-ua` = '"Chromium";v="142", "Microsoft Edge";v="142", "Not_A Brand";v="99"',
  `sec-ch-ua-mobile` = "?0",
  `sec-ch-ua-platform` = '"Windows"',
  `sec-ch-ua-platform-version` = '"19.0.0"',
  `sec-ch-viewport-width` = "735",
  `sec-fetch-dest` = "document",
  `sec-fetch-mode` = "navigate",
  `sec-fetch-site` = "same-origin",
  `sec-fetch-user` = "?1",
  `upgrade-insecure-requests` = "1",
  `user-agent` = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0"
)

params = list(
  `refinement_paths[]` = "/homes",
  date_picker_type = "calendar",
  checkin = "2025-12-24",
  checkout = "2025-12-26",
  source = "structured_search_input_header",
  search_type = "user_map_move",
  query = "Rostock",
  place_id = "ChIJNzjcO6xQrEcRw55Zj-bj9tI",
  `flexible_trip_lengths[]` = "one_week",
  monthly_start_date = "2025-12-01",
  monthly_length = "3",
  monthly_end_date = "2026-03-01",
  search_mode = "regular_search",
  price_filter_input_type = "2",
  price_filter_num_nights = "2",
  channel = "EXPLORE",
  ne_lat = "54.0",
  ne_lng = "12.0",
  sw_lat = "54.0",
  sw_lng = "12.0",
  zoom = "13.666960253138365",
  zoom_level = "13.666960253138365",
  search_by_map = "true",
  drawer_open = "false"
)

res <- httr::GET(url = "https://www.airbnb.com/s/Rostock/homes", httr::add_headers(.headers=headers), query = params, httr::set_cookies(.cookies = cookies))
res
