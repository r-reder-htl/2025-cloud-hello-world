package at.htl.vehicle;

import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class Repository implements PanacheRepository<Vehicle> {
}
