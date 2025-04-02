# cURL : command-line tool for transferring data using various network protocols.

Basic command template:  `curl [options] <URL>`

| Option | Description | Template |
|--------|-------------|----------|
| `-O` | Save with original filename | `curl -O <URL>` |
| `-o <file>` | Save as a specific filename | `curl -o filename <URL>` |
| `-L` | Follow redirects | `curl -L <URL>` |
| `-C -` | Resume a download | `curl -C - -O <URL>` |
| `-X <method>` | Specify HTTP method (GET, POST, PUT, DELETE) | `curl -X POST <URL>` |
| `-d "<data>"` | Send POST data (Request body) | `curl -X POST -d "key=value" <URL>` |
| `-H "<header>"` | Send custom headers (one key:value at a time) | `curl -H "User-Agent: custom" | <URL>` |
| `-u user:pass` | Basic authentication | `curl -u user:pass <URL>` |
| `-H "Authorization: Bearer <token>"`| Bearer Token Auth  | `curl -H "Authorization: Bearer YOUR_TOKEN" https://api.example.com/secure`|
| `-v` | Verbose mode (progress bar + response details) | `curl -v <URL>` |
| `-s` | Silent mode (no progress bar) | `curl -s <URL>` |
| `-i` | view response headers | `curl -i https://example.com`|
| `--proxy <ADDRESS>:<PORT>` | set a proxy | `curl --proxy <ADDRESS:PORT>` |
| `--help` | Get help with an option | `curl --help [option]`|

## Example: HTTP POST request with headers and body to an API
```sh
curl -X POST -H "Content-Type: application/json" -d '{"user":"lara","pass":"1234"}' https://api.example.com/login
```

# Homebrew : a package manager for macOS and Linux (command-line tool to install, update, and manage software).

Basic command template: `brew [command] [options] <package>`

| Command |  Description | Template |
|--------|-------------|----------|
| `brew install [optional: --cask] <package>` | Install a package (formula [CLI] or cask [GUI]) | `brew install wget` |
| `brew uninstall <package>`  | Remove a package    | `brew uninstall wget` |
| `brew list` | List installed packages | `brew list` |
| `brew update` | Update Homebrew itself | `brew update` |
| `brew upgrade` | Upgrade all installed packages | `brew upgrade`|
| `brew upgrade <package>` | Upgrade a specific package | `brew upgrade wget` |
| `brew tap <user/repo>` | Adding a tap (GitHub Repository) | `brew tap <user/repo>` |
| `brew untap <user/repo>` | Removing a tap (GitHub Repository) | `brew untap <user/repo>`  |
| `brew outdated` | Show packages that can be updated | `brew outdated` |
| `brew info <package>` | Get details about a package    `brew info wget`|
| `brew doctor` | Diagnose and fix potential issues    `brew doctor` |
| `brew cleanup` | Remove outdated versions and free up space | `brew cleanup` |
| `brew autoremove` | Remove unnecessary dependencies | `brew autoremove`|
| `brew search <name>` | Search for a package | `brew search python` |
| `brew info <package>` | Show package details | `brew info node` |
| `brew config` | Show system and Homebrew configuration | `brew config`|
| `brew deps <package>` | List dependencies of a package | `brew deps ffmpeg`|
| `brew missing` | Check for missing dependencies | `brew missing` |
| `brew -v`  | to check the version |
| `brew help [COMMAND]` | to learn about a homebrew command |

# YAML: YAML Ain't Markup Language.

A data-serialization language that is used for storing, transmitting, and reconstructing arbitrary data. Most commonly as data exchange online and configuration files for tools.

```yaml
# welcome to Lara's YAML crashcourse

receipt: Oz-Ware Purchase Invoice
date: 2012-08-06
customer:
  first_name: Dorothy
  family_name: Gale

# notice how you can do strings without quotation marks, except yes, no, on , off bc theyre technically keywords here, alt booleans lol
# use _ instead of a blank space, and | at the top if you want a multiline string
# when you indent with - its like ur defining a list/array []
# you could also just prefix the whole thing with !!set and then skip the dash indentations but they gotta be unique n unordered bc sets
items:
  - part_no: A4786
    descrip: Water Bucket (Filled)
    price: 1.47
    quantity: 4

  - part_no: E1628
    descrip: High Heeled "Ruby" Slippers
    size: 8
    price: 133.7
    quantity: 1
```

```yaml
# when you do | above multi-line text ur allowing it to be multi-line. Literal Block
# also yea you can nest maps inside one another
bill-to: &id001
  street: |
    123 Tornado Alley
    Suite 16
  city: East Centerville
  state: KS

# * and &: relational anchors
# & defines an anchor label
# * references an anchor label
# this is used for repeated nodes. when you want 2 fields to share the same value.

# use <<: *anchor when you wanna merge maps. it's like spread (...) except for maps only.

default_settings: &defaults
  theme: dark
  language: EN

user_settings:
  <<: *defaults # u could also merge more than one map if you did <<: [*defaults, *id001]
  language: FR

ship-to: *id001
# when you do > it replaces newlines with spaces. Folded Block
specialDelivery: >
  Follow the Yellow Brick
  Road to the Emerald City.
  Pay no attention to the
  man behind the curtain.

# also JSON is valid YAML, because YAML is a strict superset of JSON.
# both are data serialization languages, meaning they're used for data exchange and configuration files
# serialization means storing, transmitting, and reconstructing arbitrary data.

sex: { "name": "A" } # strings r optional doe, also this is called flow style

gender:
  name: A #now this is block style

# ~ = null

# yaml also has explicit types: int, bool, float, str, timestamp, null and binary for base64 binrary data, u can store pics like this here
# speaking of booleans, true/false can be yes/no here lol
# !![type name] [value]

iraq: !!str shithole

# key: value

# keys can be complex (dicts/maps or lists/arays) when prefixed by ?

? { name: "sexy mama", age: 45 }: !!bool true # u can also use block style here

my_love_for_joory: .inf
# .inf = infinity
# -.inf = negative infinity
# .nan = not a number (like javascript's NaN)

# there are also escape sequences like \n \0 \\ \t \"

# and you can store more than one yaml document in one file

# --- starts new document
# you can leave ... atthe endto say no more docs
```

# JSON: JavaScript Object Notation

Same as YAML, but different syntax that makes it less human-readable, but more machine friendly.

Machine friendly in this context means that it gets parsed quicker.

An even more machine friendly version is BSON, used by the NoSQL database MongoDB. It is basically JSON but binary.

```json
{
  "key": "value",

  "keys": "must always be enclosed in double quotes",
  "numbers": 0,
  "strings": "Hellø, wørld. All unicode is allowed, along with \"escaping\".",
  "has bools?": true,
  "nothingness": null,

  "big number": 1.2e+100,

  "objects": {
    "comment": "Most of your structure will come from objects.",

    "array": [0, 1, 2, 3, "Arrays can have anything in them.", 5],

    "another object": {
      "comment": "These things can be nested, very useful."
    }
  },

  "silliness": [
    {
      "sources of potassium": ["bananas"]
    },
    [
      [1, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 1, "neo"],
      [0, 0, 0, 1]
    ]
  ],

  "alternative style": {
    "comment": "check this out!"
  , "comma position": "doesn't matter, if it's before the next key, it's valid"
  , "another comment": "how nice"
  },



  "whitespace": "Does not matter.",



  "that was short": "And done. You now know everything JSON has to offer."
}
```

# Git: a distributed version control system used to track changes in source code during software development. Also useful for collaboration.

Basic command template: `git [command] [options] [arguments]`

| Command |  Description | Template |
|--------|-------------|----------|
**Setup**
| `git config --global user.name “[firstname lastname]”` | set a name that is identifiable for credit when review version history |
| `git config --global user.email “[valid-email]”` | set an email address that will be associated with each history marker |
**Initialization**
| `git init` | Create a new git repo in your folder |
| `git clone <repository-url>` | Clone an existing repository (from GitHub) into your folder |
| `git status` | Check the current status of your repository files (which are modified, staged, or untracked) |
**Workflow**
| `git add <file>` / `git add .` for all files | Adds files to the staging area, prepares changes to be committed (saved) |
| `git rm <file>` | delete the file from project and stage the removal for commit |
| `git mv [existing path] [new path]` | ... 
| `git commit -m "commit message"` | Commits changes to the local repository, the message describes what changed |
| `git log` | Views your commit history |
| `git remote add origin <repository-url>` | Links the local repository to a remote Git repository on GitHub |
| `git push <alias: usually 'origin'> <branch-name: usually 'main'>` | Push committed changes to a remote repository | 
| `git pull <alias: usually 'origin'> <branch-name: usually 'main'>` | Fetch and merge changes from the remote repository to your local branch/repository | ** Branch name is optional
| `git fetch` | Fetch changes from the remote repo without merging |
| `git branch` | list your branches. a * will appear next to the currently active branch |
| `git branch <branch>` | Create a new branch | 
| `git checkout <branch>` | Switch to a different branch |
| `git merge <branch>` | Merge a branch into the current branch |
| `git reset <file>` | unstage a file while retaining the changes in working directory |
| `git diff` | diff of what is changed but not staged |
| `git diff --staged` | diff of what is staged but not yet committed |
| `git reset --hard` | revert everything to the last commit |
| `git branch -d <branch-name>` | delete a branch |

# Doubles

![Doubles illustration](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/IEEE_754_Double_Floating_Point_Format.svg/2880px-IEEE_754_Double_Floating_Point_Format.svg.png)

Where the radix point is determined on a high level through the exponent
This is a double precision floating point number
Occupies 64 bits on memory

```
0 01111111000 1000000000000000000000000000000000000000000000000000_2
≙ 3F88 0000 0000 000016
≙ +2−7 × 1.12
= 0.000000112
= 0.01171875 (3/256)

```

```
  0 10000000000 1001001000011111101101010100010001000010110100011000_2
≙ 4009 21FB 5444 2D18_16
≈ 3.141592653589793116 (closest approximation to π)
```

the _2 is referring to base-2
_16 is hexadecimal (base-16)
iEEE 754 has an exponent bias of 1023
for the first example, 01111111000 would be 1016 in base 10 
take into account the bias
the actual exponent would be -7
And this is how we express fractions in computers, even though we can't actually use a decimal point or integer signs
The exponent is stored as an unsigned integer but it actually represents a signed exponent, the bias is used to shift the bits so they can express both the positive and negative without needing an explicit sign bit.

As you see the exponent utilizes 11 bits, meaning the range is 0 to 2047 in base 10. We need to adjust the range to include negative numbers
So instead of storing negative exponents directly, the ieee 754 standard adds 1023 to it
The fraction part of the byte is also called a manitssa



# Z shell tips

`>>` appends a file (adds onto it)
example `echo 'hi' >> yap.txt`
`>` overwrites a file (replaces everything in it with that precedes the `>`
example `echo 'hi' > yap.txt`
`|` pipe, sends the output of one command as the input of another
example `echo "hello world" | tr a-z A-Z` (converts lowercase to uppercase)
`;` command separator
example `echo "Hello"; echo "World"`
`&&` AND, run the second command ONLY if the first one runs successfully
example `mkdir plushes && cd plushies`
`||` OR, run the second command ONLY if the first one fails
example `cd plushies || echo "Failed to enter directory"`
the use of command separator `;` is also known as command chaining
useful Zsh shortcuts
`~` home directory
`/` root directory
`..` parent directory
`-` last visited directory
`*` wildcard, computer equilavent of saying 'everything'
`~/.zshrc` is the zsh configuration file
Useful homebrew packages
`mailsy` for good fast n simple temp mail
`speedtest-cli` for good fast n simple internet speedtest
`ata` for ChatGPT in the terminal
`discordo` for Discord in the terminal
`lynx` text-based web browser in the terminal
`htop` interactive, fast, better terminal version of activity monitor
`find / -name "2312b3.jpg" 2>/dev/null | xargs open`

`find` is basically like using the search bar on finder
`/` is the root directory
`-name` denotes that you're searching by filename
`2>/dev/null` 2 is the standard error code (stderr), > overwrites files with the preceding value, /dev/null is just a black hole file. this redirects permission denials to /dev/null so it automatically discards them
`|` redirects one command's output as another command's input
`xargs` reads data and passes them onto other commands as arguments
`open` opens files, the equivalent of clicking on something on a GUI

`xargs` example usage
`kurtanna@kurtannas-Laptop ~ % echo "$HOME/Documents -name 'mc13.pdf'" | xargs find | xargs open`