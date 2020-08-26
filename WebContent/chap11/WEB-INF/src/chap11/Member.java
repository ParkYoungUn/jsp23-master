package chap11;

public class Member {
	
	private String name;
	private int age;

	public Member() {	}
	
	public Member(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	public int getAge() {
		return age;
	}
}