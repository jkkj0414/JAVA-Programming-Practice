package com.WhereECO.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.WhereECO.dto.Address;
import com.WhereECO.mapper.AddressMapper;

@Controller
@RequestMapping("/address")
public class AddressRestController {
    @Autowired AddressMapper addressMapper;

    @GetMapping("addresslist")
    public String list(Model model) {
        List<Address> addressList = addressMapper.findAll();
        model.addAttribute("address", addressList);
        return "address/addresslist";
    }

    @GetMapping("column")
    public String column(Model model, @RequestParam("id") int id) {
        Address address = addressMapper.findOne(id);
        List<Address> addressList = addressMapper.findAll();
        model.addAttribute("address", address);
        model.addAttribute("addressList", addressList);
        return "address/addresslist";
    }
}
