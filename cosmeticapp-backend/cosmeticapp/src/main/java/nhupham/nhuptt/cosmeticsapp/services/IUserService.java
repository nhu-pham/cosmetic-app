package nhupham.nhuptt.cosmeticsapp.services;

import nhupham.nhuptt.cosmeticsapp.dtos.UpdateUserDTO;
import nhupham.nhuptt.cosmeticsapp.dtos.UserDTO;
import nhupham.nhuptt.cosmeticsapp.exceptions.DataNotFoundException;
import nhupham.nhuptt.cosmeticsapp.models.User;
import org.springframework.stereotype.Service;


public interface IUserService {
    User createUser(UserDTO userDTO) throws Exception;
    String login(String phoneNumber, String password, Long roleId) throws Exception;
    User getUserDetailsFromToken(String token) throws Exception;
    User updateUser(Long userId, UpdateUserDTO updatedUserDTO) throws Exception;
}

