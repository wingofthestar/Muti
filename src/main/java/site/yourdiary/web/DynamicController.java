package site.yourdiary.web;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.service.DynamicService;


/**
 * 公共动态的Controlelr
 */
@Controller
public class DynamicController extends BaseWeb{

    @Autowired
    private DynamicService dynamicService;

    @RequestMapping(value = "dynamic")
    public ModelAndView showDynamic(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("dynamic");
        mav.addObject("CONTENT_LIST",dynamicService.showContent());
        return mav;
    }

}
