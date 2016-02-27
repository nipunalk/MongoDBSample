<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
	<head>
	  <meta charset="utf-8">
	  <title>CingleVue Coding Challenge~Solution by Kapila Silwathge</title>
	  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.1.1/css/bootstrap.min.css">
	  <link href="<c:url value='/resources/css/bootstrap-select.css'/>" rel="stylesheet">
	  <link href="<c:url value='/resources/css/theme.default.css'/>" rel="stylesheet">
	</head>
	<body>
	  <div class="container-fluid">
		  <div class="row-fluid">	
			  <div class="container-fluid">
				 <div class="row-fluid">
				 	<h3>CingleVue Coding Challenge~Solution by Kapila Silwathge</h3>
				 </div>
				 <div class="row-fluid">		    
				  <div class="slisttable span9"></div>
				  <div class="span1"></div>				 
				  <div class="span3">				      
				      <label><i class="icon-search"></i><strong> Search Student</strong></label>
				      <input type="text">
				      <label><strong>Subject</strong></label>		        	
				      <select class="selectpicker show-tick target" id="selectedsub" name="selectedsub">
				      		<option value="numeracy" selected="selected">Numeracy</option>
				      		<option value="spelling">Spelling</option>
				      		<option value="reading">Reading</option>					
						</select>
				  </div>				  
				 </div>
		        </div>
	        </div>
        </div>

	  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
	  <script src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.2/underscore-min.js" type="text/javascript"></script>
	  <script src="//cdnjs.cloudflare.com/ajax/libs/backbone.js/0.9.2/backbone-min.js"></script>
	  <script type="text/javascript" src="<c:url value='/resources/js/bootstrap-select.js'/> "></script>
	  <script type="text/javascript" src="<c:url value='/resources/js/jquery.tablesorter.min.js'/> "></script>
	  
	  <!--  script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script-->
      <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.js"></script>
    
	  <script type="text/javascript">
	  
	  	_.templateSettings = {
			    interpolate: /\<\@\=(.+?)\@\>/gim,
			    evaluate: /\<\@(.+?)\@\>/gim,
			    escape: /\<\@\-(.+?)\@\>/gim
	 	};
	  	
	  	
	  </script>	 
	  <script type="text/template" id="school-list-template">
    	<h5><a href="" class="">Pines School District </a>/ <@= displaysub.valueOf() @> </h5>   	
    	<table id="tableschool" class="table table-striped table-condensed table-bordered tablesorter">
      		<thead>
        		<tr>
          			<th>School</th>
					<th>Y3</th>
					<th>Y5</th>
					<th>Y7</th>
          			<th>Y9</th>
					<th>Raw Gain Y3 to Y5</th>
					<th>Factored Gain Y3 to Y5</th>
					<th>CLG% Y3 to Y5</th>
					<th>Gain in Gain Y3 to Y5</th>
        		</tr>
      		</thead>
      		<tbody>
        		<@ _.each(schools, function(school){ @>
          			<tr>
            			<td><a href="#" ><@= school.get('school').schoolName @></a></td>            			
            			<td><@= school.get('latestY3') @></td>
            			<td><@= school.get('latestY5') @></td>
            			<td><@= school.get('latestY7') @></td>
            			<td><@= school.get('latestY9') @></td>
            			<td><@= school.get('rawGainY3Y5') @></td>
            			<td><@= school.get('factoredGainY3Y5') @></td>
            			<td><@= school.get('glgY3Y5') @></td>
						<td><@= school.get('latestGainInGainY3Y5') @></td>            			
          			</tr>
        		<@ }); @>
      		</tbody>
    	 </table>
  		</script>
	  
	  <script type="text/javascript">
			var selectedsubject='numeracy';
			var selectedsubjectText='Numeracy';
			
	  		var Schools = Backbone.Collection.extend({
	      		url: function() {return 'api/schools/'+selectedsubject;}
	    	});
	  
	  
		  var SchoolListView = Backbone.View.extend({
		      el: '.slisttable',
		      render: function () {		    	 
		        var that = this;
		        var schools = new Schools();
		        var displaysub=new String(selectedsubjectText);
		        schools.fetch({
		         success: function (schools) {
		            var template = _.template($('#school-list-template').html(), {schools: schools.models,displaysub:displaysub});
		            that.$el.html(template);
		            refresSelect();
		           $("#tableschool").tablesorter(); 
		          }
		        })
		      }
		    });
		  
		  $("#tableschool").tablesorter({
			    theme : 'bootstrap',
			    ignoreCase : true
			  });
	  
		  var schoolListView = new SchoolListView();
	  
	  
		  var Router = Backbone.Router.extend({
		        routes: {
		          "": "home"
		        }
		    });
	
		    var router = new Router;
		    router.on('route:home', function() {		      
		      schoolListView.render();
		    })
		   
		    Backbone.history.start();
		    
		    $( "#selectedsub" ).change(function() { 
		  		selectedsubject=$('#selectedsub').val();
		  		selectedsubjectText=$('#selectedsub option:selected').text();
		  		schoolListView.render();
		  	});
	   </script>
	   <script type="text/javascript">
	   		var refresSelect =function () {
	
	            $('.selectpicker').selectpicker({
	                'selectedText': selectedsubjectText
	            });	
	           
	        }
	        $(window).on('load',refresSelect );
    	</script>	  
	</body>
</html> 