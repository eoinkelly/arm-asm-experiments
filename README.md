
# Ideas

## Implement a basic web server in arm asm

    Q: how does it handle multiple connections?

    what does it return?
        read files from disk
        connect to an upstream process via socket (unix or tcp)

    Trial 1: hello world

    Trial 2: open tcp port socket and return compiled in chunk of text

    Trial 3: connect to a rails process on a socket