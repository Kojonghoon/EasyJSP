package dto;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;


	private String productId; 	// ��ǰ ���̵�
	private String pname; 		// ��ǰ��
	private Integer unitPrice; 	//��ǰ ����
	private String description;	//��ǰ ����
	private String manufacturer;//������
	private String category;	//�з�
	private long unitsInstock;	//����
	private String condition;	//�Ż�ǰ, �߰�ǰ, ���ǰ
	
	public Product() {
		super();
	}
	
	public Product(String productId, String pname, Integer unitPrice) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInstock() {
		return unitsInstock;
	}

	public void setUnitsInstock(long unitsInstock) {
		this.unitsInstock = unitsInstock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
