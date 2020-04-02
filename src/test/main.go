package main

import (
	"base/proto"
	"base/util"
	"fmt"
)

func main() {
	fmt.Println(util.RandBetween(0, 10))

	var msg proto.Message

	fmt.Println(msg)
}
