package net.ed.yahoofinancescraper.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="myTotals")
public class myTotals {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="todaysDate")
	private String todaysDate;
	
	@Column(name="currentMarketValue")
	private String currentMarketValue;
	
	@Column(name="dayGain")
	private String dayGain;
	
	@Column(name="totalGain")
	private String totalGain;
	
	public myTotals() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTodaysDate() {
		return todaysDate;
	}

	public void setTodaysDate(String todaysDate) {
		this.todaysDate = todaysDate;
	}

	public String getCurrentMarketValue() {
		return currentMarketValue;
	}

	public void setCurrentMarketValue(String currentMarketValue) {
		this.currentMarketValue = currentMarketValue;
	}

	public String getDayGain() {
		return dayGain;
	}

	public void setDayGain(String dayGain) {
		this.dayGain = dayGain;
	}

	public String getTotalGain() {
		return totalGain;
	}

	public void setTotalGain(String totalGain) {
		this.totalGain = totalGain;
	}

	@Override
	public String toString() {
		return "Totals [id=" + id + ", todaysDate=" + todaysDate + ", currentMarketValue=" + currentMarketValue
				+ ", dayGain=" + dayGain + ", totalGain=" + totalGain + "]";
	}		
}





