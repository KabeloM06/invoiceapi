package com.kabelo.invoiceapi.repository.implementation;

import com.kabelo.invoiceapi.domain.User;
import com.kabelo.invoiceapi.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
@RequiredArgsConstructor
@Slf4j
public class UserRepositoryImpl implements UserRepository<User> {
    private final NamedParameterJdbcTemplate jdbc;

    @Override
    public User create(User data) {
        // Check if the email is unique
        // Save new user if email is unique
        // Add role to the user
        // Send verification URL
        // Save URL in verification table
        // Return the newly created user
        // If any errors, throw exception with proper message
        return null;
    }

    @Override
    public Collection<User> list(int page, int pageSize) {
        return List.of();
    }

    @Override
    public User get(Long id) {
        return null;
    }

    @Override
    public User update(User data) {
        return null;
    }

    @Override
    public Boolean delete(Long id) {
        return null;
    }
}
