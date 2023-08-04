
keytool -genKey -alias baf-eureka-server -keystore baf-eureka-server-keystore.jks -storetype jks -keypass 6B5Z1ESR -storepass 6B5Z1ESR -keyalg RSA -deststoretype pkcs12 -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -validity 3650
keytool -genKey -alias baf-api-gateway -keystore baf-api-gateway-keystore.jks -storetype jks -keypass 6B5Z1ESR -storepass 6B5Z1ESR -keyalg RSA -deststoretype pkcs12 -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -validity 3650

keytool -exportcert -alias baf-eureka-server -keystore baf-eureka-server-keystore.jks -file baf-eureka-server-cert.cer -storepass 6B5Z1ESR
keytool -exportcert -alias baf-api-gateway -keystore baf-api-gateway-keystore.jks -file baf-api-gateway-cert.cer -storepass 6B5Z1ESR

keytool -importcert -keystore baf-eureka-server-truststore.jks -file 'D:\workspace\projects\brazona-agile-framework\app-api\api-gateway\src\main\resources\certs\baf-api-gateway-cert.cer' -alias baf-api-gateway -storepass 6B5Z1ESR -trustcacerts -deststoretype pkcs12
keytool -importcert -keystore baf-api-gateway-truststore.jks -file D:\workspace\projects\brazona-agile-framework\app-api\eureka-server\src\main\resources\certs\baf-eureka-server-cert.cer -alias baf-eureka-server -storepass 6B5Z1ESR -trustcacerts -deststoretype pkcs12


keytool -import -alias baf-eureka-server -file 'D:\workspace\projects\brazona-agile-framework\app-api\eureka-server\src\main\resources\certs\baf-eureka-server-cert.cer' -keystore 'C:\Program Files\Java\jdk-11.0.12\lib\security\cacerts'
keytool -import -alias baf-api-gateway -file 'D:\workspace\projects\brazona-agile-framework\app-api\eureka-server\src\main\resources\certs\baf-api-gateway-cert.cer' -keystore 'C:\Program Files\Java\jdk-11.0.12\lib\security\cacerts'

keystore:'changeit'

keytool -list -keystore 'C:\Program Files\Java\jdk-11.0.12\lib\security\cacerts'


---

