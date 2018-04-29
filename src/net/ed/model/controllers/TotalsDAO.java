package net.ed.model.controllers;

import java.util.List;

import net.ed.yahoofinancescraper.entity.myTotals;

public interface TotalsDAO {

	public List<myTotals> getTotals();
	
}
