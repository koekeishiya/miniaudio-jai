#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .LINUX || OS == .MACOS {
    #import "POSIX";
    #load "unix.jai";
} else {
    #assert false;
}
