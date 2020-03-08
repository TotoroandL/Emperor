package DS.bean;

public class EventBean {
	private String title;
	private String content;
	private String source;
	private String performers;
	private String eid;

	public String gettitle() {
		return title;
	}
	public void setstuNumber(String title) {
		this.title = title;
	}

	public String getcontent() {
		return content;
	}
	public void setcontet(String content) {
		this.content = content;
	}

	public String getsource() {
		return source;
	}
	public void setsource(String source) {
		this.source = source;
	}

	public String getperformers() {
		return performers;
	}
	public void setperformers(String performers) {
		this.performers= performers;
	}

	public String geteid() {
		return eid;
	}
	public void seteid(String eid) {
		this.eid = eid;
	}
}
