using BestStoreMVC.Models;
using BestStoreMVC.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Session;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;

namespace BestStoreMVC.Controllers
{
    public class CartController : Controller
	{
		private readonly ApplicationDbContext context;
		private readonly IWebHostEnvironment environment;

		public CartController(ApplicationDbContext context, IWebHostEnvironment environment)
		{
			this.context = context;
			this.environment = environment;
		}

		public IActionResult Index()
		{
			return View();
		}

		public IActionResult AddToCart(int id)
		{
			if (string.IsNullOrEmpty(HttpContext.Session.GetString("UserEmail")))
			{
				if (string.IsNullOrEmpty(HttpContext.Request.Cookies["UserEmail"]))
				{
                    return RedirectToAction("SignUp", "Users");
                }
            }
			var product = context.Products.Find(id);
			if (product == null)
			{
				return RedirectToAction("Phones", "Products");
			}

			// create requestItemsDto from RequestItemsDto
			var requestItemsDto = new RequestItemsDto()
			{
				Name = product.Name,
				Price = product.Price,
			};

			ViewData["ImageFileName"] = product.ImageFileName;
			return View(requestItemsDto);
		}

		[HttpPost]
		public IActionResult AddToCart(int id, RequestItemsDto requestItemsDto)
		{
			var product = context.Products.Find(id);

			if (product != null) // Ensure product exists
			{
				var REQItems = context.RequestItem.FirstOrDefault(item => item.RequestProduct == product); // Convert to a list to evaluate the query

				if (REQItems != null) // Ensure REQItems is not null and contains items
				{
					string Email = HttpContext.Session.GetString("UserEmail");
					if (Email == null)
					{
                        Email = HttpContext.Request.Cookies["UserEmail"];
                    }
                    REQItems.Cuantity += requestItemsDto.Cuantity;
					REQItems.UserEmail = Email;
					context.RequestItem.Update(REQItems);
					context.SaveChanges();
                    return Content("<script>sessionStorage.setItem('reloadPage', 'true'); window.history.go(-2); </script>", "text/html");
                }

            }
			if (!ModelState.IsValid)
			{
				return View(requestItemsDto);
			}

			//save the new Request to the database
			RequestItems requestItems = new RequestItems()
			{
				RequestProduct = product,
				Cuantity = requestItemsDto.Cuantity,
			};

			context.RequestItem.Add(requestItems);
			context.SaveChanges();
            return Content("<script>sessionStorage.setItem('reloadPage', 'true'); window.history.go(-2); </script>", "text/html");

		}
		public IActionResult ShowCart()
		{
            string Email = HttpContext.Session.GetString("UserEmail");
			if (Email == null)
			{
                Email = HttpContext.Request.Cookies["UserEmail"];
            }
            if (!string.IsNullOrEmpty(Email))
			{
				var requestItems = context.RequestItem
                .Include(item => item.RequestProduct) // Eagerly load the related RequestProduct entity
                .Where(item => item.UserEmail == Email)
                .OrderByDescending(p => p.Id)
                .ToList();
				if (requestItems == null) // Check if there are any items in the list
				{
					return Content("<script>window.history.go(-1); window.location.reload(true);</script>", "text/html");
				}
				else
				{
					return View(requestItems);
					//return RedirectToAction(null);
				}
            }
			else
			{
                return RedirectToAction("SignUp", "Users");
            }

        }
        public IActionResult EditQuantity(int id)
		{
			// Use Include to load the related RequestProduct entity
			var Reqproduct = context.RequestItem.Include(ri => ri.RequestProduct).FirstOrDefault(ri => ri.Id == id);

			if (Reqproduct == null || Reqproduct.RequestProduct == null)
			{
				return RedirectToAction("ShowCart", "Cart");
			}

			// Create requestItemsDto from RequestItemsDto
			var requestItemsDto = new RequestItemsDto()
			{
				Name = Reqproduct.RequestProduct.Name,
				Price = Reqproduct.RequestProduct.Price,
				Cuantity = Reqproduct.Cuantity,
			};

			ViewData["ImageFileName"] = Reqproduct.RequestProduct.ImageFileName;
			return View(requestItemsDto);
		}

		[HttpPost]
		public IActionResult EditQuantity(int id,RequestItemsDto requestItemsDto)
		{
			var Reqproduct = context.RequestItem.Find(id);
			if (Reqproduct==null)
			{
				return RedirectToAction("ShowCart", "Cart");
			}
			if (!ModelState.IsValid)
			{
				ViewData["Cuantity"] = Reqproduct.Cuantity;
				return View(requestItemsDto);
			}
			Reqproduct.Cuantity = requestItemsDto.Cuantity;

			context.SaveChanges();
			return RedirectToAction("ShowCart", "Cart");
		}
		public IActionResult Delete(int id)
		{
			var Reqproduct = context.RequestItem.Find(id);
			if (Reqproduct == null)
			{
				return RedirectToAction("ShowCart", "Cart");
			}
			context.RequestItem.Remove(Reqproduct);
			context.SaveChanges(true);
			return RedirectToAction("ShowCart", "Cart");
		}
	}
}
