
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class MedicineServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MedicineServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
            //----------------------------------------------------------------------------------------
            String medicineName = request.getParameter("mName");
            String supplierName = request.getParameter("sName");
            String purchasePrice = request.getParameter("purchasePrice");
            String quantity = request.getParameter("quantity");
            String branch = request.getParameter("branch");
            //make user object
            Medicine medicineModel = new Medicine(medicineName, supplierName, purchasePrice, quantity, branch);

            //create a database model
            MedicineDatabase addMed = new MedicineDatabase(ConnectionPro.getConnection());
            if (addMed.saveMed(medicineModel)) {
                HttpSession session = request.getSession();
                session.setAttribute("message","Medicine added successfull..");
               response.sendRedirect("medicine.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("message","Medicine added successfull..");
               response.sendRedirect("medicine.jsp");
            }
            //-----------------------------------------------------------------------------------------
            
            
            
            out.println("</body>");
            out.println("</html>");
        }
    }

       // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
