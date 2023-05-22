package edu.hanu.clinicManagementSystem.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.hanu.clinicManagementSystem.entities.admin.Medicine;
import edu.hanu.clinicManagementSystem.entities.test.Cart;
import edu.hanu.clinicManagementSystem.service.admin.MedicineService;

@Controller
public class TestController extends BaseController{
	@Autowired
	private MedicineService medicineService;
	
	
	@RequestMapping(value= {"/test"}, method =RequestMethod.GET )
	public String addUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
		List<Medicine> medicines = medicineService.findAllActive();		
		model.addAttribute("medicines",medicines);
		return "/admin/test";
	}
	@RequestMapping(value= {"/header"}, method =RequestMethod.GET )
	public String header(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response ) throws IOException{		
//		List<Medicine> medicines = medicineService.findAllActive();		
//		model.addAttribute("medicines",medicines);
		return "/admin/header";
	}
//	@Controller
//	public class CartController {
//
//	    private Cart cart = new Cart();
//
//	    @PostMapping("/cart/add")
//	    public String addItemToCart(@RequestParam String itemName, @RequestParam int quantity) {
//	        cart.addItemToCart(itemName, quantity);
//	        return "redirect:/cart";
//	    }
//	}
	

}

//<distributionManagement>
//<downloadUrl>http://java.sun.com/products/jsp/jstl/downloads/</downloadUrl>
//<relocation>
//<groupId>javax.servlet</groupId>
//<artifactId>jstl</artifactId>
//<version>1.1.2</version>
//</relocation>
//</distributionManagement>
//  <build>
//    <finalName>clinicManamentSystem</finalName>
//    <plugins>
//    
//        <plugin>
//		    <groupId>org.springframework.boot</groupId>
//		    <artifactId>spring-boot-maven-plugin</artifactId>
//		    
//		    <configuration>
//		        <mainClass>edu.hanu.clinicManagementSystem.StartClinicManagementSystem</mainClass> 
//		    </configuration>
//		    <executions>
//		        <execution>
//		            <goals>
//		                <goal>repackage</goal>
//		            </goals>
//		           
//		            <configuration>
//		                <archive>
//		                    <manifest>
//		                        <mainClass>edu.hanu.clinicManagementSystem.StartClinicManagementSystem</mainClass>
//		                    </manifest>
//		                </archive>
//		            </configuration>
//		        </execution>
//		    </executions>
//	</plugin>
//	 <plugin>
//            <groupId>org.apache.maven.plugins</groupId>
//            <artifactId>maven-jar-plugin</artifactId>
//          
//               <configuration>
//                <packagingExcludes>WEB-INF/views/**/*.jsp</packagingExcludes>
//                <archive>
//                    <addMavenDescriptor>false</addMavenDescriptor>
//                </archive>
//            </configuration>
//        </plugin>
//          <plugin>
//            <groupId>org.apache.maven.plugins</groupId>
//            <artifactId>maven-war-plugin</artifactId>
//           
//            <configuration>
//                <failOnMissingWebXml>false</failOnMissingWebXml>
//                <archive>
//                    <manifest>
//                        <addClasspath>true</addClasspath>
//                    </manifest>
//                </archive>
//            </configuration>
//        </plugin>
//        
//    </plugins>
//    <resources>
//        <resource>
//            <directory>src/main/webapp</directory>
//            <targetPath>META-INF/resources</targetPath>
//            <includes>
//                <include>**/*.jsp</include>
//            </includes>
//        </resource>
//         <resource>
//            <directory>src/main/resources</directory>
//            <includes>
//                <include>**/*.properties</include> <!-- Include specific file types if needed -->
//                <include>**/*.css</include>
//                <include>**/*.js</include>
//            </includes>
//        </resource>
//    </resources>
//    
//</build>

