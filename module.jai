#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .MACOS {
    #load "macos.jai";
    #scope_module
    #import "POSIX";
} else #if OS == .LINUX {
    #load "linux.jai";
    #scope_module
    #import "POSIX";
} else {
    #assert false;
}
