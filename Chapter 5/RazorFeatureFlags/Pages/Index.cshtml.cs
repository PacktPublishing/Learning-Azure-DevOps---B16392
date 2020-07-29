using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using Microsoft.FeatureManagement;

namespace RazorFeatureFlags.Pages
{
    public class IndexModel : PageModel
    {
     private readonly IFeatureManager _featureManager;
     public IndexModel(IFeatureManager featureManager)
     {
        _featureManager = featureManager;
     }
     public static string WelcomeMessage { get; set; }

     public async Task OnGetAsync() 
     {
        WelcomeMessage = await _featureManager.IsEnabledAsync("ChangeBanner") ? "Welcome to Learn Azure DevOps" : "Welcome";
     }
    }
}