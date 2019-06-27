FROM ruby:2.6.0
RUN apt-get update && apt-get install \
	build-essential=12.3 \
	libc-bin=2.24-11+deb9u4 \
	libc6-dev=2.24-11+deb9u4 \
	multiarch-support=2.24-11+deb9u4 \
	libssh2-1=1.7.0-1+deb9u1 \
	openssh-client=1:7.4p1-10+deb9u6 \
	cmake \
	curl=7.52.1-5+deb9u9 \
	git \
	binutils \
	libudev1=232-25+deb9u11 \
	linux-libc-dev=4.9.168-1+deb9u3 \
	imagemagick=8:6.9.7.4+dfsg-11+deb9u7 \
	default-libmysqlclient-dev \
	mariadb-client=10.1.38-0+deb9u1 \
	libsystemd0=232-25+deb9u11 \
	python \
	gnuplot -y
# Install nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs yarn && rm -rf /var/lib/apt/lists/*
RUN npm install -g svg-sankey
RUN gem install \
	bundler \
	commonmarker \
	nokogiri \
	mysql2 \
	omniauth \
	puma \
	rails \
