package com.lyh.admin.alipay.domain;

import com.lyh.admin.alipay.AlipayObject;
import com.lyh.admin.alipay.internal.mapping.ApiField;
import com.lyh.admin.alipay.internal.mapping.ApiListField;

import java.util.List;

/**
 * 文章段落
 *
 * @author auto create
 * @since 1.0, 2016-10-26 17:43:37
 */
public class ArticleParagraph extends AlipayObject {

	private static final long serialVersionUID = 8481815147222276114L;

	/**
	 * 图片列表
	 */
	@ApiListField("pictures")
	@ApiField("article_picture")
	private List<ArticlePicture> pictures;

	/**
	 * 文章正文描述
	 */
	@ApiField("text")
	private String text;

	public List<ArticlePicture> getPictures() {
		return this.pictures;
	}
	public void setPictures(List<ArticlePicture> pictures) {
		this.pictures = pictures;
	}

	public String getText() {
		return this.text;
	}
	public void setText(String text) {
		this.text = text;
	}

}
