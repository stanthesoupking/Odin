package objc_CoreImage

import NS "core:sys/darwin/Foundation"
import CG "vendor:darwin/CoreGraphics"
import "core:c"

@(require)
foreign import CoreImage "system:CoreImage.framework"

@(objc_class="CIColor")
Color :: struct {
    using _: NS.Copying(Color),
}

@(objc_type=Color, objc_name="colorWithCGColor", objc_is_class_method=true)
Color_colorWithCGColor :: #force_inline proc "c" (color: CG.Color) -> ^Color {
	return msgSend(^Color, Color, "colorWithCGColor:", color)
}

@(objc_type=Color, objc_name="colorWithRGBA", objc_is_class_method=true)
Color_colorWithRGBA :: #force_inline proc "c" (red: NS.Float, green: NS.Float, blue: NS.Float, alpha: NS.Float) -> ^Color {
	return msgSend(^Color, Color, "colorWithRed:green:blue:alpha:", red, green, blue, alpha)
}

@(objc_type=Color, objc_name="colorWithRGB", objc_is_class_method=true)
Color_colorWithRGB :: #force_inline proc "c" (red: NS.Float, green: NS.Float, blue: NS.Float) -> ^Color {
	return msgSend(^Color, Color, "colorWithRed:green:blue:", red, green, blue)
}

@(objc_type=Color, objc_name="colorWithRGBAAndColorSpace", objc_is_class_method=true)
Color_colorWithRGBAAndColorSpace :: #force_inline proc "c" (red: NS.Float, green: NS.Float, blue: NS.Float, alpha: NS.Float, color_space: CG.ColorSpace) -> ^Color {
	return msgSend(^Color, Color, "colorWithRed:green:blue:alpha:colorSpace:", red, green, blue, alpha, color_space)
}

@(objc_type=Color, objc_name="colorWithRGBAndColorSpace", objc_is_class_method=true)
Color_colorWithRGBAndColorSpace :: #force_inline proc "c" (red: NS.Float, green: NS.Float, blue: NS.Float, color_space: CG.ColorSpace) -> ^Color {
	return msgSend(^Color, Color, "colorWithRed:green:blue:colorSpace:", red, green, blue, color_space)
}

@(objc_type=Color, objc_name="colorWithString", objc_is_class_method=true)
Color_colorWithString :: #force_inline proc "c" (representation: ^NS.String) -> ^Color {
	return msgSend(^Color, Color, "colorWithString:", representation)
}
