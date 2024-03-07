import java.util.HashMap;

class StyleCollection {
  //variable
  private HashMap<String, Style> styles;
  
  //constructor
  public StyleCollection() {
    styles= new HashMap<String ,Style>();
  }
  
  //methods
  public void addStyle(Style style) {
    String name = style.getName();
    styles.put(name,style);
  }
  
  void setDefaultStyle(Style style){
    styles.put("default", style);
  }
  
  public Style getStyle( String theKey) {
    return styles.get(theKey);
  }
  
  public Style getDefaultStyle(){
    return styles.get("default");
  }
    
  
}
