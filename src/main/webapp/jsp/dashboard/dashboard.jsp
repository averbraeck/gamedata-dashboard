<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>GameData Administration</title>

    <!--  favicon -->
    <link rel="shortcut icon" href="/gamedata-dashboard/favicon.ico" type="image/x-icon">

    <link href="/gamedata-dashboard/css/bootstrap.min.css" rel="stylesheet" />
    <script src="/gamedata-dashboard/js/bootstrap.bundle.min.js"></script>
    <link href="/gamedata-dashboard/css/fa.all.min.css" rel="stylesheet"/>
    <script src="/gamedata-dashboard/js/dashboard.js"></script>
    <link href="/gamedata-dashboard/css/dashboard.css" rel="stylesheet"/>
  </head>

  <body onload="initPage()">
    <div class="container-fluid">
      <div class="flex-nowrap">
        <header>
          ${dashboardData.getSidebar()}
          ${dashboardData.getNavbar()}
        </header>
        <main style="margin-top: 58px;">
          <div class="container-fluid ps-2 pe-2 pt-4">
            ${dashboardData.getContent()}
          </div>
        </main>
      </div>
    </div>
    
    <!-- modal window for the client information within an order -->
    ${dashboardData.getModalWindowHtml()}

    <form id="clickForm" action="/gamedata-dashboard/dashboard" method="POST" style="display:none;">
      <input id="click" type="hidden" name="click" value="tobefilled" />
      <input id="recordId" type="hidden" name="recordId" value="0" />
    </form>
         
  </body>
</html>
