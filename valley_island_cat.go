package main

import (
	"fmt"
	"math"
)

// constants
const (
	// PI is the constant pi
	PI = 3.1415
	// Gravity is the gravitational acceleration
	Gravity = 9.8
)

// Variables
var (
	// MaxFlowRate is the maximum flow rate of the river
	MaxFlowRate float64
	// RiverDepth is the depth of the river
	RiverDepth float64
	// LevelChange is the rate of level change
	LevelChange float64
)

// FlowRate is the actual rate of flow of the river
func FlowRate(maxFlowRate, riverDepth, levelChange float64) float64 {
	// Use physics equations to calculate flow rate
	return maxFlowRate * (1 - (levelChange / (riverDepth * Gravity)))
}

// SurfaceArea is the surface area for a given volume
func SurfaceArea(volume float64) float64 {
	// Use math equation to calculate surface area
	return 4 * PI * math.Pow(volume, 2)
}

// Volume is the volume of water in the river
func Volume(flowRate, surfaceArea float64) float64 {
	// Use physics equation to calculate volume
	return flowRate / (surfaceArea * Gravity)
}

// Main function
func main() {
	// Get user input
	fmt.Print("Maximum flow rate (m3/s): ")
	fmt.Scanf("%f", &MaxFlowRate)
	fmt.Print("River depth (m): ")
	fmt.Scanf("%f", &RiverDepth)
	fmt.Print("Level change (m): ")
	fmt.Scanf("%f", &LevelChange)

	// Calculate flow rate
	flowRate := FlowRate(MaxFlowRate, RiverDepth, LevelChange)

	// Calculate surface area
	surfaceArea := SurfaceArea(flowRate)

	// Calculate volume
	volume := Volume(flowRate, surfaceArea)

	// Output results
	fmt.Println("Flow rate:", flowRate)
	fmt.Println("Surface area:", surfaceArea)
	fmt.Println("Volume:", volume)
}