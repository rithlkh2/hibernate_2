package np.com.mshrestha.bookstore.model;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "hi_book_test2")
public class Book {

	private Long id;
	private String name;
	private String code;
	private Double price;
	private String authors;
	private String isbn;
	private String publisher;
	private Date publishedOn;
	private String email;
	private String phone;

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "phone")
	@Pattern(regexp = "^[0-9]{6,14}$")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	@Column(nullable = false)
	public String getName() {
		return name;
	}

	@Column(length = 15, nullable = false)
	public String getCode() {
		return code;
	}

	@Column(length = 10)
	public Double getPrice() {
		return price;
	}

	@Column(nullable = false)
	public String getAuthors() {
		return authors;
	}

	@Column
	public String getIsbn() {
		return isbn;
	}

	@Column
	public String getPublisher() {
		return publisher;
	}

	@Column(name = "published_date")
	public Date getPublishedOn() {
		return publishedOn;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public void setAuthors(String authors) {
		this.authors = authors;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public void setPublishedOn(Date publishedOn) {
		this.publishedOn = publishedOn;
	}

}
