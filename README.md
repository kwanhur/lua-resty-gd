# lua-resty-gd
Lua FFI binding to [libgd](https://github.com/libgd/libgd)

Table of Contents
=================

* [Name](#name)
* [Status](#status)
* [Synopsis](#synopsis)
* [API](#api)
    * [gd](#gd)
* [Version](#version)
* [Installation](#installation)
* [Authors](#authors)
* [Copyright and License](#copyright-and-license)

Status
======

This library is under early development.

Synopsis
========
```lua
    lua_package_path "/path/to/lua-resty-gd/lib/?.lua;;";

    server {
        location /t {
            content_by_lua '
              local gd = require('resty.gd.init')
            ';
        }
    }
```

API
====

All the apis are compatible with [lua-gd api](http://ittner.github.io/lua-gd/manual.html#api)

[Back to TOC](#table-of-contents)

gd
--
`syntax: gd = require('resty.gd.init')`

Create a new gd object.

[Back to TOC](#table-of-contents)

Version
=======

Version numbers are in the format "X.Y.Z.W", where X.Y.Z indicates the libgd version and W the binding version.

So, the 2.2.5.1 version is the first binding version for libgd 2.2.5 and 2.2.5.2 has some improvements, bug fixes, etc. 

But they use the same libgd version

[Back to TOC](#table-of-contents)

Installation
============

You can install it with [opm](https://github.com/openresty/opm#readme).
Just like that: opm install kwanhur/lua-resty-gd

[Back to TOC](#table-of-contents)

Authors
=======

kwanhur <huang_hua2012@163.com>, VIPS Inc.

[Back to TOC](#table-of-contents)

Copyright and License
=====================

This module is licensed under the BSD 2-Clause License .

Copyright (C) 2018, by kwanhur <huang_hua2012@163.com>, VIPS Inc.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

[Back to TOC](#table-of-contents)