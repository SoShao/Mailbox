package util;

import java.util.List;


/**
 * 分页
 * 
 * @author Administrator
 * 
 */
public class PageInfo<T> {

	// 每页显示的行数
	private int pageSize;
	// 当前页码
	private int currPageNo = 1;
	// 总记录数
	private int totalCount;
	// 总页码 计算出来的
	private int totalPageCount;
	// 每页显示的数据
	private List<T> list;

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrPageNo() {
		return currPageNo;
	}

	public void setCurrPageNo(int currPageNo) {
		this.currPageNo = currPageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		if (totalCount > 0) {
			this.totalCount = totalCount;
			// 计算总 页码
			this.totalPageCount = (this.totalCount % this.pageSize == 0) ? (this.totalCount / this.pageSize)
					: (this.totalCount / this.pageSize + 1);
		}
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	
	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}
}
