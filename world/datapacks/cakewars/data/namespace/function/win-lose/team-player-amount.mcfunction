execute if score playing game matches 1 store result score Blue empty run team list Blue
execute if score playing game matches 1 store result score Red empty run team list Red
execute if score playing game matches 1 store result score Yellow empty run team list Yellow
execute if score playing game matches 1 store result score Green empty run team list Green

#Green
execute if score Red empty matches 0 if score Blue empty matches 0 if score Yellow empty matches 0 run function namespace:win-lose/green

#Yellow
execute if score Red empty matches 0 if score Blue empty matches 0 if score Green empty matches 0 run function namespace:win-lose/yellow

#Blue
execute if score Red empty matches 0 if score Yellow empty matches 0 if score Green empty matches 0 run function namespace:win-lose/blue

#Red
execute if score Green empty matches 0 if score Blue empty matches 0 if score Yellow empty matches 0 run function namespace:win-lose/red

