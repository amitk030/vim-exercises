### Remove 2nd word in the last sentence of file `article.txt`

<details><summary>Solution</summary>
  <p>

To delete the second word in the last sentence of the file article.txt using Vim in normal mode, incorporating the use of 2( to move back two sentences, follow these steps:

1. **Open the file in Vim:**

```bash
vim article.txt
```
2. **Enter Normal Mode: Ensure you are in normal mode by pressing Esc.**

3. **Navigate to the End of the File:**

    - Press `G` to move the cursor to the last line of the file.

4. **Move to the Last Sentence:**

    - Keep pressing `)` to move the cursor to the last sentence.
    - Now you are on the first word of the last sentence.
    
5. **Navigate to the Second Word:**

    - Press `w` to move the cursor to the 2nd word.

6. **Delete the Second Word:**

    - Press `dw` to delete the second word. The `d` command is for delete, and `w` moves the cursor to the beginning of the next word, effectively deleting the current word under the cursor.

By following these steps, you will successfully delete the second word in the last sentence of the file `article.txt` using Vim in normal mode.

  </p>
</details>