#include "geometry.h"
#include "parallel.h"

class particle {
public:
  point3d pt;
  double mass;
  vect3d force;
  particle(point3d p, double m) : pt(p),mass(m) {}
};

void nbody(particle** particles, intT n);
