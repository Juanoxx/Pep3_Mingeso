FROM python:3.8-slim-buster

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
RUN pip install flask
RUN pip install pytest
RUN pip install pylint --upgrade

# Run the application:
COPY main.py .
CMD ["python", "main.py"]


