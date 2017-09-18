#!/bin/zsh
# from https://stackoverflow.com/a/29308524
# and https://stackoverflow.com/a/46156177/4588453
set -e
pushd $(git rev-parse --show-toplevel)
#topush=$(git subtree split --prefix=2017-09-15-Vertex)
curl --header "PRIVATE-TOKEN: LJcTxuVYsXTR83s8zR3P" -X POST "https://gitlab.cern.ch/api/v3/projects?name=foobartest&visibility=ASDF"
git branch -D Vertex2017
git subtree split --prefix=2017-09-15-Vertex -b Vertex2017
git filter-branch -f --index-filter 'rm -rf proceedings' Vertex2017
git push VERTEX2017 Vertex2017:Vertex2017 -f

# publication script for pseyfert/Vertex2017.
# Copyright (C) 2017  Paul Seyfert <pseyfert@cern.ch>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
