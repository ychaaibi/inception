# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    website.py                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ychaaibi <ychaaibi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/05 17:16:01 by ychaaibi          #+#    #+#              #
#    Updated: 2023/11/05 17:16:04 by ychaaibi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

from flask import Flask, render_template

MySite = Flask(__name__)

@MySite.route('/')
def site():
    return render_template("website.html")

if __name__ == '__main__':
    MySite.run(debug=True, host="0.0.0.0", port=5000)
