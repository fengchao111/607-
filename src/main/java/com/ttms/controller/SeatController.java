package com.ttms.controller;

import com.ttms.entity.Schedule;
import com.ttms.entity.Seat;
import com.ttms.entity.SeatBean;
import com.ttms.entity.Studio;
import com.ttms.service.PageService;
import com.ttms.service.ScheduleService;
import com.ttms.service.SeatService;
import com.ttms.service.StudioService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller("SeatController")
@RequestMapping("/seat")
public class SeatController {

    @Autowired
    SeatService seatService;
    @Autowired
    StudioService studioService;
    @Autowired
    ScheduleService scheduleService;
    @Autowired
    PageService pageService;

    @RequestMapping("/seatshow")
    public ModelAndView seatShowPage(HttpServletRequest request){

//        List<Studio> list = studioService.selectStudio();
//        request.setAttribute("list", list);
//        return new ModelAndView("/manager/task/Seat");
        List<Studio> list = studioService.selectStudio();
        String pageNow = request.getParameter("pageNow");
        pageService.showStudioByPage(request, pageNow);
        request.setAttribute("list", list);
        return new ModelAndView("/manager/task/Seat");

    }

    @RequestMapping("/seatsshow")
    public ModelAndView seatsShowPage(HttpServletRequest request){

        String studio_id = request.getParameter("studioid");
        int id = Integer.parseInt(studio_id);
        Studio studio = studioService.selectStudioByStudio_id(id);
        List<Studio> list = studioService.selectSpecialStudio(id);
        int[][] seat_statu = seatService.selectSeatByStudio_id(id);

        request.setAttribute("list", list);
        request.setAttribute("studio", studio);
        request.setAttribute("seat_statu", seat_statu);

        return new ModelAndView("/manager/task/Seats");
    }


    @RequestMapping("/changeseat")
    public ModelAndView changeSeatPage(HttpServletRequest request){

        String studio_name = request.getParameter("studioname");
        String row = request.getParameter("studiorow");
        int seat_row = Integer.parseInt(row);
        String col = request.getParameter("studiocol");
        int seat_column = Integer.parseInt(col);
        String status = request.getParameter("studiostatu");
        int seat_status = Integer.parseInt(status);

        String errors = seatService.changeSeat(studio_name, seat_row, seat_column, seat_status);
        List<Studio> list = studioService.selectStudio();
        request.setAttribute("list", list);
        request.setAttribute("errors", errors);

        return new ModelAndView("/manager/task/ChangeSeat");
    }


    @RequestMapping("/seatss")
    public ModelAndView  seatssPage(HttpServletRequest request){

        int studio_id = Integer.parseInt(request.getParameter("stu"));
        int sched_id = Integer.parseInt(request.getParameter("sche"));
        Schedule schedule = new Schedule();
        schedule.setSched_id(sched_id);
        int[][]  seats = seatService.selectSeatByStudio_id(studio_id);
        Studio studio = studioService.selectStudioByStudio_id(studio_id);
        Schedule schedule1 = scheduleService.selectScheduleBySched_id(sched_id);
        request.setAttribute("studio",studio);
        request.setAttribute("schedule", schedule1);
        request.setAttribute("seat_statu",seats);
        return new ModelAndView("/ordinary/seats");
    }

//    @RequestMapping("/addseat")
//    public ModelAndView addSeatPage(HttpServletRequest request){
//
//        String studio_name = request.getParameter("studioname");
//        String row = request.getParameter("studiorow");
//        int seat_row = Integer.parseInt(row);
//        String col = request.getParameter("studiocol");
//        int seat_column = Integer.parseInt(col);
//        String status = request.getParameter("studiostatu");
//        int seat_status = Integer.parseInt(status);
//
//        String errors = seatService.addSeat(studio_name, seat_row, seat_column, seat_status);
//        List<Studio> list = studioService.selectStudio();
//        request.setAttribute("list", list);
//        request.setAttribute("errors", errors);
//
//        return  new ModelAndView("/manager/task/AddSeat");
//
//    }

//    @RequestMapping("/toaddseat")
//    public ModelAndView toAddSeatPage(HttpServletRequest request){
//
//        List<Studio> list = studioService.selectStudio();
//        request.setAttribute("list", list);
//        return new ModelAndView("/manager/task/AddSeat");
//    }

    @RequestMapping("/tochangeseat")
    public ModelAndView toChangeSeatPage(HttpServletRequest request){

        List<Studio> list = studioService.selectStudio();
        request.setAttribute("list", list);
        return new ModelAndView("/manager/task/ChangeSeat");
    }

    @RequestMapping("/todelseat")
    public ModelAndView toDelSeatPage(HttpServletRequest request){

        List<Studio> list = studioService.selectStudio();
        request.setAttribute("list", list);
        return new ModelAndView("/manager/task/DeleteSeat");
    }


    @RequestMapping("/delseat")
    public ModelAndView deleteSeatPage(HttpServletRequest request){

        String studio_name = request.getParameter("studioname");
        String row = request.getParameter("studiorow");
        int seat_row = Integer.parseInt(row);
        String col = request.getParameter("studiocol");
        int seat_column = Integer.parseInt(col);
        String errors = seatService.selectSeatByPosition(studio_name, seat_row, seat_column);
        List<Studio> list = studioService.selectStudio();
        request.setAttribute("list", list);
        request.setAttribute("errors", errors);

        return new ModelAndView("/manager/task/DeleteSeat");
    }

    /**
     * 改变List中座位的状态
     * @return
     */
    @RequestMapping("/changeSeatList")
    public ModelAndView changeSeatList(HttpServletRequest request,@RequestParam("seatList")List<Seat> seatList){
        if (seatList==null){
            System.out.println("List<Seat> seatList is null");
        }
        String studioname=request.getParameter("studioname");
        SeatBean seatBean=new SeatBean();
        seatBean.setSeatList(seatList);
        seatBean.setStudioName(studioname);
        seatService.changeSeatList(seatBean);
        return null;
    }

    @RequestMapping("/seat_detail")
    public String showSeatDetail(HttpServletRequest request){
        String studioId=request.getParameter("studioId");
        int id = Integer.parseInt(studioId);
        Studio studio = studioService.selectStudioByStudio_id(id);
        List<Studio> list = studioService.selectSpecialStudio(id);
        int[][] seat_statu = seatService.selectSeatByStudio_id(id);

        request.setAttribute("list", list);
        request.setAttribute("studio", studio);
        request.setAttribute("seat_statu", seat_statu);
        List<Seat> seatList=seatService.selectSeatListByStudioId(Integer.parseInt(studioId));
        request.setAttribute("seatList", seatList);
        return "seat_detail";
    }

    @RequestMapping("/changeStatus")
    public ModelAndView lockTicket(HttpServletRequest request) {


        String data = request.getParameter("data");
        JSONObject object = new JSONObject(data);
        System.out.println(object);
        int row = object.getInt("row");
        System.out.println("aaa"+row);
        int col = object.getInt("col");
        System.out.println("ahshshdh"+col);
        int studio_id = object.getInt("studio");
        System.out.println(studio_id+"studio_id");
        int action = object.getInt("flag");
        System.out.println(action+"action");
        Studio name = studioService.selectStudioByStudio_id(studio_id);
        Seat seat = seatService.selectSeatByPosition2(name.getStudio_name(),row,col);
        //使下面的if判断每次只进入一个
        boolean flag=true;
        if(seat.getSeat_status()==0||seat.getSeat_status()==1&&flag){
            flag=false;
            seat.setSeat_status(-1);
            System.out.println("座位状态"+seat.getSeat_status());
        }
        if (seat.getSeat_status()==-1&&flag){
            flag=false;
            seat.setSeat_status(0);
            System.out.println("座位状态"+seat.getSeat_status());
        }
        seatService.updateSeatStatus(seat);
        return new ModelAndView("");

    }
}
