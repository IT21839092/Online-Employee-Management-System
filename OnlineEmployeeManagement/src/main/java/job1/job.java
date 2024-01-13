package job1;

public class job {
	
		

		private int jid;
		private String title ;
		private String description;
		private String Start_date;
		private String end_date;
		
		public job(int jid1, String title2, String description2, String start_date2, String end_date2)
		 {
			super();
			this.jid=jid1;
			this.title=title;
			this.description=description;
			this.Start_date=Start_date;
			this.end_date=end_date;
			
			
		}

		public int getjid() {
			return jid;
		}

		
		public String getgettitle() {
			return title;
		}

		
		public String getdescription() {
			return description;
		}
		public String getStart_date() {
			return Start_date;
		}
		public String getend_date() {
		
			return end_date;
		}

		//public void add(job c) {
			// TODO Auto-generated method stub
			
		}

