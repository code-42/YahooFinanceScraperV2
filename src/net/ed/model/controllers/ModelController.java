package net.ed.model.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.ed.yahoofinancescraper.entity.myTotals;

@Controller
@RequestMapping("/stock")
public class ModelController {
	
	// need to inject the stock dao
	@Autowired
	private TotalsDAO totalsDAO;

	@RequestMapping("/list")
	public String listStocks(Model theModel) {
		
		// get customers from the dao
		List<myTotals> theTotals = totalsDAO.getTotals();
				
		// add the customers to the model
		theModel.addAttribute("totals", theTotals);
		
		return "list-totals";
	}
	
}


