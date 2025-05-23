//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (2)
//--------------------------------------------------------------------------------
pub const CreateProcessMethod = enum(i32) {
    CreateProcess = 0,
    CreateProcessAsUser = 1,
    AicLaunchAdminProcess = 2,
};
pub const CpCreateProcess = CreateProcessMethod.CreateProcess;
pub const CpCreateProcessAsUser = CreateProcessMethod.CreateProcessAsUser;
pub const CpAicLaunchAdminProcess = CreateProcessMethod.AicLaunchAdminProcess;

const IID_IDDEInitializer_Value = Guid.initString("30dc931f-33fc-4ffd-a168-942258cf3ca4");
pub const IID_IDDEInitializer = &IID_IDDEInitializer_Value;
pub const IDDEInitializer = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Initialize: *const fn(
            self: *const IDDEInitializer,
            fileExtensionOrProtocol: ?[*:0]const u16,
            method: CreateProcessMethod,
            currentDirectory: ?[*:0]const u16,
            execTarget: ?*IShellItem,
            site: ?*IUnknown,
            application: ?[*:0]const u16,
            targetFile: ?[*:0]const u16,
            arguments: ?[*:0]const u16,
            verb: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn Initialize(self: *const IDDEInitializer, fileExtensionOrProtocol: ?[*:0]const u16, method: CreateProcessMethod, currentDirectory: ?[*:0]const u16, execTarget: ?*IShellItem, site: ?*IUnknown, application: ?[*:0]const u16, targetFile: ?[*:0]const u16, arguments: ?[*:0]const u16, verb: ?[*:0]const u16) callconv(.Inline) HRESULT {
        return self.vtable.Initialize(self, fileExtensionOrProtocol, method, currentDirectory, execTarget, site, application, targetFile, arguments, verb);
    }
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (5)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const HRESULT = @import("../../foundation.zig").HRESULT;
const IShellItem = @import("../../ui/shell.zig").IShellItem;
const IUnknown = @import("../../system/com.zig").IUnknown;
const PWSTR = @import("../../foundation.zig").PWSTR;

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
