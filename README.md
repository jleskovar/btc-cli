# btc-cli
Adaptive bash/zsh support for bitcoin-cli. 

Introduces the 'btc' command on PATH, with sub-commands automatically forwarded to bitcoin-cli. Auto-completion for sub-commands comes for free.

Should support all versions of bitcoin-cli (tested on Bitcoin RPC client v0.15.1).

## Installing btc-cli

    cd
    git clone https://github.com/jleskovar/btc-cli .btc-cli

For bash users:

    echo 'eval "$($HOME/.btc-cli/bin/btc init -)"' >> ~/.bash_profile
    exec bash

For zsh users:

    echo 'eval "$($HOME/.btc-cli/bin/btc init -)"' >> ~/.zshenv
    source ~/.zshenv
    
## Usage

    james@Jamess-MacBook-Pro:~/code/btc-cli$ btc
    Usage: btc <command> [<args>]

    Some useful btc commands are:
    abandontransaction      Mark in-wallet transaction <txid> as abandoned
    abortrescan             Stops current wallet rescan triggered e.g. by an importprivkey call.
    addmultisigaddress      Add a nrequired-to-sign multisignature address to the wallet.
    addnode                 Attempts to add or remove a node from the addnode list.
    ...
    
    james@Jamess-MacBook-Pro:~/code/btc-cli$ btc help abortrescan 
    abortrescan

    Stops current wallet rescan triggered e.g. by an importprivkey call.

    Examples:

    Import a private key
    > bitcoin-cli importprivkey "mykey"

    Abort the running wallet rescan
    > bitcoin-cli abortrescan 

    As a JSON-RPC call
    > curl --user myusername --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "abortrescan", "params": [] }' -H 'content-type:      text/plain;' http://127.0.0.1:8332/


    
