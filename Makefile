all: stack call_shellcode exploit dash_shell_test

stack: stack.c
	gcc -fno-stack-protector -z execstack -o stack stack.c
	sudo chown root stack
	sudo chmod 4755 stack

call_shellcode: call_shellcode.c
	gcc -z execstack -o call_shellcode call_shellcode.c

exploit: exploit.c
	gcc -o exploit exploit.c

dash_shell_test: dash_shell_test.c
	gcc -o dash_shell_test dash_shell_test.c
	sudo chown root dash_shell_test
	sudo chmod 4755 dash_shell_test
