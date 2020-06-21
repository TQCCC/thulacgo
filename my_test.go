package thulacgo

import (
	"fmt"
	"os"
	"os/exec"
	"testing"
)

func TestMy(t *testing.T) {

	fmt.Println("=============my test start============")
	cmd := exec.Command("bash", "-c", "pwd")
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	_ = cmd.Run()


	cmd = exec.Command("bash", "-c", "ls -l -a -h")
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	_ = cmd.Run()

	cmd = exec.Command("bash", "-c", "ls -l -a -h models")
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	_ = cmd.Run()

	fmt.Println("=============my test end============")


}
