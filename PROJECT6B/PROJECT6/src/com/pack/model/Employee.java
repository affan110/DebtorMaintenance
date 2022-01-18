package com.pack.model;

import java.io.Serializable;

public class Employee implements Serializable {
    
    private static final long serialVersionUID = 1L;
    private String  DebtorName,AddressLine1,AddressLine2,Email,PhoneNumber,FaxNumber,BankName,BranchName,SwiftAddress,DebtorAccountName,AccountCurrency;
    
	int DebtorId;

     public int getDebtorId() {
		return DebtorId;
	}

	public void setDebtorId(int debtorId) {
		DebtorId = debtorId;
	}

	public String getDebtorName() {
		return DebtorName;
	}

	public void setDebtorName(String debtorName) {
		DebtorName = debtorName;
	}

	

	public String getAddressLine1() {
		return AddressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		AddressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return AddressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		AddressLine2 = addressLine2;
	}
	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}
   
	public String getPhoneNumber() {
		return PhoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	
	public String getFaxNumber() {
		return FaxNumber;
	}
	public void setFaxNumber(String faxNumber) {
		FaxNumber = faxNumber;
	}
	
	public String getBankName() {
		return BankName;
	}

	public void setBankName(String bankName) {
		BankName = bankName;
	}

	public String getBranchName() {
		return BranchName;
	}

	public void setBranchName(String branchName) {
		BranchName = branchName;
	}

	public String getSwiftAddress() {
		return SwiftAddress;
	}

	public void setSwiftAddress(String swiftAddress) {
		SwiftAddress = swiftAddress;
	}

	public String getDebtorAccountName() {
		return DebtorAccountName;
	}

	public void setDebtorAccountName(String debtorAccountName) {
		DebtorAccountName = debtorAccountName;
	}

	public String getAccountCurrency() {
		return AccountCurrency;
	}

	public void setAccountCurrency(String accountCurrency) {
		AccountCurrency = accountCurrency;
	}

}
