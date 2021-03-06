package net.ed.model.controllers;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import net.ed.yahoofinancescraper.entity.myTotals;

@Repository
public class TotalsDAOImpl implements TotalsDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	@Transactional
	public List<myTotals> getTotals() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query
		Query<myTotals> theQuery = 
				currentSession.createQuery("from myTotals", myTotals.class);
		
		// execute query and get result list
		List<myTotals> totals = theQuery.getResultList();
				
		// return the results		
		return totals;
	}

}






