package br.brazona.authentication.services;

import br.brazona.core.exceptions.types.PermissionDeniedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import br.brazona.authentication.models.User;
import br.brazona.authentication.feignclients.UserFeignClient;


@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserFeignClient userFeignClient;

    @Override
    public UserDetails loadUserByUsername(String username) {
        User user = userFeignClient.findByEmail(username).getBody();
        if (user == null) {
            throw new PermissionDeniedException("Email not found");
        }
        return user;
    }
}