<?php
include 'Nav.php';
?>
<link rel="stylesheet" href="ContactCSS.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class='contact-container'>
    <h3>Contact us!</h3>
    <div class='contact-us-info-container'>
        <form class='contact-us-container' action="SendMessage.php" method="post">
            <input type="text" placeholder="Name" name='name' required/>
            <input type="text" placeholder="Email" name='email' required/>
            <input type="text" placeholder="Subject" name='subject'/>
            <input type="text" as="textarea" style='height: "150px' placeholder="Enter your message" name='message' required/>
            <button variant="outline-secondary" type="submit">
                Send Message
            </button>
        </form>
        <div class="direct-contact-container">

            <ul class="contact-list">
                <li class="list-item"><i class="fa fa-map-marker fa-2x"><span class="contact-text place">Amman, Jordan</span></i></li>
                
                <li class="list-item"><i class="fa fa-phone fa-2x"><span class="contact-text phone"><a href="tel:90-507-682-3069" title="Give me a call">+962 79 625 3130</a></span></i></li>
                
                <li class="list-item"><i class="fa fa-envelope fa-2x"><span class="contact-text gmail"><a href="mailto:#" title="Send me an email">nad20200423@std.psut.edu.jo</a></span></i></li>
                
            </ul>
            <ul class="social-media-list">
                <li><a href="#" target="_blank" class="contact-icon">
                    <i class="fa fa-instagram" aria-hidden="true"></i></a>
                </li>
                <li><a href="#" target="_blank" class="contact-icon">
                    <i class="fa fa-facebook" aria-hidden="true"></i></a>
                </li>       
            </ul>

            <div class="copyright">&copy; ALL OF THE RIGHTS RESERVED</div>

        </div>
    </div>
</div>
</body>
</html>