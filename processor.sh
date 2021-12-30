#!/bin/sh

case "$1" in
        *.pdf)
        #The -s flag ensures that file is not empty.
        if [ -s "$1" ]; then
                exec pdftotext - -
        else
                exec cat
        fi
        ;;
*)
        case $(file "$1") in
                *Zstandard*)
                        exec pzstd -cdq
                        ;;
                *)
                exec cat
                ;;
        esac
esac

