#!/bin/bash

BLOG_FILE="src/blog/contents2026.m4"

CONTENT_FILE=$(mktemp)
vim "$CONTENT_FILE"

if [ ! -s "$CONTENT_FILE" ]; then
    echo "Post aborted."
    rm "$CONTENT_FILE"
    exit 1
fi

POST_FILE=$(mktemp)
DATE=$(date +"%B %d, %Y, %I:%M %p")
echo "m4_post([[$DATE]], [[" > "$POST_FILE"
cat "$CONTENT_FILE" >> "$POST_FILE"
echo "]])" >> "$POST_FILE"

TMP_BLOG_FILE=$(mktemp)
cat "$POST_FILE" "$BLOG_FILE" > "$TMP_BLOG_FILE"
mv "$TMP_BLOG_FILE" "$BLOG_FILE"

rm "$CONTENT_FILE"
rm "$POST_FILE"

echo "Wrote post."

make public/blog.html
git add "$BLOG_FILE"
git commit -m "automated commit for new post"
git push


