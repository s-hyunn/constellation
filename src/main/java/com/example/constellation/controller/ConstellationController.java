package com.example.constellation.controller
;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.constellation.dao.IConstellationDAO;
import com.example.constellation.dto.ConstellationDto;

@Controller
public class ConstellationController {

    @Autowired
    IConstellationDAO condao;

    @GetMapping("/")
    public String root() {
        return "index";
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("stars", condao.selectAll());
        return "list";
    }

    // 수정폼
    @GetMapping("/edit/{id}")
    public String editForm(@PathVariable("id") int id, Model model) {
        model.addAttribute("constellation", condao.selectById(id));
        return "form"; // actionUrl 필요 없음
    }

    // 등록폼
    @GetMapping("/create")
    public String createForm(Model model) {
        model.addAttribute("constellation", new ConstellationDto()); // 빈 객체 넘김
        return "form";
    }

    // 등록 처리
    @PostMapping("/create")
    public String create(ConstellationDto dto) {
        condao.insert(dto);
        return "redirect:/list";
    }

    // 수정 처리
    @PostMapping("/edit")
    public String edit(ConstellationDto dto) {
        condao.update(dto);
        return "redirect:/list";
    }

    // 결과 확인
    @PostMapping("/result")
    public String result(@RequestParam("id") int id, Model model) {
        model.addAttribute("star", condao.selectById(id));
        return "result";
    }
    
    @PostMapping("/delete")
    public String delete(@RequestParam("id") int id) {
        condao.delete(id);
        return "redirect:/list";
    }
}
