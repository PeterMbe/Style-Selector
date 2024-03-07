import java.util.HashMap;


String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nVestibulum iaculis ultricies libero, eget malesuada ligula tincidunt at.\n Nunc id ex vel lectus imperdiet eleifend id commodo purus.\n Suspendisse potenti. Fusce auctor sapien fringilla, porttitor nunc quis,\n pharetra purus. Etiam in sapien non ex tempus fermentum fermentum quis dui.\n Nunc lectus felis, congue vitae urna non, hendrerit fermentum arcu.\n Suspendisse in aliquam ex. Quisque tempor dui vel augue porta, sit amet\n venenatis libero vulputate. In cursus diam a accumsan commodo.\nPraesent sapien neque, finibus nec ligula eu, facilisis scelerisque massa.";
String[] styleNames = {"dark", "light", "red", "blue"};
StyleCollection styles;
Style currentStyle;
Button[] buttons;

void setupStyles() {
  // Assign a value to styles
  styles = new StyleCollection();

  // Construct four Style objects
  Style dark = new Style("dark", #000000, #FFFFFF, #FFFFFF, 23);
  Style light = new Style("light", #FFFFFF, #000000, #000000, 23);
  Style red = new Style("red", #FF6961, #C0392B,#FF0000, 23);
  Style blue = new Style("blue", #AEC6CF, #2980B9, #0000FF, 23);

  // Add each style to the StyleCollection
  styles.addStyle(dark);
  styles.addStyle(light);
  styles.addStyle(red);
  styles.addStyle(blue);

  // Choose one style to be the current style
  currentStyle = styles.getStyle("dark");

  // Set the current style as the default style
  styles.setDefaultStyle(currentStyle);
}

void setupButtons() {
  buttons = new Button[4];
  int spacing = width / 5;
  for (int index = 0; index < buttons.length; index++) {
    int x = (index + 1) * spacing;
    buttons[index] = new Button(x - 65, height - 100, 140, 50);
    buttons[index].setText(styleNames[index]);
  }
}

void setup() {
  size(800,600);
  setupStyles();
  setupButtons();
}
void draw() {
  background(currentStyle.getBackground());
  
  fill(currentStyle.getFillColor());
  textAlign(CENTER);
  textSize(currentStyle.getTextSize());
  text(text, 400,100);
  
  for (Button button : buttons) {
    button.display(styles);
  }
}

void mousePressed() {
  for (Button button : buttons) {
    if (button.isInside(mouseX, mouseY)) {
      currentStyle = styles.getStyle(button.getText());
    }
  }
}
  
