package at.htl.vehicle;

import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/vehicles")
public class Resource {

    @Inject
    Repository repository;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getVehicles() {
            return Response.ok(repository.listAll()).build();
    }
}
