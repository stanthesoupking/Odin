package CoreGraphics

import CF "core:sys/darwin/CoreFoundation"
import "core:c"

foreign import CoreGraphics "system:CoreGraphics.framework"

ColorSpace :: distinct rawptr

ColorRenderingIntent :: enum i32 {
 	Default,
    AbsoluteColorimetric,
    RelativeColorimetric,
    Perceptual,
    Saturation
}

ColorSpaceModel :: enum i32 {
	Unknown = -1,
	Monochrome,
	RGB,
	CMYK,
	Lab,
	DeviceN,
	Indexed,
	Pattern,
	XYZ
}

HDR_BT_2100 :: 1

@(link_prefix="CG")
foreign CoreGraphics {
	ColorSpaceCreateWithName :: proc "c" (name: CF.String) -> ColorSpace ---
	ColorSpaceRetain :: proc "c" (space: ColorSpace) -> ColorSpace ---
	ColorSpaceRelease :: proc "c" (space: ColorSpace) ---
	ColorSpaceGetName :: proc "c" (space: ColorSpace) -> CF.String ---
	ColorSpaceCopyName :: proc "c" (space: ColorSpace) -> CF.String ---
	ColorSpaceGetTypeID :: proc "c" (space: ColorSpace) -> CF.TypeID ---
	ColorSpaceGetNumberOfComponents :: proc "c" (space: ColorSpace) -> c.size_t ---
	ColorSpaceGetModel :: proc "c" (space: ColorSpace) -> ColorSpaceModel ---
	ColorSpaceGetBaseColorSpace :: proc "c" (space: ColorSpace) -> ColorSpace ---
	ColorSpaceCopyBaseColorSpace :: proc "c" (space: ColorSpace) -> ColorSpace ---
	ColorSpaceGetColorTableCount :: proc "c" (space: ColorSpace) -> c.size_t ---
	ColorSpaceGetColorTable :: proc "c" (space: ColorSpace, table: ^c.uint8_t) ---
	ColorSpaceCopyICCData :: proc "c" (space: ColorSpace) -> CF.Data ---
	ColorSpaceIsWideGamutRGB :: proc "c" (space: ColorSpace) -> c.bool ---
	ColorSpaceIsHDR :: proc "c" (space: ColorSpace) -> c.bool ---
	ColorSpaceUsesITUR_2100TF :: proc "c" (space: ColorSpace) -> c.bool ---
	ColorSpaceIsPQBased :: proc "c" (space: ColorSpace) -> c.bool ---
	ColorSpaceIsHLGBased :: proc "c" (space: ColorSpace) -> c.bool ---
	ColorSpaceSupportsOutput :: proc "c" (space: ColorSpace) -> c.bool ---
	ColorSpaceCopyPropertyList :: proc "c" (space: ColorSpace) -> CF.PropertyList ---
	ColorSpaceCreateWithPropertyList :: proc "c" (plist: CF.PropertyList) -> ColorSpace ---
	ColorSpaceUsesExtendedRange :: proc "c" (space: ColorSpace) -> c.bool ---
	ColorSpaceCreateLinearized :: proc "c" (space: ColorSpace) -> ColorSpace ---
	ColorSpaceCreateExtended :: proc "c" (space: ColorSpace) -> ColorSpace ---
	ColorSpaceCreateExtendedLinearized :: proc "c" (space: ColorSpace) -> ColorSpace ---
	ColorSpaceCreateCopyWithStandardRange :: proc "c" (space: ColorSpace) -> ColorSpace ---
}

@(link_prefix="kCG")
foreign CoreGraphics {
    ColorSpaceGenericGray: CF.String
    ColorSpaceGenericRGB: CF.String
    ColorSpaceGenericCMYK: CF.String
    ColorSpaceDisplayP3: CF.String
    ColorSpaceGenericRGBLinear: CF.String
    ColorSpaceAdobeRGB1998: CF.String
    ColorSpaceSRGB: CF.String
    ColorSpaceGenericGrayGamma2_2: CF.String
    ColorSpaceGenericXYZ: CF.String
    ColorSpaceGenericLab: CF.String
    ColorSpaceACESCGLinear: CF.String
    ColorSpaceITUR_709: CF.String
    ColorSpaceITUR_709_PQ: CF.String
    ColorSpaceITUR_709_HLG: CF.String
    ColorSpaceITUR_2020: CF.String
    ColorSpaceITUR_2020_sRGBGamma: CF.String
    ColorSpaceROMMRGB: CF.String
    ColorSpaceDCIP3: CF.String
    ColorSpaceLinearITUR_2020: CF.String
    ColorSpaceExtendedITUR_2020: CF.String
    ColorSpaceExtendedLinearITUR_2020: CF.String
    ColorSpaceLinearDisplayP3: CF.String
    ColorSpaceExtendedDisplayP3: CF.String
    ColorSpaceExtendedLinearDisplayP3: CF.String
    ColorSpaceITUR_2100_PQ: CF.String
    ColorSpaceITUR_2100_HLG: CF.String
    ColorSpaceDisplayP3_PQ: CF.String
    ColorSpaceDisplayP3_HLG: CF.String
    ColorSpaceExtendedSRGB: CF.String
    ColorSpaceLinearSRGB: CF.String
    ColorSpaceExtendedLinearSRGB: CF.String
    ColorSpaceExtendedGray: CF.String
    ColorSpaceLinearGray: CF.String
    ColorSpaceExtendedLinearGray: CF.String
    ColorSpaceCoreMedia709: CF.String
}
