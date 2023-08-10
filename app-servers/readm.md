docker run \
- rm \
-p5775:5775/udp \
-p6831:6831/udp \
-p6832:6832/udp \
-p16686:16686 \
-p14268:14268 \
jaegertracing/all-in-one:1.18