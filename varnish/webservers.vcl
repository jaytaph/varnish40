vcl 4.0;

import directors;

backend web1 {
    .host = "web1";
}

backend web2 {
    .host = "web2";
}

backend web3 {
    .host = "web3";
}

sub vcl_init {
    new web_director = directors.random();

    web_director.add_backend(web1, 10);
    web_director.add_backend(web2, 10);
    web_director.add_backend(web3, 10);
}


sub vcl_recv {
    set req.backend_hint = web_director.backend();
}
