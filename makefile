#DIRS=loginserver superserver gatewayserver logicserver
DIRS=test
BASE = $(PWD)/../server-base

all: .debug

test: .test

clean:	
	@for dir in $(DIRS); \
	do \
		rm -f $$dir/$$dir; \
	done

	@rm -f command/*.pb.go
	@rm -rf $(GOPATH)/pkg

.debug:
	export GOPATH=$(BASE):$(PWD);\
	for srv in $(DIRS); \
	do \
		go install -v -i $$srv; \
	done
	

.test:

		go install -v -i -o test/test test; 


.proto:
	@echo 编译proto文件
	@cd $(GOPATH)/proto/msg/ && chmod 777 build.sh && ./build.sh


