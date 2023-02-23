/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fecha;
import java.util.*;
import java.text.SimpleDateFormat;

/**
 *
 * @author bosque
 */
public class Country {

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFlagImage() {
        return flagImage;
    }

    public void setFlagImage(String flagImage) {
        this.flagImage = flagImage;
    }

    public int getContribution() {
        return contribution;
    }

    public void setContribution(int contribution) {
        this.contribution = contribution;
    }

    private SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    public String parseDate(GregorianCalendar cal) {
        /**
         * Creates a Date object with the same values as the GregorianCalendar parameter.
         * Then, it converts it to a formatted string with SimpleDateFormat and the format() method.
         */
        try {
            Date thisDate = cal.getTime();
            return sdf.format(thisDate);
        } catch (Exception e) {
            // If the date cannot be formatted:
            System.out.println(e.getMessage());
            return null;
        }
    }

    public String getEntryDate() {
        return parseDate(entryDate);
    }

    public void setEntryDate(GregorianCalendar entryDate) {
        this.entryDate = entryDate;
    }

    public Country(String name, String flagImage, int contribution, GregorianCalendar entryDate){
        this.name = name;
        this.flagImage = flagImage;
        this.contribution = contribution;
        this.entryDate = entryDate;
    }

    private String name = "";
    private String flagImage = "";
    private int contribution = 0;
    private GregorianCalendar entryDate;

}
