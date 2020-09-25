# Mindomo2opml

Since the free version of Mindomo does not include export to OPML, I decided to take matters into my own hands.

How to use: 

- Make an **outline** in Mindomo, or choose one you've already made.
- Export it to mom format.
- The Mindomo export format (.mom) is basically just a zip file with xml inside. So just unpack the file using 7zip or something.
- Use whatever xslt processor you like with the mindomo2opml xslt to transform your Document.xml

This has not been extensively tested at all; I just tested it on some of my simple outlines and it seems to work well enough. If you report bugs, I'll look into them.