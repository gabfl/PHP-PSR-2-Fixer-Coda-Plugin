# PHP-PSR-2-Fixer Coda Plugin

## Description

PHP PSR-2 Fixer is a coda plugin created to provide a simple interface to automatically fix PHP coding standards issues using [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)

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
 - `no_whitespace_in_blank_line`: Remove trailing whitespace at the end of blank lines.
 - `no_extra_consecutive_blank_lines`: Removes extra blank lines and/or blank lines following configuration.

## Requirements

 - Coda >= 2.5
 - PHP 5.6 (bundled in MacOS)

## License

This plug-in is under MIT license ([view license](LICENSE)).

PHP-CS-Fixer license is available [here](https://github.com/FriendsOfPHP/PHP-CS-Fixer/blob/master/LICENSE).

## Credits
 
[PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) is bundled in this plug-in
