namespace PRN211_Project_Group3.Models;

public class SearchSessionModel
{
    public bool HasError { get; set; }
    public string Message { get; set; }
    public List<PRN211_Project_Group3.Models.Session> Data { get; set; }
}