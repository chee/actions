FROM rakudo-star:2018.10
ENTRYPOINT [ /entrypoint.p6 ]
LABEL \
	com.github.actions.name="chee's actions" \
	com.github.actions.description="i eat cheese, i eat po" \
	com.github.actions.icon="smile" \
	com.github.actions.color="yellow"
RUN \
	zef install JSON::Pretty
