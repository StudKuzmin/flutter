package classes.controller;

import jakarta.ws.rs.Path;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Response;



import classes.model.Model;

@Path("/")
public class Service {

	@POST
	@Path("/regData")
	@Consumes("application/json")
	@Produces("application/json")
	public Response regData(String userDataJSON) throws Exception {
		Boolean dataAdded = false;
		Model model = new Model();

		try {
			// Данные успешно добавлены
			dataAdded = model.doReg(userDataJSON);
			if (dataAdded) {
				return Response.ok(true).build();
			}
			return Response.ok(false).build();

		} catch (Exception e) {
			System.out.println("Exception in SERVICE class: " + e.getMessage());
			return Response.status(Response.Status.BAD_REQUEST).entity(e.getMessage()).build();
		}


//		return Response
//				.ok(dataAdded)
////				.status(200)
////				.header("Access-Control-Allow-Origin","*")
////				.header("Access-Control-Allow-Credentials","true")
////				.header("Access-Control-Allow-Headers","origin, content-type, accept, authorization")
////				.header("Access-Control-Allow-Methods","GET, POST, PUT, DELETE, OPTIONS, HEAD")
//				.build();

	}

	@POST
	@Path("/logData")
	@Consumes("application/json")
	@Produces("application/json")
	public Response logData(/*@HeaderParam("Authentication") String st,*/ String userDataJSON)
	{
//		String token;
		Boolean dataIsOk = false;
		Model model = new Model();

		try
		{
			model = new Model();

			// Данные совпали
			dataIsOk = model.doLog(userDataJSON);
			//if (dataIsOk) {
				//token = model.generateToken();
				//return Response.ok(token).build();
			//}
		}
		catch (Exception e) {
			return Response.status(Response.Status.BAD_REQUEST).entity(e.getMessage()).build();
		}

		return Response.ok(dataIsOk).build();
	}

	@GET
	@Path("/test")
	@Consumes("application/json")
	@Produces("application/json")
	public Response test(/*@HeaderParam("Authentication") String st,*/ String userDataJSON)
	{
//		String token;
		Boolean dataIsOk = false;
		Model md = new Model();


//
//		try
//		{
//			model = new Model();
//
//			// Данные совпали
//			data_is_ok = model.doLog(userDataJSON);
//			if (data_is_ok) {
//				token = model.generateToken();
//				return Response.ok(token).build();
//			}
//			return Response.ok(false).build();
//		}
//		catch (Exception e) { return Response.status(Response.Status.BAD_REQUEST).entity(e.getMessage()).build(); }

		return Response.ok(md.doReg("")).build();
	}

}