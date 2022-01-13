package service;

import entity.Draftmsg;

public interface DraftmsgService {
	 int addDraftmsg(Draftmsg draftmsg);///添加草稿箱
	 int deleteDraftmsg(int did);//删除草稿箱
	 int deleteDraftList(int uid);///删除所有草稿箱
}
