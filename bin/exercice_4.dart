import 'dart:math' as math;
//inspire des codes du projet https://github.com/dzenanr/example_console
void main() {
print('20 premiers nombres de la suite de Fibonnaci:');
exercice_4_fib_impression();
exercice_4_pointofline();
exercice_4_timetobirth('1992-12-19 12:00:00');
exercice_4_compoundinterest();
print('16 premiers nombre de la table de 8:');
exercice_4_table12(16);
}
//Print the first 10 numbers, starting with 0, of the Fibonacci sequence.
Map exercice_4_fibonnaci(int fibonnaci) {
var map = new Map();
map[0] = 0; map[1] = 1;
int fib(int p) {
if (!map.containsKey(p)) {
map[p] = fib(p - 1) + fib(p - 2);
}
return map[p];
}
fib(fibonnaci);
return map;
}
void exercice_4_fib_impression(){
int count = 20;
var map = exercice_4_fibonnaci(count);
map.forEach((k,v) => print('$k : $v'));
}
/*There is a point in the center of a rectangle with the width of 800 and the height of 600 pixels (or millimeters on paper).
The north-west corner of the rectangle has zero coordinates (x = 0, y = 0). 
 * Positive x numbers go towards the east of the rectangle. 
 * Positive y numbers go towards the south of the rectangle.
Given the center of the rectangle as the starting point and the angle of 45 degrees, calculate the end point of the line. */

void exercice_4_pointofline()

{var x0= 0;
var y0= 0;
var width = 800;
var height = 600;
var degrees = 45;
var length = 160; 
var radians = degrees * (math.PI / 180);
var xend = width/2 + 160*math.cos(radians);
var yend = height/2 + 160*math.sin(radians);
print('Les coordonnees du debut de la ligne sont (${(width/2).toStringAsFixed(2)},${(height/2).toStringAsFixed(2)})');
print('Les coordonnees de la fin de la ligne sont: (${xend.toStringAsFixed(2)},${yend.toStringAsFixed(2)})');
}
//Calculate the time in years, months and days passed between your birthday at midnight and today at midnight.

void exercice_4_timetobirth(birthday){
DateTime now = new DateTime.now();
DateTime birthdate = DateTime.parse(birthday);
DateTime format = new DateTime(now.year - birthdate.year, now.month - birthdate.month, now.day - birthdate.day);
print('Difference between ${birthdate.toString()} and today :');
print('${format.toString()}');
}

//Calculate a compound interest each year for 5 years, for the initial investment of 1000$ with the fixed interest rate of 4.8.

void exercice_4_compoundinterest(){
num investissement = 1000;
num interet = 0.048;
num annees = 5;
num interetcumule = 1;
//Fonction pour l'exposant
for(num i = 1; i<=annees ; i++){
interetcumule *= interet+1;
num moneyaccumulated = investissement * interetcumule;
print('Montant de annee ${i} :${moneyaccumulated.toStringAsFixed(2)}');
}

//Calculate the first 16 terms of the 8 times table (Google: 8 times table).

}
void exercice_4_table12(int termes){
var map = new Map();
for(num i=1 ; i<=termes;i++){
map[i] = 8*i;
}
print('${map.toString()}');
}