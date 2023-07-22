using System.ComponentModel.DataAnnotations.Schema;

namespace PRN211_Project_Group3.Models
{
    public class Material
    {
        public int MaterialId { get; set; }
        public string MaterialDescription { get; set; }
        public string Author { get; set; }
        public string Publisher { get; set; }
        public string PublishedDate { get; set; }
        public string Url { get; set; }
        [ForeignKey("Subject")]
        public string SubjectCode { get; set; }

        public virtual Subject Subject { get; set; }
    }
}
