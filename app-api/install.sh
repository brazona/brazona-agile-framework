## 1.2. Install Stack Microservice
echo "Running Stack Microservice..."
mvn clean install spring-boot:run -pl config-server &
mvn clean install spring-boot:run -pl eureka-server &
mvn clean install spring-boot:run -pl api-gateway &
mvn clean install spring-boot:run -pl authentication-server &
mvn clean install spring-boot:run -pl users
