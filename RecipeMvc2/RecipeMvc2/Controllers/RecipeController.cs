using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using RecipeMvc2.Models;

namespace RecipeMvc2.Controllers
{
    public class RecipeController : Controller
    {
        private RecipeEntities db = new RecipeEntities();

        // GET: Recipe
        public ActionResult Index()
        {
            var recipes = db.Recipes.Include(r => r.CookingTime1).Include(r => r.Ingredient1).Include(r => r.Serve);
            return View(recipes.ToList());
        }

        // GET: Recipe/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Recipe recipe = db.Recipes.Find(id);
            if (recipe == null)
            {
                return HttpNotFound();
            }
            return View(recipe);
        }

        // GET: Recipe/Create
        public ActionResult Create()
        {
            ViewBag.RecipeId = new SelectList(db.CookingTimes, "CookingTimeId", "CookingTimeId");
            ViewBag.RecipeId = new SelectList(db.Ingredients, "IngredientId", "Ingredient1");
            ViewBag.RecipeId = new SelectList(db.Serves, "ServesId", "RecipeId");
            return View();
        }

        // POST: Recipe/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "RecipeId,RecipeName,CookingTime,Serves,Ingredient,CookingTimeId,ServesId,IngredientId")] Recipe recipe)
        {
            if (ModelState.IsValid)
            {
                db.Recipes.Add(recipe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RecipeId = new SelectList(db.CookingTimes, "CookingTimeId", "CookingTimeId", recipe.RecipeId);
            ViewBag.RecipeId = new SelectList(db.Ingredients, "IngredientId", "Ingredient1", recipe.RecipeId);
            ViewBag.RecipeId = new SelectList(db.Serves, "ServesId", "RecipeId", recipe.RecipeId);
            return View(recipe);
        }

        // GET: Recipe/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Recipe recipe = db.Recipes.Find(id);
            if (recipe == null)
            {
                return HttpNotFound();
            }
            ViewBag.RecipeId = new SelectList(db.CookingTimes, "CookingTimeId", "CookingTimeId", recipe.RecipeId);
            ViewBag.RecipeId = new SelectList(db.Ingredients, "IngredientId", "Ingredient1", recipe.RecipeId);
            ViewBag.RecipeId = new SelectList(db.Serves, "ServesId", "RecipeId", recipe.RecipeId);
            return View(recipe);
        }

        // POST: Recipe/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "RecipeId,RecipeName,CookingTime,Serves,Ingredient,CookingTimeId,ServesId,IngredientId")] Recipe recipe)
        {
            if (ModelState.IsValid)
            {
                db.Entry(recipe).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.RecipeId = new SelectList(db.CookingTimes, "CookingTimeId", "CookingTimeId", recipe.RecipeId);
            ViewBag.RecipeId = new SelectList(db.Ingredients, "IngredientId", "Ingredient1", recipe.RecipeId);
            ViewBag.RecipeId = new SelectList(db.Serves, "ServesId", "RecipeId", recipe.RecipeId);
            return View(recipe);
        }

        // GET: Recipe/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Recipe recipe = db.Recipes.Find(id);
            if (recipe == null)
            {
                return HttpNotFound();
            }
            return View(recipe);
        }

        // POST: Recipe/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Recipe recipe = db.Recipes.Find(id);
            db.Recipes.Remove(recipe);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
