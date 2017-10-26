package com.lyh.admin.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.admin.model.OsaFeedbackQuestion;
import com.lyh.admin.service.OsaFeedbackQuestionService;
import com.lyh.admin.tools.ShowPage;
import com.lyh.admin.tools.ToolUtils;

/** 
 * ClassName:FeedbackController <br/> 
 * TODO:玩家反馈
 * Date:     2017年10月12日 下午2:47:22 <br/> 
 * @author   lyh 
 * @version    
 */
@Controller
public class FeedbackController extends BaseController {
	
	@Autowired
	private OsaFeedbackQuestionService feedbackQuestionService;
	
	@RequestMapping("/feedback/list")
	public ModelAndView getFeedbackQuestionList(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage){
		ModelAndView view = new ModelAndView("/FeedbackQuestion");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		
		List<OsaFeedbackQuestion> list = feedbackQuestionService.getFeedbackQuestionList();
		
		PageInfo<OsaFeedbackQuestion> pageInfo = new PageInfo<OsaFeedbackQuestion>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		return view;
	}
	
	
	
	@RequestMapping(value="/player/feedback/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> playerFeedBackAdd(HttpSession session, HttpServletRequest req){
		Map<String,String>  map = new HashMap<String,String> ();
		String openId = req.getParameter("openId");
		String content = req.getParameter("content");
		String serverId = req.getParameter("serverId");
		String phone = req.getParameter("phone");

		String res = "1";
		logger.error("feedback::"+openId);
		if (phone != null && openId != null &&content != null &&  ToolUtils.isPhoneLegal(phone)){
			OsaFeedbackQuestion quest = new OsaFeedbackQuestion();
			quest.setOpenId(openId);
			quest.setContent(content);
			quest.setPhone(Long.parseLong(phone));
			//quest.setId(IdGenerateUtils.makeId());
			quest.setCreateTime(new Date(System.currentTimeMillis()));
			feedbackQuestionService.insert(quest);
		}else{
			res="-1";
		}
		
		map.put("result", res);
		return map;
	}
	
	@RequestMapping("/feedback/list_del")
	public ModelAndView getFeedbackQuestionListDel(HttpSession session, HttpServletRequest request, @RequestParam(value = "page", defaultValue = "1") int curPage){
		ModelAndView view = new ModelAndView("/FeedbackQuestion");
		PageHelper.startPage(curPage, ShowPage.PAGE_SIZE);
		// SysUser user =ShiroSysUser.getShiroSubject();
		
		
		String id = request.getParameter("id");
		if (!ToolUtils.isStringNull(id)){
			feedbackQuestionService.delete(Long.parseLong(id));
		}
		List<OsaFeedbackQuestion> list = feedbackQuestionService.getFeedbackQuestionList();
		
		PageInfo<OsaFeedbackQuestion> pageInfo = new PageInfo<OsaFeedbackQuestion>(list);
		String pages = ShowPage.showPager(this.getRequestUrl(request), curPage, ShowPage.PAGE_SIZE, pageInfo.getTotal());
		view.addObject("list", list);
		view.addObject("pages", pages);
		return view;
	}
	
	
	
}
  