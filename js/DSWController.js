/**
 * Created by ReeVerse on 23-04-2017.
 */
app.controller('DSWController', function ($scope) {
   $scope.complaint = "";
});
app.filter('format', function () {
    return function (input) {
        if (input) {
           return input.replace(/\n/g, "<br />");
        }
    };
});