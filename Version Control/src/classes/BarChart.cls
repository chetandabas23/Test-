public class BarChart
{
   public list<Data> getData()
   {
       return BarChart.getChartData();
   }
     string abzdf;
    @RemoteAction
    public static list<Data> getRemoveData()
    {
        return BarChart.getChartData();
    }
    public static list<Data> getChartData()
    {
        list<data> data=new list<data>();
        data.add(new Data('India',134,2001));
        data.add(new data('China',155,2002));
        data.add(new data('france',75,2003));
        data.add(new data('Germany',154,2004));
        data.add(new Data('USA',255,2005));
        return data;
        
    }
    public class data
    {
        public string country{get; set;}
        public Integer medal{get; set;}
        public integer year{get; set;}
        public data(string country,integer medal,integer year)
        {
            this.country=country;
            this.medal=medal;
            this.year=year;
        }
        
	}
}