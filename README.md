# PHP-PSR-2-Fixer Coda Plugin

## Description

PHP PSR-2 Fixer is a coda plugin created to provide a simple interface to automatically fix PHP coding standards issues using [PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer).

## Installation

 - Download the latest version in [/releases](releases/)
 - Extract the archive
 - Double click on `PHP PSR-2 Fixer.codaplugin`

## Usage

When editing a PHP file, you can:

 - Use the shortcut `^⇧F` (`control` + `shift` + `F`)
 - Make a right click → `Plug-ins` → `PHP PSR-2 Fixer`

## Rules applied

When using the plugin, the following rules are applied:

 - Code conversion to PSR-2 standard
 - Remove trailing whitespace at the end of blank lines.
 - Removes extra blank lines in methods.

## Requirements

 - Coda >= 2.5
 - PHP 5.6 (bundled in MacOS)

## PHP 7.x compatibility

The version of PHP bundled with MacOS is PHP 5.x. To fix PHP code written for PHP 7, you can upgrade the PHP version on MacOS with [homebrew](http://brew.sh/) using:

```
brew install homebrew/php/php71
```

## License

This plug-in is under MIT license ([view license](LICENSE)).

PHP_CodeSniffer license is available [here](https://github.com/squizlabs/PHP_CodeSniffer/blob/master/licence.txt).

## Credits
 
[PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer) is bundled in this plug-in
