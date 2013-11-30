/*
 * This file is part of alphaTab.
 *
 *  alphaTab is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  alphaTab is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with alphaTab.  If not, see <http://www.gnu.org/licenses/>.
 */
package alphatab.rendering;

import alphatab.platform.ICanvas;

/**
 * A glyph is a single symbol which can be added to a GlyphBarRenderer for automated
 * layouting and drawing of stacked symbols.
 */
class Glyph 
{
    public var index:Int;
    public var x:Int;
    public var y:Int;
    public var width:Int;
    public var renderer:BarRendererBase;
    
    public function new(x:Int = 0, y:Int = 0) 
    {
        this.x = x;
        this.y = y;
    }
    
    public function applyGlyphSpacing(spacing:Int)
    {
        if (canScale())
        {
            width += spacing;
        }
    }    

    public inline function getScale() : Float
    {
        return renderer.getScale();
    }
    
    public function canScale() : Bool
    {
        return true;
    }
    
    public function doLayout()
    {
    }
    
    public function paint(cx:Int, cy:Int, canvas:ICanvas)
    {

    }
}