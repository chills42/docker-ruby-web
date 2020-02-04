FROM ruby:2.6.5
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install \
	build-essential=12.6 \
	libc-bin=2.28-10 \
	libc6-dev=2.28-10 \
	multiarch-support=2.28-10 \
	libssh2-1=1.8.0-2.1 \
	openssh-client=1:7.9p1-10+deb10u1 \
	cmake \
	curl=7.64.0-4 \
	git \
	binutils \
	libudev1 \
	linux-libc-dev \
	imagemagick \
	default-libmysqlclient-dev \
	mariadb-client \
	libsystemd0 \
	python \
	lcov \
	nodejs \
	gnuplot -y && rm -rf /var/lib/apt/lists/*
RUN gem install bundler -v "~> 2"
RUN gem install \
	commonmarker \
	nokogiri \
	mysql2 \
	omniauth \
	undercover \
	puma \
	rails \
