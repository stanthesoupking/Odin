package objc_CoreImage

import NS "core:sys/darwin/Foundation"
import CG "vendor:darwin/CoreGraphics"
import CV "vendor:darwin/CoreVideo"
import "core:c"

@(require)
foreign import CoreImage "system:CoreImage.framework"

Format :: distinct int

@(objc_class="CIImage")
Image :: struct {
    using _: NS.Copying(Image),
}

@(objc_type=Image, objc_name="alloc", objc_is_class_method=true)
Image_alloc :: #force_inline proc "c" () -> ^Image {
	return msgSend(^Image, Image, "alloc")
}

@(objc_type=Image, objc_name="imageWithCGImage", objc_is_class_method=true)
Image_imageWithCGImage :: #force_inline proc "c" (image: CG.Image) -> ^Image {
	return msgSend(^Image, Image, "imageWithCGImage:", image)
}

@(objc_type=Image, objc_name="imageWithCGImageAndOptions", objc_is_class_method=true)
Image_imageWithCGImageAndOptions :: #force_inline proc "c" (image: CG.Image, options: ^NS.Dictionary) -> ^Image {
	return msgSend(^Image, Image, "imageWithCGImage:options:", image, options)
}

@(objc_type=Image, objc_name="imageWithCGImageSource", objc_is_class_method=true)
Image_imageWithCGImageSource :: #force_inline proc "c" (source: CG.ImageSource, index: c.size_t, options: ^NS.Dictionary) -> ^Image {
	return msgSend(^Image, Image, "imageWithCGImageSource:index:options:", source, index, options)
}

@(objc_type=Image, objc_name="imageWithBitmapData", objc_is_class_method=true)
Image_imageWithBitmapData :: #force_inline proc "c" (data: ^NS.Data, bytes_per_row: c.size_t, size: NS.Size, format: Format, color_space: CG.ColorSpace) -> ^Image {
	return msgSend(^Image, Image, "imageWithBitmapData:bytesPerRow:size:format:colorSpace:", data, bytes_per_row, size, format, color_space)
}

@(objc_type=Image, objc_name="imageWithContentsOfURL", objc_is_class_method=true)
Image_imageWithContentsOfURL :: #force_inline proc "c" (url: ^NS.URL) -> ^Image {
	return msgSend(^Image, Image, "imageWithContentsOfURL:", url)
}

@(objc_type=Image, objc_name="imageWithContentsOfURLAndOptions", objc_is_class_method=true)
Image_imageWithContentsOfURLAndOptions :: #force_inline proc "c" (url: ^NS.URL, options: ^NS.Dictionary) -> ^Image {
	return msgSend(^Image, Image, "imageWithContentsOfURL:options:", url, options)
}

@(objc_type=Image, objc_name="imageWithData", objc_is_class_method=true)
Image_imageWithData :: #force_inline proc "c" (data: ^NS.Data) -> ^Image {
	return msgSend(^Image, Image, "imageWithData:", data)
}

@(objc_type=Image, objc_name="imageWithDataAndOptions", objc_is_class_method=true)
Image_imageWithDataAndOptions :: #force_inline proc "c" (data: ^NS.Data, options: ^NS.Dictionary) -> ^Image {
	return msgSend(^Image, Image, "imageWithData:options:", data, options)
}

@(objc_type=Image, objc_name="imageWithCVImageBuffer", objc_is_class_method=true)
Image_imageWithCVImageBuffer :: #force_inline proc "c" (image_buffer: CV.ImageBufferRef) -> ^Image {
	return msgSend(^Image, Image, "imageWithCVImageBuffer:", image_buffer)
}

@(objc_type=Image, objc_name="imageWithCVImageBufferAndOptions", objc_is_class_method=true)
Image_imageWithCVImageBufferAndOptions :: #force_inline proc "c" (image_buffer: CV.ImageBufferRef, options: ^NS.Dictionary) -> ^Image {
	return msgSend(^Image, Image, "imageWithCVImageBuffer:options:", image_buffer, options)
}

@(objc_type=Image, objc_name="imageWithCVPixelBuffer", objc_is_class_method=true)
Image_imageWithCVPixelBuffer :: #force_inline proc "c" (pixel_buffer: CV.PixelBufferRef) -> ^Image {
	return msgSend(^Image, Image, "imageWithCVPixelBuffer:", pixel_buffer)
}

@(objc_type=Image, objc_name="imageWithCVPixelBufferAndOptions", objc_is_class_method=true)
Image_imageWithCVPixelBufferAndOptions :: #force_inline proc "c" (pixel_buffer: CV.PixelBufferRef, options: ^NS.Dictionary) -> ^Image {
	return msgSend(^Image, Image, "imageWithCVPixelBuffer:options:", pixel_buffer, options)
}

@(objc_type=Image, objc_name="imageWithIOSurface", objc_is_class_method=true)
Image_imageWithIOSurface :: #force_inline proc "c" (surface: CG.IOSurface) -> ^Image {
	return msgSend(^Image, Image, "imageWithIOSurface:", surface)
}

@(objc_type=Image, objc_name="imageWithIOSurfaceAndOptions", objc_is_class_method=true)
Image_imageWithIOSurfaceAndOptions :: #force_inline proc "c" (surface: CG.IOSurface, options: ^NS.Dictionary) -> ^Image {
	return msgSend(^Image, Image, "imageWithIOSurface:options:", surface, options)
}

@(objc_type=Image, objc_name="imageWithColor", objc_is_class_method=true)
Image_imageWithColor :: #force_inline proc "c" (color: Color) -> ^Image {
	return msgSend(^Image, Image, "imageWithColor:", color)
}

@(objc_type=Image, objc_name="emptyImage", objc_is_class_method=true)
Image_emptyImage :: #force_inline proc "c" () -> ^Image {
	return msgSend(^Image, Image, "emptyImage")
}

@(objc_type=Image, objc_name="extent")
Image_extent :: #force_inline proc "c" (self: ^Image) -> NS.Rect {
	return msgSend(NS.Rect, self, "extent")
}

@(link_prefix="kCI")
foreign CoreImage {
    // Format
    FormatARGB8: Format
    FormatBGRA8: Format
    FormatRGBA8: Format
    FormatRGBX8: Format
    FormatABGR8: Format
    FormatRGBAh: Format
    FormatRGBA16: Format
    FormatRGBAf: Format
    FormatRGBX16: Format
    FormatRGBXh: Format
    FormatRGBXf: Format    
    FormatRGB10: Format
    FormatA8: Format
    FormatA16: Format
    FormatAh: Format
    FormatAf: Format
    FormatR8: Format
    FormatR16: Format
    FormatRh: Format
    FormatRf: Format
    FormatRG8: Format
    FormatRG16: Format
    FormatRGh: Format
    FormatRGf: Format
    FormatL8: Format
    FormatL16: Format
    FormatLh: Format
    FormatLf: Format
    FormatLA8: Format
    FormatLA16: Format
    FormatLAh: Format
    FormatLAf: Format
}
