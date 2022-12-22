package com.demoblaze.pages;



import com.demoblaze.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public abstract class BasePage {

     public BasePage() {
        PageFactory.initElements(Driver.get(),this);
    }

    //***her yerde kullandığımız locatorları base page alıyoruz
    @FindBy(id = "login2")
    public WebElement loginHomePage_loc;


}
