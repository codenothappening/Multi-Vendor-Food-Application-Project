const { messaging } = require("firebase-admin");
const Restaurant = require("../models/Restaurant");

module.exports = {
  addRestaurant: async (req, res) => {
    const {
      title,
      time,
      imageUrl,
      pickup,
      delivery,
      isAvailable,
      owner,
      code,
      logoUrl,
      coords,
    } = req.body;
    if (
      !title ||
      !time ||
      !imageUrl ||
      !owner ||
      !code ||
      !coords ||
      !logoUrl ||
      !coords.latitude ||
      !coords.longitude ||
      !coords.address ||
      !coords.title
    ) {
      return res
        .status(400)
        .json({ status: false, message: "All fields are required" });
    }
    try {
      const newRestaurant = new Restaurant(req.body);
      await newRestaurant.save();
      res
        .status(201)
        .json({ status: true, message: "Restaurant added Successfully" });
    } catch (error) {
      res.status(500).json({ status: false, message: error.message });
    }
  },
  getRestaurantById: async (req, res) => {
    const id = req.params.id;
    try {
      const restaurant = await Restaurant.findById(id);
      res.status(200).json(restaurant);
    } catch (error) {
      res.status(500).json({ status: false, message: error.message });
    }
  },
  getAllNearByRestaurants: async (req, res) => {
    const code = req.params.code;

    try {
      let randomRestaurant = [];
      if (code) {
        randomRestaurant = Restaurant.aggregate([
          {
            $match: { code: code, isAvailable: true },
          },
          {
            $sample: { size: 5 },
          },
          {
            $project: { __v: 0 },
          },
        ]);
      }
      if (randomRestaurant.length == 0) {
        randomRestaurant = Restaurant.aggregate([
          {
            $match: { isAvailable: true },
          },
          {
            $sample: { size: 5 },
          },
          {
            $project: { __v: 0 },
          },
        ]);
      }
      res.status(200).json(randomRestaurant);
    } catch (error) {
      res.status(500).json({ status: false, message: error.message });
    }
  },
  getRandomRestaurants: async (req, res) => {
    try {
      let randomRestaurant = [];
      if (code) {
        randomRestaurant = Restaurant.aggregate([
          {
            $match: { code: code, isAvailable: true },
          },

          {
            $project: { __v: 0 },
          },
        ]);
      }
      if (randomRestaurant.length == 0) {
        randomRestaurant = Restaurant.aggregate([
          {
            $match: { isAvailable: true },
          },

          {
            $project: { __v: 0 },
          },
        ]);
      }
      res.status(200).json(randomRestaurant);
    } catch (error) {}
  },
};
