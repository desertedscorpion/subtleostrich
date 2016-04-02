#    Copyright (C) 2016
#    Emory Merryman
#    emory.merryman+j4AkaDMuU0UrGduM@gmail.com
#
#    subtleostrich is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    subtleostrich is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
FROM centos:centos6
# Install dependencies
RUN yum update --assumeyes
RUN yum install --assumeyes epel-release
RUN yum install --assumeyes nodejs npm
# Install app
COPY src/package.json /src/package.json
RUN cd /src; npm install
COPY src/server.express.js /src
EXPOSE 3000
CMD ["node", "/src/server.express.js"]