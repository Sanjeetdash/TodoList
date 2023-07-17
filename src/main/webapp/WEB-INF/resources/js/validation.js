function validate(e){
    // alert("Connected...")
    const name=document.getElementById("name").value
    const mobile=document.getElementById("mobile").value
    const email=document.getElementById("email").value
    
    
    const name_error=document.getElementById("name_error")
    const mobile_error=document.getElementById("mobile_error")
    const email_error=document.getElementById("email_error")
    
    
    let error = false

    if(name==="")
    {
        name_error.innerHTML="Name is required"
        error=true
    }
    else{
        name_error.innerHTML=""
    }

    if(mobile==="")
    {
        mobile_error.innerHTML="Mobile number  required"
        error=true
    }else if(isNaN(mobile) || mobile.length !=10)
    {
        mobile_error.innerHTML="please entered 10 digit valid number"
        error=true
    }
    else{
        mobile_error.innerHTML=""
    }
    
    let atpos =email.indexOf("@")
    let dotpos =email.lastIndexOf(".")
    if(email===""){
        email_error.innerHTML="email requried"
            error=true
        }
    else if(atpos <4 || dotpos - atpos <4 || dotpos===email.length-1)
     {
            email_error.innerHTML="Please enter a valid email id"
            error=true
     }
    
     else{
            email_error.innerHTML=""
        }
         if(error)
    {
        e.preventDefault();
    }
    
    }