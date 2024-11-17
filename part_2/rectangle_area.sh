#!/bin/bash

echo today is $(date).
echo calculate the area of a rectangle.
echo please enter a positive integer for length:
read l

echo and now enter another positive integer for width:
read w

area=$((l * w))
echo the area is $area
