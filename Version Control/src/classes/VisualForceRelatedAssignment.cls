public class VisualForceRelatedAssignment 
{
    public PageReference gotonext()
    {
        PageReference p1=new PageReference('/apex/visualforcepagecustomobject');
        return p1;
    }
    public PageReference gotonext1()
    {
        PageReference p2=new PageReference('/apex/VisualForceAssignmentList');
        return p2;
    }
    public PageReference gotonext2()
    {
        PageReference p3=new PageReference('/apex/VisualForceAssignmentRelated');
        return p3;
    }

}