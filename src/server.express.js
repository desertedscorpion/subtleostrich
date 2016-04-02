/*
*    Copyright (C) 2016
*    Emory Merryman
*    emory.merryman+j4AkaDMuU0UrGduM@gmail.com
*
*    subtleostrich is free software: you can redistribute it and/or modify
*    it under the terms of the GNU General Public License as published by
*    the Free Software Foundation, either version 3 of the License, or
*    (at your option) any later version.
*
*    subtleostrich is distributed in the hope that it will be useful,
*    but WITHOUT ANY WARRANTY; without even the implied warranty of
*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*    GNU General Public License for more details.
*
*    You should have received a copy of the GNU General Public License
*    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
(function(express){
    "use strict";
    return express()
	.get("/", function(request, response){
	    return response.send("Hello World!");
	})
	.listen(3000)
    ;
}(require("express")));
