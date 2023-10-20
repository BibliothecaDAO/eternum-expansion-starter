# eternum-expansion-starter

Eternum Expansion Starter: A comprehensive starter template for creating expansions for [Eternum](https://github.com/BibliothecaDAO/eternum), the first major mod of the Realms Autonomous World.

Note: to use dojo-language-server, make sure to update `cairo1.languageServerPath` in `.vscode/settings.json` to the path of your dojo-language-server installation. You can get it by running `$ where dojo-language_server` in your terminal

## Installation

Eternum is built using dojo engine. You can install the dojo toolchain by:

```
curl -L https://install.dojoengine.org | bash
```

Read the dojo book [here](https://book.dojoengine.org/index.html) to discover the toolchain in depth.

⚠️ Warning: Current version of eternum uses dojo v0.3.0-rc8, we're in the process of migating to the official 0.3.0 release. For now, please install v0.3.0-rc8 to sozo build using `dojoup --version v0.3.0-rc8`.

## Updating the remote eternum world

1. In contracts directory, add your new models/systems
2. Build your new contracts: `sozo build`
3. In Scarb.toml comment out account_address and private_key in dev and uncomment in prod
4. Update remote eternum world: `sozo migrate rpc-url https://api.cartridge.gg/x/eternum/katana`
