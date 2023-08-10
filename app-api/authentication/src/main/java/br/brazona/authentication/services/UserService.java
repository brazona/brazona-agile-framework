package br.brazona.authentication.services;

import br.brazona.core.exceptions.types.PermissionDeniedException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import br.brazona.authentication.models.User;
import br.brazona.authentication.feignclients.UserFeignClient;
@Service
public class UserService implements UserDetailsService {

    private static Logger logger = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserFeignClient userFeignClient;

    @Override
    public UserDetails loadUserByUsername(String username) {
        User user = userFeignClient.findByEmail(username).getBody();
        if (user == null) {
            logger.error("Email not found: " + username);
            throw new PermissionDeniedException("Email not found");
        }
        logger.info("Email found: " + username);
        return user;
    }
}