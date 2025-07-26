package objc_CoreImage

import NS "core:sys/darwin/Foundation"
import CG "vendor:darwin/CoreGraphics"
import CV "vendor:darwin/CoreVideo"
import MTL "vendor:darwin/Metal"
import "core:c"
import "base:intrinsics"

@(require)
foreign import CoreImage "system:CoreImage.framework"

ContextOption :: distinct ^NS.String
ImageRepresentationOption :: distinct ^NS.String

@(objc_class="CIContext")
Context :: struct { using _: NS.Object }

@(objc_type=Context, objc_name="contextWithCGContext", objc_is_class_method=true)
Context_contextWithCGContext :: #force_inline proc "c" (ctx: CG.Context, options: ^NS.Dictionary) -> ^Context {
	return msgSend(^Context, Context, "contextWithCGContext:options:", ctx, options)
}

@(objc_type=Context, objc_name="contextWithOptions", objc_is_class_method=true)
    Context_contextWithOptions :: #force_inline proc "c" (options: ^NS.Dictionary) -> ^Context {
	return msgSend(^Context, Context, "contextWithOptions:", options)
}

@(objc_type=Context, objc_name="context", objc_is_class_method=true)
    Context_context :: #force_inline proc "c" () -> ^Context {
	return msgSend(^Context, Context, "context")
}

@(objc_type=Context, objc_name="initWithOptions")
    Context_initWithOptions :: #force_inline proc "c" (options: ^NS.Dictionary) -> ^Context {
	return msgSend(^Context, Context, "initWithOptions:", options)
}

@(objc_type=Context, objc_name="contextWithMTLDevice", objc_is_class_method=true)
Context_contextWithMTLDevice :: #force_inline proc "c" (device: ^MTL.Device) -> ^Context {
	return msgSend(^Context, Context, "contextWithMTLDevice:", device)
}

@(objc_type=Context, objc_name="contextWithMTLDeviceWithOptions", objc_is_class_method=true)
Context_contextWithMTLDeviceOptions :: #force_inline proc "c" (device: ^MTL.Device, options: ^NS.Dictionary) -> ^Context {
	return msgSend(^Context, Context, "contextWithMTLDevice:options:", device, options)
}

@(objc_type=Context, objc_name="contextWithMTLCommandQueue", objc_is_class_method=true)
Context_contextWithMTLCommandQueue :: #force_inline proc "c" (command_queue: ^MTL.CommandQueue) -> ^Context {
	return msgSend(^Context, Context, "contextWithMTLCommandQueue:", command_queue)
}

@(objc_type=Context, objc_name="contextWithMTLCommandQueueWithOptions", objc_is_class_method=true)
Context_contextWithMTLCommandQueueOptions :: #force_inline proc "c" (command_queue: ^MTL.CommandQueue, options: ^NS.Dictionary) -> ^Context {
	return msgSend(^Context, Context, "contextWithMTLCommandQueue:options:", command_queue, options)
}

@(objc_type=Context, objc_name="workingColorSpace")
Context_workingColorSpace :: #force_inline proc "c" (self: ^Context) -> CG.ColorSpace {
	return msgSend(CG.ColorSpace, self, "workingColorSpace")
}

@(objc_type=Context, objc_name="workingFormat")
Context_workingFormat :: #force_inline proc "c" (self: ^Context) -> Format {
	return msgSend(Format, self, "workingFormat")
}

@(objc_type=Context, objc_name="drawImage")
Context_drawImage :: #force_inline proc "c" (self: ^Context, image: ^Image, point: NS.Point, rect: NS.Rect) {
	msgSend(nil, self, "drawImage:inRect:fromRect:", image, point, rect)
}

@(objc_type=Context, objc_name="renderToBitmap")
Context_renderToBitmap :: #force_inline proc "c" (self: ^Context, image: ^Image, data: rawptr, row_bytes: c.ptrdiff_t, bounds: NS.Rect, format: Format, color_space: CG.ColorSpace) {
		msgSend(nil, self, "render:toBitmap:rowBytes:bounds:format:colorSpace:", image, data, row_bytes, bounds, format, color_space)
}
	
@(objc_type=Context, objc_name="renderToIOSurface")
Context_renderToIOSurface :: #force_inline proc "c" (self: ^Context, image: ^Image, surface: CG.IOSurface, bounds: NS.Rect, color_space: CG.ColorSpace) {
		msgSend(nil, self, "render:toIOSurface:bounds:colorSpace:", image, surface, bounds, color_space)
}

@(objc_type=Context, objc_name="renderToCVPixelBuffer")
Context_renderToCVPixelBuffer :: #force_inline proc "c" (self: ^Context, image: ^Image, buffer: CV.PixelBufferRef) {
	msgSend(nil, self, "render:toCVPixelBuffer:", image, buffer)
}

@(objc_type=Context, objc_name="renderToCVPixelBufferWithBounds")
Context_renderToCVPixelBufferWithBounds :: #force_inline proc "c" (self: ^Context, image: ^Image, buffer: CV.PixelBufferRef, bounds: NS.Rect, color_space: CG.ColorSpace) {
	msgSend(nil, self, "render:toCVPixelBuffer:bounds:colorSpace:", image, buffer, bounds, color_space)
}

@(objc_type=Context, objc_name="renderToMTLTexture")
    Context_renderToMTLTexture :: #force_inline proc "c" (self: ^Context, image: ^Image, texture: ^MTL.Texture, command_buffer: ^MTL.CommandBuffer, bounds: NS.Rect, color_space: CG.ColorSpace) {
	msgSend(nil, self, "render:toMTLTexture:commandBuffer:bounds:colorSpace:", image, texture, command_buffer, bounds, color_space)
}

@(objc_type=Context, objc_name="reclaimResources")
    Context_reclaimResources :: #force_inline proc "c" (self: ^Context) {
	msgSend(nil, self, "reclaimResources")
}

@(objc_type=Context, objc_name="clearCaches")
    Context_clearCaches :: #force_inline proc "c" (self: ^Context) {
	msgSend(nil, self, "clearCaches")
}

@(objc_type=Context, objc_name="inputImageMaximumSize")
    Context_inputImageMaximumSize :: #force_inline proc "c" (self: ^Context) -> NS.Size {
	return msgSend(NS.Size, self, "inputImageMaximumSize")
}
    
@(objc_type=Context, objc_name="outputImageMaximumSize")
    Context_outputImageMaximumSize :: #force_inline proc "c" (self: ^Context) -> NS.Size {
	return msgSend(NS.Size, self, "outputImageMaximumSize")
}

@(objc_type=Context, objc_name="createCGImage")
    Context_createCGImage :: #force_inline proc "c" (self: ^Context, image: ^Image, rect: NS.Rect) -> CG.Image {
	return msgSend(CG.Image, self, "createCGImage:fromRect:", image, rect)
}

@(objc_type=Context, objc_name="createCGImageWithFormatAndDeferred")
    Context_createCGImageWithFormatAndDeferred :: #force_inline proc "c" (self: ^Context, image: ^Image, rect: NS.Rect, format: Format, color_space: CG.ColorSpace, deferred: NS.BOOL) -> CG.Image {
	return msgSend(CG.Image, self, "createCGImage:fromRect:format:colorSpace:deferred:", image, rect, format, color_space, deferred)
}

@(objc_type=Context, objc_name="createCGImageWithFormatAndDeferredAndCalculateHDRStats")
    Context_createCGImageWithFormatAndDeferredAndCalculateHDRStats :: #force_inline proc "c" (self: ^Context, image: ^Image, rect: NS.Rect, format: Format, color_space: CG.ColorSpace, deferred: NS.BOOL, calculate_hdr_stats: NS.BOOL) -> CG.Image {
	return msgSend(CG.Image, self, "createCGImage:fromRect:format:colorSpace:deferred:calculateHDRStats:", image, rect, format, color_space, calculate_hdr_stats)
}

@(objc_type=Context, objc_name="calculateHDRStatsForIOSurface")
Context_calculateHDRStatsForIOSurface :: #force_inline proc "c" (self: ^Context, surface: CG.IOSurface) {
	msgSend(nil, self, "calculateHDRStatsForIOSurface:", surface)
}

@(objc_type=Context, objc_name="calculateHDRStatsForCVPixelBuffer")
Context_calculateHDRStatsForCVPixelBuffer :: #force_inline proc "c" (self: ^Context, buffer: CV.PixelBufferRef) {
	msgSend(nil, self, "calculateHDRStatsForCVPixelBuffer:", buffer)
}

@(objc_type=Context, objc_name="calculateHDRStatsForCGImage")
Context_calculateHDRStatsForCGImage :: #force_inline proc "c" (self: ^Context, image: CG.Image) -> CG.Image {
	return msgSend(CG.Image, self, "calculateHDRStatsForCGImage:", image)
}

@(objc_type=Context, objc_name="calculateHDRStatsForImage")
Context_calculateHDRStatsForImage :: #force_inline proc "c" (self: ^Context, image: ^Image) -> ^Image {
	return msgSend(^Image, self, "calculateHDRStatsForImage:", image)
}

@(objc_type=Context, objc_name="TIFFRepresentationOfImage")
Context_TIFFRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary) -> ^NS.Data {
   	return msgSend(^NS.Data, self, "TIFFRepresentationOfImage:format:colorSpace:options:", image, format, color_space, options)
}

@(objc_type=Context, objc_name="JPEGRepresentationOfImage")
Context_JPEGRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary) -> ^NS.Data {
   	return msgSend(^NS.Data, self, "JPEGRepresentationOfImage:format:colorSpace:options:", image, format, color_space, options)
}

@(objc_type=Context, objc_name="HEIFRepresentationOfImage")
Context_HEIFRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary) -> ^NS.Data {
   	return msgSend(^NS.Data, self, "HEIFRepresentationOfImage:format:colorSpace:options:", image, format, color_space, options)
}

@(objc_type=Context, objc_name="HEIF10RepresentationOfImage")
Context_HEIF10RepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary, error: ^^NS.Error) -> ^NS.Data {
   	return msgSend(^NS.Data, self, "HEIF10RepresentationOfImage:format:colorSpace:options:error:", image, format, color_space, options, error)
}

@(objc_type=Context, objc_name="PNGRepresentationOfImage")
Context_PNGRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary) -> ^NS.Data {
   	return msgSend(^NS.Data, self, "PNGRepresentationOfImage:format:colorSpace:options:", image, format, color_space, options)
}

@(objc_type=Context, objc_name="OpenEXRRepresentationOfImage")
Context_OpenEXRRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary, error: ^^NS.Error) -> ^NS.Data {
   	return msgSend(^NS.Data, self, "OpenEXRRepresentationOfImage:format:colorSpace:options:error:", image, format, color_space, options, error)
}

@(objc_type=Context, objc_name="writeTIFFRepresentationOfImage")
Context_writeTIFFRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, url: ^NS.URL, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary, error: ^^NS.Error) -> NS.BOOL {
   	return msgSend(NS.BOOL, self, "writeTIFFRepresentationOfImage:toURL:format:colorSpace:options:error:", image, url, format, color_space, options, error)
}

@(objc_type=Context, objc_name="writePNGRepresentationOfImage")
Context_writePNGRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, url: ^NS.URL, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary, error: ^^NS.Error) -> NS.BOOL {
   	return msgSend(NS.BOOL, self, "writePNGRepresentationOfImage:toURL:format:colorSpace:options:error:", image, url, format, color_space, options, error)
}

@(objc_type=Context, objc_name="writeJPEGRepresentationOfImage")
Context_writeJPEGRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, url: ^NS.URL, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary, error: ^^NS.Error) -> NS.BOOL {
   	return msgSend(NS.BOOL, self, "writeJPEGRepresentationOfImage:toURL:format:colorSpace:options:error:", image, url, format, color_space, options, error)
}

@(objc_type=Context, objc_name="writeHEIFRepresentationOfImage")
Context_writeHEIFRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, url: ^NS.URL, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary, error: ^^NS.Error) -> NS.BOOL {
   	return msgSend(NS.BOOL, self, "writeHEIFRepresentationOfImage:toURL:format:colorSpace:options:error:", image, url, format, color_space, options, error)
}

@(objc_type=Context, objc_name="writeHEIF10RepresentationOfImage")
Context_writeHEIF10RepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, url: ^NS.URL, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary, error: ^^NS.Error) -> NS.BOOL {
   	return msgSend(NS.BOOL, self, "writeHEIF10RepresentationOfImage:toURL:format:colorSpace:options:error:", image, url, format, color_space, options, error)
}

@(objc_type=Context, objc_name="writeOpenEXRRepresentationOfImage")
Context_writeOpenEXRRepresentationOfImage :: #force_inline proc "c" (self: ^Context, image: ^Image, url: ^NS.URL, format: Format, color_space: CG.ColorSpace, options: ^NS.Dictionary, error: ^^NS.Error) -> NS.BOOL {
   	return msgSend(NS.BOOL, self, "writeOpenEXRRepresentationOfImage:toURL:format:colorSpace:options:error:", image, url, format, color_space, options, error)
}

@(link_prefix="kCI")
foreign CoreImage {
    // ContextOption
    ContextOutputColorSpace: ContextOption
    ContextWorkingColorSpace: ContextOption
    ContextWorkingFormat: ContextOption
    ContextHighQualityDownsample: ContextOption
    ContextOutputPremultiplied: ContextOption
    ContextCacheIntermediates: ContextOption
    ContextUseSoftwareRenderer: ContextOption
    ContextPriorityRequestLow: ContextOption
    ContextAllowLowPower: ContextOption
    ContextName: ContextOption
    ContextCVMetalTextureCache: ContextOption
    ContextMemoryLimit: ContextOption
    
    // ImageRepresentationOption
    ImageRepresentationAVDepthData: ImageRepresentationOption
    ImageRepresentationDepthImage: ImageRepresentationOption
    ImageRepresentationDisparityImage: ImageRepresentationOption
    ImageRepresentationAVPortraitEffectsMatte: ImageRepresentationOption
    ImageRepresentationPortraitEffectsMatteImage: ImageRepresentationOption
    ImageRepresentationAVSemanticSegmentationMattes: ImageRepresentationOption
    ImageRepresentationSemanticSegmentationSkinMatteImage: ImageRepresentationOption
    ImageRepresentationSemanticSegmentationHairMatteImage: ImageRepresentationOption
    ImageRepresentationSemanticSegmentationTeethMatteImage: ImageRepresentationOption
    ImageRepresentationSemanticSegmentationGlassesMatteImage: ImageRepresentationOption
    ImageRepresentationSemanticSegmentationSkyMatteImage: ImageRepresentationOption
    ImageRepresentationHDRImage: ImageRepresentationOption
    ImageRepresentationHDRGainMapImage: ImageRepresentationOption
    ImageRepresentationHDRGainMapAsRGB: ImageRepresentationOption
}
