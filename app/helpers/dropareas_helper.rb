module DropareasHelper


  def get_style(object)
    style =  "height:" + object.height.to_s + "px";
    style += "; width:" + object.width.to_s + "px";
    style += "; left:" + object.left.to_s + "px";
    style += "; top:" + object.top.to_s + "px";
    style += "; background-color:red";
    style += "; opacity:.4";
    style += "; position:absolute;";
    return style;
  end

  def get_style2(object)
    style =  "height:" + object.height.to_s + "px";
    style += "; width:" + object.width.to_s + "px";
    style += "; left:" + object.left.to_s + "px";
    style += "; top:" + object.top.to_s + "px";
    style += "; background-color:red";
    style += "; opacity:0";
    style += "; position:absolute;";
    return style;
  end
end
