package nhupham.nhuptt.cosmeticsapp.services;

import lombok.RequiredArgsConstructor;
import nhupham.nhuptt.cosmeticsapp.models.Role;
import nhupham.nhuptt.cosmeticsapp.repositories.RoleRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RoleService implements IRoleService{
    private final RoleRepository roleRepository;
    @Override
    public List<Role> getAllRoles() {
        return roleRepository.findAll();
    }
}
