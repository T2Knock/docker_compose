#!/bin/bash

file=$(gum file)

if [[ "$file" =~ "compose.yml" ]]; then
	if gum confirm "Run in detach mode?"; then
		docker compose --file "$file" up --detach
	else
		docker compose --file "$file" up
	fi
fi
