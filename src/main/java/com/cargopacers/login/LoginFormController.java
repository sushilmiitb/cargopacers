package com.cargopacers.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
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
//  @Autowired
//  private AuthenticationSuccessHandler mAuthenticationHandler;
//  
//  @Autowired
//  private AuthenticationManager mAuthenticationManager; 
    /**
     * This methode will be called when user click submit button
     * @param login login details enter by the user.
     * @return
     */
  @RequestMapping(value = {"/login" }, method = RequestMethod.POST)
    public String onSubmit(HttpServletRequest request,HttpServletResponse response,@ModelAttribute Login login)
    {
    String userName = login.getj_username();
    String userPassword = login.getj_password();
    
        try
        {
          System.out.println("User name:" + userName);
         
          // Dummy check later can be moved to securityContext or can be verified using DB.
          if(userName.equals(userPassword))
          {
//            Authentication token = new UsernamePasswordAuthenticationToken(userName, userPassword, AuthorityUtils.createAuthorityList("ROLE_USER"));
//           
//            Authentication authentication = mAuthenticationManager.authenticate(token);
//            SecurityContextHolder.getContext().setAuthentication(authentication);
//            mAuthenticationHandler.onAuthenticationSuccess(request,response, authentication);
            return "redirect:shipper";
          }
           
        } catch (Exception e) {
            System.out.println("Exception in LoginController "+e.getMessage());
            e.printStackTrace();
            return "login";
        }
        return "";
    }
}
