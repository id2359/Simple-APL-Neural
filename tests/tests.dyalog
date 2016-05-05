﻿:Namespace Testing
    ∇ TestFunct;network;zero;one;two;three;outputs;test;binary;decimal
      network←⎕NEW #.Neural.Network
      network.addLayer 10 20
      network.addLayer 2 ⍬
      zero←(0 1 1 0 1 0 0 1 1 0 0 1 1 0 0 1 0 1 1 0)
      one←(0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0)
      two←(0 1 1 0 1 0 0 1 0 0 1 0 0 1 0 0 1 1 1 1)
      three←(1 1 1 1 0 0 0 1 0 1 1 1 0 0 0 1 1 1 1 1)
      test←(1 1 1 1 1 0 0 1 1 0 0 1 1 0 0 1 1 1 1 0)
     
      network.train((zero(0 0))(one(0 1))(two(1 0))(three(1 1)))
     
      outputs←network.process test
     
      binary←⌊0.5+outputs
      decimal←2⊥binary
      ⎕←'Recognized ',decimal,outputs
    ∇
:EndNamespace