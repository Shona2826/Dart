import 'dart:html';
import 'dart:math';

void main() {
	manipulateHTML();	

}

void manipulateHTML(){
  String output = "";
 
  // querySelector returns a Element object that can be used to
  // manipulate the element with the provided id
  Element title = querySelector("#sum");
 
  // You can change element text
  title.setInnerHtml("Take me to your leader");
 
  // You can style attributes directly
  title.style.color = "Blue";
 
  // You can define a class with many styles (Best Choice)
  title.classes.add("titleStyle");
 
  // You can get an elements text
  output += title.innerHtml + "\n";
 
  // Get the div named divBox
  Element divBox = querySelector("#divBox");
 
  // Add a div to the divBox
  DivElement sampDiv = new DivElement();
  sampDiv.text = "I'm a DIV";
  divBox.children.add(sampDiv);
 
  // Add an anchor element
  AnchorElement sampAnchor = new AnchorElement();
  sampAnchor.text = "Google";
 
  // Change an attribute
  sampAnchor.setAttribute("href", "http://google.com");
 
  // Add text to the end of a child
  sampAnchor.appendText("is here");
 
  // Get value of an attribute
  output += "href of link ${sampAnchor.getAttribute("href")}\n";
 
  divBox.children.add(sampAnchor);
 
  // Insert a break statement or any tag
  divBox.children.add(new Element.tag('br'));
 
  Element inputElement = new InputElement();
 
  // Change the id for an element
  inputElement.attributes['id'] = "inputElement";
  divBox.children.add(inputElement);
 
  // Function called when the input changes
  inputElementChange(MouseEvent event) => querySelector("#output").text = output + "Input Changed\n";
 
  // Add a change listener to the input element
  querySelector("#inputElement").onChange.listen(inputElementChange);
 
  // Other Elements : AreaElement, BRElement, ButtomElement,
  // ButtonInputElement, CheckboxInputElement, ContentElement,
  // DListElement, DetailsElement, DialogElement, EmailInputElement,
  // EmbedElement, FileUploadInputElement, FormElement, HeadingElement,
  // ImageElement, InputElement, LIElement, LabelElement, LinkElement,
  // MapElement, MediaElement, MenuElement, MenuItemElement,
  // OListElement, OptionElement, ParagraphElement, ParamElement,
  // PreElement, RadioButtonInputElement, ResetButtonInputElement,
  // SpanElement, SubmitButtonInputElement, TableElement,
  // TextAreaElement, TitleElement, UListElement, VideoElement
  // https://api.dartlang.org/apidocs/channels/be/dartdoc-viewer/dart:html
 
  querySelector("#output").text = output;
}