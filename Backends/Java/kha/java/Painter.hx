package kha.java;
import kha.Font;
import kha.Image;

@:classContents('
	public java.awt.Graphics2D graphics;
	
	private static int round(double value) {
		return (int)Math.round(value);
	}
')
class Painter extends kha.Painter {
	var tx : Float;
	var ty : Float;
	
	public function new() {
		
	}
	
	@:functionBody('
		graphics.setRenderingHint(java.awt.RenderingHints.KEY_INTERPOLATION, java.awt.RenderingHints.VALUE_INTERPOLATION_BILINEAR);
	')
	function setRenderHint() : Void {
		
	}
	
	override public function translate(x : Float, y : Float) : Void {
		this.tx = x;
		this.ty = y;
	}
	
	@:functionBody('
		graphics.drawImage(((kha.java.Image)img).image, round(tx + x), round(ty + y), null);
	')
	override public function drawImage(img : Image, x : Float, y : Float) : Void {
		
	}
	
	@:functionBody('
		graphics.drawImage(((kha.java.Image)image).image, round(tx + dx), round(ty + dy), round(tx + dx + dw), round(ty + dy + dh), round(sx), round(sy), round(sx + sw), round(sy + sh), null);
	')
	override public function drawImage2(image : Image, sx : Float, sy : Float, sw : Float, sh : Float, dx : Float, dy : Float, dw : Float, dh : Float) : Void {
		
	}
	
	@:functionBody('
		graphics.setColor(new java.awt.Color(r, g, b));
	')
	override public function setColor(r : Int, g : Int, b : Int) : Void {
	}

	@:functionBody('
		graphics.drawRect(round(tx + x), round(ty + y), round(width), round(height));
	')
	override public function drawRect(x : Float, y : Float, width : Float, height : Float) : Void {
		
	}
	
	@:functionBody('
		graphics.fillRect(round(tx + x), round(ty + y), round(width), round(height));	
	')
	override public function fillRect(x : Float, y : Float, width : Float, height : Float) : Void {

	}
	
	@:functionBody('
		graphics.setFont(((kha.java.Font)font).font);
	')
	override public function setFont(font : Font) : Void {
		
	}
	
	override public function drawChars(text : String, offset : Int, length : Int, x : Float, y : Float) : Void {
		drawString(text.substr(offset, length), x, y);
	}
	
	@:functionBody('
		graphics.drawString(text, round(tx + x), round(ty + y));
	')
	override public function drawString(text : String, x : Float, y : Float) : Void {
		
	}
	
	@:functionBody('
		graphics.drawLine(round(tx + x1), round(ty + y1), round(tx + x2), round(ty + y2));
	')
	override public function drawLine(x1 : Float, y1 : Float, x2 : Float, y2 : Float) : Void {
	
	}
	
	@:functionBody('
		int[] xPoints = new int[]{round(tx + x1), round(tx + x2), round(tx + x3)};
		int[] yPoints = new int[]{round(ty + y1), round(ty + y2), round(ty + y3)};
		graphics.fillPolygon(xPoints, yPoints, 3);
	')
	override public function fillTriangle(x1 : Float, y1 : Float, x2 : Float, y2 : Float, x3 : Float, y3 : Float) : Void {
		
	}
}