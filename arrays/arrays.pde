String [] foods = {"Bacon", "Oreos", "Steak", "Lobster", "Chicken"}; // Declaring my array here, with my favorite foods such as bacon, Steak, and Lobster. 
print(foods[0]);
println();
println();
foods[0] = "eggplant"; //Changes Bacon to a least favorite food, 'eggplant'. 
print(foods [0]);
println();
println();
foods[foods.length-1] = "squash"; //Delcaring my final value as squash, as Andy dislikes it. Based.
print(foods[foods.length-1]); //Displaying my final value in my console. 
//the statement name[name.length-1]; can be used to find the final value of ANY array, not matter its size. 
println();
println();
println();
println();
println();
println();


int [][] matrix = {
{1, 2, 3, 4, 5, 6, 7, 8, 9},
{-1, 0, 1, 2, 3, 4, 5, 7, 8,}, 
{-2, -1, 0, 1, 2, 3, 4, 5, 6, 7},
{-3, -2, -1, 0, 1, 2, 3, 4, 5, 6},
{-4, -3, -2, -1, 0, 1, 2, 3, 4, 5}, 
{-5, -4, -3, -2, -1, 0, 1, 2, 3, 4},
{-6, -5, -4, -3, -2, -1, 0, 1, 2, 3},
{-7, -6, -5, -4, -3, -2, -1, 0, 1, 2},
{-8, -7, -6, -5, -4, -3, -2, -1, 0, 1},
{-9, -8, -7, -6, -5, -4, -3, -2, -1, 0}
};

print(matrix[5][3]);
