package br.ueg.patrimonio.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/test")
public class TestController {
    @GetMapping
    public String hello() {
        return "API funcionando! mude 2 - Deploy automático testado com sucesso";
    }
}
