G++						=	g++
###############################################
NB_CLOSEST_TO_PATH		=	./nbClosestTo
NB_CLOSEST_TO_SRC_PATH	=	./nbClosestTo/source
NB_CLOSEST_TO_INC_PATH	=	./nbClosestTo/include

NB_CLOSEST_TO_TST_PATH	=	./nbClosestTo/test

NAME_NB_CLOSEST_TO		=	nbClosestTo
TST_NAME_NB_CLOSEST_TO 	= 	test_$(NAME_NB_CLOSEST_TO)

NB_CLOSEST_TO_SRC_TST	=	$(NB_CLOSEST_TO_TST_PATH)/$(NAME_NB_CLOSEST_TO)_test.cpp

#################################################
# EX1_PATH 				= 	./Ex1_KoalaBot
# EX1_SRC_PATH			=	./Ex1_KoalaBot/src
# EX1_TST_PATH			=	./Ex1_KoalaBot/tests
# EX1_INC_PATH			=	./Ex1_KoalaBot/include
# NAME_EX1				=	Ex1
# # EX0_SRC					=	$(EX0_SRC_PATH)/.cpp

# EX1_SRC_TEST			=	$(EX1_TST_PATH)/$(NAME_EX1)_test.cpp
# TEST_NAME_EX1 			= 	test_$(NAME_EX1)

#################################################
# EX2_PATH 				= 	./Ex2_KreogCom
# EX2_SRC_PATH			=	./Ex2_KreogCom/src
# EX2_TST_PATH			=	./Ex2_KreogCom/tests
# EX2_INC_PATH			=	./Ex2_KreogCom/include
# NAME_EX2				=	Ex2
# # EX0_SRC					=	$(EX0_SRC_PATH)/.cpp

# EX2_SRC_TEST			=	$(EX2_TST_PATH)/$(NAME_EX2)_test.cpp
# TEST_NAME_EX2 			= 	test_$(NAME_EX2)

#################################################
# EX3_PATH 				= 	./Ex3_Phaser
# EX3_SRC_PATH			=	./Ex3_Phaser/src
# EX3_TST_PATH			=	./Ex3_Phaser/tests
# EX3_INC_PATH			=	./Ex3_Phaser/include
# NAME_EX3				=	Ex3
# # EX0_SRC					=	$(EX0_SRC_PATH)/.cpp

# EX3_SRC_TEST			=	$(EX3_TST_PATH)/$(NAME_EX3)_test.cpp
# TEST_NAME_EX3 			= 	test_$(NAME_EX3)

#################################################
# EX4_PATH 				= 	./Ex4_GSquad
# EX4_SRC_PATH			=	./Ex4_GSquad/src
# EX4_TST_PATH			=	./Ex4_GSquad/tests
# EX4_INC_PATH			=	./Ex4_GSquad/include
# NAME_EX4				=	Ex4
# # EX0_SRC					=	$(EX0_SRC_PATH)/.cpp

# EX4_SRC_TEST			=	$(EX4_TST_PATH)/$(NAME_EX4)_test.cpp
# TEST_NAME_EX4 			= 	test_$(NAME_EX4)

#################################################
OBJS					=	$(SRCS:.cpp=.o)
CLEAN					=	clean
FCLEAN					=	fclean
RM						=	rm -rf

clean					:	
							$(RM) $(OBJS)
							@$(MAKE) $(CLEAN) -C $(NB_CLOSEST_TO_PATH)
							@$(MAKE) $(CLEAN) -C $(NB_CLOSEST_TO_TST_PATH)

fclean					:	clean
							@$(MAKE) $(FCLEAN) -C $(NB_CLOSEST_TO_TST_PATH)
							@$(MAKE) $(FCLEAN) -C $(NB_CLOSEST_TO_PATH)

re						: 	fclean all

nbClosestTo 			: 	fclean
							@$(MAKE) -C $(NB_CLOSEST_TO_PATH)
							$(NB_CLOSEST_TO_PATH)/$(NAME_NB_CLOSEST_TO)

test_run_nbClosestTo	:	fclean
							@$(MAKE) -C $(NB_CLOSEST_TO_TST_PATH)
							$(NB_CLOSEST_TO_TST_PATH)/$(TST_NAME_NB_CLOSEST_TO)

tests_run				:	fclean
							@$(MAKE) test_run_nbClosestTo
							@echo "Press Enter to continue to the next test (nbClosestTo)..."
							@read dummy

.PHONY					: 	all clean fclean re \
							tests_run \
							nbClosestTo test_run_nbClosestTo