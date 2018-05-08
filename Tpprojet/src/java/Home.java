

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alilo
 */
public class Home extends HttpServlet {

   
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          String user= request.getParameter("user");
          String pass= request.getParameter("pass");
          
          // recupere la session  et ajouter 2 variable de session user et pass pour connecter la bdd
          
           HttpSession session = request.getSession();
           session.setAttribute("user", user);
           session.setAttribute("pass", pass);
          String Eroor= new String("Les mots de passe entrés sont différents, merci de les saisir à nouveau.") ;
              
            /* verification de champ de formulair */
                 if(!user.isEmpty()) {
                  /* verification de login */
                     
      if((user.equalsIgnoreCase("alilo")&&pass.equalsIgnoreCase("alilo"))||(user.equalsIgnoreCase("akram") && pass.equalsIgnoreCase("root"))){
                      request.setAttribute("user", user);
                      request.setAttribute("ERR", "");
                        RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/home.jsp");
                        rd.forward(request, response);
                    } 
                    else{
                        request.setAttribute("ERR", Eroor);
                         RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                        rd.forward(request, response);
                        session.invalidate();
                    }
                 }
                 else{
                     request.setAttribute("ERR", "remplir les chamep");
                         RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                        rd.forward(request, response);
                        session.invalidate();
                 }  
          
        } finally {
            out.close();
        }
    }

}
