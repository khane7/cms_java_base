package com.khane7.cms.Common;

class PageInfo
{
	private int TotalItems;
	private int ItemsPerPage;
	private int CurrentPage;
	private int TotalPages;
	private int arrowTerm = 5;
	
	public int getTotalItems() {
		return TotalItems;
	}
	public void setTotalItems(int totalItems) {
		TotalItems = totalItems;
	}
	public int getItemsPerPage() {
		return ItemsPerPage;
	}
	public void setItemsPerPage(int itemsPerPage) {
		ItemsPerPage = itemsPerPage;
	}
	public int getCurrentPage() {
		return CurrentPage;
	}
	public void setCurrentPage(int currentPage) {
		CurrentPage = currentPage;
	}
	public int getTotalPages() {
		//return TotalPages;
		return (int)Math.ceil( (float)TotalItems / (float)ItemsPerPage);
	}
	public int getArrowTerm() {
		return arrowTerm;
	}
	public void setArrowTerm(int arrowTerm) {
		this.arrowTerm = arrowTerm;
	}

	
}

public class PageHelper {

	public static String getPageLink(int TotalItems, int CurrentPage, int ItemsPerPage)
	{
		PageInfo pageinfo = new PageInfo();
		pageinfo.setTotalItems(TotalItems);
		pageinfo.setCurrentPage(CurrentPage);
		pageinfo.setItemsPerPage(ItemsPerPage);

		return getPageLink(pageinfo);
	}
	
	public static String getFrontPageLink(int TotalItems, int CurrentPage, int ItemsPerPage)
	{
		PageInfo pageinfo = new PageInfo();
		pageinfo.setTotalItems(TotalItems);
		pageinfo.setCurrentPage(CurrentPage);
		pageinfo.setItemsPerPage(ItemsPerPage);

		return getFrontPageLink(pageinfo);
	}

	public String showItemNo( PageInfo pageInfo_, int minusNo )
	{
		int resultNo = pageInfo_.getTotalItems() - ((pageInfo_.getCurrentPage() - 1) * pageInfo_.getItemsPerPage() ) - minusNo;
		return String.valueOf(resultNo);
	}

	public static String getPageLink( PageInfo pageInfo ) {

		int currentStart = (pageInfo.getCurrentPage() - 1) * pageInfo.getItemsPerPage();
		StringBuilder sbStart = new StringBuilder();
		sbStart.append("<div class='row'>");
		sbStart.append("	<div class='col-sm-6' style='text-align:left;'>");
		sbStart.append("		<div class='dataTables_info' id='dataTables-example_info' role='alert' aria-live='polite' aria-relevant='all'>Showing " + currentStart + " to " + ( currentStart + pageInfo.getItemsPerPage() ) + " of " + pageInfo.getTotalItems() + " entries</div>");
		sbStart.append("	</div>");
		sbStart.append("	<div class='col-sm-6' style='text-align:right;'>");
		sbStart.append("		<div class='dataTables_paginate paging_simple_numbers' id='dataTables-example_paginate'>");
		sbStart.append("			<ul class='pagination'>");

		//paginate_button previous disabled
		String strPLink = "<li tabindex='0' aria-controls='dataTables-example' ";
		strPLink += (pageInfo.getCurrentPage() == 1) ? "class='paginate_button previous disabled' " : "class='paginate_button previous' ";
		strPLink += ">";
		int prev = 1;
		if ( pageInfo.getCurrentPage() <= pageInfo.getArrowTerm() ) {
			prev = 1;
		} else {
			prev =  pageInfo.getCurrentPage() - pageInfo.getArrowTerm();
		}
		strPLink += "<a href=\"javascript:goPageNum(" + prev + ");\" >Previous</a>";
		strPLink += "</li>";
		
		sbStart.append(strPLink);
		
		if (pageInfo.getTotalPages() > 0)
		{
			int start = ( pageInfo.getCurrentPage() - pageInfo.getArrowTerm() <= 1 ) ? 1 : pageInfo.getCurrentPage() - pageInfo.getArrowTerm();
			int limit = ( pageInfo.getCurrentPage() + pageInfo.getArrowTerm() >= pageInfo.getTotalPages() ) ? pageInfo.getTotalPages() : pageInfo.getCurrentPage() + pageInfo.getArrowTerm();
			for ( int i = start; i <= limit; i++)
			{
				String pageLink = "";
				pageLink += "<li tabindex='0' aria-controls='dataTables-example' ";
				pageLink += (i == pageInfo.getCurrentPage() ) ? " class='paginate_button active' " : " class='paginate_button ' ";
				pageLink += ">";
				pageLink += "<a href='javascript:goPageNum(" + i + ");' >" + i + "</a>";
				pageLink += "</li>";
				sbStart.append(pageLink);
			}
		}
		else
		{
			String pageLink = "";
			pageLink += "<li tabindex='0' aria-controls='dataTables-example' ";
			pageLink += (1 == pageInfo.getCurrentPage() ) ? " class='paginate_button active' " : " class='paginate_button ' ";
			pageLink += ">";
			pageLink += "<a href='javascript:goPageNum(1);' >" + 1 + "</a>";
			pageLink += "</li>";
			sbStart.append(pageLink);
		}

		//paginate_button next disabled
		String strNLink = "<li tabindex='0' aria-controls='dataTables-example' ";
		strNLink += (pageInfo.getTotalPages() == pageInfo.getCurrentPage()) ? "class='paginate_button next disabled' " : "class='paginate_button next' ";
		strNLink += ">";
		int next = 0;
		if ( pageInfo.getTotalPages() <= pageInfo.getCurrentPage() + pageInfo.getArrowTerm() ) {
			next = pageInfo.getTotalPages();
		} else {
			next =  pageInfo.getCurrentPage() + pageInfo.getArrowTerm();
		}
		strNLink += "<a href=\"javascript:goPageNum(" + next + ");\" >Next</a>";
		strNLink += "</li>";
		
		sbStart.append( strNLink );

		StringBuilder sbEnd = new StringBuilder();
		sbEnd.append("			</ul>");
		sbEnd.append("		</div>");
		sbEnd.append("	</div>");
		sbEnd.append("</div>");
		
		return sbStart.toString() + sbEnd.toString();
	}
	
	
	
	
	public static String getFrontPageLink( PageInfo pageInfo ) {

		StringBuilder sbStart = new StringBuilder();
		sbStart.append("			<ul>");

		//paginate_button previous disabled
		String strPLink = "<li tabindex='0' aria-controls='dataTables-example' ";
		strPLink += (pageInfo.getCurrentPage() == 1) ? "class='paginate_button previous disabled' " : "class='paginate_button previous' ";
		strPLink += ">";
		int prev = 1;
		if ( pageInfo.getCurrentPage() <= pageInfo.getArrowTerm() ) {
			prev = 1;
		} else {
			prev =  pageInfo.getCurrentPage() - pageInfo.getArrowTerm();
		}
		strPLink += "<a href=\"javascript:goPageNum(" + prev + ");\" ><</a>";
		strPLink += "</li>";
		
		sbStart.append(strPLink);
		
		if (pageInfo.getTotalPages() > 0)
		{
			int start = ( pageInfo.getCurrentPage() - pageInfo.getArrowTerm() <= 1 ) ? 1 : pageInfo.getCurrentPage() - pageInfo.getArrowTerm();
			int limit = ( pageInfo.getCurrentPage() + pageInfo.getArrowTerm() >= pageInfo.getTotalPages() ) ? pageInfo.getTotalPages() : pageInfo.getCurrentPage() + pageInfo.getArrowTerm();
			for ( int i = start; i <= limit; i++)
			{
				String pageLink = "";
				pageLink += "<li tabindex='0' aria-controls='dataTables-example' ";
				pageLink += (i == pageInfo.getCurrentPage() ) ? " class='paginate_button active' " : " class='paginate_button ' ";
				pageLink += ">";
				pageLink += "<a href='javascript:goPageNum(" + i + ");' >" + i + "</a>";
				pageLink += "</li>";
				sbStart.append(pageLink);
			}
		}
		else
		{
			String pageLink = "";
			pageLink += "<li tabindex='0' aria-controls='dataTables-example' ";
			pageLink += (1 == pageInfo.getCurrentPage() ) ? " class='paginate_button active' " : " class='paginate_button ' ";
			pageLink += ">";
			pageLink += "<a href='javascript:goPageNum(1);' >" + 1 + "</a>";
			pageLink += "</li>";
			sbStart.append(pageLink);
		}

		//paginate_button next disabled
		String strNLink = "<li tabindex='0' aria-controls='dataTables-example' ";
		strNLink += (pageInfo.getTotalPages() == pageInfo.getCurrentPage()) ? "class='paginate_button next disabled' " : "class='paginate_button next' ";
		strNLink += ">";
		int next = 0;
		if ( pageInfo.getTotalPages() <= pageInfo.getCurrentPage() + pageInfo.getArrowTerm() ) {
			next = pageInfo.getTotalPages();
		} else {
			next =  pageInfo.getCurrentPage() + pageInfo.getArrowTerm();
		}
		strNLink += "<a href=\"javascript:goPageNum(" + next + ");\"  >></a>";
		strNLink += "</li>";
		
		sbStart.append( strNLink );

		StringBuilder sbEnd = new StringBuilder();
		sbEnd.append("			</ul>");
		
		return sbStart.toString() + sbEnd.toString();
	}
	
}
