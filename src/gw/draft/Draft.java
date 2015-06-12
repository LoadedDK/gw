package gw.draft;

public class Draft {
	
	private int draft;
	private 	String title;
	private String content;
	private String filepath;
	private int drafter;
	private 	String draftername;
	private int signer;
	private String signername;
	private boolean issign;
	private String regtime;
	private 	String signtime;
	
	public int getDraft() {
		return draft;
	}
	
	public void setDraft(int draft) {
		this.draft = draft;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getFilepath() {
		return filepath;
	}
	
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	
	public int getDrafter() {
		return drafter;
	}
	
	public void setDrafter(int drafter) {
		this.drafter = drafter;
	}
	
	public String getDraftername() {
		return draftername;
	}
	
	public void setDraftername(String draftername) {
		this.draftername = draftername;
	}
	
	public int getSigner() {
		return signer;
	}
	
	public void setSigner(int signer) {
		this.signer = signer;
	}
	
	public String getSignername() {
		return signername;
	}
	
	public void setSignername(String signername) {
		this.signername = signername;
	}
	
	public boolean isIssign() {
		return issign;
	}
	
	public void setIssign(boolean issign) {
		this.issign = issign;
	}
	
	public String getRegtime() {
		return regtime;
	}
	
	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}
	
	public String getSigntime() {
		return signtime;
	}
	
	public void setSigntime(String signtime) {
		this.signtime = signtime;
	}
}