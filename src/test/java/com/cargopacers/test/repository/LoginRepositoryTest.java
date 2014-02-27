package com.cargopacers.test.repository;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cargopacers.model.Login;
import com.cargopacers.repository.LoginRepository;

import static org.junit.Assert.*;

/**
 *  
 *  @author mukesh
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:META-INF/spring/*.xml")
public class LoginRepositoryTest {

  @Autowired
  private LoginRepository loginRepository;

  @Test
  public void testSave() {
    Login login = new Login();
    login.setEmail("mukesh@abc.com");
    login.setPasswordHash("passwordhash");
    loginRepository.save(login);

    assertNotNull(login.getId());

    Login savedLogin = loginRepository.findOne(login.getId());

    assertEquals(login.getId(), savedLogin.getId());
  }

}
