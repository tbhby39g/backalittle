# backalittle

This is the one of the alternative to `electric-pair-mode`.

In `electric-pair-mode`, whenever you insert an opening delimiter, the matching closing delimiter is automatically inserted.

It's very convenient, but the closing delimiter have been inserted automatically, even when you do not want to insert it.

`backalittle` does not insert closing delimiter automatically.

In `backalittle`, when you wrote a pair of delimiter(opening and closing), the point moves in it automatically. It is another feature of the `electric-pair-mode` :wink:.

It supports (), [], {}, "" and ''.

## Install

Put backalittle.el in your load-path directory and add the following to your .emacs(or init.el).
```
(require 'backalittle)
```

## Note

It is necessary to disable `electric-pair-mode` (or maybe other auto closing delimiter insertion feature).
