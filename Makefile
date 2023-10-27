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
# OBJS					=	$(SRCS:.cpp=.o)
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