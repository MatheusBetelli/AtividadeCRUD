package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import application.model.Genero;
import application.repository.GeneroRepository;

@Controller
public class GeneroController {

    @Autowired
    private GeneroRepository generoRepo;

    @GetMapping("/")
    public String index() {
        return "redirect:/list";
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("generos", generoRepo.findAll());
        return "list";
    }

    @GetMapping("/insert")
    public String insert() {
        return "formInsert";
    }

    @PostMapping("/insert")
    public String insert(@RequestParam String nome, @RequestParam String descricao) {
        Genero genero = new Genero();
        genero.setNome(nome);
        genero.setDescricao(descricao);
        generoRepo.save(genero);
        return "redirect:/list";
    }

    @GetMapping("/update")
    public String update(@RequestParam Long id, Model model) {
        model.addAttribute("genero", generoRepo.findById(id).orElseThrow());
        return "formUpdate";
    }

    @PostMapping("/update")
    public String update(@RequestParam Long id, @RequestParam String nome, @RequestParam String descricao) {
        Genero genero = generoRepo.findById(id).orElseThrow();
        genero.setNome(nome);
        genero.setDescricao(descricao);
        generoRepo.save(genero);
        return "redirect:/list";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam Long id, Model model) {
        model.addAttribute("genero", generoRepo.findById(id).orElseThrow());
        return "formDelete";
    }

    @PostMapping("/delete")
    public String delete(@RequestParam Long id) {
        generoRepo.deleteById(id);
        return "redirect:/list";
    }
}