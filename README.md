# Multiagent Systems Modeling in java

- Simple bouncing balls
- [Conway's game of life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Rules)
- [The immigration game](https://en.wikipedia.org/wiki/Cyclic_cellular_automaton)
- [Schelling's segregation model](http://nifty.stanford.edu/2014/mccown-schelling-model-segregation/)
- Boids (Swarm simmulation)

## Getting started

### Compilation

The simulations can be compiled all at once:
```sh
make all
```
Or one by one:
```sh
make compileBalls
make compileConway
make compileImmigration
make compileSchelling
make compileBoids
```

The cells simulations (Conway, Immigration and Schelling) can also be compiled at once:

```sh
make compileCells
```

### Lauching the simmulations

```sh
make exeBalls
make exeConway
make exeImmigration
make exeSchelling
make exeBoids
```

### Other make functionalities

Creating the javadoc in `./javadoc`

```sh
make javadoc
```
Cleaning (`bin/*.class` and `./javadoc`)
```sh
make javadoc
```

## Simulation parameters

The simulation parameters parameters can easily be modified in the `src/Test*` files. Here is for instance the simulation parameters of the Schelling simmulation:

```java
// Parameters of the simulation
int n = 200; // number of cells vertically
int m = 200; // number of cells horizontally
int nbState = 3; // number of possible states for a cell (empty not included)
int K = 3; // number of neighboors threshold
int initialProbability = 50; // probability (percentage) for a cell not to start empty
```

## Result examples

Here are some example simulation results:

### Bouncing balls

Random directions, velocities, sizes and colors.

![balls-nbBalls-50](results/balls-nbBalls-50.gif)

### Conway game
```java
// Parameters of the simulation
int n = 200; // number of cells vertically
int m = 200; // number of cells horizontally
int initialProbability = 6; // probability (percentage) that a cell will begin the simulation alive
```

![conway-initialProbability-6-nbState-2-K-3](results/conway-initialProbability-6-nbState-2-K-3.gif)

### Immigration game

```java
// Parameters of the simulation
int n = 200; // number of cells vertically
int m = 200; // number of cells horizontally
int nbState = 3; // number of possible states for a cell
int K = 3; // number of neighboors threshold
int initialProbability = 70; // probability (percentage) for a cell to start at a state > 0
```

![immigration-initialProbability-70-nbState-3-K-3](results/immigration-initialProbability-70-nbState-3-K-3.gif)

### Schelling model

```java
// Parameters of the simulation
int n = 200; // number of cells vertically
int m = 200; // number of cells horizontally
int nbState = 3; // number of possible states for a cell (empty not included)
int K = 3; // number of neighboors threshold
int initialProbability = 50; // probability (percentage) for a cell not to start empty
```

![schelling-initialProbability-50-nbState-2-K-2](results/schelling-initialProbability-50-nbState-2-K-2.gif)

## Code structure

![uml](results/uml.png)