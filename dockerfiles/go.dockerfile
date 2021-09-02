FROM golang:1.16-alpine

 WORKDIR /LedgerMailCore

COPY ledgermail-core  ./

RUN go mod download

RUN go build -o main .

CMD ["/LedgerMailCore/main"] 





