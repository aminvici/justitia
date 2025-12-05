FROM golang:1.25

WORKDIR /go/src/github.com/DSiSc/justitia
COPY . .
RUN go mod verify
RUN go install -v ./...

EXPOSE 47768
EXPOSE 47780
EXPOSE 6060

CMD ["justitia"]
