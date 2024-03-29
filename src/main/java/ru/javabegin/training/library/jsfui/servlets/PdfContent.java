package ru.javabegin.training.library.jsfui.servlets;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import ru.javabegin.training.library.jsfui.controller.BookController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet(name = "PdfContent",
        urlPatterns = {"/PdfContent"})
public class PdfContent extends HttpServlet {

    private ApplicationContext context;

    @Override
    public void init() throws ServletException {
        // получение доступа к Spring контексту (контейнеру)
        context = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
    }

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OutputStream out = response.getOutputStream();

        try {

            // считываем параметры
            long id = Long.valueOf(request.getParameter("id"));
            long viewCount = Long.valueOf(request.getParameter("viewCount"));

            // получаем Spring бин
            BookController bookController =  ((BookController)context.getBean("bookController"));

            // получить контент по id
            byte[] content = bookController.getContent(id);

            if (content==null){
                response.sendRedirect(request.getContextPath()+"/error/error-pdf.html");
            }else {
                response.setContentType("application/pdf");

                // увеличить кол-во просмотров книги на 1
                bookController.updateViewCount(viewCount, id);

                response.setContentLength(content.length);
                out.write(content);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
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
