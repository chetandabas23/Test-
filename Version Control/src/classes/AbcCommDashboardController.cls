public class AbcCommDashboardController 
{
    public pagereference CreateNewCase()
    {
         pagereference pr=new pagereference('/apex/NewCase');
        return pr;
    }
    public pagereference ViewAllCase()
    {
        pagereference pr1=new pagereference('/apex/ViewCase');
        return pr1;
    }
    public pagereference InstallBase()
    {
        pagereference pr2=new pagereference('/apex/InstallBase');
        return pr2;
    }
    public pagereference SltnToCmmnPrblms()
    {
        pagereference pr3=new pagereference('/apex/SolutionToCommonProblem');
        return pr3;
    }
    public pagereference RNADetails()
    {
        pagereference pr4=new pagereference('/apex/RNADetails');
        return pr4;
    }
    public pagereference MyInformation()
    {
        pagereference p5=new pagereference('/apex/MyInformation');
        return p5;
    }

}