package com.example.dongvatdemo;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletDongVat", value = {"/ServletDongVat/hien_thi"
        , "/ServletDongVat/add"})

public class ServletDongVat extends HttpServlet {
    private ArrayList<DongVat> listDV = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        if (uri.contains("hien_thi")) {
            this.hienthiDongVat(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String ten = request.getParameter("tenDv");
        int tuoi = Integer.parseInt(request.getParameter("tuoi"));
        boolean gioitinh = Boolean.parseBoolean(request.getParameter("gioiTinh"));
        boolean trangthai = Boolean.parseBoolean(request.getParameter("trangThai"));
        DongVat dongvat = new DongVat(id, ten, tuoi, gioitinh, trangthai);
        listDV.add(dongvat);
        response.sendRedirect("/ServletDongVat/hien_thi");

    }

    private void hienthiDongVat(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        listDV.add(new DongVat(1, "Meo", 10, true, false));
        listDV.add(new DongVat(2, "Cho", 11, false, true));
        listDV.add(new DongVat(4, "Ga", 12, false, true));

        request.setAttribute("listDV", listDV);
        request.getRequestDispatcher("/DongVatDetail.jsp").forward(request, response);
    }
}

