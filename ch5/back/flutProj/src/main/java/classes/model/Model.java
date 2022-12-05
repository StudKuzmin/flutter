package classes.model;

import java.util.*;
import java.net.*;
import java.sql.*;

import classes.model.JWT.JwtModeling;
import com.auth0.jwt.JWT;
import com.google.gson.Gson;
import classes.model.entity.EUser;
import classes.model.dbService.DBservice;

public class Model
{
    private Gson gson;
    private EUser user;
    private DBservice dbService;
    private JwtModeling jwt;

    public Model(){
        gson = new Gson();
        dbService = new DBservice();
        jwt = new JwtModeling();
    }

    public Boolean doReg(String userDataJSON){
        try {
            user = gson.fromJson(userDataJSON, EUser.class);
        }
        catch (Exception e) {
            System.out.println("Exception in MODEL.doReg(): " + e.getMessage());
            return false;
        }
        Boolean reqSuccessful = dbService.reqDoReg(user.getLogin(), user.getPassword());

        return reqSuccessful;
    }

    public String doLog(String userDataJSON) {
        Boolean reqDbIsOk = false;
        String token = "false";

        try {
            user = gson.fromJson(userDataJSON, EUser.class);
        }
        catch (Exception e) {
            System.out.println("Exception in MODEL.doReg(): " + e.getMessage());
            return "false";
        }

        reqDbIsOk = dbService.reqDoLog(user.getLogin(), user.getPassword());
        if (reqDbIsOk){
            token = jwt.generateToken(user.getLogin(), user.getPassword());
        }

        return token;
    }


}