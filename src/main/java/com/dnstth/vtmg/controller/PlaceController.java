package com.dnstth.vtmg.controller;

import java.util.List;

import com.dnstth.vtmg.dal.facade.PlaceFacade;
import com.dnstth.vtmg.view.PlaceView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Denes_Toth
 */
@Controller
public class PlaceController {

    @Autowired
    private PlaceFacade placeFacade;

    @RequestMapping(value = "/api/place", method = RequestMethod.GET)
    public String getPlacePage(Model model) {
        List<PlaceView> kindViews = placeFacade.getAll();
        model.addAttribute("places", kindViews);
        return "place";
    }

    @RequestMapping(value = "/api/place", method = RequestMethod.POST)
    public String addNewPlace(
        @RequestParam("placeName") String placeName,
        @RequestParam("placeDetails") String placeDetails,
        Model model
    ) {
        PlaceView placeView = PlaceView.builder()
                                  .name(placeName)
                                  .details(placeDetails)
                                  .build();
        placeFacade.add(placeView);
        return getPlacePage(model);
    }

    @RequestMapping(value = "/api/place/delete", method = RequestMethod.POST)
    public String deletePlace(
        @RequestParam("id") int id,
        Model model
    ) {
        placeFacade.delete(id);
        return getPlacePage(model);
    }

    @RequestMapping(value = "api/place/update", method = RequestMethod.GET)
    public String updatePlace(
        @RequestParam("id") int id,
        Model model
    ) {
        model.addAttribute("place", placeFacade.getOne(id));
        return "editPlace";
    }

    @RequestMapping(value = "api/place/update", method = RequestMethod.POST)
    public String saveUpdatePlace(
        @RequestParam("id") int id,
        @RequestParam("placeName") String placeName,
        @RequestParam("placeDetails") String placeDetails,
        Model model
    ) {
        PlaceView placeView = placeFacade.getOne(id);
        placeView.setName(placeName);
        placeView.setDetails(placeDetails);
        placeFacade.update(placeView);
        return getPlacePage(model);
    }
}
