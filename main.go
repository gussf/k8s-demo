package main

import "net/http"

func main() {

	http.HandleFunc("/", func(rw http.ResponseWriter, r *http.Request) {
		rw.Write([]byte("Hello world v2"))
	})
	http.ListenAndServe(":8080", nil)
}
