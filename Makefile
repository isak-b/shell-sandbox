IMAGE := shell-sandbox
CONTAINER := shell-sandbox

.PHONY: sandbox

sandbox:
	-docker rm -f $(CONTAINER)
	docker build -t $(IMAGE) .
	docker run --rm -it \
		--name $(CONTAINER) \
		$(IMAGE)
