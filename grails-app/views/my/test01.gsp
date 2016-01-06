<html>
<head>
    <title>测试</title>
    <meta name="layout" content="main" />

    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("form").submit(function(event){
                var form = $(this);
                console.info($("form").serialize())
                $.ajax({
                    type : form.attr('method'),
                    url : form.attr('action'),
                    data : $("form").serialize(),
                    datatype: 'json'
                    success: function(data) {

                    }
                });
                event.preventDefault();
            });
        });
    </script>
    <style type="text/css" media="screen">
    #nav {
        margin-top:20px;
        margin-left:30px;
        width:228px;
        float:left;

    }
    .homePagePanel * {
        margin:0px;
    }
    .homePagePanel .panelBody ul {
        list-style-type:none;
        margin-bottom:10px;
    }
    .homePagePanel .panelBody h1 {
        text-transform:uppercase;
        font-size:1.1em;
        margin-bottom:10px;
    }
    .homePagePanel .panelBody {
        background: url(../images/leftnav_midstretch.png) repeat-y top;
        margin:0px;
        padding:15px;
    }
    .homePagePanel .panelBtm {
        background: url(../images/leftnav_btm.png) no-repeat top;
        height:20px;
        margin:0px;
    }

    .homePagePanel .panelTop {
        background: url(../images/leftnav_top.png) no-repeat top;
        height:11px;
        margin:0px;
    }
    h2 {
        margin-top:15px;
        margin-bottom:15px;
        font-size:1.2em;
    }
    #pageBody {
        margin-left:280px;
        margin-right:20px;
    }
    </style>
</head>
<body>
<div id="nav">
    <div class="homePagePanel">
        <div class="panelTop"></div>
        <div class="panelBody">
            <h1>Application Status</h1>
            <ul>
                <li>App version: <g:meta name="app.version"></g:meta></li>
                <li>Grails version: <g:meta name="app.grails.version"></g:meta></li>
                <li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
                <li>JVM version: ${System.getProperty('java.version')}</li>
                <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
                <li>Domains: ${grailsApplication.domainClasses.size()}</li>
                <li>Services: ${grailsApplication.serviceClasses.size()}</li>
                <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
            </ul>
        </div>
        <div class="panelBtm"></div>
    </div>
</div>
<div id="pageBody">
    <h1>缓冲测试</h1>

    <div id="controllerList" class="dialog">
        <g:form action="test02">
            <g:textField name="data" />
            <g:actionSubmit value="提交到test02"/>
        </g:form>
    </div>
</div>
</body>
</html>
