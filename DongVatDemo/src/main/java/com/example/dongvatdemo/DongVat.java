package com.example.dongvatdemo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class DongVat {
    private int id;
    private String tenDv;
    private int tuoi;
    private boolean gioiTinh;
    private boolean trangThai;
}
