package utn.estudiantes.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import utn.estudiantes.modelo.Estudiantes2022;
import utn.estudiantes.repositorio.EstudianteRepositorio;

import java.util.List;

@Service
public class EstudianteServicio implements IEstudianteServicio{
    @Autowired
    private EstudianteRepositorio estudianteRepositorio; //es el objeto que traemos

    @Override
    public List<Estudiantes2022> listarEstudiantes() { //Método listarEstudiantes - video 1
        List<Estudiantes2022> estudiantes = estudianteRepositorio.findAll(); //nos trae toda la lista de estudiantes
        return estudiantes;
    }

    @Override
    public Estudiantes2022 buscarEstudiantePorId(Integer idEstudiantes2022) {
        Estudiantes2022 estudiante = estudianteRepositorio.findById(idEstudiantes2022).orElse(null); // findById es opcional si norecibe el id o regresa en este caso un null
        return  estudiante;
    }

    @Override
    public void guardarEstudiante(Estudiantes2022 estudiante) {
        estudianteRepositorio.save(estudiante);
    }

    @Override
    public void eliminarEstudiante(Estudiantes2022 estudiante) {
        estudianteRepositorio.delete(estudiante);
    } //esta clase implementa la interface
}
