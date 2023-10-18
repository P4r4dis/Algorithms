G++			=	g++
##############################################
BIN_PATH	=	./bin
SRC_PATH	=	./source
TST_PATH	=	./test
INC_PATH	=	./include

NAME		=	nbClosestTo
TST_NAME 	= 	test_$(NAME)
##############################################

INCFLAGS	+=	-I $(INC_PATH)

CPPFLAGS	+= -Wall -Wextra -Werror -W -std=c++23 -Wfatal-errors $(INCFLAGS)


SRCS		=	$(BIN_PATH)/main.cpp
# $(SRC_PATH)/Phaser.cpp

SRC_TEST	=	$(TST_PATH)/$(NAME)_test.cpp

OBJS		=	$(SRCS:.cpp=.o)

CLEAN		=	clean
FCLEAN		=	fclean


all			:	$(NAME)

$(NAME)		:	$(OBJS)
				$(G++) $(OBJS) -o $(NAME) $(CPPFLAGS)

RM			=	rm -rf

clean		:
				$(RM) $(OBJS)
				@$(MAKE) $(CLEAN) -C $(TST_PATH)

fclean		:	clean
				$(RM) $(NAME) $(TST_NAME)
				@$(MAKE) $(FCLEAN) -C $(TST_PATH)

re			: 	fclean all

tests_run	:	fclean
				@$(MAKE) -C $(TST_PATH)
				$(TST_PATH)/$(TST_NAME)

.PHONY		: 	all clean fclean re tests_run

# $(CC) -o $(TEST_NAME) $(SRC) $(SRC_TEST) $(TESTFLAGS) $(LIBFLAG)
#-L. -lmy_malloct