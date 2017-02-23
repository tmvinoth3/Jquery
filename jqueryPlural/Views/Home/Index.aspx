<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <style type="text/css">
    .highlight 
    {
        background-color : orange
    }
        .highligh
    {
        background-color : #70ffff
    }
    </style>
    <script src="../../Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            //select by tags
            // $('div').css('background-color', 'Green')

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //select by id
            //$('#blue').css('background-color', 'Green')

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //select by class (multiple elements can have same class)
            // $('.divs').css('background-color', 'Green')

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //select by input values (ie.title="myTitle")
            // $('div[title="my Div"]').css('background-color', 'Green')

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //select by input node(:input)
            // $(':input[type="text"]').css('background-color', 'yellow')

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //to know the length
            //var length = $('div').length;
            //alert(length);

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //to iterate through each
            //            $(':input').each(function () {
            //                var ele = $(this); //this is wrapper
            //                alert(ele.val());
            //            });
            //  $('div:contains("Blue")').css('background-color', 'Green');

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //   $('div:odd').css('background-color', 'Green');
            // $('div:even').css('background-color', 'Green');
            //$('div:odd').html("new div text"); //to update new html content

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    

            //var html = '';
            //$('.divs').each(function (index, elem) {
            //    html += "<br/>" + index + " " + $(elem).text(); //set string in iteration rather than dom element
            //});
            // $('#outputDiv').html(html);

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //$('div').attr('title', "changed value");   //passing one value to attr
            //$('.divs').each(function (index, elem) {
            //    this.title = "new value"; //Raw DOM with out $(this)
            //});

            //            $('div').attr(
            //            {
            //                title: 'From attr value',
            //                style: 'font-size:large;color:Cyan' //passing multiple values as json using style
            //            });

            //OR

            //            $('div').attr(
            //            {
            //                title: 'From attr value'
            //                //passing multiple values as json with chain of css
            //            }
            //            ).css('background-color', 'black'
            //            ).css('color', 'green');
            //OR
            //                        $('div').attr(
            //                        {
            //                            title: 'From attr value'
            //                            //passing multiple values as json with chain of css
            //                        }
            //                        ).css(
            //                        {
            //                        'background-color': 'yellow'
            //                        }); //json in css


            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //            $('div').append('<div id="jqueryDiv"> Jquery Div </div>'); //apend this div to each existing divs
            //OR
            //$('<div id="jqueryDiv"> Jquery Div </div>').appendTo('div');

            //  $('div').prepend('<div id="jqueryDiv"> (Jquery Div) </div>'); //prepend this div to each existing divs

            // $('div.divs').wrap('<div class="outputDiv parentWrapper" />'); //wrap this div around existing divs

            //$('#blue').remove(); //to remove

//            $(':input').addClass('highlight'); //adding class and removeClass also same as
//            var input = $(':input');
            //$(':input').toggleClass('highligh'); //creates if no class and modify if already 
//            if ($(':input').hasClass()) {
//                alert("Class Name is " + input.text());
//            }

        });
        function Focus(ab) {
            $(ab).toggleClass('highligh');
        };
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    </script>
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
<div id="outputDiv" class="divs" style="background-color:Orange"> </div>
    <div class="divs" id="blue" style="background-color:Blue" title="my Div">
        <span>Blue Div</span>
        <p>Hello World !!! </p>
    </div>
        <div class="divs" id="red" style="background-color:Red">
       <span>Red Div</span>
    </div>
    <form id="myForm">
    Username : <input type="text" name="username" id="uname"/>
    <br/>
    Password : <input type="password" name="pwd" id="pwd" onfocus="Focus(this)" />
    <br/>
    <input type="submit" value="submit" id="sbmt"/>
    </form>
    <button id="getHtml">Click here to get html </button>
    <script type="text/javascript">
        //old fashion event handling
//        var button = document.getElementById('submit');

//        if (document.addEventListener) {
//            button.addEventListener('click', function () { alert("button clicked in other browsers")},false);
//        }
//        else {
//            button.attachEvent('onclick', function () { alert("button clicked in other browsers") });
        //        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//        $(':input[value="submit"]').click(function () {
//            //alert('clicked');
//            // $('#uname').toggleClass('highlight');
//            var uname = $('#uname').val();
//            var pwd = $('#pwd').val();
//            alert(uname + " " + pwd); //click event 
//            $('#myDiv').text(uname + " " + pwd);
//        });

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//        $(':input[value="submit"]').on('click',function () {
//            //alert('clicked');
//            // $('#uname').toggleClass('highlight');
//            var uname = $('#uname').val();
//            var pwd = $('#pwd').val();
//            alert(uname + " " + pwd); //click event using on and on('table','td',function(){}) can be set child elements
//            $('#myDiv').text(uname + " " + pwd);
        //        });

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

     //  $('#myDiv').off(); //to disable event

//        $(':input[type="text"]').change(function () {

//            alert("Username changed"); //change event - fires when text in username field is changed.

        //        });

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//        $('#blue p').hover(function () {
//        //mouseenter
//            $(this).css('background-color','yellow');
//        },
//        //mouseleave
//        function () {
//            $(this).css('background-color','pink'); //multiple functions
//        });

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       // $('#getHtml').click(function () {
            //            $('#myDiv').load('../html/sample.html'); //load data from another source
            //            $('#myDiv').load('../html/sample.html #a'); //load data from specified tag

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //$('#myDiv').load('../html/getNames.aspx', { pagesize: $('#uname').val() }); //load data from aspx page from specified tag
            //load(url,data,callback)--callback-->function(responsem,status,xhr){alert("Error:"+xhr.statusText)}
            //            $.get('../html/getNames.aspx', { pagesize: $('#uname').val() }, function (data) {
            //                $('#myDiv').html(data)
            //            });

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //            $.post('../html/getNames.aspx', { pagesize: $('#uname').val() }, function (data) {
            //                $('#myDiv').html(data)
            //            });

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            $('#sbmt').click(function () {
                alert('clicked');
                $.ajax({
                    url: '../html/getNames.aspx/insertName',
                    data: $('#uname').val(),
                    datatype: 'string',
                    success: function (data, status, xhr) {
                       // alert(data.d);
                        $('#myDiv').html(data);
                    },
                    error: function (xhr, status, error) {
                        alert(status);
                    }
                });
            });

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     //   });
    </script>
    <div id="myDiv"> 
    </div>
</body>
</html>
