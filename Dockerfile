FROM rakudo-star:2018.10

LABEL version="0.0.0"
LABEL repository="https://github.com/chee/actions"
LABEL homepage="https://github.com/chee/actions"
LABEL maintainer="chee 🧚🏻‍♀️ rabbits 🐰🐇 <chee@snoot.club>"

LABEL com.github.actions.name="chee's actions"
LABEL com.github.actions.description="i eat cheese, i eat po"
LABEL com.github.actions.icon="smile"
LABEL com.github.actions.color="yellow"

RUN zef install JSON::Pretty

COPY "commands.p6" "/commands.p6"
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT [ /entrypoint.sh ]
CMD "what"
