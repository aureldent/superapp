poetry_cmd:=cd backend && poetry

backend.dev:
	$(poetry_cmd) run gunicorn 'infrastructure.entrypoints.api:create_app()' \
	--workers 4 --worker-class uvicorn.workers.UvicornWorker --bind 0.0.0.0:5000