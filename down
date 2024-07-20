#!/bin/bash

running_compose=$(docker compose ls | awk 'BEGIN {ORS=" "} NR!=1{print $1}')

[ "$running_compose" = "" ] && print_success "No compose stack is currently running !!" && exit 0

gum log --level info --time timeonly "Choose a target to shutdown"

pick_compose=$(gum choose "$running_compose" --no-limit | xargs)

COMPOSES=("$pick_compose")

for service in "${COMPOSES[@]}"; do
	gum log --level info --time timeonly "Shutting down ${service}"

	docker compose -p "$service" down --rmi local || {
		gum log --level error --time timeonly "Shutdown failed"
		exit 1
	}

	gum log --level info --time timeonly "Finish shutdown ${service} stack"
done
