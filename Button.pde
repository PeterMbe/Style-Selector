class Button {
  float xPos;
  float yPos;
  float Width;
  float Height;
  String label;
  
 public Button(float xp, float yp, float w, float h) {
   xPos=xp;
   yPos=yp;
   Width=w;
   Height=h;
 }
 
 public boolean isInside(float mx, float my) {
   if (mx>=xPos && mx<= xPos + Width && my >= yPos  && my <= yPos + Height) {
     return true;
   } else {
     return false;
   }
 }
 
 public void setText(String s) {
  label = s; 
 }
 
 public String getText() {
   return label;
 }
 
 public void display(StyleCollection s) {
   fill(s.getStyle(label).getBackground());
   stroke(s.getStyle(label).getStrokeColor());
   rect(xPos, yPos, Width, Height);
   fill(s.getStyle(label).getFillColor());
   textSize(s.getStyle(label).getTextSize());
   text(label, xPos+(Width/2), yPos+(Height/1.5));
 }
}
     
