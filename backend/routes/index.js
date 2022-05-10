const express = require("express");
const pool = require("../config");

router = express.Router();

router.get("/getcourse", async function (req, res, next) {
  try {
    const search = req.query.search || ''
    const [rows, fields] = await pool.query('SELECT * FROM course');
    return res.json(rows);
  } catch (err) {
    return res.status(500).json(err)
  }
});

exports.router = router;
