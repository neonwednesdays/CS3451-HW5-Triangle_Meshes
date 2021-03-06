
// handle keyboard input
void keyPressed() {
  if (key == '1') {
    read_mesh ("tetra.ply");
  }
  else if (key == '2') {
    read_mesh ("octa.ply");
  }
  else if (key == '3') {
    read_mesh ("icos.ply");
  }
  else if (key == '4') {
    read_mesh ("star.ply");
  }
  else if (key == '5') {
    read_mesh ("torus.ply");
  }
  else if (key == '6') {
    create_sphere();                     // create a sphere
  }
  else if (key == ' ') {
    rotate_flag = !rotate_flag;          // rotate the model?
  }
  else if (key == 'q' || key == 'Q') {
    exit();                               // quit the program
  }
  else if (key == 'd' || key == 'D') {
    triangulatedDual();//calculate the triangulated dual of the current mesh
  }else if (key == 'n' || key == 'N') {
    toggleShading(); //toggle between per-face and per-vertex normal shading
  }else if (key == 'r' || key == 'R') {
    changeColor();//change to random face colors
  }else if (key == 'w' || key == 'W') {
    turnWhite();//change mesh faces to white
  }
}
//
void printTable(float[][] t){
  print("table:");
  String line = "";
  for(int x=0; x<t.length;x++){
    line = "\n\t";
    for(int y=0; y<t[x].length;y++){
      line = line + t[x][y] + " ";
    }
    print(line);
  }
  print("\n");
}


