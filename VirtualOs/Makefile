SRC = ${wildcard *.c}
OBJ = $(notdir $(patsubst %.c, %.o, $(SRC)))
FILES=`ls *.c`

TARGET:= bin
CC:=gcc

.PHONY : all

$(OBJ) : $(SRC)
	$(call compile_c_file)
	$(CC) -o $(TARGET) $(OBJ)


define compile_c_file
@for file in $(FILES); do \
( echo "$(CC) -c $$file" && $(CC) -c $$file -I ./include -I./core/include) \
done;
endef


