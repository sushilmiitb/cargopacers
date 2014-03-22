package com.cargopacers.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 * Login controller which handles all the request for login.
 * @author Prashant
 *
 */
@Controller
public class LoginFormController {
  

  Login mLoginDetails = new Login();
    /**
     * This methode will be called when user click submit button
     * @param login login details enter by the user.
     * @return
     */
  @RequestMapping(value = {"/login" }, method = RequestMethod.POST)
    public ModelAndView onSubmit(@ModelAttribute Login login)
    {
    String userName = login.getUser();
    String userPassword = login.getPassword();
    
        try
        {
          System.out.println("User name:" + userName);
         
          // Dummy check later can be moved to securityContext or can be verified using DB.
          if(userName.equals("admin") && userPassword.equals("admin"))
          {
            return new ModelAndView("shipper", "loginDetails", userName.toString());
          }
           
        } catch (Exception e) {
            System.out.println("Exception in LoginController "+e.getMessage());
            e.printStackTrace();
            return new ModelAndView("login", "loginDetails", "exception");
        }
        return new ModelAndView("home", "loginDetails", userName.toString());
    }
}
