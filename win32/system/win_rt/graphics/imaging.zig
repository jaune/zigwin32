//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (1)
//--------------------------------------------------------------------------------
pub const CLSID_SoftwareBitmapNativeFactory = Guid.initString("84e65691-8602-4a84-be46-708be9cd4b74");

//--------------------------------------------------------------------------------
// Section: Types (2)
//--------------------------------------------------------------------------------
const IID_ISoftwareBitmapNative_Value = Guid.initString("94bc8415-04ea-4b2e-af13-4de95aa898eb");
pub const IID_ISoftwareBitmapNative = &IID_ISoftwareBitmapNative_Value;
pub const ISoftwareBitmapNative = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        GetData: *const fn(
            self: *const ISoftwareBitmapNative,
            riid: ?*const Guid,
            ppv: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn GetData(self: *const ISoftwareBitmapNative, riid: ?*const Guid, ppv: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.GetData(self, riid, ppv);
    }
};

const IID_ISoftwareBitmapNativeFactory_Value = Guid.initString("c3c181ec-2914-4791-af02-02d224a10b43");
pub const IID_ISoftwareBitmapNativeFactory = &IID_ISoftwareBitmapNativeFactory_Value;
pub const ISoftwareBitmapNativeFactory = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateFromWICBitmap: *const fn(
            self: *const ISoftwareBitmapNativeFactory,
            data: ?*IWICBitmap,
            forceReadOnly: BOOL,
            riid: ?*const Guid,
            ppv: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CreateFromMF2DBuffer2: *const fn(
            self: *const ISoftwareBitmapNativeFactory,
            data: ?*IMF2DBuffer2,
            subtype: ?*const Guid,
            width: u32,
            height: u32,
            forceReadOnly: BOOL,
            minDisplayAperture: ?*const MFVideoArea,
            riid: ?*const Guid,
            ppv: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn CreateFromWICBitmap(self: *const ISoftwareBitmapNativeFactory, data: ?*IWICBitmap, forceReadOnly: BOOL, riid: ?*const Guid, ppv: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.CreateFromWICBitmap(self, data, forceReadOnly, riid, ppv);
    }
    pub fn CreateFromMF2DBuffer2(self: *const ISoftwareBitmapNativeFactory, data: ?*IMF2DBuffer2, subtype: ?*const Guid, width: u32, height: u32, forceReadOnly: BOOL, minDisplayAperture: ?*const MFVideoArea, riid: ?*const Guid, ppv: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.CreateFromMF2DBuffer2(self, data, subtype, width, height, forceReadOnly, minDisplayAperture, riid, ppv);
    }
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (8)
//--------------------------------------------------------------------------------
const Guid = @import("../../../zig.zig").Guid;
const BOOL = @import("../../../foundation.zig").BOOL;
const HRESULT = @import("../../../foundation.zig").HRESULT;
const IInspectable = @import("../../../system/win_rt.zig").IInspectable;
const IMF2DBuffer2 = @import("../../../media/media_foundation.zig").IMF2DBuffer2;
const IUnknown = @import("../../../system/com.zig").IUnknown;
const IWICBitmap = @import("../../../graphics/imaging.zig").IWICBitmap;
const MFVideoArea = @import("../../../media/media_foundation.zig").MFVideoArea;

test {
    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        _ = @field(@This(), decl.name);
    }
}
