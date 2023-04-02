#!/usr/bin/liquidsoap

%include "config.liq"
%include "nodejs.liq"

node = request.dynamic(autodj)
live = input.harbor("aovivo", port = 8080, password = "brand")
radio = fallback(track_sensitive=false, [live, node])

%include "output.liq"
