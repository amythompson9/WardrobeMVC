using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeMVC.Models;

namespace WardrobeMVC.Controllers
{
    public class FeetwearsController : Controller
    {
        private WardrobeDBEntities db = new WardrobeDBEntities();

        // GET: Feetwears
        public ActionResult Index()
        {
            var feetwears = db.Feetwears.Include(f => f.Color).Include(f => f.Occasion).Include(f => f.Season);
            return View(feetwears.ToList());
        }

        // GET: Feetwears/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Feetwear feetwear = db.Feetwears.Find(id);
            if (feetwear == null)
            {
                return HttpNotFound();
            }
            return View(feetwear);
        }

        // GET: Feetwears/Create
        public ActionResult Create()
        {
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName");
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionName");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName");
            return View();
        }

        // POST: Feetwears/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "FootwearID,Name,Photo,Type,ColorID,SeasonID,OccasionID")] Feetwear feetwear)
        {
            if (ModelState.IsValid)
            {
                db.Feetwears.Add(feetwear);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", feetwear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionName", feetwear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", feetwear.SeasonID);
            return View(feetwear);
        }

        // GET: Feetwears/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Feetwear feetwear = db.Feetwears.Find(id);
            if (feetwear == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", feetwear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionName", feetwear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", feetwear.SeasonID);
            return View(feetwear);
        }

        // POST: Feetwears/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "FootwearID,Name,Photo,Type,ColorID,SeasonID,OccasionID")] Feetwear feetwear)
        {
            if (ModelState.IsValid)
            {
                db.Entry(feetwear).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorName", feetwear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionName", feetwear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", feetwear.SeasonID);
            return View(feetwear);
        }

        // GET: Feetwears/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Feetwear feetwear = db.Feetwears.Find(id);
            if (feetwear == null)
            {
                return HttpNotFound();
            }
            return View(feetwear);
        }

        // POST: Feetwears/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Feetwear feetwear = db.Feetwears.Find(id);
            db.Feetwears.Remove(feetwear);
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
