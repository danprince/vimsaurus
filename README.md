# vimsaurus
Vim plugin complement to [Bashsaurus][1].

## Example
[![asciicast](https://asciinema.org/a/edoazzmuqmtmtlnx5dhph3b5z.png)](https://asciinema.org/a/edoazzmuqmtmtlnx5dhph3b5z)

## Commands
The plugin defines the following commands.

### `:FindSynonym`
Replace the word under the cursor with a synonym.

### `:NextSynonym`
Cycle to the next synonym for the word under the cursor.

## Usage
Typing the commands is time consuming, so the recommended way to use this plugin is to map the commands to leader keys. For example:

```vim
nnoremap <Leader>t :FindSynonym<CR>
nnoremap <Leader>r :NextSynonym<CR>
```

[1]: https://github.com/danprince/bashsaurus
