package classes.model;

import java.util.*;
import java.net.*;
import java.sql.*;

import com.google.gson.Gson;
import classes.model.entity.EUser;
import classes.model.dbService.DBservice;

public class Model
{
    private static Gson gson = new Gson();
    // Users user = null;

    public Model(){}

    public Boolean doReg(String userDataJSON){
        Gson gson = new Gson();
        EUser user = gson.fromJson(userDataJSON, EUser.class);
        DBservice dbService = new DBservice();

        Boolean reqSuccessful = dbService.reqDoReg(user.getLogin(), user.getPassword());

//        IRegDataService regDataService = new RegDataService();
//
//        try { user = gson.fromJson(userDataJSON, Users.class); }
//        catch (Exception e) {
//            System.out.println("ERROR in class Model doReg().");
//            return false;
//        }
//
//        if(regDataService.addData(user.getLogin(), user.getPassword(), con))
//            return true;
        return reqSuccessful;
    }

    public Boolean doLog(String userDataJSON) {
        Gson gson = new Gson();
        EUser user = gson.fromJson(userDataJSON, EUser.class);
        DBservice dbService = new DBservice();

        try { user = gson.fromJson(userDataJSON, EUser.class); }
        catch (Exception e) {
            System.out.println("Exception in MODEL.doReg(): " + e.getMessage());
            return false;
        }

        Boolean reqSuccessful = dbService.reqDoLog(user.getLogin(), user.getPassword());
//
//        if (logDataService.checkData(user.getLogin(), user.getPassword(), con))
//            return true;

        return reqSuccessful;
    }

}