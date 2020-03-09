# pins 0.3.2.9000

- Support for DigitalOcean board.

## Pin

- Support for using `pin()` across multiple concurrent processes (#182).

- Support in `pin_get()` to download arbitrary files from cloud boards
  like Azure, DigitalOcean, GitHub, Google Cloud, RStudio Connect, and S3.

- Fix issue where http HEAD requests could timeout and prevent pin from
  downloading in very slow connections.

## RStudio

- `pin()` now refreshes the connections pane.

- `pin_remove()` now refreshes the connections pane.

## RStudio Connect

- Improve error message for `pin_get()` with duplicate names (#171).

## GitHub

- Support for custom GitHub hosts including GitHub Enterprise using the
  `host` parameter in `board_register_github()` (#163).

# pins 0.3.2

## Pins

- `pin_info()` adds support for `metadata` parameter to avoid retrieving pin contents.

## S3

- Added support for `host` parameter to configure "s3.amazonaws.com" to custom locations.

## GitHub

- Fix regression uploading large datasets as release files.

# pins 0.3.1

## Pins

- `pin_info()` prints long character strings in their own line.

- Fixed issue in `pin_remove()` for S3, Azure, GCloud, Google and website boards (#138).

- Fixed issue when pinning complex data frames with nested lists (#142).

## Azure

- Added missing `key` parameter in `board_register_azure()`.

## RStudio

- Fixed connection suggested code when caused by `pin_find()` (#137).

- Fixed connection launcher for Azure connections.

## RStudio Connect

- Fix issue uploading large pins causing `is.character(type) is not TRUE`
  error.

- Fix issue affecting boards registered with trailing slash (#151).

- Improve error messages when a pin fails to be created (#149).

- Added support for `CONNECT_API_KEY` and `CONNECT_SERVER` in place of
  `RSCONNECT_API` and `RSCONNECT_SERVER`, which they are still supported
  for backwards-compatibility.

# pins 0.3.0

- Support for Azure board.

- Support for Google Cloud board.

- Support for S3 board.

## Pins

- `pin()` extracts URLs that end in `.gz` and `zip`, which can be
  disabled with `pin("<url>", extract = FALSE)`.

- `pin()` no longer prints the pin, you can revert this behavior with
  `options(pins.invisible = FALSE)` (#122).

- Show upload progress for files larger than 10mb.

- Avoid changing `data.table` when using `pin()` and `get_pin()`.

- Support for `pin_info()` to describe a pin and `extended = TRUE` in
  `pin_find()` to show all extended information about each pin.

- Support for `extract` parameter in `pin_get()`, `pin()`, and
  `pin_reactive()` to override default file extraction behavior.
  
- Support to extract gzip files when the `R.utils` package is installed.

- Show download progress for files larger than 10mb.

- Support for `I()` to force a pin to be created without additional
  overhead of exporting CSV and other enhancements (#73).

- Support creating automatic `name` when using `pin()` and
  multiple URL.

## Boards

- Avoid "cannot create dir" warning in systems with an
  empty cache folder.
  
## RStudio

- Gracefully handle errors when a pin's preview can't be created.

- Website boards now support the browse menu item in the connection.

- Fix data frames previewing character columns with special
  characters.

- Fix connection code when a board is registered automatically.

## RStudio Connect

- Fix issue where `pin_find()` would not show all available
  pins.

- Fix issue where RStudio Connections pane would not show
  all pins.

- Store all downloaded content under user subfolder insited 
  rsconnect cache.

- Removed `pin_find()` workaround for beta rsconnect server where
  searching was causing timeout.

- Fix for RStudio Connect servers where `/content/` is not 
  used in content URLs.

- Fix issue expanding pins columns in RStudio for pins with
  similar names in RStudio Connect boards.

- Fix issue removing pins with similar names in RStudio
  Connect boards.

## Python

- Support for Python 3.

## Websites

- The `name` parameter in `board_register_datatxt()` is now optional.

- Fix in `pin_find()` to properly search desecription files.

## GitHub

- Various fixes for GitHub boards using the `path` parameter
  when registering the board (#121).

# pins 0.2.0

## RStudio Connect

- Support for retrieving pins shared by others in RStudio
  Connect boards.

- Support for RStudio Connect servers running under a
  subpath in the server.

- Add support for `RSCONNECT_SERVER` environment variable to
  ease configuration of automated RStudio Connect reports.

- Fix intermittent failure to retrieve pins from RStudio
  Connect boards while creating them.

- Fix in RStudio Connect boards to retrieve pins that match
  other pin names (#45).
  
- Fix for data frames with nested data frames in rsconnect
  boards (#36).
  
## GitHub

- `board_register_github()` now checks for the repo to exist (#63).

- Adjusted max upload file to 25mb to avoid "server error" in
  the API, larger files than 25mb uploaded as release files. This
  can be configured using the `pins.github.release` option, which
  deefaults to 25.

- Allow overriding GitHub pin over a pin that partially failed
  to be created.
  
## Boards

- Using a board will attempt to automatically register, such
  that `pin(iris, board = "rsconnect")` would work for
  the default configuration even when the board is not
  explicitly registered (#50).

- Registers "local" board by default, you no longer need to 
  explicitly run `board_register_local()` (#56).

- Make use of the `rappdirs` package to define the default
  cache path, replaces `~/.pins`. Use `board_cache_path()`
  to retrieve default cache path.

## Websites

- Fix for data.txt boards created from GitHub boards using
  large files.

# pins 0.1.2

- Support to upload files larger than 50mb in GitHub boards
  as release files.

# pins 0.1.1

- Fix CRAN request to explicitly opt-in to use local home
  path as cache by running `board_register_local()`.

- Fix error when retrieving pins from Kaggle boards (#31).

- Support for large files in GitHub board (#30).

# pins 0.1.0

- Support for local board.

- Support for Kaggle board.

- Support for packages board.

- Support for RStudio Connect board.

- Support for GitHub board.

- Support for website board.
