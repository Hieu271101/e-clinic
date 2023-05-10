package edu.hanu.clinicManagementSystem.entities.admin;

import java.sql.Date;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;

	@Entity
	@Table(name = "admin")
	public class Admin extends BaseEntity implements UserDetails{
		@Column(name = "username", nullable = true)
		private String username;
		@Column(name = "password", nullable = true)
		private String password;
		@Column(name = "name", nullable = true)
		private String name;
		@Column(name = "email", nullable = true)
		private String email;
		@Column(name = "phone", nullable = true)
		private String phone;
		@Column(name = "gender", nullable = true)
		private String gender;
		@Column(name = "dob", nullable = true)
		private Date dob;
		@Column(name = "address", nullable = true)
		private String address;
		@Column(name = "roleid", nullable = true)
		private int roleId;
		@Column(name = "img", nullable = true)
		private String img;
		
		
		
		public Admin() {
			super();
		}
		public Admin(String username, String password, String name, String email, String phone, String gender, Date dob,
				String address, int roleId, String img) {
			super();
			this.username = username;
			this.password = password;
			this.name = name;
			this.email = email;
			this.phone = phone;
			this.gender = gender;
			this.dob = dob;
			this.address = address;
			this.roleId = roleId;
			this.img = img;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public Date getDob() {
			return dob;
		}
		public void setDob(Date dob) {
			this.dob = dob;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public int getRoleId() {
			return roleId;
		}
		public void setRoleId(int roleId) {
			this.roleId = roleId;
		}
		public String getImg() {
			return img;
		}
		public void setImg(String img) {
			this.img = img;
		}
		@Override
		public Collection<? extends GrantedAuthority> getAuthorities() {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public boolean isAccountNonExpired() {
			// TODO Auto-generated method stub
			return true;
		}
		@Override
		public boolean isAccountNonLocked() {
			// TODO Auto-generated method stub
			return true;
		}
		@Override
		public boolean isCredentialsNonExpired() {
			// TODO Auto-generated method stub
			return true;
		}
		@Override
		public boolean isEnabled() {
			// TODO Auto-generated method stub
			return true;
		}
		
		
}
