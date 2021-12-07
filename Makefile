build_manuals:
	docker build -t payt-manuals .

run_manuals:
	@printf "\nStart Manuals...\n"
	docker run -d \
		--name payt-manuals \
		-p 9000:80 \
		payt-manuals
	@printf "DONE\n\n"

stop_manuals:
	-docker stop payt-manuals

remove_manuals:
	-docker rm payt-manuals

