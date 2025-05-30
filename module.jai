#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .LINUX || OS == .MACOS {
    #load "unix.jai";
    #scope_module
    #import "POSIX";
} else {
    #assert false;
}
