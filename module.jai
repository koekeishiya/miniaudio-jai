#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .LINUX || OS == .MACOS {
    #load "unix.jai";
} else {
    #assert false;
}
