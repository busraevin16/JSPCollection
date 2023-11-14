/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ostim.web.Ornek11;
import java.util.ArrayList;
import java.util.Comparator;

/**
 *
 * @author bsra_
 */
public class Ogrenci {

    private String ad;
    private int numara;
    private String telefon;
    private ArrayList<String> notlar;

    public Ogrenci(String ad, int numara, String telefon, ArrayList<String> notlar) {
        this.ad = ad;
        this.numara = numara;
        this.telefon = telefon;
        this.notlar = notlar;

    }

    public String getad() {
        return ad;
    }

    public void setad(String ad) {
        this.ad = ad;
    }

    public int getnumara() {
        return numara;
    }

    public void setnumara(int numara) {
        this.numara = numara;
    }

    public String gettelefon() {
        return telefon;
    }

    public void settelefon(String telefon) {
        this.telefon = telefon;
    }

    public ArrayList<String> getnotlar() {
        return notlar;
    }

    public void setnotlar(ArrayList<String> notlar) {
        this.notlar = notlar;
    }
    
 public static class OgrenciComparator implements Comparator<Ogrenci> {
        @Override
        public int compare(Ogrenci o1, Ogrenci o2) {
            return Integer.compare(o2.getnumara(), o1.getnumara());
        }
    }
    }

