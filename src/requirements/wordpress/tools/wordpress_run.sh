# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    wordpress_run.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:17:26 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/05 18:13:07 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

curl    -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
chmod   +x wp-cli.phar;
mv      wp-cli.phar /usr/local/bin/wp;
