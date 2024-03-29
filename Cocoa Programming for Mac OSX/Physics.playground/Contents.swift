//: Playground - noun: a place where people can play

import Cocoa

// MARK: - Structure Declarations
struct Vector:CustomStringConvertible {
  
  // MARK: - Structure Properties
  var x:Double
  var y:Double
  var length:Double {
    return sqrt(x * x + y * y)
  }
  var angle:Double {
    return atan2(y, x)
  }
  var description:String {
    return "(\(x), \(y))"
  }
  
  // MARK: - Structure Initialisers
  init() {
    self.init(x: 0, y: 0)
  }
  
  init(x:Double, y:Double) {
    self.x = x
    self.y = y
  }
  
  // MARK: - Instance Methods
  func vectorByAddingVector(vector:Vector) -> Vector {
    return Vector(x: self.x + vector.x, y: self.y + vector.y)
  }
  
}

// MARK: - Class Declarations
class Particle {
  
  // MARK: - Class Properties
  var position:Vector
  var velocity:Vector
  var acceleration:Vector
  
  // MARK: - Class Initialisers
  init(position:Vector) {
    self.position = position
    self.velocity = Vector()
    self.acceleration = Vector()
  }
  
  convenience init() {
    self.init(position: Vector())
  }
  
  // MARK: - Instance Methods
  func tick(dt:NSTimeInterval) {
    velocity = velocity + acceleration * dt
    position = position + velocity * dt
    position.y = max(0, position.y)
  }
  
}

// MARK: - Class Declarations
class Rocket:Particle {
  
  let thrust:Double
  var thrustRemaining:NSTimeInterval
  let direction = Vector(x: 0, y: 1)
  
  // MARK: - Class Initialisers
  init(position:Vector, thrust:Double, thrustTime:NSTimeInterval) {
    self.thrust = thrust
    self.thrustRemaining = thrustTime
    super.init(position:position)
  }
  
  convenience init(thrust:Double, thrustTime:NSTimeInterval) {
    self.init(position: Vector(), thrust: thrust, thrustTime: thrustTime)
  }
  
  // MARK: - Instance Methods
  override func tick(dt: NSTimeInterval) {
    if thrustRemaining > 0.0 {
      let thrustTime = min(dt, thrustRemaining)
      let thrustToApply = thrust * thrustTime
      let thrustForce = direction * thrustToApply
      acceleration = acceleration + thrustForce
      thrustRemaining -= thrustTime
    }
    super.tick(dt)
  }
  
}

// MARK: - Class Declarations
class Simulation {
  
  // MARK: - Class Properties
  var particles:[Particle] = []
  var time:NSTimeInterval = 0.0
  
  // MARK: - Instance Methods
  func addParticle(particle:Particle) {
    self.particles.append(particle)
  }
  
  func tick(dt:NSTimeInterval) {
    for particle in particles {
      particle.acceleration = particle.acceleration + gravity
      particle.tick(dt)
      particle.acceleration = Vector()
      particle.position.y
    }
    time += dt
    
    particles = particles.filter { particle in
      let live = particle.position.y > 0.0
      if !live {
        print("Particle terminated at time \(self.time)")
      }
      return live
    }
  }
  
}

// MARK: - Operator Overloading
func +(left:Vector, right:Vector) -> Vector {
  return left.vectorByAddingVector(right)
}

func *(left:Vector, right:Double) -> Vector {
  return Vector(x: left.x * right, y: left.y * right)
}

// MARK: - Code
let gravity = Vector(x: 0.0, y: -9.8)
let twoGs = gravity.vectorByAddingVector(gravity)

let simulation = Simulation()

let ball = Particle()
ball.acceleration = Vector(x: 0, y: 100)
//simulation.addParticle(ball)

let rocket = Rocket(thrust: 10.0, thrustTime: 60.0)
simulation.addParticle(rocket)

while simulation.particles.count > 0 && simulation.time < 500 {
  simulation.tick(1.0)
}

var vector0 = Vector(x: 0, y: 0)
var vector1 = vector0
vector0.x = 1

let ball0 = Particle()
let ball1 = ball0
ball0.position.x = 1

print("Gravity is \(gravity)")