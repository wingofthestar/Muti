package site.yourdiary.web;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import site.yourdiary.service.DynamicService;

import javax.servlet.http.HttpServletRequest;


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

    @RequestMapping(value = "article/{id}", method = RequestMethod.GET)
    public ModelAndView showArticle(HttpServletRequest httpServletRequest, @PathVariable("id") int articleId){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("article");
        mav.addObject("ARTICLE", dynamicService.showArticle(articleId));
        mav.addObject("WRITTER", dynamicService.getWriter(articleId));
        return mav;
    }
}
