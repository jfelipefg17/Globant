package com.Globant.library.repositories;

import com.Globant.library.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

  @Query("SELECT User FROM User WHERE User.email = :email")
  public User findByEmail(@Param("email") String email);

}
