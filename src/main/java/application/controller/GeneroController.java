package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Genero;
import application.repository.GeneroRepository;

@Controller
@RequestMapping(value = {"/genero", "/"})
public class GeneroController {
    @Autowired
    private GeneroRepository generoRepo;

    @RequestMapping(value = {"/list", ""})
    public String select(Model ui) {
        ui.addAttribute("generos", generoRepo.findAll());
        return "list";
    }

    @RequestMapping("/insert")
    public String insert() {
        return "formInsert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome){
        Genero genero = new Genero();
        genero.setNome(nome);

        generoRepo.save(genero);
        return "redirect:/genero/list";
    }

    @RequestMapping("/update")
    public String update(@RequestParam("id") long id, Model ui) {
        Optional<Genero> resultado = generoRepo.findById(id);
        if (resultado.isPresent()){
            ui.addAttribute("genero", resultado.get());
            return "formUpdate";
        }
        return "redirect:/genero/list";
    }

    @RequestMapping(value = "/update", method=RequestMethod.POST)
    public String update(
        @RequestParam("id") long id,
        @RequestParam("nome") String nome) {
            Optional<Genero> resultado = generoRepo.findById(id);
            if(resultado.isPresent()) {
                Genero genero = resultado.get();
                genero.setNome(nome);
                generoRepo.save(genero);
            }
            return "redirect:/genero/list";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("id") long id, Model ui) {
        Optional<Genero> resultado = generoRepo.findById(id);
        if (resultado.isPresent()) {
            ui.addAttribute("genero", resultado.get());
            return "formDelete";
        }
        return "redirect:/genero/list";
    }

    @RequestMapping(value = "/delete", method=RequestMethod.POST)
    public String delete(@RequestParam("id") long id) {
        generoRepo.deleteById(id);
        return "redirect:/genero/list";
    }
}