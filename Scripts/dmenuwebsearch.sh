#!/bin/bash

# Get the search engine choice from the user
search_engine=$(echo -e "YouTube\nIMDb\nRotten Tomatoes\nAUR\nArch Packages" | dmenu -i -l 5 -p "Select Search Engine")

# Get the search query from the user based on the selected search engine
if [ "$search_engine" = "YouTube" ]; then
    query=$(dmenu -p "Search YouTube")
    if [ -z "$query" ]; then
        exit 1
    fi
    search_url="https://www.youtube.com/results?search_query=$query"
elif [ "$search_engine" = "IMDb" ]; then
    query=$(dmenu -p "Search IMDb")
    if [ -z "$query" ]; then
        exit 1
    fi
    search_url="https://www.imdb.com/find?ref_=nv_sr_qc_0&q=$query"
elif [ "$search_engine" = "Rotten Tomatoes" ]; then
    query=$(dmenu -p "Search Rotten Tomatoes")
    if [ -z "$query" ]; then
        exit 1
    fi
    search_url="https://www.rottentomatoes.com/search/?search=$query"
elif [ "$search_engine" = "AUR" ]; then
    query=$(dmenu -p "Search AUR")
    if [ -z "$query" ]; then
        exit 1
    fi
    search_url="https://aur.archlinux.org/packages/?O=0&K=$query"
elif [ "$search_engine" = "Arch Packages" ]; then
    query=$(dmenu -p "Search Arch Packages")
    if [ -z "$query" ]; then
        exit 1
    fi
    search_url="https://archlinux.org/packages/?q=$query"
else
    exit 1
fi

# Open the search result in Firefox
firefox "$search_url"