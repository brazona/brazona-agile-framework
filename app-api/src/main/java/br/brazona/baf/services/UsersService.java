package br.brazona.baf.services;

import br.brazona.baf.BafApplication;
import br.brazona.baf.dtos.RolesDTO;
import br.brazona.baf.dtos.UsersDTO;
import br.brazona.baf.models.RolesModel;
import br.brazona.baf.models.UsersModel;
import br.brazona.baf.repositories.UsersRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UsersService implements UserDetailsService {
    @Autowired
    private UsersDTO usersDto;
    @Autowired
    private RolesDTO rolesDto;
    @Autowired
    private UsersRepository repository;
    private static Logger logger = LoggerFactory.getLogger(UsersService.class);
    public UsersService(UsersDTO usersDto, RolesDTO rolesDto, UsersRepository repository) {
        this.usersDto = usersDto;
        this.rolesDto = rolesDto;
        this.repository = repository;
    }

    @Override
    public UsersDTO loadUserByUsername(String login) throws UsernameNotFoundException {
        UsersModel usersModel = repository.findByEmail(login);
        logger.info("LoadUserByLogin");
        if(usersModel == null){
            logger.warn("Login not found");
            throw new UsernameNotFoundException("Email not found");
        }
        logger.debug("Login found");
        List<RolesDTO> listDTORoles = new ArrayList();

        for(RolesModel role:usersModel.getRoles()){
            rolesDto.setId(role.getId());
            rolesDto.setName(role.getName());
            listDTORoles.add(rolesDto);
        }
        usersDto.setRoles(listDTORoles);
        usersDto.setId(usersModel.getId());
        usersDto.setLogin(usersModel.getLogin());
        usersDto.setPassword(usersModel.getPassword());

        return usersDto;
    }
}
