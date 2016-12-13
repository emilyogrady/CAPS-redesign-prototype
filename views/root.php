<!DOCTYPE html>
<html>
<head>
    <title>CAPS Cedarville Academic Portfolio System</title>
    <meta charset="utf-8"/>
    <link type="text/css" rel="stylesheet" href="/assets/vendor/bootstrap/css/bootstrap.css"/>
    <link type="text/css" rel="stylesheet" href="/assets/styles.css"/>
</head>
<body>
<header><h1>CAPS Portfolio System</h1></header>
<nav class="col-sm-3">
    <ul class="list-unstyled col-sm-12">
        <li class="nav-group">
            <a href="#personal">Personal Data</a>
            <ul class="list-unstyled">
                <li><a href="#">Personal Info</a></li>
                <li>
                    <a href="#record-of-actions">Record of Actions</a>
                    <img src="/assets/images/arrow-right.png"/>
                    <ul class="sub-nav hide">
                        <li><a href="#">Initial Appointment</a></li>
                        <li><a href="#">Promotions/Tenure</a></li>
                    </ul>
                </li>
                <li><a href="#">Educational Background</a></li>
                <li><a href="#">Professional Credentials</a></li>
                <li><a href="#prof-exp">Prior Prof Experience</a></li>
            </ul>
        </li>
        <li class="nav-group">
            <a href="#teaching">Teaching</a>
            <ul class="list-unstyled">
                <li><a href="#courses-taught">Courses Taught</a></li>
                <li><a href="#">Ind Study Supervised</a></li>
                <li><a href="#">Special Assignments</a></li>
            </ul>
        </li>
        <li class="nav-group">
            <a href="#scholarship">Scholarship</a>
            <ul class="list-unstyled">
                <li>
                    <a href="#">Scholarly Work</a>
                    <img src="/assets/images/arrow-right.png"/>
                </li>
                <ul class="sub-nav hide">
                    <li><a href="#">Jounrals</a></li>
                    <li><a href="#">Refereed Conference Papers</a></li>
                    <li><a href="#">Books</a></li>
                    <li><a href="#">Otehr Professional Publications</a></li>
                    <li><a href="#">Presentations</a></li>
                    <li><a href="#">Creative Works</a></li>
                    <li><a href="#">Other Scholarly Activities</a></li>
                </ul>
                <li><a href="#">Research Guides</a></li>
                <li><a href="#">Publications Read</a></li>
                <li><a href="#">Prof Development Activities</a></li>
                <li><a href="#">Prof Development Goals</a></li>
            </ul>
        </li>
        <li class="nav-group">
            <a href="#service">Service</a>
            <ul class="list-unstyled">
                <li><a href="#">Department Service</a></li>
                <li><a href="#">University/Campus Service</a></li>
                <li><a href="#">Church Activities and Christian Ministries</a></li>
                <li><a href="#">Professional Service</a></li>
                <li><a href="#">Missions Involvement</a></li>
                <li><a href="#">Civic/Community Service</a></li>
                <li><a href="#">Special Recognition/Awards</a></li>
            </ul>
        </li>
        <li class="nav-group">
            <a href="#">Integration Paper</a>
        </li>
        <li class="nav-group">
            <a href="#letters">Support Letters</a>
            <ul class="list-unstyled">
                <li><a href="#">Internal to the University</a></li>
                <li><a href="#">External to the University</a></li>
                <li><a href="#">Informal Student Feedback</a></li>
            </ul>
        </li>
    </ul>
</nav>
<div class="col-sm-9" data-preload="['personal-data', 'teaching', 'scholarship', 'service', 'integration', 'letters']">
    {{> personal-data }}
    {{> teaching }}
    {{> scholarship }}
    {{> service }}
    {{> integration }}
    {{> letters }}
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.js"></script>
<script src="/assets/vendor/handlebars/handlebars.js"></script>
<script>

    $(function(){
        $("*[data-preload]").each(function(i,o){
            $this = $(o);
            preloads = $this.attr('data-preload');
            

        });
    });

</script>
</body>
</html>