//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



MA_VERSION_MAJOR :: 0;
MA_VERSION_MINOR :: 11;
MA_VERSION_REVISION :: 22;

MA_SIZEOF_PTR :: 8;

MA_TRUE :: 1;
MA_FALSE :: 0;

MA_SIZE_MAX :: 0xFFFFFFFF;

MA_SIMD_ALIGNMENT :: 32;

MA_MIN_CHANNELS :: 1;

MA_MAX_CHANNELS :: 254;

MA_MAX_FILTER_ORDER :: 8;

MA_MAX_LOG_CALLBACKS :: 4;

MA_CHANNEL_INDEX_NULL :: 255;

MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT :: 0x00000001;

MA_DATA_FORMAT_FLAG_EXCLUSIVE_MODE :: 1 << 1;

MA_MAX_DEVICE_NAME_LENGTH :: 255;

ma_resource_manager_job :: ma_job;
ma_resource_manager_job_init :: ma_job_init;

ma_resource_manager_job_queue_config :: ma_job_queue_config;
ma_resource_manager_job_queue_config_init :: ma_job_queue_config_init;
ma_resource_manager_job_queue :: ma_job_queue;
ma_resource_manager_job_queue_get_heap_size :: ma_job_queue_get_heap_size;
ma_resource_manager_job_queue_init_preallocated :: ma_job_queue_init_preallocated;
ma_resource_manager_job_queue_init :: ma_job_queue_init;
ma_resource_manager_job_queue_uninit :: ma_job_queue_uninit;
ma_resource_manager_job_queue_post :: ma_job_queue_post;
ma_resource_manager_job_queue_next :: ma_job_queue_next;

MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT :: 64;

MA_MAX_NODE_BUS_COUNT :: 254;

MA_MAX_NODE_LOCAL_BUS_COUNT :: 2;

MA_NODE_BUS_COUNT_UNKNOWN :: 255;

MA_ENGINE_MAX_LISTENERS :: 4;

MA_LISTENER_INDEX_CLOSEST :: cast,trunc(ma_uint8) -1;

MA_SOUND_SOURCE_CHANNEL_COUNT :: 0xFFFFFFFF;

ma_int8 :: s8;
ma_uint8 :: u8;
ma_int16 :: s16;
ma_uint16 :: u16;
ma_int32 :: s32;
ma_uint32 :: u32;

ma_int64 :: s64;
ma_uint64 :: u64;

ma_uintptr :: ma_uint64;

ma_bool8 :: ma_uint8;
ma_bool32 :: ma_uint32;

/* These float types are not used universally by miniaudio. It's to simplify some macro expansion for atomic types. */
ma_float :: float;
ma_double :: float64;

ma_handle :: *void;
ma_ptr :: *void;

ma_proc :: #type () -> void #c_call;

ma_pthread_t :: pthread_t;
ma_pthread_mutex_t :: pthread_mutex_t;
ma_pthread_cond_t :: pthread_cond_t;

ma_wchar_win32 :: ma_uint16;

/*
Logging Levels
==============
Log levels are only used to give logging callbacks some context as to the severity of a log message
so they can do filtering. All log levels will be posted to registered logging callbacks. If you
don't want to output a certain log level you can discriminate against the log level in the callback.

MA_LOG_LEVEL_DEBUG
Used for debugging. Useful for debug and test builds, but should be disabled in release builds.

MA_LOG_LEVEL_INFO
Informational logging. Useful for debugging. This will never be called from within the data
callback.

MA_LOG_LEVEL_WARNING
Warnings. You should enable this in you development builds and action them when encountered. These
logs usually indicate a potential problem or misconfiguration, but still allow you to keep
running. This will never be called from within the data callback.

MA_LOG_LEVEL_ERROR
Error logging. This will be fired when an operation fails and is subsequently aborted. This can
be fired from within the data callback, in which case the device will be stopped. You should
always have this log level enabled.
*/
ma_log_level :: enum u32 {
    DEBUG   :: 4;
    INFO    :: 3;
    WARNING :: 2;
    ERROR   :: 1;

    MA_LOG_LEVEL_DEBUG   :: DEBUG;
    MA_LOG_LEVEL_INFO    :: INFO;
    MA_LOG_LEVEL_WARNING :: WARNING;
    MA_LOG_LEVEL_ERROR   :: ERROR;
}

ma_channel :: ma_uint8;
_ma_channel_position :: enum u32 {
    NONE               :: 0;
    MONO               :: 1;
    FRONT_LEFT         :: 2;
    FRONT_RIGHT        :: 3;
    FRONT_CENTER       :: 4;
    LFE                :: 5;
    BACK_LEFT          :: 6;
    BACK_RIGHT         :: 7;
    FRONT_LEFT_CENTER  :: 8;
    FRONT_RIGHT_CENTER :: 9;
    BACK_CENTER        :: 10;
    SIDE_LEFT          :: 11;
    SIDE_RIGHT         :: 12;
    TOP_CENTER         :: 13;
    TOP_FRONT_LEFT     :: 14;
    TOP_FRONT_CENTER   :: 15;
    TOP_FRONT_RIGHT    :: 16;
    TOP_BACK_LEFT      :: 17;
    TOP_BACK_CENTER    :: 18;
    TOP_BACK_RIGHT     :: 19;
    AUX_0              :: 20;
    AUX_1              :: 21;
    AUX_2              :: 22;
    AUX_3              :: 23;
    AUX_4              :: 24;
    AUX_5              :: 25;
    AUX_6              :: 26;
    AUX_7              :: 27;
    AUX_8              :: 28;
    AUX_9              :: 29;
    AUX_10             :: 30;
    AUX_11             :: 31;
    AUX_12             :: 32;
    AUX_13             :: 33;
    AUX_14             :: 34;
    AUX_15             :: 35;
    AUX_16             :: 36;
    AUX_17             :: 37;
    AUX_18             :: 38;
    AUX_19             :: 39;
    AUX_20             :: 40;
    AUX_21             :: 41;
    AUX_22             :: 42;
    AUX_23             :: 43;
    AUX_24             :: 44;
    AUX_25             :: 45;
    AUX_26             :: 46;
    AUX_27             :: 47;
    AUX_28             :: 48;
    AUX_29             :: 49;
    AUX_30             :: 50;
    AUX_31             :: 51;
    LEFT               :: 2;
    RIGHT              :: 3;
    POSITION_COUNT     :: 52;

    MA_CHANNEL_NONE               :: NONE;
    MA_CHANNEL_MONO               :: MONO;
    MA_CHANNEL_FRONT_LEFT         :: FRONT_LEFT;
    MA_CHANNEL_FRONT_RIGHT        :: FRONT_RIGHT;
    MA_CHANNEL_FRONT_CENTER       :: FRONT_CENTER;
    MA_CHANNEL_LFE                :: LFE;
    MA_CHANNEL_BACK_LEFT          :: BACK_LEFT;
    MA_CHANNEL_BACK_RIGHT         :: BACK_RIGHT;
    MA_CHANNEL_FRONT_LEFT_CENTER  :: FRONT_LEFT_CENTER;
    MA_CHANNEL_FRONT_RIGHT_CENTER :: FRONT_RIGHT_CENTER;
    MA_CHANNEL_BACK_CENTER        :: BACK_CENTER;
    MA_CHANNEL_SIDE_LEFT          :: SIDE_LEFT;
    MA_CHANNEL_SIDE_RIGHT         :: SIDE_RIGHT;
    MA_CHANNEL_TOP_CENTER         :: TOP_CENTER;
    MA_CHANNEL_TOP_FRONT_LEFT     :: TOP_FRONT_LEFT;
    MA_CHANNEL_TOP_FRONT_CENTER   :: TOP_FRONT_CENTER;
    MA_CHANNEL_TOP_FRONT_RIGHT    :: TOP_FRONT_RIGHT;
    MA_CHANNEL_TOP_BACK_LEFT      :: TOP_BACK_LEFT;
    MA_CHANNEL_TOP_BACK_CENTER    :: TOP_BACK_CENTER;
    MA_CHANNEL_TOP_BACK_RIGHT     :: TOP_BACK_RIGHT;
    MA_CHANNEL_AUX_0              :: AUX_0;
    MA_CHANNEL_AUX_1              :: AUX_1;
    MA_CHANNEL_AUX_2              :: AUX_2;
    MA_CHANNEL_AUX_3              :: AUX_3;
    MA_CHANNEL_AUX_4              :: AUX_4;
    MA_CHANNEL_AUX_5              :: AUX_5;
    MA_CHANNEL_AUX_6              :: AUX_6;
    MA_CHANNEL_AUX_7              :: AUX_7;
    MA_CHANNEL_AUX_8              :: AUX_8;
    MA_CHANNEL_AUX_9              :: AUX_9;
    MA_CHANNEL_AUX_10             :: AUX_10;
    MA_CHANNEL_AUX_11             :: AUX_11;
    MA_CHANNEL_AUX_12             :: AUX_12;
    MA_CHANNEL_AUX_13             :: AUX_13;
    MA_CHANNEL_AUX_14             :: AUX_14;
    MA_CHANNEL_AUX_15             :: AUX_15;
    MA_CHANNEL_AUX_16             :: AUX_16;
    MA_CHANNEL_AUX_17             :: AUX_17;
    MA_CHANNEL_AUX_18             :: AUX_18;
    MA_CHANNEL_AUX_19             :: AUX_19;
    MA_CHANNEL_AUX_20             :: AUX_20;
    MA_CHANNEL_AUX_21             :: AUX_21;
    MA_CHANNEL_AUX_22             :: AUX_22;
    MA_CHANNEL_AUX_23             :: AUX_23;
    MA_CHANNEL_AUX_24             :: AUX_24;
    MA_CHANNEL_AUX_25             :: AUX_25;
    MA_CHANNEL_AUX_26             :: AUX_26;
    MA_CHANNEL_AUX_27             :: AUX_27;
    MA_CHANNEL_AUX_28             :: AUX_28;
    MA_CHANNEL_AUX_29             :: AUX_29;
    MA_CHANNEL_AUX_30             :: AUX_30;
    MA_CHANNEL_AUX_31             :: AUX_31;
    MA_CHANNEL_LEFT               :: LEFT;
    MA_CHANNEL_RIGHT              :: RIGHT;
    MA_CHANNEL_POSITION_COUNT     :: POSITION_COUNT;
}

ma_result :: enum s32 {
    SUCCESS                        :: 0;
    ERROR                          :: -1;
    INVALID_ARGS                   :: -2;
    INVALID_OPERATION              :: -3;
    OUT_OF_MEMORY                  :: -4;
    OUT_OF_RANGE                   :: -5;
    ACCESS_DENIED                  :: -6;
    DOES_NOT_EXIST                 :: -7;
    ALREADY_EXISTS                 :: -8;
    TOO_MANY_OPEN_FILES            :: -9;
    INVALID_FILE                   :: -10;
    TOO_BIG                        :: -11;
    PATH_TOO_LONG                  :: -12;
    NAME_TOO_LONG                  :: -13;
    NOT_DIRECTORY                  :: -14;
    IS_DIRECTORY                   :: -15;
    DIRECTORY_NOT_EMPTY            :: -16;
    AT_END                         :: -17;
    NO_SPACE                       :: -18;
    BUSY                           :: -19;
    IO_ERROR                       :: -20;
    INTERRUPT                      :: -21;
    UNAVAILABLE                    :: -22;
    ALREADY_IN_USE                 :: -23;
    BAD_ADDRESS                    :: -24;
    BAD_SEEK                       :: -25;
    BAD_PIPE                       :: -26;
    DEADLOCK                       :: -27;
    TOO_MANY_LINKS                 :: -28;
    NOT_IMPLEMENTED                :: -29;
    NO_MESSAGE                     :: -30;
    BAD_MESSAGE                    :: -31;
    NO_DATA_AVAILABLE              :: -32;
    INVALID_DATA                   :: -33;
    TIMEOUT                        :: -34;
    NO_NETWORK                     :: -35;
    NOT_UNIQUE                     :: -36;
    NOT_SOCKET                     :: -37;
    NO_ADDRESS                     :: -38;
    BAD_PROTOCOL                   :: -39;
    PROTOCOL_UNAVAILABLE           :: -40;
    PROTOCOL_NOT_SUPPORTED         :: -41;
    PROTOCOL_FAMILY_NOT_SUPPORTED  :: -42;
    ADDRESS_FAMILY_NOT_SUPPORTED   :: -43;
    SOCKET_NOT_SUPPORTED           :: -44;
    CONNECTION_RESET               :: -45;
    ALREADY_CONNECTED              :: -46;
    NOT_CONNECTED                  :: -47;
    CONNECTION_REFUSED             :: -48;
    NO_HOST                        :: -49;
    IN_PROGRESS                    :: -50;
    CANCELLED                      :: -51;
    MEMORY_ALREADY_MAPPED          :: -52;

    CRC_MISMATCH                   :: -100;

    FORMAT_NOT_SUPPORTED           :: -200;
    DEVICE_TYPE_NOT_SUPPORTED      :: -201;
    SHARE_MODE_NOT_SUPPORTED       :: -202;
    NO_BACKEND                     :: -203;
    NO_DEVICE                      :: -204;
    API_NOT_FOUND                  :: -205;
    INVALID_DEVICE_CONFIG          :: -206;
    LOOP                           :: -207;
    BACKEND_NOT_ENABLED            :: -208;

    DEVICE_NOT_INITIALIZED         :: -300;
    DEVICE_ALREADY_INITIALIZED     :: -301;
    DEVICE_NOT_STARTED             :: -302;
    DEVICE_NOT_STOPPED             :: -303;

    FAILED_TO_INIT_BACKEND         :: -400;
    FAILED_TO_OPEN_BACKEND_DEVICE  :: -401;
    FAILED_TO_START_BACKEND_DEVICE :: -402;
    FAILED_TO_STOP_BACKEND_DEVICE  :: -403;

    MA_SUCCESS                        :: SUCCESS;
    MA_ERROR                          :: ERROR;
    MA_INVALID_ARGS                   :: INVALID_ARGS;
    MA_INVALID_OPERATION              :: INVALID_OPERATION;
    MA_OUT_OF_MEMORY                  :: OUT_OF_MEMORY;
    MA_OUT_OF_RANGE                   :: OUT_OF_RANGE;
    MA_ACCESS_DENIED                  :: ACCESS_DENIED;
    MA_DOES_NOT_EXIST                 :: DOES_NOT_EXIST;
    MA_ALREADY_EXISTS                 :: ALREADY_EXISTS;
    MA_TOO_MANY_OPEN_FILES            :: TOO_MANY_OPEN_FILES;
    MA_INVALID_FILE                   :: INVALID_FILE;
    MA_TOO_BIG                        :: TOO_BIG;
    MA_PATH_TOO_LONG                  :: PATH_TOO_LONG;
    MA_NAME_TOO_LONG                  :: NAME_TOO_LONG;
    MA_NOT_DIRECTORY                  :: NOT_DIRECTORY;
    MA_IS_DIRECTORY                   :: IS_DIRECTORY;
    MA_DIRECTORY_NOT_EMPTY            :: DIRECTORY_NOT_EMPTY;
    MA_AT_END                         :: AT_END;
    MA_NO_SPACE                       :: NO_SPACE;
    MA_BUSY                           :: BUSY;
    MA_IO_ERROR                       :: IO_ERROR;
    MA_INTERRUPT                      :: INTERRUPT;
    MA_UNAVAILABLE                    :: UNAVAILABLE;
    MA_ALREADY_IN_USE                 :: ALREADY_IN_USE;
    MA_BAD_ADDRESS                    :: BAD_ADDRESS;
    MA_BAD_SEEK                       :: BAD_SEEK;
    MA_BAD_PIPE                       :: BAD_PIPE;
    MA_DEADLOCK                       :: DEADLOCK;
    MA_TOO_MANY_LINKS                 :: TOO_MANY_LINKS;
    MA_NOT_IMPLEMENTED                :: NOT_IMPLEMENTED;
    MA_NO_MESSAGE                     :: NO_MESSAGE;
    MA_BAD_MESSAGE                    :: BAD_MESSAGE;
    MA_NO_DATA_AVAILABLE              :: NO_DATA_AVAILABLE;
    MA_INVALID_DATA                   :: INVALID_DATA;
    MA_TIMEOUT                        :: TIMEOUT;
    MA_NO_NETWORK                     :: NO_NETWORK;
    MA_NOT_UNIQUE                     :: NOT_UNIQUE;
    MA_NOT_SOCKET                     :: NOT_SOCKET;
    MA_NO_ADDRESS                     :: NO_ADDRESS;
    MA_BAD_PROTOCOL                   :: BAD_PROTOCOL;
    MA_PROTOCOL_UNAVAILABLE           :: PROTOCOL_UNAVAILABLE;
    MA_PROTOCOL_NOT_SUPPORTED         :: PROTOCOL_NOT_SUPPORTED;
    MA_PROTOCOL_FAMILY_NOT_SUPPORTED  :: PROTOCOL_FAMILY_NOT_SUPPORTED;
    MA_ADDRESS_FAMILY_NOT_SUPPORTED   :: ADDRESS_FAMILY_NOT_SUPPORTED;
    MA_SOCKET_NOT_SUPPORTED           :: SOCKET_NOT_SUPPORTED;
    MA_CONNECTION_RESET               :: CONNECTION_RESET;
    MA_ALREADY_CONNECTED              :: ALREADY_CONNECTED;
    MA_NOT_CONNECTED                  :: NOT_CONNECTED;
    MA_CONNECTION_REFUSED             :: CONNECTION_REFUSED;
    MA_NO_HOST                        :: NO_HOST;
    MA_IN_PROGRESS                    :: IN_PROGRESS;
    MA_CANCELLED                      :: CANCELLED;
    MA_MEMORY_ALREADY_MAPPED          :: MEMORY_ALREADY_MAPPED;

    MA_CRC_MISMATCH                   :: CRC_MISMATCH;

    MA_FORMAT_NOT_SUPPORTED           :: FORMAT_NOT_SUPPORTED;
    MA_DEVICE_TYPE_NOT_SUPPORTED      :: DEVICE_TYPE_NOT_SUPPORTED;
    MA_SHARE_MODE_NOT_SUPPORTED       :: SHARE_MODE_NOT_SUPPORTED;
    MA_NO_BACKEND                     :: NO_BACKEND;
    MA_NO_DEVICE                      :: NO_DEVICE;
    MA_API_NOT_FOUND                  :: API_NOT_FOUND;
    MA_INVALID_DEVICE_CONFIG          :: INVALID_DEVICE_CONFIG;
    MA_LOOP                           :: LOOP;
    MA_BACKEND_NOT_ENABLED            :: BACKEND_NOT_ENABLED;

    MA_DEVICE_NOT_INITIALIZED         :: DEVICE_NOT_INITIALIZED;
    MA_DEVICE_ALREADY_INITIALIZED     :: DEVICE_ALREADY_INITIALIZED;
    MA_DEVICE_NOT_STARTED             :: DEVICE_NOT_STARTED;
    MA_DEVICE_NOT_STOPPED             :: DEVICE_NOT_STOPPED;

    MA_FAILED_TO_INIT_BACKEND         :: FAILED_TO_INIT_BACKEND;
    MA_FAILED_TO_OPEN_BACKEND_DEVICE  :: FAILED_TO_OPEN_BACKEND_DEVICE;
    MA_FAILED_TO_START_BACKEND_DEVICE :: FAILED_TO_START_BACKEND_DEVICE;
    MA_FAILED_TO_STOP_BACKEND_DEVICE  :: FAILED_TO_STOP_BACKEND_DEVICE;
}

ma_stream_format :: enum u32 {
    pcm :: 0;
    ma_stream_format_pcm :: pcm;
}

ma_stream_layout :: enum u32 {
    interleaved   :: 0;
    deinterleaved :: 1;

    ma_stream_layout_interleaved   :: interleaved;
    ma_stream_layout_deinterleaved :: deinterleaved;
}

ma_dither_mode :: enum u32 {
    none      :: 0;
    rectangle :: 1;
    triangle  :: 2;

    ma_dither_mode_none      :: none;
    ma_dither_mode_rectangle :: rectangle;
    ma_dither_mode_triangle  :: triangle;
}

ma_format :: enum u32 {
    unknown :: 0;
    _u8     :: 1;
    _s16    :: 2;
    s24     :: 3;
    _s32    :: 4;
    f32     :: 5;
    count   :: 6;

    ma_format_unknown :: unknown;
    ma_format_u8      :: _u8;
    ma_format_s16     :: _s16;
    ma_format_s24     :: s24;
    ma_format_s32     :: _s32;
    ma_format_f32     :: f32;
    ma_format_count   :: count;
}

ma_standard_sample_rate :: enum u32 {
    _48000  :: 48000;
    _44100  :: 44100;

    _32000  :: 32000;
    _24000  :: 24000;
    _22050  :: 22050;

    _88200  :: 88200;
    _96000  :: 96000;
    _176400 :: 176400;
    _192000 :: 192000;

    _16000  :: 16000;
    _11025  :: 11025;
    _8000   :: 8000;

    _352800 :: 352800;
    _384000 :: 384000;

    min     :: 8000;
    max     :: 384000;
    count   :: 14;

    ma_standard_sample_rate_48000  :: _48000;
    ma_standard_sample_rate_44100  :: _44100;

    ma_standard_sample_rate_32000  :: _32000;
    ma_standard_sample_rate_24000  :: _24000;
    ma_standard_sample_rate_22050  :: _22050;

    ma_standard_sample_rate_88200  :: _88200;
    ma_standard_sample_rate_96000  :: _96000;
    ma_standard_sample_rate_176400 :: _176400;
    ma_standard_sample_rate_192000 :: _192000;

    ma_standard_sample_rate_16000  :: _16000;
    ma_standard_sample_rate_11025  :: _11025;
    ma_standard_sample_rate_8000   :: _8000;

    ma_standard_sample_rate_352800 :: _352800;
    ma_standard_sample_rate_384000 :: _384000;

    ma_standard_sample_rate_min    :: min;
    ma_standard_sample_rate_max    :: max;
    ma_standard_sample_rate_count  :: count;
}

ma_channel_mix_mode :: enum u32 {
    rectangular    :: 0;
    simple         :: 1;
    custom_weights :: 2;
    default        :: 0;

    ma_channel_mix_mode_rectangular    :: rectangular;
    ma_channel_mix_mode_simple         :: simple;
    ma_channel_mix_mode_custom_weights :: custom_weights;
    ma_channel_mix_mode_default        :: default;
}

ma_standard_channel_map :: enum u32 {
    microsoft :: 0;
    alsa      :: 1;
    rfc3551   :: 2;
    flac      :: 3;
    vorbis    :: 4;
    sound4    :: 5;
    sndio     :: 6;
    webaudio  :: 3;
    default   :: 0;

    ma_standard_channel_map_microsoft :: microsoft;
    ma_standard_channel_map_alsa      :: alsa;
    ma_standard_channel_map_rfc3551   :: rfc3551;
    ma_standard_channel_map_flac      :: flac;
    ma_standard_channel_map_vorbis    :: vorbis;
    ma_standard_channel_map_sound4    :: sound4;
    ma_standard_channel_map_sndio     :: sndio;
    ma_standard_channel_map_webaudio  :: webaudio;
    ma_standard_channel_map_default   :: default;
}

ma_performance_profile :: enum u32 {
    low_latency  :: 0;
    conservative :: 1;

    ma_performance_profile_low_latency  :: low_latency;
    ma_performance_profile_conservative :: conservative;
}

ma_allocation_callbacks :: struct {
    pUserData: *void;
    onMalloc:  #type (sz: u64, pUserData: *void) -> *void #c_call;
    onRealloc: #type (p: *void, sz: u64, pUserData: *void) -> *void #c_call;
    onFree:    #type (p: *void, pUserData: *void) -> void #c_call;
}

ma_lcg :: struct {
    state: ma_int32;
}

ma_atomic_uint32 :: struct {
    value: ma_uint32;
}
ma_atomic_int32 :: struct {
    value: ma_int32;
}
ma_atomic_uint64 :: struct {
    value: ma_uint64;
}
ma_atomic_float :: struct {
    value: ma_float;
}
ma_atomic_bool32 :: struct {
    value: ma_bool32;
}

/* Spinlocks are 32-bit for compatibility reasons. */
ma_spinlock :: ma_uint32;

/* Thread priorities should be ordered such that the default priority of the worker thread is 0. */
ma_thread_priority :: enum s32 {
    idle     :: -5;
    lowest   :: -4;
    low      :: -3;
    normal   :: -2;
    high     :: -1;
    highest  :: 0;
    realtime :: 1;
    default  :: 0;

    ma_thread_priority_idle     :: idle;
    ma_thread_priority_lowest   :: lowest;
    ma_thread_priority_low      :: low;
    ma_thread_priority_normal   :: normal;
    ma_thread_priority_high     :: high;
    ma_thread_priority_highest  :: highest;
    ma_thread_priority_realtime :: realtime;
    ma_thread_priority_default  :: default;
}

ma_thread :: ma_pthread_t;

ma_mutex :: ma_pthread_mutex_t;

ma_event :: struct {
    value: ma_uint32;
    lock:  ma_pthread_mutex_t;
    cond:  ma_pthread_cond_t;
}

ma_semaphore :: struct {
    value: s32;
    lock:  ma_pthread_mutex_t;
    cond:  ma_pthread_cond_t;
}

/*
Retrieves the version of miniaudio as separated integers. Each component can be NULL if it's not required.
*/
ma_version :: (pMajor: *ma_uint32, pMinor: *ma_uint32, pRevision: *ma_uint32) -> void #foreign miniaudio;

/*
Retrieves the version of miniaudio as a string which can be useful for logging purposes.
*/
ma_version_string :: () -> *u8 #foreign miniaudio;

/*
The callback for handling log messages.


Parameters
----------
pUserData (in)
The user data pointer that was passed into ma_log_register_callback().

logLevel (in)
The log level. This can be one of the following:

+----------------------+
| Log Level            |
+----------------------+
| MA_LOG_LEVEL_DEBUG   |
| MA_LOG_LEVEL_INFO    |
| MA_LOG_LEVEL_WARNING |
| MA_LOG_LEVEL_ERROR   |
+----------------------+

pMessage (in)
The log message.
*/
ma_log_callback_proc :: #type (pUserData: *void, level: ma_uint32, pMessage: *u8) -> void #c_call;

ma_log_callback :: struct {
    onLog:     ma_log_callback_proc;
    pUserData: *void;
}

ma_log_callback_init :: (onLog: ma_log_callback_proc, pUserData: *void) -> ma_log_callback #foreign miniaudio;

ma_log :: struct {
    callbacks:           [4] ma_log_callback;
    callbackCount:       ma_uint32;
    allocationCallbacks: ma_allocation_callbacks; /* Need to store these persistently because ma_log_postv() might need to allocate a buffer on the heap. */

    lock:                ma_mutex; /* For thread safety just to make it easier and safer for the logging implementation. */
}

ma_log_init :: (pAllocationCallbacks: *ma_allocation_callbacks, pLog: *ma_log) -> ma_result #foreign miniaudio;
ma_log_uninit :: (pLog: *ma_log) -> void #foreign miniaudio;
ma_log_register_callback :: (pLog: *ma_log, callback: ma_log_callback) -> ma_result #foreign miniaudio;
ma_log_unregister_callback :: (pLog: *ma_log, callback: ma_log_callback) -> ma_result #foreign miniaudio;
ma_log_post :: (pLog: *ma_log, level: ma_uint32, pMessage: *u8) -> ma_result #foreign miniaudio;

ma_log_postf_CFormat :: (pLog: *ma_log, level: ma_uint32, pFormat: *u8, __args: ..Any) -> ma_result #foreign miniaudio "ma_log_postf";
ma_log_postf :: (pLog: *ma_log, level: ma_uint32, pFormat: string, __args: ..Any) -> ma_result {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, pFormat, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return ma_log_postf_CFormat(pLog, level, "%s", formatted_text.data);
} @PrintLike

/**************************************************************************************************************************************************************

Biquad Filtering

**************************************************************************************************************************************************************/
ma_biquad_coefficient :: union {
    f32:  float;
    _s32: ma_int32;
}

ma_biquad_config :: struct {
    format:   ma_format;
    channels: ma_uint32;
    b0:       float64;
    b1:       float64;
    b2:       float64;
    a0:       float64;
    a1:       float64;
    a2:       float64;
}

ma_biquad_config_init :: (format: ma_format, channels: ma_uint32, b0: float64, b1: float64, b2: float64, a0: float64, a1: float64, a2: float64) -> ma_biquad_config #foreign miniaudio;

ma_biquad :: struct {
    format:    ma_format;
    channels:  ma_uint32;
    b0:        ma_biquad_coefficient;
    b1:        ma_biquad_coefficient;
    b2:        ma_biquad_coefficient;
    a1:        ma_biquad_coefficient;
    a2:        ma_biquad_coefficient;
    pR1:       *ma_biquad_coefficient;
    pR2:       *ma_biquad_coefficient;

    /* Memory management. */
    _pHeap:    *void;
    _ownsHeap: ma_bool32;
}

ma_biquad_get_heap_size :: (pConfig: *ma_biquad_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_biquad_init_preallocated :: (pConfig: *ma_biquad_config, pHeap: *void, pBQ: *ma_biquad) -> ma_result #foreign miniaudio;
ma_biquad_init :: (pConfig: *ma_biquad_config, pAllocationCallbacks: *ma_allocation_callbacks, pBQ: *ma_biquad) -> ma_result #foreign miniaudio;
ma_biquad_uninit :: (pBQ: *ma_biquad, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_biquad_reinit :: (pConfig: *ma_biquad_config, pBQ: *ma_biquad) -> ma_result #foreign miniaudio;
ma_biquad_clear_cache :: (pBQ: *ma_biquad) -> ma_result #foreign miniaudio;
ma_biquad_process_pcm_frames :: (pBQ: *ma_biquad, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_biquad_get_latency :: (pBQ: *ma_biquad) -> ma_uint32 #foreign miniaudio;

/**************************************************************************************************************************************************************

Low-Pass Filtering

**************************************************************************************************************************************************************/
ma_lpf1_config :: struct {
    format:          ma_format;
    channels:        ma_uint32;
    sampleRate:      ma_uint32;
    cutoffFrequency: float64;
    q:               float64;
}

/**************************************************************************************************************************************************************

Low-Pass Filtering

**************************************************************************************************************************************************************/
ma_lpf2_config :: ma_lpf1_config;

ma_lpf1_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64) -> ma_lpf1_config #foreign miniaudio;
ma_lpf2_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, q: float64) -> ma_lpf2_config #foreign miniaudio;

ma_lpf1 :: struct {
    format:    ma_format;
    channels:  ma_uint32;
    a:         ma_biquad_coefficient;
    pR1:       *ma_biquad_coefficient;

    /* Memory management. */
    _pHeap:    *void;
    _ownsHeap: ma_bool32;
}

ma_lpf1_get_heap_size :: (pConfig: *ma_lpf1_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_lpf1_init_preallocated :: (pConfig: *ma_lpf1_config, pHeap: *void, pLPF: *ma_lpf1) -> ma_result #foreign miniaudio;
ma_lpf1_init :: (pConfig: *ma_lpf1_config, pAllocationCallbacks: *ma_allocation_callbacks, pLPF: *ma_lpf1) -> ma_result #foreign miniaudio;
ma_lpf1_uninit :: (pLPF: *ma_lpf1, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_lpf1_reinit :: (pConfig: *ma_lpf1_config, pLPF: *ma_lpf1) -> ma_result #foreign miniaudio;
ma_lpf1_clear_cache :: (pLPF: *ma_lpf1) -> ma_result #foreign miniaudio;
ma_lpf1_process_pcm_frames :: (pLPF: *ma_lpf1, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_lpf1_get_latency :: (pLPF: *ma_lpf1) -> ma_uint32 #foreign miniaudio;

ma_lpf2 :: struct {
    bq: ma_biquad; /* The second order low-pass filter is implemented as a biquad filter. */
}

ma_lpf2_get_heap_size :: (pConfig: *ma_lpf2_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_lpf2_init_preallocated :: (pConfig: *ma_lpf2_config, pHeap: *void, pHPF: *ma_lpf2) -> ma_result #foreign miniaudio;
ma_lpf2_init :: (pConfig: *ma_lpf2_config, pAllocationCallbacks: *ma_allocation_callbacks, pLPF: *ma_lpf2) -> ma_result #foreign miniaudio;
ma_lpf2_uninit :: (pLPF: *ma_lpf2, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_lpf2_reinit :: (pConfig: *ma_lpf2_config, pLPF: *ma_lpf2) -> ma_result #foreign miniaudio;
ma_lpf2_clear_cache :: (pLPF: *ma_lpf2) -> ma_result #foreign miniaudio;
ma_lpf2_process_pcm_frames :: (pLPF: *ma_lpf2, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_lpf2_get_latency :: (pLPF: *ma_lpf2) -> ma_uint32 #foreign miniaudio;

ma_lpf_config :: struct {
    format:          ma_format;
    channels:        ma_uint32;
    sampleRate:      ma_uint32;
    cutoffFrequency: float64;
    order:           ma_uint32; /* If set to 0, will be treated as a passthrough (no filtering will be applied). */
}

ma_lpf_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, order: ma_uint32) -> ma_lpf_config #foreign miniaudio;

ma_lpf :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
    lpf1Count:  ma_uint32;
    lpf2Count:  ma_uint32;
    pLPF1:      *ma_lpf1;
    pLPF2:      *ma_lpf2;

    /* Memory management. */
    _pHeap:     *void;
    _ownsHeap:  ma_bool32;
}

ma_lpf_get_heap_size :: (pConfig: *ma_lpf_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_lpf_init_preallocated :: (pConfig: *ma_lpf_config, pHeap: *void, pLPF: *ma_lpf) -> ma_result #foreign miniaudio;
ma_lpf_init :: (pConfig: *ma_lpf_config, pAllocationCallbacks: *ma_allocation_callbacks, pLPF: *ma_lpf) -> ma_result #foreign miniaudio;
ma_lpf_uninit :: (pLPF: *ma_lpf, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_lpf_reinit :: (pConfig: *ma_lpf_config, pLPF: *ma_lpf) -> ma_result #foreign miniaudio;
ma_lpf_clear_cache :: (pLPF: *ma_lpf) -> ma_result #foreign miniaudio;
ma_lpf_process_pcm_frames :: (pLPF: *ma_lpf, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_lpf_get_latency :: (pLPF: *ma_lpf) -> ma_uint32 #foreign miniaudio;

/**************************************************************************************************************************************************************

High-Pass Filtering

**************************************************************************************************************************************************************/
ma_hpf1_config :: struct {
    format:          ma_format;
    channels:        ma_uint32;
    sampleRate:      ma_uint32;
    cutoffFrequency: float64;
    q:               float64;
}

/**************************************************************************************************************************************************************

High-Pass Filtering

**************************************************************************************************************************************************************/
ma_hpf2_config :: ma_hpf1_config;

ma_hpf1_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64) -> ma_hpf1_config #foreign miniaudio;
ma_hpf2_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, q: float64) -> ma_hpf2_config #foreign miniaudio;

ma_hpf1 :: struct {
    format:    ma_format;
    channels:  ma_uint32;
    a:         ma_biquad_coefficient;
    pR1:       *ma_biquad_coefficient;

    /* Memory management. */
    _pHeap:    *void;
    _ownsHeap: ma_bool32;
}

ma_hpf1_get_heap_size :: (pConfig: *ma_hpf1_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_hpf1_init_preallocated :: (pConfig: *ma_hpf1_config, pHeap: *void, pLPF: *ma_hpf1) -> ma_result #foreign miniaudio;
ma_hpf1_init :: (pConfig: *ma_hpf1_config, pAllocationCallbacks: *ma_allocation_callbacks, pHPF: *ma_hpf1) -> ma_result #foreign miniaudio;
ma_hpf1_uninit :: (pHPF: *ma_hpf1, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_hpf1_reinit :: (pConfig: *ma_hpf1_config, pHPF: *ma_hpf1) -> ma_result #foreign miniaudio;
ma_hpf1_process_pcm_frames :: (pHPF: *ma_hpf1, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_hpf1_get_latency :: (pHPF: *ma_hpf1) -> ma_uint32 #foreign miniaudio;

ma_hpf2 :: struct {
    bq: ma_biquad; /* The second order high-pass filter is implemented as a biquad filter. */
}

ma_hpf2_get_heap_size :: (pConfig: *ma_hpf2_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_hpf2_init_preallocated :: (pConfig: *ma_hpf2_config, pHeap: *void, pHPF: *ma_hpf2) -> ma_result #foreign miniaudio;
ma_hpf2_init :: (pConfig: *ma_hpf2_config, pAllocationCallbacks: *ma_allocation_callbacks, pHPF: *ma_hpf2) -> ma_result #foreign miniaudio;
ma_hpf2_uninit :: (pHPF: *ma_hpf2, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_hpf2_reinit :: (pConfig: *ma_hpf2_config, pHPF: *ma_hpf2) -> ma_result #foreign miniaudio;
ma_hpf2_process_pcm_frames :: (pHPF: *ma_hpf2, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_hpf2_get_latency :: (pHPF: *ma_hpf2) -> ma_uint32 #foreign miniaudio;

ma_hpf_config :: struct {
    format:          ma_format;
    channels:        ma_uint32;
    sampleRate:      ma_uint32;
    cutoffFrequency: float64;
    order:           ma_uint32; /* If set to 0, will be treated as a passthrough (no filtering will be applied). */
}

ma_hpf_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, order: ma_uint32) -> ma_hpf_config #foreign miniaudio;

ma_hpf :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
    hpf1Count:  ma_uint32;
    hpf2Count:  ma_uint32;
    pHPF1:      *ma_hpf1;
    pHPF2:      *ma_hpf2;

    /* Memory management. */
    _pHeap:     *void;
    _ownsHeap:  ma_bool32;
}

ma_hpf_get_heap_size :: (pConfig: *ma_hpf_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_hpf_init_preallocated :: (pConfig: *ma_hpf_config, pHeap: *void, pLPF: *ma_hpf) -> ma_result #foreign miniaudio;
ma_hpf_init :: (pConfig: *ma_hpf_config, pAllocationCallbacks: *ma_allocation_callbacks, pHPF: *ma_hpf) -> ma_result #foreign miniaudio;
ma_hpf_uninit :: (pHPF: *ma_hpf, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_hpf_reinit :: (pConfig: *ma_hpf_config, pHPF: *ma_hpf) -> ma_result #foreign miniaudio;
ma_hpf_process_pcm_frames :: (pHPF: *ma_hpf, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_hpf_get_latency :: (pHPF: *ma_hpf) -> ma_uint32 #foreign miniaudio;

/**************************************************************************************************************************************************************

Band-Pass Filtering

**************************************************************************************************************************************************************/
ma_bpf2_config :: struct {
    format:          ma_format;
    channels:        ma_uint32;
    sampleRate:      ma_uint32;
    cutoffFrequency: float64;
    q:               float64;
}

ma_bpf2_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, q: float64) -> ma_bpf2_config #foreign miniaudio;

ma_bpf2 :: struct {
    bq: ma_biquad; /* The second order band-pass filter is implemented as a biquad filter. */
}

ma_bpf2_get_heap_size :: (pConfig: *ma_bpf2_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_bpf2_init_preallocated :: (pConfig: *ma_bpf2_config, pHeap: *void, pBPF: *ma_bpf2) -> ma_result #foreign miniaudio;
ma_bpf2_init :: (pConfig: *ma_bpf2_config, pAllocationCallbacks: *ma_allocation_callbacks, pBPF: *ma_bpf2) -> ma_result #foreign miniaudio;
ma_bpf2_uninit :: (pBPF: *ma_bpf2, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_bpf2_reinit :: (pConfig: *ma_bpf2_config, pBPF: *ma_bpf2) -> ma_result #foreign miniaudio;
ma_bpf2_process_pcm_frames :: (pBPF: *ma_bpf2, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_bpf2_get_latency :: (pBPF: *ma_bpf2) -> ma_uint32 #foreign miniaudio;

ma_bpf_config :: struct {
    format:          ma_format;
    channels:        ma_uint32;
    sampleRate:      ma_uint32;
    cutoffFrequency: float64;
    order:           ma_uint32; /* If set to 0, will be treated as a passthrough (no filtering will be applied). */
}

ma_bpf_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, order: ma_uint32) -> ma_bpf_config #foreign miniaudio;

ma_bpf :: struct {
    format:    ma_format;
    channels:  ma_uint32;
    bpf2Count: ma_uint32;
    pBPF2:     *ma_bpf2;

    /* Memory management. */
    _pHeap:    *void;
    _ownsHeap: ma_bool32;
}

ma_bpf_get_heap_size :: (pConfig: *ma_bpf_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_bpf_init_preallocated :: (pConfig: *ma_bpf_config, pHeap: *void, pBPF: *ma_bpf) -> ma_result #foreign miniaudio;
ma_bpf_init :: (pConfig: *ma_bpf_config, pAllocationCallbacks: *ma_allocation_callbacks, pBPF: *ma_bpf) -> ma_result #foreign miniaudio;
ma_bpf_uninit :: (pBPF: *ma_bpf, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_bpf_reinit :: (pConfig: *ma_bpf_config, pBPF: *ma_bpf) -> ma_result #foreign miniaudio;
ma_bpf_process_pcm_frames :: (pBPF: *ma_bpf, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_bpf_get_latency :: (pBPF: *ma_bpf) -> ma_uint32 #foreign miniaudio;

/**************************************************************************************************************************************************************

Notching Filter

**************************************************************************************************************************************************************/
ma_notch2_config :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
    q:          float64;
    frequency:  float64;
}

/**************************************************************************************************************************************************************

Notching Filter

**************************************************************************************************************************************************************/
ma_notch_config :: ma_notch2_config;

ma_notch2_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, q: float64, frequency: float64) -> ma_notch2_config #foreign miniaudio;

ma_notch2 :: struct {
    bq: ma_biquad;
}

ma_notch2_get_heap_size :: (pConfig: *ma_notch2_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_notch2_init_preallocated :: (pConfig: *ma_notch2_config, pHeap: *void, pFilter: *ma_notch2) -> ma_result #foreign miniaudio;
ma_notch2_init :: (pConfig: *ma_notch2_config, pAllocationCallbacks: *ma_allocation_callbacks, pFilter: *ma_notch2) -> ma_result #foreign miniaudio;
ma_notch2_uninit :: (pFilter: *ma_notch2, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_notch2_reinit :: (pConfig: *ma_notch2_config, pFilter: *ma_notch2) -> ma_result #foreign miniaudio;
ma_notch2_process_pcm_frames :: (pFilter: *ma_notch2, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_notch2_get_latency :: (pFilter: *ma_notch2) -> ma_uint32 #foreign miniaudio;

/**************************************************************************************************************************************************************

Peaking EQ Filter

**************************************************************************************************************************************************************/
ma_peak2_config :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
    gainDB:     float64;
    q:          float64;
    frequency:  float64;
}

/**************************************************************************************************************************************************************

Peaking EQ Filter

**************************************************************************************************************************************************************/
ma_peak_config :: ma_peak2_config;

ma_peak2_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, gainDB: float64, q: float64, frequency: float64) -> ma_peak2_config #foreign miniaudio;

ma_peak2 :: struct {
    bq: ma_biquad;
}

ma_peak2_get_heap_size :: (pConfig: *ma_peak2_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_peak2_init_preallocated :: (pConfig: *ma_peak2_config, pHeap: *void, pFilter: *ma_peak2) -> ma_result #foreign miniaudio;
ma_peak2_init :: (pConfig: *ma_peak2_config, pAllocationCallbacks: *ma_allocation_callbacks, pFilter: *ma_peak2) -> ma_result #foreign miniaudio;
ma_peak2_uninit :: (pFilter: *ma_peak2, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_peak2_reinit :: (pConfig: *ma_peak2_config, pFilter: *ma_peak2) -> ma_result #foreign miniaudio;
ma_peak2_process_pcm_frames :: (pFilter: *ma_peak2, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_peak2_get_latency :: (pFilter: *ma_peak2) -> ma_uint32 #foreign miniaudio;

/**************************************************************************************************************************************************************

Low Shelf Filter

**************************************************************************************************************************************************************/
ma_loshelf2_config :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
    gainDB:     float64;
    shelfSlope: float64;
    frequency:  float64;
}

/**************************************************************************************************************************************************************

Low Shelf Filter

**************************************************************************************************************************************************************/
ma_loshelf_config :: ma_loshelf2_config;

ma_loshelf2_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, gainDB: float64, shelfSlope: float64, frequency: float64) -> ma_loshelf2_config #foreign miniaudio;

ma_loshelf2 :: struct {
    bq: ma_biquad;
}

ma_loshelf2_get_heap_size :: (pConfig: *ma_loshelf2_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_loshelf2_init_preallocated :: (pConfig: *ma_loshelf2_config, pHeap: *void, pFilter: *ma_loshelf2) -> ma_result #foreign miniaudio;
ma_loshelf2_init :: (pConfig: *ma_loshelf2_config, pAllocationCallbacks: *ma_allocation_callbacks, pFilter: *ma_loshelf2) -> ma_result #foreign miniaudio;
ma_loshelf2_uninit :: (pFilter: *ma_loshelf2, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_loshelf2_reinit :: (pConfig: *ma_loshelf2_config, pFilter: *ma_loshelf2) -> ma_result #foreign miniaudio;
ma_loshelf2_process_pcm_frames :: (pFilter: *ma_loshelf2, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_loshelf2_get_latency :: (pFilter: *ma_loshelf2) -> ma_uint32 #foreign miniaudio;

/**************************************************************************************************************************************************************

High Shelf Filter

**************************************************************************************************************************************************************/
ma_hishelf2_config :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
    gainDB:     float64;
    shelfSlope: float64;
    frequency:  float64;
}

/**************************************************************************************************************************************************************

High Shelf Filter

**************************************************************************************************************************************************************/
ma_hishelf_config :: ma_hishelf2_config;

ma_hishelf2_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, gainDB: float64, shelfSlope: float64, frequency: float64) -> ma_hishelf2_config #foreign miniaudio;

ma_hishelf2 :: struct {
    bq: ma_biquad;
}

ma_hishelf2_get_heap_size :: (pConfig: *ma_hishelf2_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_hishelf2_init_preallocated :: (pConfig: *ma_hishelf2_config, pHeap: *void, pFilter: *ma_hishelf2) -> ma_result #foreign miniaudio;
ma_hishelf2_init :: (pConfig: *ma_hishelf2_config, pAllocationCallbacks: *ma_allocation_callbacks, pFilter: *ma_hishelf2) -> ma_result #foreign miniaudio;
ma_hishelf2_uninit :: (pFilter: *ma_hishelf2, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_hishelf2_reinit :: (pConfig: *ma_hishelf2_config, pFilter: *ma_hishelf2) -> ma_result #foreign miniaudio;
ma_hishelf2_process_pcm_frames :: (pFilter: *ma_hishelf2, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_hishelf2_get_latency :: (pFilter: *ma_hishelf2) -> ma_uint32 #foreign miniaudio;

/*
Delay
*/
ma_delay_config :: struct {
    channels:      ma_uint32;
    sampleRate:    ma_uint32;
    delayInFrames: ma_uint32;
    delayStart:    ma_bool32; /* Set to true to delay the start of the output; false otherwise. */
    wet:           float; /* 0..1. Default = 1. */
    dry:           float; /* 0..1. Default = 1. */
    decay:         float; /* 0..1. Default = 0 (no feedback). Feedback decay. Use this for echo. */
}

ma_delay_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, delayInFrames: ma_uint32, decay: float) -> ma_delay_config #foreign miniaudio;

ma_delay :: struct {
    config:             ma_delay_config;
    cursor:             ma_uint32; /* Feedback is written to this cursor. Always equal or in front of the read cursor. */
    bufferSizeInFrames: ma_uint32;
    pBuffer:            *float;
}

ma_delay_init :: (pConfig: *ma_delay_config, pAllocationCallbacks: *ma_allocation_callbacks, pDelay: *ma_delay) -> ma_result #foreign miniaudio;
ma_delay_uninit :: (pDelay: *ma_delay, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_delay_process_pcm_frames :: (pDelay: *ma_delay, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint32) -> ma_result #foreign miniaudio;
ma_delay_set_wet :: (pDelay: *ma_delay, value: float) -> void #foreign miniaudio;
ma_delay_get_wet :: (pDelay: *ma_delay) -> float #foreign miniaudio;
ma_delay_set_dry :: (pDelay: *ma_delay, value: float) -> void #foreign miniaudio;
ma_delay_get_dry :: (pDelay: *ma_delay) -> float #foreign miniaudio;
ma_delay_set_decay :: (pDelay: *ma_delay, value: float) -> void #foreign miniaudio;
ma_delay_get_decay :: (pDelay: *ma_delay) -> float #foreign miniaudio;

/* Gainer for smooth volume changes. */
ma_gainer_config :: struct {
    channels:           ma_uint32;
    smoothTimeInFrames: ma_uint32;
}

ma_gainer_config_init :: (channels: ma_uint32, smoothTimeInFrames: ma_uint32) -> ma_gainer_config #foreign miniaudio;

ma_gainer :: struct {
    config:       ma_gainer_config;
    t:            ma_uint32;
    masterVolume: float;
    pOldGains:    *float;
    pNewGains:    *float;

    /* Memory management. */
    _pHeap:       *void;
    _ownsHeap:    ma_bool32;
}

ma_gainer_get_heap_size :: (pConfig: *ma_gainer_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_gainer_init_preallocated :: (pConfig: *ma_gainer_config, pHeap: *void, pGainer: *ma_gainer) -> ma_result #foreign miniaudio;
ma_gainer_init :: (pConfig: *ma_gainer_config, pAllocationCallbacks: *ma_allocation_callbacks, pGainer: *ma_gainer) -> ma_result #foreign miniaudio;
ma_gainer_uninit :: (pGainer: *ma_gainer, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_gainer_process_pcm_frames :: (pGainer: *ma_gainer, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_gainer_set_gain :: (pGainer: *ma_gainer, newGain: float) -> ma_result #foreign miniaudio;
ma_gainer_set_gains :: (pGainer: *ma_gainer, pNewGains: *float) -> ma_result #foreign miniaudio;
ma_gainer_set_master_volume :: (pGainer: *ma_gainer, volume: float) -> ma_result #foreign miniaudio;
ma_gainer_get_master_volume :: (pGainer: *ma_gainer, pVolume: *float) -> ma_result #foreign miniaudio;

/* Stereo panner. */
ma_pan_mode :: enum u32 {
    balance :: 0;
    pan     :: 1;

    ma_pan_mode_balance :: balance;
    ma_pan_mode_pan     :: pan;
}

ma_panner_config :: struct {
    format:   ma_format;
    channels: ma_uint32;
    mode:     ma_pan_mode;
    pan:      float;
}

ma_panner_config_init :: (format: ma_format, channels: ma_uint32) -> ma_panner_config #foreign miniaudio;

ma_panner :: struct {
    format:   ma_format;
    channels: ma_uint32;
    mode:     ma_pan_mode;
    pan:      float; /* -1..1 where 0 is no pan, -1 is left side, +1 is right side. Defaults to 0. */
}

ma_panner_init :: (pConfig: *ma_panner_config, pPanner: *ma_panner) -> ma_result #foreign miniaudio;
ma_panner_process_pcm_frames :: (pPanner: *ma_panner, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_panner_set_mode :: (pPanner: *ma_panner, mode: ma_pan_mode) -> void #foreign miniaudio;
ma_panner_get_mode :: (pPanner: *ma_panner) -> ma_pan_mode #foreign miniaudio;
ma_panner_set_pan :: (pPanner: *ma_panner, pan: float) -> void #foreign miniaudio;
ma_panner_get_pan :: (pPanner: *ma_panner) -> float #foreign miniaudio;

/* Fader. */
ma_fader_config :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
}

ma_fader_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32) -> ma_fader_config #foreign miniaudio;

ma_fader :: struct {
    config:         ma_fader_config;
    volumeBeg:      float; /* If volumeBeg and volumeEnd is equal to 1, no fading happens (ma_fader_process_pcm_frames() will run as a passthrough). */
    volumeEnd:      float;
    lengthInFrames: ma_uint64; /* The total length of the fade. */
    cursorInFrames: ma_int64; /* The current time in frames. Incremented by ma_fader_process_pcm_frames(). Signed because it'll be offset by startOffsetInFrames in set_fade_ex(). */
}

ma_fader_init :: (pConfig: *ma_fader_config, pFader: *ma_fader) -> ma_result #foreign miniaudio;
ma_fader_process_pcm_frames :: (pFader: *ma_fader, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_fader_get_data_format :: (pFader: *ma_fader, pFormat: *ma_format, pChannels: *ma_uint32, pSampleRate: *ma_uint32) -> void #foreign miniaudio;
ma_fader_set_fade :: (pFader: *ma_fader, volumeBeg: float, volumeEnd: float, lengthInFrames: ma_uint64) -> void #foreign miniaudio;
ma_fader_set_fade_ex :: (pFader: *ma_fader, volumeBeg: float, volumeEnd: float, lengthInFrames: ma_uint64, startOffsetInFrames: ma_int64) -> void #foreign miniaudio;
ma_fader_get_current_volume :: (pFader: *ma_fader) -> float #foreign miniaudio;

/* Spatializer. */
ma_vec3f :: struct {
    x: float;
    y: float;
    z: float;
}

ma_atomic_vec3f :: struct {
    v:    ma_vec3f;
    lock: ma_spinlock;
}

ma_attenuation_model :: enum u32 {
    none        :: 0;
    inverse     :: 1;
    linear      :: 2;
    exponential :: 3;

    ma_attenuation_model_none        :: none;
    ma_attenuation_model_inverse     :: inverse;
    ma_attenuation_model_linear      :: linear;
    ma_attenuation_model_exponential :: exponential;
}

ma_positioning :: enum u32 {
    absolute :: 0;
    relative :: 1;

    ma_positioning_absolute :: absolute;
    ma_positioning_relative :: relative;
}

ma_handedness :: enum u32 {
    right :: 0;
    left  :: 1;

    ma_handedness_right :: right;
    ma_handedness_left  :: left;
}

ma_spatializer_listener_config :: struct {
    channelsOut:             ma_uint32;
    pChannelMapOut:          *ma_channel;
    handedness:              ma_handedness; /* Defaults to right. Forward is -1 on the Z axis. In a left handed system, forward is +1 on the Z axis. */
    coneInnerAngleInRadians: float;
    coneOuterAngleInRadians: float;
    coneOuterGain:           float;
    speedOfSound:            float;
    worldUp:                 ma_vec3f;
}

ma_spatializer_listener_config_init :: (channelsOut: ma_uint32) -> ma_spatializer_listener_config #foreign miniaudio;

ma_spatializer_listener :: struct {
    config:    ma_spatializer_listener_config;
    position:  ma_atomic_vec3f; /* The absolute position of the listener. */
    direction: ma_atomic_vec3f; /* The direction the listener is facing. The world up vector is config.worldUp. */
    velocity:  ma_atomic_vec3f;
    isEnabled: ma_bool32;

    /* Memory management. */
    _ownsHeap: ma_bool32;
    _pHeap:    *void;
}

ma_spatializer_listener_get_heap_size :: (pConfig: *ma_spatializer_listener_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_spatializer_listener_init_preallocated :: (pConfig: *ma_spatializer_listener_config, pHeap: *void, pListener: *ma_spatializer_listener) -> ma_result #foreign miniaudio;
ma_spatializer_listener_init :: (pConfig: *ma_spatializer_listener_config, pAllocationCallbacks: *ma_allocation_callbacks, pListener: *ma_spatializer_listener) -> ma_result #foreign miniaudio;
ma_spatializer_listener_uninit :: (pListener: *ma_spatializer_listener, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_spatializer_listener_get_channel_map :: (pListener: *ma_spatializer_listener) -> *ma_channel #foreign miniaudio;
ma_spatializer_listener_set_cone :: (pListener: *ma_spatializer_listener, innerAngleInRadians: float, outerAngleInRadians: float, outerGain: float) -> void #foreign miniaudio;
ma_spatializer_listener_get_cone :: (pListener: *ma_spatializer_listener, pInnerAngleInRadians: *float, pOuterAngleInRadians: *float, pOuterGain: *float) -> void #foreign miniaudio;
ma_spatializer_listener_set_position :: (pListener: *ma_spatializer_listener, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_spatializer_listener_get_position :: (pListener: *ma_spatializer_listener) -> ma_vec3f #foreign miniaudio;
ma_spatializer_listener_set_direction :: (pListener: *ma_spatializer_listener, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_spatializer_listener_get_direction :: (pListener: *ma_spatializer_listener) -> ma_vec3f #foreign miniaudio;
ma_spatializer_listener_set_velocity :: (pListener: *ma_spatializer_listener, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_spatializer_listener_get_velocity :: (pListener: *ma_spatializer_listener) -> ma_vec3f #foreign miniaudio;
ma_spatializer_listener_set_speed_of_sound :: (pListener: *ma_spatializer_listener, speedOfSound: float) -> void #foreign miniaudio;
ma_spatializer_listener_get_speed_of_sound :: (pListener: *ma_spatializer_listener) -> float #foreign miniaudio;
ma_spatializer_listener_set_world_up :: (pListener: *ma_spatializer_listener, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_spatializer_listener_get_world_up :: (pListener: *ma_spatializer_listener) -> ma_vec3f #foreign miniaudio;
ma_spatializer_listener_set_enabled :: (pListener: *ma_spatializer_listener, isEnabled: ma_bool32) -> void #foreign miniaudio;
ma_spatializer_listener_is_enabled :: (pListener: *ma_spatializer_listener) -> ma_bool32 #foreign miniaudio;

ma_spatializer_config :: struct {
    channelsIn:                   ma_uint32;
    channelsOut:                  ma_uint32;
    pChannelMapIn:                *ma_channel;
    attenuationModel:             ma_attenuation_model;
    positioning:                  ma_positioning;
    handedness:                   ma_handedness; /* Defaults to right. Forward is -1 on the Z axis. In a left handed system, forward is +1 on the Z axis. */
    minGain:                      float;
    maxGain:                      float;
    minDistance:                  float;
    maxDistance:                  float;
    rolloff:                      float;
    coneInnerAngleInRadians:      float;
    coneOuterAngleInRadians:      float;
    coneOuterGain:                float;
    dopplerFactor:                float; /* Set to 0 to disable doppler effect. */
    directionalAttenuationFactor: float; /* Set to 0 to disable directional attenuation. */
    minSpatializationChannelGain: float; /* The minimal scaling factor to apply to channel gains when accounting for the direction of the sound relative to the listener. Must be in the range of 0..1. Smaller values means more aggressive directional panning, larger values means more subtle directional panning. */
    gainSmoothTimeInFrames:       ma_uint32; /* When the gain of a channel changes during spatialization, the transition will be linearly interpolated over this number of frames. */
}

ma_spatializer_config_init :: (channelsIn: ma_uint32, channelsOut: ma_uint32) -> ma_spatializer_config #foreign miniaudio;

ma_spatializer :: struct {
    channelsIn:                   ma_uint32;
    channelsOut:                  ma_uint32;
    pChannelMapIn:                *ma_channel;
    attenuationModel:             ma_attenuation_model;
    positioning:                  ma_positioning;
    handedness:                   ma_handedness; /* Defaults to right. Forward is -1 on the Z axis. In a left handed system, forward is +1 on the Z axis. */
    minGain:                      float;
    maxGain:                      float;
    minDistance:                  float;
    maxDistance:                  float;
    rolloff:                      float;
    coneInnerAngleInRadians:      float;
    coneOuterAngleInRadians:      float;
    coneOuterGain:                float;
    dopplerFactor:                float; /* Set to 0 to disable doppler effect. */
    directionalAttenuationFactor: float; /* Set to 0 to disable directional attenuation. */
    gainSmoothTimeInFrames:       ma_uint32; /* When the gain of a channel changes during spatialization, the transition will be linearly interpolated over this number of frames. */
    position:                     ma_atomic_vec3f;
    direction:                    ma_atomic_vec3f;
    velocity:                     ma_atomic_vec3f; /* For doppler effect. */
    dopplerPitch:                 float; /* Will be updated by ma_spatializer_process_pcm_frames() and can be used by higher level functions to apply a pitch shift for doppler effect. */
    minSpatializationChannelGain: float;
    gainer:                       ma_gainer; /* For smooth gain transitions. */
    pNewChannelGainsOut:          *float; /* An offset of _pHeap. Used by ma_spatializer_process_pcm_frames() to store new channel gains. The number of elements in this array is equal to config.channelsOut. */

    /* Memory management. */
    _pHeap:                       *void;
    _ownsHeap:                    ma_bool32;
}

ma_spatializer_get_heap_size :: (pConfig: *ma_spatializer_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_spatializer_init_preallocated :: (pConfig: *ma_spatializer_config, pHeap: *void, pSpatializer: *ma_spatializer) -> ma_result #foreign miniaudio;
ma_spatializer_init :: (pConfig: *ma_spatializer_config, pAllocationCallbacks: *ma_allocation_callbacks, pSpatializer: *ma_spatializer) -> ma_result #foreign miniaudio;
ma_spatializer_uninit :: (pSpatializer: *ma_spatializer, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_spatializer_process_pcm_frames :: (pSpatializer: *ma_spatializer, pListener: *ma_spatializer_listener, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_spatializer_set_master_volume :: (pSpatializer: *ma_spatializer, volume: float) -> ma_result #foreign miniaudio;
ma_spatializer_get_master_volume :: (pSpatializer: *ma_spatializer, pVolume: *float) -> ma_result #foreign miniaudio;
ma_spatializer_get_input_channels :: (pSpatializer: *ma_spatializer) -> ma_uint32 #foreign miniaudio;
ma_spatializer_get_output_channels :: (pSpatializer: *ma_spatializer) -> ma_uint32 #foreign miniaudio;
ma_spatializer_set_attenuation_model :: (pSpatializer: *ma_spatializer, attenuationModel: ma_attenuation_model) -> void #foreign miniaudio;
ma_spatializer_get_attenuation_model :: (pSpatializer: *ma_spatializer) -> ma_attenuation_model #foreign miniaudio;
ma_spatializer_set_positioning :: (pSpatializer: *ma_spatializer, positioning: ma_positioning) -> void #foreign miniaudio;
ma_spatializer_get_positioning :: (pSpatializer: *ma_spatializer) -> ma_positioning #foreign miniaudio;
ma_spatializer_set_rolloff :: (pSpatializer: *ma_spatializer, rolloff: float) -> void #foreign miniaudio;
ma_spatializer_get_rolloff :: (pSpatializer: *ma_spatializer) -> float #foreign miniaudio;
ma_spatializer_set_min_gain :: (pSpatializer: *ma_spatializer, minGain: float) -> void #foreign miniaudio;
ma_spatializer_get_min_gain :: (pSpatializer: *ma_spatializer) -> float #foreign miniaudio;
ma_spatializer_set_max_gain :: (pSpatializer: *ma_spatializer, maxGain: float) -> void #foreign miniaudio;
ma_spatializer_get_max_gain :: (pSpatializer: *ma_spatializer) -> float #foreign miniaudio;
ma_spatializer_set_min_distance :: (pSpatializer: *ma_spatializer, minDistance: float) -> void #foreign miniaudio;
ma_spatializer_get_min_distance :: (pSpatializer: *ma_spatializer) -> float #foreign miniaudio;
ma_spatializer_set_max_distance :: (pSpatializer: *ma_spatializer, maxDistance: float) -> void #foreign miniaudio;
ma_spatializer_get_max_distance :: (pSpatializer: *ma_spatializer) -> float #foreign miniaudio;
ma_spatializer_set_cone :: (pSpatializer: *ma_spatializer, innerAngleInRadians: float, outerAngleInRadians: float, outerGain: float) -> void #foreign miniaudio;
ma_spatializer_get_cone :: (pSpatializer: *ma_spatializer, pInnerAngleInRadians: *float, pOuterAngleInRadians: *float, pOuterGain: *float) -> void #foreign miniaudio;
ma_spatializer_set_doppler_factor :: (pSpatializer: *ma_spatializer, dopplerFactor: float) -> void #foreign miniaudio;
ma_spatializer_get_doppler_factor :: (pSpatializer: *ma_spatializer) -> float #foreign miniaudio;
ma_spatializer_set_directional_attenuation_factor :: (pSpatializer: *ma_spatializer, directionalAttenuationFactor: float) -> void #foreign miniaudio;
ma_spatializer_get_directional_attenuation_factor :: (pSpatializer: *ma_spatializer) -> float #foreign miniaudio;
ma_spatializer_set_position :: (pSpatializer: *ma_spatializer, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_spatializer_get_position :: (pSpatializer: *ma_spatializer) -> ma_vec3f #foreign miniaudio;
ma_spatializer_set_direction :: (pSpatializer: *ma_spatializer, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_spatializer_get_direction :: (pSpatializer: *ma_spatializer) -> ma_vec3f #foreign miniaudio;
ma_spatializer_set_velocity :: (pSpatializer: *ma_spatializer, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_spatializer_get_velocity :: (pSpatializer: *ma_spatializer) -> ma_vec3f #foreign miniaudio;
ma_spatializer_get_relative_position_and_direction :: (pSpatializer: *ma_spatializer, pListener: *ma_spatializer_listener, pRelativePos: *ma_vec3f, pRelativeDir: *ma_vec3f) -> void #foreign miniaudio;

/**************************************************************************************************************************************************************

Resampling

**************************************************************************************************************************************************************/
ma_linear_resampler_config :: struct {
    format:           ma_format;
    channels:         ma_uint32;
    sampleRateIn:     ma_uint32;
    sampleRateOut:    ma_uint32;
    lpfOrder:         ma_uint32; /* The low-pass filter order. Setting this to 0 will disable low-pass filtering. */
    lpfNyquistFactor: float64; /* 0..1. Defaults to 1. 1 = Half the sampling frequency (Nyquist Frequency), 0.5 = Quarter the sampling frequency (half Nyquest Frequency), etc. */
}

ma_linear_resampler_config_init :: (format: ma_format, channels: ma_uint32, sampleRateIn: ma_uint32, sampleRateOut: ma_uint32) -> ma_linear_resampler_config #foreign miniaudio;

ma_linear_resampler :: struct {
    config:        ma_linear_resampler_config;
    inAdvanceInt:  ma_uint32;
    inAdvanceFrac: ma_uint32;
    inTimeInt:     ma_uint32;
    inTimeFrac:    ma_uint32;
    x0:            union {
        f32:  *float;
        _s16: *ma_int16;
    }; /* The previous input frame. */

    x1:            union {
        f32:  *float;
        _s16: *ma_int16;
    }; /* The next input frame. */

    lpf:           ma_lpf;

    /* Memory management. */
    _pHeap:        *void;
    _ownsHeap:     ma_bool32;
}

ma_linear_resampler_get_heap_size :: (pConfig: *ma_linear_resampler_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_linear_resampler_init_preallocated :: (pConfig: *ma_linear_resampler_config, pHeap: *void, pResampler: *ma_linear_resampler) -> ma_result #foreign miniaudio;
ma_linear_resampler_init :: (pConfig: *ma_linear_resampler_config, pAllocationCallbacks: *ma_allocation_callbacks, pResampler: *ma_linear_resampler) -> ma_result #foreign miniaudio;
ma_linear_resampler_uninit :: (pResampler: *ma_linear_resampler, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_linear_resampler_process_pcm_frames :: (pResampler: *ma_linear_resampler, pFramesIn: *void, pFrameCountIn: *ma_uint64, pFramesOut: *void, pFrameCountOut: *ma_uint64) -> ma_result #foreign miniaudio;
ma_linear_resampler_set_rate :: (pResampler: *ma_linear_resampler, sampleRateIn: ma_uint32, sampleRateOut: ma_uint32) -> ma_result #foreign miniaudio;
ma_linear_resampler_set_rate_ratio :: (pResampler: *ma_linear_resampler, ratioInOut: float) -> ma_result #foreign miniaudio;
ma_linear_resampler_get_input_latency :: (pResampler: *ma_linear_resampler) -> ma_uint64 #foreign miniaudio;
ma_linear_resampler_get_output_latency :: (pResampler: *ma_linear_resampler) -> ma_uint64 #foreign miniaudio;
ma_linear_resampler_get_required_input_frame_count :: (pResampler: *ma_linear_resampler, outputFrameCount: ma_uint64, pInputFrameCount: *ma_uint64) -> ma_result #foreign miniaudio;
ma_linear_resampler_get_expected_output_frame_count :: (pResampler: *ma_linear_resampler, inputFrameCount: ma_uint64, pOutputFrameCount: *ma_uint64) -> ma_result #foreign miniaudio;
ma_linear_resampler_reset :: (pResampler: *ma_linear_resampler) -> ma_result #foreign miniaudio;

ma_resampling_backend :: void;
ma_resampling_backend_vtable :: struct {
    onGetHeapSize:                 #type (pUserData: *void, pConfig: *ma_resampler_config, pHeapSizeInBytes: *u64) -> ma_result #c_call;
    onInit:                        #type (pUserData: *void, pConfig: *ma_resampler_config, pHeap: *void, ppBackend: **ma_resampling_backend) -> ma_result #c_call;
    onUninit:                      #type (pUserData: *void, pBackend: *ma_resampling_backend, pAllocationCallbacks: *ma_allocation_callbacks) -> void #c_call;
    onProcess:                     #type (pUserData: *void, pBackend: *ma_resampling_backend, pFramesIn: *void, pFrameCountIn: *ma_uint64, pFramesOut: *void, pFrameCountOut: *ma_uint64) -> ma_result #c_call;
    onSetRate:                     #type (pUserData: *void, pBackend: *ma_resampling_backend, sampleRateIn: ma_uint32, sampleRateOut: ma_uint32) -> ma_result #c_call; /* Optional. Rate changes will be disabled. */
    onGetInputLatency:             #type (pUserData: *void, pBackend: *ma_resampling_backend) -> ma_uint64 #c_call; /* Optional. Latency will be reported as 0. */
    onGetOutputLatency:            #type (pUserData: *void, pBackend: *ma_resampling_backend) -> ma_uint64 #c_call; /* Optional. Latency will be reported as 0. */
    onGetRequiredInputFrameCount:  #type (pUserData: *void, pBackend: *ma_resampling_backend, outputFrameCount: ma_uint64, pInputFrameCount: *ma_uint64) -> ma_result #c_call; /* Optional. Latency mitigation will be disabled. */
    onGetExpectedOutputFrameCount: #type (pUserData: *void, pBackend: *ma_resampling_backend, inputFrameCount: ma_uint64, pOutputFrameCount: *ma_uint64) -> ma_result #c_call; /* Optional. Latency mitigation will be disabled. */
    onReset:                       #type (pUserData: *void, pBackend: *ma_resampling_backend) -> ma_result #c_call;
}

ma_resample_algorithm :: enum u32 {
    linear :: 0;
    custom :: 1;

    ma_resample_algorithm_linear :: linear;
    ma_resample_algorithm_custom :: custom;
}

ma_resampler_config :: struct {
    format:           ma_format; /* Must be either ma_format_f32 or ma_format_s16. */
    channels:         ma_uint32;
    sampleRateIn:     ma_uint32;
    sampleRateOut:    ma_uint32;
    algorithm:        ma_resample_algorithm; /* When set to ma_resample_algorithm_custom, pBackendVTable will be used. */
    pBackendVTable:   *ma_resampling_backend_vtable;
    pBackendUserData: *void;
    linear:           struct {
        lpfOrder: ma_uint32;
    };
}

ma_resampler_config_init :: (format: ma_format, channels: ma_uint32, sampleRateIn: ma_uint32, sampleRateOut: ma_uint32, algorithm: ma_resample_algorithm) -> ma_resampler_config #foreign miniaudio;

ma_resampler :: struct {
    pBackend:         *ma_resampling_backend;
    pBackendVTable:   *ma_resampling_backend_vtable;
    pBackendUserData: *void;
    format:           ma_format;
    channels:         ma_uint32;
    sampleRateIn:     ma_uint32;
    sampleRateOut:    ma_uint32;
    state:            union {
        linear: ma_linear_resampler;
    }; /* State for stock resamplers so we can avoid a malloc. For stock resamplers, pBackend will point here. */

    /* Memory management. */
    _pHeap:           *void;
    _ownsHeap:        ma_bool32;
}

ma_resampler_get_heap_size :: (pConfig: *ma_resampler_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_resampler_init_preallocated :: (pConfig: *ma_resampler_config, pHeap: *void, pResampler: *ma_resampler) -> ma_result #foreign miniaudio;

/*
Initializes a new resampler object from a config.
*/
ma_resampler_init :: (pConfig: *ma_resampler_config, pAllocationCallbacks: *ma_allocation_callbacks, pResampler: *ma_resampler) -> ma_result #foreign miniaudio;

/*
Uninitializes a resampler.
*/
ma_resampler_uninit :: (pResampler: *ma_resampler, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Converts the given input data.

Both the input and output frames must be in the format specified in the config when the resampler was initialized.

On input, [pFrameCountOut] contains the number of output frames to process. On output it contains the number of output frames that
were actually processed, which may be less than the requested amount which will happen if there's not enough input data. You can use
ma_resampler_get_expected_output_frame_count() to know how many output frames will be processed for a given number of input frames.

On input, [pFrameCountIn] contains the number of input frames contained in [pFramesIn]. On output it contains the number of whole
input frames that were actually processed. You can use ma_resampler_get_required_input_frame_count() to know how many input frames
you should provide for a given number of output frames. [pFramesIn] can be NULL, in which case zeroes will be used instead.

If [pFramesOut] is NULL, a seek is performed. In this case, if [pFrameCountOut] is not NULL it will seek by the specified number of
output frames. Otherwise, if [pFramesCountOut] is NULL and [pFrameCountIn] is not NULL, it will seek by the specified number of input
frames. When seeking, [pFramesIn] is allowed to NULL, in which case the internal timing state will be updated, but no input will be
processed. In this case, any internal filter state will be updated as if zeroes were passed in.

It is an error for [pFramesOut] to be non-NULL and [pFrameCountOut] to be NULL.

It is an error for both [pFrameCountOut] and [pFrameCountIn] to be NULL.
*/
ma_resampler_process_pcm_frames :: (pResampler: *ma_resampler, pFramesIn: *void, pFrameCountIn: *ma_uint64, pFramesOut: *void, pFrameCountOut: *ma_uint64) -> ma_result #foreign miniaudio;

/*
Sets the input and output sample rate.
*/
ma_resampler_set_rate :: (pResampler: *ma_resampler, sampleRateIn: ma_uint32, sampleRateOut: ma_uint32) -> ma_result #foreign miniaudio;

/*
Sets the input and output sample rate as a ratio.

The ration is in/out.
*/
ma_resampler_set_rate_ratio :: (pResampler: *ma_resampler, ratio: float) -> ma_result #foreign miniaudio;

/*
Retrieves the latency introduced by the resampler in input frames.
*/
ma_resampler_get_input_latency :: (pResampler: *ma_resampler) -> ma_uint64 #foreign miniaudio;

/*
Retrieves the latency introduced by the resampler in output frames.
*/
ma_resampler_get_output_latency :: (pResampler: *ma_resampler) -> ma_uint64 #foreign miniaudio;

/*
Calculates the number of whole input frames that would need to be read from the client in order to output the specified
number of output frames.

The returned value does not include cached input frames. It only returns the number of extra frames that would need to be
read from the input buffer in order to output the specified number of output frames.
*/
ma_resampler_get_required_input_frame_count :: (pResampler: *ma_resampler, outputFrameCount: ma_uint64, pInputFrameCount: *ma_uint64) -> ma_result #foreign miniaudio;

/*
Calculates the number of whole output frames that would be output after fully reading and consuming the specified number of
input frames.
*/
ma_resampler_get_expected_output_frame_count :: (pResampler: *ma_resampler, inputFrameCount: ma_uint64, pOutputFrameCount: *ma_uint64) -> ma_result #foreign miniaudio;

/*
Resets the resampler's timer and clears its internal cache.
*/
ma_resampler_reset :: (pResampler: *ma_resampler) -> ma_result #foreign miniaudio;

/**************************************************************************************************************************************************************

Channel Conversion

**************************************************************************************************************************************************************/
ma_channel_conversion_path :: enum u32 {
    unknown     :: 0;
    passthrough :: 1;
    mono_out    :: 2;
    mono_in     :: 3;
    shuffle     :: 4;
    weights     :: 5;

    ma_channel_conversion_path_unknown     :: unknown;
    ma_channel_conversion_path_passthrough :: passthrough;
    ma_channel_conversion_path_mono_out    :: mono_out;
    ma_channel_conversion_path_mono_in     :: mono_in;
    ma_channel_conversion_path_shuffle     :: shuffle;
    ma_channel_conversion_path_weights     :: weights;
}

ma_mono_expansion_mode :: enum u32 {
    duplicate   :: 0;
    average     :: 1;
    stereo_only :: 2;
    default     :: 0;

    ma_mono_expansion_mode_duplicate   :: duplicate;
    ma_mono_expansion_mode_average     :: average;
    ma_mono_expansion_mode_stereo_only :: stereo_only;
    ma_mono_expansion_mode_default     :: default;
}

ma_channel_converter_config :: struct {
    format:                          ma_format;
    channelsIn:                      ma_uint32;
    channelsOut:                     ma_uint32;
    pChannelMapIn:                   *ma_channel;
    pChannelMapOut:                  *ma_channel;
    mixingMode:                      ma_channel_mix_mode;
    calculateLFEFromSpatialChannels: ma_bool32; /* When an output LFE channel is present, but no input LFE, set to true to set the output LFE to the average of all spatial channels (LR, FR, etc.). Ignored when an input LFE is present. */
    ppWeights:                       **float; /* [in][out]. Only used when mixingMode is set to ma_channel_mix_mode_custom_weights. */
}

ma_channel_converter_config_init :: (format: ma_format, channelsIn: ma_uint32, pChannelMapIn: *ma_channel, channelsOut: ma_uint32, pChannelMapOut: *ma_channel, mixingMode: ma_channel_mix_mode) -> ma_channel_converter_config #foreign miniaudio;

ma_channel_converter :: struct {
    format:         ma_format;
    channelsIn:     ma_uint32;
    channelsOut:    ma_uint32;
    mixingMode:     ma_channel_mix_mode;
    conversionPath: ma_channel_conversion_path;
    pChannelMapIn:  *ma_channel;
    pChannelMapOut: *ma_channel;
    pShuffleTable:  *ma_uint8; /* Indexed by output channel index. */
    weights:        union {
        f32:  **float;
        _s16: **ma_int32;
    }; /* [in][out] */

    /* Memory management. */
    _pHeap:         *void;
    _ownsHeap:      ma_bool32;
}

ma_channel_converter_get_heap_size :: (pConfig: *ma_channel_converter_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_channel_converter_init_preallocated :: (pConfig: *ma_channel_converter_config, pHeap: *void, pConverter: *ma_channel_converter) -> ma_result #foreign miniaudio;
ma_channel_converter_init :: (pConfig: *ma_channel_converter_config, pAllocationCallbacks: *ma_allocation_callbacks, pConverter: *ma_channel_converter) -> ma_result #foreign miniaudio;
ma_channel_converter_uninit :: (pConverter: *ma_channel_converter, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_channel_converter_process_pcm_frames :: (pConverter: *ma_channel_converter, pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_channel_converter_get_input_channel_map :: (pConverter: *ma_channel_converter, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;
ma_channel_converter_get_output_channel_map :: (pConverter: *ma_channel_converter, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;

/**************************************************************************************************************************************************************

Data Conversion

**************************************************************************************************************************************************************/
ma_data_converter_config :: struct {
    formatIn:                        ma_format;
    formatOut:                       ma_format;
    channelsIn:                      ma_uint32;
    channelsOut:                     ma_uint32;
    sampleRateIn:                    ma_uint32;
    sampleRateOut:                   ma_uint32;
    pChannelMapIn:                   *ma_channel;
    pChannelMapOut:                  *ma_channel;
    ditherMode:                      ma_dither_mode;
    channelMixMode:                  ma_channel_mix_mode;
    calculateLFEFromSpatialChannels: ma_bool32; /* When an output LFE channel is present, but no input LFE, set to true to set the output LFE to the average of all spatial channels (LR, FR, etc.). Ignored when an input LFE is present. */
    ppChannelWeights:                **float; /* [in][out]. Only used when mixingMode is set to ma_channel_mix_mode_custom_weights. */
    allowDynamicSampleRate:          ma_bool32;
    resampling:                      ma_resampler_config;
}

ma_data_converter_config_init_default :: () -> ma_data_converter_config #foreign miniaudio;
ma_data_converter_config_init :: (formatIn: ma_format, formatOut: ma_format, channelsIn: ma_uint32, channelsOut: ma_uint32, sampleRateIn: ma_uint32, sampleRateOut: ma_uint32) -> ma_data_converter_config #foreign miniaudio;

ma_data_converter_execution_path :: enum u32 {
    passthrough    :: 0;
    format_only    :: 1;
    channels_only  :: 2;
    resample_only  :: 3;
    resample_first :: 4;
    channels_first :: 5;

    ma_data_converter_execution_path_passthrough    :: passthrough;
    ma_data_converter_execution_path_format_only    :: format_only;
    ma_data_converter_execution_path_channels_only  :: channels_only;
    ma_data_converter_execution_path_resample_only  :: resample_only;
    ma_data_converter_execution_path_resample_first :: resample_first;
    ma_data_converter_execution_path_channels_first :: channels_first;
}

ma_data_converter :: struct {
    formatIn:                ma_format;
    formatOut:               ma_format;
    channelsIn:              ma_uint32;
    channelsOut:             ma_uint32;
    sampleRateIn:            ma_uint32;
    sampleRateOut:           ma_uint32;
    ditherMode:              ma_dither_mode;
    executionPath:           ma_data_converter_execution_path; /* The execution path the data converter will follow when processing. */
    channelConverter:        ma_channel_converter;
    resampler:               ma_resampler;
    hasPreFormatConversion:  ma_bool8;
    hasPostFormatConversion: ma_bool8;
    hasChannelConverter:     ma_bool8;
    hasResampler:            ma_bool8;
    isPassthrough:           ma_bool8;

    /* Memory management. */
    _ownsHeap:               ma_bool8;
    _pHeap:                  *void;
}

ma_data_converter_get_heap_size :: (pConfig: *ma_data_converter_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_data_converter_init_preallocated :: (pConfig: *ma_data_converter_config, pHeap: *void, pConverter: *ma_data_converter) -> ma_result #foreign miniaudio;
ma_data_converter_init :: (pConfig: *ma_data_converter_config, pAllocationCallbacks: *ma_allocation_callbacks, pConverter: *ma_data_converter) -> ma_result #foreign miniaudio;
ma_data_converter_uninit :: (pConverter: *ma_data_converter, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_data_converter_process_pcm_frames :: (pConverter: *ma_data_converter, pFramesIn: *void, pFrameCountIn: *ma_uint64, pFramesOut: *void, pFrameCountOut: *ma_uint64) -> ma_result #foreign miniaudio;
ma_data_converter_set_rate :: (pConverter: *ma_data_converter, sampleRateIn: ma_uint32, sampleRateOut: ma_uint32) -> ma_result #foreign miniaudio;
ma_data_converter_set_rate_ratio :: (pConverter: *ma_data_converter, ratioInOut: float) -> ma_result #foreign miniaudio;
ma_data_converter_get_input_latency :: (pConverter: *ma_data_converter) -> ma_uint64 #foreign miniaudio;
ma_data_converter_get_output_latency :: (pConverter: *ma_data_converter) -> ma_uint64 #foreign miniaudio;
ma_data_converter_get_required_input_frame_count :: (pConverter: *ma_data_converter, outputFrameCount: ma_uint64, pInputFrameCount: *ma_uint64) -> ma_result #foreign miniaudio;
ma_data_converter_get_expected_output_frame_count :: (pConverter: *ma_data_converter, inputFrameCount: ma_uint64, pOutputFrameCount: *ma_uint64) -> ma_result #foreign miniaudio;
ma_data_converter_get_input_channel_map :: (pConverter: *ma_data_converter, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;
ma_data_converter_get_output_channel_map :: (pConverter: *ma_data_converter, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;
ma_data_converter_reset :: (pConverter: *ma_data_converter) -> ma_result #foreign miniaudio;

/************************************************************************************************************************************************************

Format Conversion

************************************************************************************************************************************************************/
ma_pcm_u8_to_s16 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_u8_to_s24 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_u8_to_s32 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_u8_to_f32 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s16_to_u8 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s16_to_s24 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s16_to_s32 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s16_to_f32 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s24_to_u8 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s24_to_s16 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s24_to_s32 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s24_to_f32 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s32_to_u8 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s32_to_s16 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s32_to_s24 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_s32_to_f32 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_f32_to_u8 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_f32_to_s16 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_f32_to_s24 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_f32_to_s32 :: (pOut: *void, pIn: *void, count: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_pcm_convert :: (pOut: *void, formatOut: ma_format, pIn: *void, formatIn: ma_format, sampleCount: ma_uint64, ditherMode: ma_dither_mode) -> void #foreign miniaudio;
ma_convert_pcm_frames_format :: (pOut: *void, formatOut: ma_format, pIn: *void, formatIn: ma_format, frameCount: ma_uint64, channels: ma_uint32, ditherMode: ma_dither_mode) -> void #foreign miniaudio;

/*
Deinterleaves an interleaved buffer.
*/
ma_deinterleave_pcm_frames :: (format: ma_format, channels: ma_uint32, frameCount: ma_uint64, pInterleavedPCMFrames: *void, ppDeinterleavedPCMFrames: **void) -> void #foreign miniaudio;

/*
Interleaves a group of deinterleaved buffers.
*/
ma_interleave_pcm_frames :: (format: ma_format, channels: ma_uint32, frameCount: ma_uint64, ppDeinterleavedPCMFrames: **void, pInterleavedPCMFrames: *void) -> void #foreign miniaudio;

/*
Retrieves the channel position of the specified channel in the given channel map.

The pChannelMap parameter can be null, in which case miniaudio's default channel map will be assumed.
*/
ma_channel_map_get_channel :: (pChannelMap: *ma_channel, channelCount: ma_uint32, channelIndex: ma_uint32) -> ma_channel #foreign miniaudio;

/*
Initializes a blank channel map.

When a blank channel map is specified anywhere it indicates that the native channel map should be used.
*/
ma_channel_map_init_blank :: (pChannelMap: *ma_channel, channels: ma_uint32) -> void #foreign miniaudio;

/*
Helper for retrieving a standard channel map.

The output channel map buffer must have a capacity of at least `channelMapCap`.
*/
ma_channel_map_init_standard :: (standardChannelMap: ma_standard_channel_map, pChannelMap: *ma_channel, channelMapCap: u64, channels: ma_uint32) -> void #foreign miniaudio;

/*
Copies a channel map.

Both input and output channel map buffers must have a capacity of at least `channels`.
*/
ma_channel_map_copy :: (pOut: *ma_channel, pIn: *ma_channel, channels: ma_uint32) -> void #foreign miniaudio;

/*
Copies a channel map if one is specified, otherwise copies the default channel map.

The output buffer must have a capacity of at least `channels`. If not NULL, the input channel map must also have a capacity of at least `channels`.
*/
ma_channel_map_copy_or_default :: (pOut: *ma_channel, channelMapCapOut: u64, pIn: *ma_channel, channels: ma_uint32) -> void #foreign miniaudio;

/*
Determines whether or not a channel map is valid.

A blank channel map is valid (all channels set to MA_CHANNEL_NONE). The way a blank channel map is handled is context specific, but
is usually treated as a passthrough.

Invalid channel maps:
- A channel map with no channels
- A channel map with more than one channel and a mono channel

The channel map buffer must have a capacity of at least `channels`.
*/
ma_channel_map_is_valid :: (pChannelMap: *ma_channel, channels: ma_uint32) -> ma_bool32 #foreign miniaudio;

/*
Helper for comparing two channel maps for equality.

This assumes the channel count is the same between the two.

Both channels map buffers must have a capacity of at least `channels`.
*/
ma_channel_map_is_equal :: (pChannelMapA: *ma_channel, pChannelMapB: *ma_channel, channels: ma_uint32) -> ma_bool32 #foreign miniaudio;

/*
Helper for determining if a channel map is blank (all channels set to MA_CHANNEL_NONE).

The channel map buffer must have a capacity of at least `channels`.
*/
ma_channel_map_is_blank :: (pChannelMap: *ma_channel, channels: ma_uint32) -> ma_bool32 #foreign miniaudio;

/*
Helper for determining whether or not a channel is present in the given channel map.

The channel map buffer must have a capacity of at least `channels`.
*/
ma_channel_map_contains_channel_position :: (channels: ma_uint32, pChannelMap: *ma_channel, channelPosition: ma_channel) -> ma_bool32 #foreign miniaudio;

/*
Find a channel position in the given channel map. Returns MA_TRUE if the channel is found; MA_FALSE otherwise. The
index of the channel is output to `pChannelIndex`.

The channel map buffer must have a capacity of at least `channels`.
*/
ma_channel_map_find_channel_position :: (channels: ma_uint32, pChannelMap: *ma_channel, channelPosition: ma_channel, pChannelIndex: *ma_uint32) -> ma_bool32 #foreign miniaudio;

/*
Generates a string representing the given channel map.

This is for printing and debugging purposes, not serialization/deserialization.

Returns the length of the string, not including the null terminator.
*/
ma_channel_map_to_string :: (pChannelMap: *ma_channel, channels: ma_uint32, pBufferOut: *u8, bufferCap: u64) -> u64 #foreign miniaudio;

/*
Retrieves a human readable version of a channel position.
*/
ma_channel_position_to_string :: (channel: ma_channel) -> *u8 #foreign miniaudio;

/*
High-level helper for doing a full format conversion in one go. Returns the number of output frames. Call this with pOut set to NULL to
determine the required size of the output buffer. frameCountOut should be set to the capacity of pOut. If pOut is NULL, frameCountOut is
ignored.

A return value of 0 indicates an error.

This function is useful for one-off bulk conversions, but if you're streaming data you should use the ma_data_converter APIs instead.
*/
ma_convert_frames :: (pOut: *void, frameCountOut: ma_uint64, formatOut: ma_format, channelsOut: ma_uint32, sampleRateOut: ma_uint32, pIn: *void, frameCountIn: ma_uint64, formatIn: ma_format, channelsIn: ma_uint32, sampleRateIn: ma_uint32) -> ma_uint64 #foreign miniaudio;
ma_convert_frames_ex :: (pOut: *void, frameCountOut: ma_uint64, pIn: *void, frameCountIn: ma_uint64, pConfig: *ma_data_converter_config) -> ma_uint64 #foreign miniaudio;

/************************************************************************************************************************************************************

Data Source

************************************************************************************************************************************************************/
ma_data_source :: void;

ma_data_source_vtable :: struct {
    onRead:          #type (pDataSource: *ma_data_source, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #c_call;
    onSeek:          #type (pDataSource: *ma_data_source, frameIndex: ma_uint64) -> ma_result #c_call;
    onGetDataFormat: #type (pDataSource: *ma_data_source, pFormat: *ma_format, pChannels: *ma_uint32, pSampleRate: *ma_uint32, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #c_call;
    onGetCursor:     #type (pDataSource: *ma_data_source, pCursor: *ma_uint64) -> ma_result #c_call;
    onGetLength:     #type (pDataSource: *ma_data_source, pLength: *ma_uint64) -> ma_result #c_call;
    onSetLooping:    #type (pDataSource: *ma_data_source, isLooping: ma_bool32) -> ma_result #c_call;
    flags:           ma_uint32;
}

ma_data_source_get_next_proc :: #type (pDataSource: *ma_data_source) -> *ma_data_source #c_call;

ma_data_source_config :: struct {
    vtable: *ma_data_source_vtable;
}

ma_data_source_config_init :: () -> ma_data_source_config #foreign miniaudio;

ma_data_source_base :: struct {
    vtable:           *ma_data_source_vtable;
    rangeBegInFrames: ma_uint64;
    rangeEndInFrames: ma_uint64; /* Set to -1 for unranged (default). */
    loopBegInFrames:  ma_uint64; /* Relative to rangeBegInFrames. */
    loopEndInFrames:  ma_uint64; /* Relative to rangeBegInFrames. Set to -1 for the end of the range. */
    pCurrent:         *ma_data_source; /* When non-NULL, the data source being initialized will act as a proxy and will route all operations to pCurrent. Used in conjunction with pNext/onGetNext for seamless chaining. */
    pNext:            *ma_data_source; /* When set to NULL, onGetNext will be used. */
    onGetNext:        ma_data_source_get_next_proc; /* Will be used when pNext is NULL. If both are NULL, no next will be used. */
    isLooping:        ma_bool32;
}

ma_data_source_init :: (pConfig: *ma_data_source_config, pDataSource: *ma_data_source) -> ma_result #foreign miniaudio;
ma_data_source_uninit :: (pDataSource: *ma_data_source) -> void #foreign miniaudio;
ma_data_source_read_pcm_frames :: (pDataSource: *ma_data_source, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_data_source_seek_pcm_frames :: (pDataSource: *ma_data_source, frameCount: ma_uint64, pFramesSeeked: *ma_uint64) -> ma_result #foreign miniaudio;
ma_data_source_seek_to_pcm_frame :: (pDataSource: *ma_data_source, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_data_source_seek_seconds :: (pDataSource: *ma_data_source, secondCount: float, pSecondsSeeked: *float) -> ma_result #foreign miniaudio;
ma_data_source_seek_to_second :: (pDataSource: *ma_data_source, seekPointInSeconds: float) -> ma_result #foreign miniaudio;
ma_data_source_get_data_format :: (pDataSource: *ma_data_source, pFormat: *ma_format, pChannels: *ma_uint32, pSampleRate: *ma_uint32, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;
ma_data_source_get_cursor_in_pcm_frames :: (pDataSource: *ma_data_source, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;
ma_data_source_get_length_in_pcm_frames :: (pDataSource: *ma_data_source, pLength: *ma_uint64) -> ma_result #foreign miniaudio;
ma_data_source_get_cursor_in_seconds :: (pDataSource: *ma_data_source, pCursor: *float) -> ma_result #foreign miniaudio;
ma_data_source_get_length_in_seconds :: (pDataSource: *ma_data_source, pLength: *float) -> ma_result #foreign miniaudio;
ma_data_source_set_looping :: (pDataSource: *ma_data_source, isLooping: ma_bool32) -> ma_result #foreign miniaudio;
ma_data_source_is_looping :: (pDataSource: *ma_data_source) -> ma_bool32 #foreign miniaudio;
ma_data_source_set_range_in_pcm_frames :: (pDataSource: *ma_data_source, rangeBegInFrames: ma_uint64, rangeEndInFrames: ma_uint64) -> ma_result #foreign miniaudio;
ma_data_source_get_range_in_pcm_frames :: (pDataSource: *ma_data_source, pRangeBegInFrames: *ma_uint64, pRangeEndInFrames: *ma_uint64) -> void #foreign miniaudio;
ma_data_source_set_loop_point_in_pcm_frames :: (pDataSource: *ma_data_source, loopBegInFrames: ma_uint64, loopEndInFrames: ma_uint64) -> ma_result #foreign miniaudio;
ma_data_source_get_loop_point_in_pcm_frames :: (pDataSource: *ma_data_source, pLoopBegInFrames: *ma_uint64, pLoopEndInFrames: *ma_uint64) -> void #foreign miniaudio;
ma_data_source_set_current :: (pDataSource: *ma_data_source, pCurrentDataSource: *ma_data_source) -> ma_result #foreign miniaudio;
ma_data_source_get_current :: (pDataSource: *ma_data_source) -> *ma_data_source #foreign miniaudio;
ma_data_source_set_next :: (pDataSource: *ma_data_source, pNextDataSource: *ma_data_source) -> ma_result #foreign miniaudio;
ma_data_source_get_next :: (pDataSource: *ma_data_source) -> *ma_data_source #foreign miniaudio;
ma_data_source_set_next_callback :: (pDataSource: *ma_data_source, onGetNext: ma_data_source_get_next_proc) -> ma_result #foreign miniaudio;
ma_data_source_get_next_callback :: (pDataSource: *ma_data_source) -> ma_data_source_get_next_proc #foreign miniaudio;

ma_audio_buffer_ref :: struct {
    ds:           ma_data_source_base;
    format:       ma_format;
    channels:     ma_uint32;
    sampleRate:   ma_uint32;
    cursor:       ma_uint64;
    sizeInFrames: ma_uint64;
    pData:        *void;
}

ma_audio_buffer_ref_init :: (format: ma_format, channels: ma_uint32, pData: *void, sizeInFrames: ma_uint64, pAudioBufferRef: *ma_audio_buffer_ref) -> ma_result #foreign miniaudio;
ma_audio_buffer_ref_uninit :: (pAudioBufferRef: *ma_audio_buffer_ref) -> void #foreign miniaudio;
ma_audio_buffer_ref_set_data :: (pAudioBufferRef: *ma_audio_buffer_ref, pData: *void, sizeInFrames: ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_ref_read_pcm_frames :: (pAudioBufferRef: *ma_audio_buffer_ref, pFramesOut: *void, frameCount: ma_uint64, loop: ma_bool32) -> ma_uint64 #foreign miniaudio;
ma_audio_buffer_ref_seek_to_pcm_frame :: (pAudioBufferRef: *ma_audio_buffer_ref, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_ref_map :: (pAudioBufferRef: *ma_audio_buffer_ref, ppFramesOut: **void, pFrameCount: *ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_ref_unmap :: (pAudioBufferRef: *ma_audio_buffer_ref, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_ref_at_end :: (pAudioBufferRef: *ma_audio_buffer_ref) -> ma_bool32 #foreign miniaudio;
ma_audio_buffer_ref_get_cursor_in_pcm_frames :: (pAudioBufferRef: *ma_audio_buffer_ref, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_ref_get_length_in_pcm_frames :: (pAudioBufferRef: *ma_audio_buffer_ref, pLength: *ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_ref_get_available_frames :: (pAudioBufferRef: *ma_audio_buffer_ref, pAvailableFrames: *ma_uint64) -> ma_result #foreign miniaudio;

ma_audio_buffer_config :: struct {
    format:              ma_format;
    channels:            ma_uint32;
    sampleRate:          ma_uint32;
    sizeInFrames:        ma_uint64;
    pData:               *void; /* If set to NULL, will allocate a block of memory for you. */
    allocationCallbacks: ma_allocation_callbacks;
}

ma_audio_buffer_config_init :: (format: ma_format, channels: ma_uint32, sizeInFrames: ma_uint64, pData: *void, pAllocationCallbacks: *ma_allocation_callbacks) -> ma_audio_buffer_config #foreign miniaudio;

ma_audio_buffer :: struct {
    ref:                 ma_audio_buffer_ref;
    allocationCallbacks: ma_allocation_callbacks;
    ownsData:            ma_bool32; /* Used to control whether or not miniaudio owns the data buffer. If set to true, pData will be freed in ma_audio_buffer_uninit(). */
    _pExtraData:         [1] ma_uint8; /* For allocating a buffer with the memory located directly after the other memory of the structure. */
}

ma_audio_buffer_init :: (pConfig: *ma_audio_buffer_config, pAudioBuffer: *ma_audio_buffer) -> ma_result #foreign miniaudio;
ma_audio_buffer_init_copy :: (pConfig: *ma_audio_buffer_config, pAudioBuffer: *ma_audio_buffer) -> ma_result #foreign miniaudio;
ma_audio_buffer_alloc_and_init :: (pConfig: *ma_audio_buffer_config, ppAudioBuffer: **ma_audio_buffer) -> ma_result #foreign miniaudio;
ma_audio_buffer_uninit :: (pAudioBuffer: *ma_audio_buffer) -> void #foreign miniaudio;
ma_audio_buffer_uninit_and_free :: (pAudioBuffer: *ma_audio_buffer) -> void #foreign miniaudio;
ma_audio_buffer_read_pcm_frames :: (pAudioBuffer: *ma_audio_buffer, pFramesOut: *void, frameCount: ma_uint64, loop: ma_bool32) -> ma_uint64 #foreign miniaudio;
ma_audio_buffer_seek_to_pcm_frame :: (pAudioBuffer: *ma_audio_buffer, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_map :: (pAudioBuffer: *ma_audio_buffer, ppFramesOut: **void, pFrameCount: *ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_unmap :: (pAudioBuffer: *ma_audio_buffer, frameCount: ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_at_end :: (pAudioBuffer: *ma_audio_buffer) -> ma_bool32 #foreign miniaudio;
ma_audio_buffer_get_cursor_in_pcm_frames :: (pAudioBuffer: *ma_audio_buffer, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_get_length_in_pcm_frames :: (pAudioBuffer: *ma_audio_buffer, pLength: *ma_uint64) -> ma_result #foreign miniaudio;
ma_audio_buffer_get_available_frames :: (pAudioBuffer: *ma_audio_buffer, pAvailableFrames: *ma_uint64) -> ma_result #foreign miniaudio;

ma_paged_audio_buffer_page :: struct {
    pNext:        *ma_paged_audio_buffer_page;
    sizeInFrames: ma_uint64;
    pAudioData:   [1] ma_uint8;
}

ma_paged_audio_buffer_data :: struct {
    format:   ma_format;
    channels: ma_uint32;
    head:     ma_paged_audio_buffer_page; /* Dummy head for the lock-free algorithm. Always has a size of 0. */
    pTail:    *ma_paged_audio_buffer_page; /* Never null. Initially set to &head. */
}

ma_paged_audio_buffer_data_init :: (format: ma_format, channels: ma_uint32, pData: *ma_paged_audio_buffer_data) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_data_uninit :: (pData: *ma_paged_audio_buffer_data, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_paged_audio_buffer_data_get_head :: (pData: *ma_paged_audio_buffer_data) -> *ma_paged_audio_buffer_page #foreign miniaudio;
ma_paged_audio_buffer_data_get_tail :: (pData: *ma_paged_audio_buffer_data) -> *ma_paged_audio_buffer_page #foreign miniaudio;
ma_paged_audio_buffer_data_get_length_in_pcm_frames :: (pData: *ma_paged_audio_buffer_data, pLength: *ma_uint64) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_data_allocate_page :: (pData: *ma_paged_audio_buffer_data, pageSizeInFrames: ma_uint64, pInitialData: *void, pAllocationCallbacks: *ma_allocation_callbacks, ppPage: **ma_paged_audio_buffer_page) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_data_free_page :: (pData: *ma_paged_audio_buffer_data, pPage: *ma_paged_audio_buffer_page, pAllocationCallbacks: *ma_allocation_callbacks) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_data_append_page :: (pData: *ma_paged_audio_buffer_data, pPage: *ma_paged_audio_buffer_page) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_data_allocate_and_append_page :: (pData: *ma_paged_audio_buffer_data, pageSizeInFrames: ma_uint32, pInitialData: *void, pAllocationCallbacks: *ma_allocation_callbacks) -> ma_result #foreign miniaudio;

ma_paged_audio_buffer_config :: struct {
    pData: *ma_paged_audio_buffer_data; /* Must not be null. */
}

ma_paged_audio_buffer_config_init :: (pData: *ma_paged_audio_buffer_data) -> ma_paged_audio_buffer_config #foreign miniaudio;

ma_paged_audio_buffer :: struct {
    ds:             ma_data_source_base;
    pData:          *ma_paged_audio_buffer_data; /* Audio data is read from here. Cannot be null. */
    pCurrent:       *ma_paged_audio_buffer_page;
    relativeCursor: ma_uint64; /* Relative to the current page. */
    absoluteCursor: ma_uint64;
}

ma_paged_audio_buffer_init :: (pConfig: *ma_paged_audio_buffer_config, pPagedAudioBuffer: *ma_paged_audio_buffer) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_uninit :: (pPagedAudioBuffer: *ma_paged_audio_buffer) -> void #foreign miniaudio;
ma_paged_audio_buffer_read_pcm_frames :: (pPagedAudioBuffer: *ma_paged_audio_buffer, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_seek_to_pcm_frame :: (pPagedAudioBuffer: *ma_paged_audio_buffer, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_get_cursor_in_pcm_frames :: (pPagedAudioBuffer: *ma_paged_audio_buffer, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;
ma_paged_audio_buffer_get_length_in_pcm_frames :: (pPagedAudioBuffer: *ma_paged_audio_buffer, pLength: *ma_uint64) -> ma_result #foreign miniaudio;

/************************************************************************************************************************************************************

Ring Buffer

************************************************************************************************************************************************************/
ma_rb :: struct {
    pBuffer:                *void;
    subbufferSizeInBytes:   ma_uint32;
    subbufferCount:         ma_uint32;
    subbufferStrideInBytes: ma_uint32;
    encodedReadOffset:      ma_uint32; /* Most significant bit is the loop flag. Lower 31 bits contains the actual offset in bytes. Must be used atomically. */
    encodedWriteOffset:     ma_uint32; /* Most significant bit is the loop flag. Lower 31 bits contains the actual offset in bytes. Must be used atomically. */
    ownsBuffer:             ma_bool8; /* Used to know whether or not miniaudio is responsible for free()-ing the buffer. */
    clearOnWriteAcquire:    ma_bool8; /* When set, clears the acquired write buffer before returning from ma_rb_acquire_write(). */
    allocationCallbacks:    ma_allocation_callbacks;
}

ma_rb_init_ex :: (subbufferSizeInBytes: u64, subbufferCount: u64, subbufferStrideInBytes: u64, pOptionalPreallocatedBuffer: *void, pAllocationCallbacks: *ma_allocation_callbacks, pRB: *ma_rb) -> ma_result #foreign miniaudio;
ma_rb_init :: (bufferSizeInBytes: u64, pOptionalPreallocatedBuffer: *void, pAllocationCallbacks: *ma_allocation_callbacks, pRB: *ma_rb) -> ma_result #foreign miniaudio;
ma_rb_uninit :: (pRB: *ma_rb) -> void #foreign miniaudio;
ma_rb_reset :: (pRB: *ma_rb) -> void #foreign miniaudio;
ma_rb_acquire_read :: (pRB: *ma_rb, pSizeInBytes: *u64, ppBufferOut: **void) -> ma_result #foreign miniaudio;
ma_rb_commit_read :: (pRB: *ma_rb, sizeInBytes: u64) -> ma_result #foreign miniaudio;
ma_rb_acquire_write :: (pRB: *ma_rb, pSizeInBytes: *u64, ppBufferOut: **void) -> ma_result #foreign miniaudio;
ma_rb_commit_write :: (pRB: *ma_rb, sizeInBytes: u64) -> ma_result #foreign miniaudio;
ma_rb_seek_read :: (pRB: *ma_rb, offsetInBytes: u64) -> ma_result #foreign miniaudio;
ma_rb_seek_write :: (pRB: *ma_rb, offsetInBytes: u64) -> ma_result #foreign miniaudio;
ma_rb_pointer_distance :: (pRB: *ma_rb) -> ma_int32 #foreign miniaudio;
ma_rb_available_read :: (pRB: *ma_rb) -> ma_uint32 #foreign miniaudio;
ma_rb_available_write :: (pRB: *ma_rb) -> ma_uint32 #foreign miniaudio;
ma_rb_get_subbuffer_size :: (pRB: *ma_rb) -> u64 #foreign miniaudio;
ma_rb_get_subbuffer_stride :: (pRB: *ma_rb) -> u64 #foreign miniaudio;
ma_rb_get_subbuffer_offset :: (pRB: *ma_rb, subbufferIndex: u64) -> u64 #foreign miniaudio;
ma_rb_get_subbuffer_ptr :: (pRB: *ma_rb, subbufferIndex: u64, pBuffer: *void) -> *void #foreign miniaudio;

ma_pcm_rb :: struct {
    ds:         ma_data_source_base;
    rb:         ma_rb;
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32; /* Not required for the ring buffer itself, but useful for associating the data with some sample rate, particularly for data sources. */
}

ma_pcm_rb_init_ex :: (format: ma_format, channels: ma_uint32, subbufferSizeInFrames: ma_uint32, subbufferCount: ma_uint32, subbufferStrideInFrames: ma_uint32, pOptionalPreallocatedBuffer: *void, pAllocationCallbacks: *ma_allocation_callbacks, pRB: *ma_pcm_rb) -> ma_result #foreign miniaudio;
ma_pcm_rb_init :: (format: ma_format, channels: ma_uint32, bufferSizeInFrames: ma_uint32, pOptionalPreallocatedBuffer: *void, pAllocationCallbacks: *ma_allocation_callbacks, pRB: *ma_pcm_rb) -> ma_result #foreign miniaudio;
ma_pcm_rb_uninit :: (pRB: *ma_pcm_rb) -> void #foreign miniaudio;
ma_pcm_rb_reset :: (pRB: *ma_pcm_rb) -> void #foreign miniaudio;
ma_pcm_rb_acquire_read :: (pRB: *ma_pcm_rb, pSizeInFrames: *ma_uint32, ppBufferOut: **void) -> ma_result #foreign miniaudio;
ma_pcm_rb_commit_read :: (pRB: *ma_pcm_rb, sizeInFrames: ma_uint32) -> ma_result #foreign miniaudio;
ma_pcm_rb_acquire_write :: (pRB: *ma_pcm_rb, pSizeInFrames: *ma_uint32, ppBufferOut: **void) -> ma_result #foreign miniaudio;
ma_pcm_rb_commit_write :: (pRB: *ma_pcm_rb, sizeInFrames: ma_uint32) -> ma_result #foreign miniaudio;
ma_pcm_rb_seek_read :: (pRB: *ma_pcm_rb, offsetInFrames: ma_uint32) -> ma_result #foreign miniaudio;
ma_pcm_rb_seek_write :: (pRB: *ma_pcm_rb, offsetInFrames: ma_uint32) -> ma_result #foreign miniaudio;
ma_pcm_rb_pointer_distance :: (pRB: *ma_pcm_rb) -> ma_int32 #foreign miniaudio;
ma_pcm_rb_available_read :: (pRB: *ma_pcm_rb) -> ma_uint32 #foreign miniaudio;
ma_pcm_rb_available_write :: (pRB: *ma_pcm_rb) -> ma_uint32 #foreign miniaudio;
ma_pcm_rb_get_subbuffer_size :: (pRB: *ma_pcm_rb) -> ma_uint32 #foreign miniaudio;
ma_pcm_rb_get_subbuffer_stride :: (pRB: *ma_pcm_rb) -> ma_uint32 #foreign miniaudio;
ma_pcm_rb_get_subbuffer_offset :: (pRB: *ma_pcm_rb, subbufferIndex: ma_uint32) -> ma_uint32 #foreign miniaudio;
ma_pcm_rb_get_subbuffer_ptr :: (pRB: *ma_pcm_rb, subbufferIndex: ma_uint32, pBuffer: *void) -> *void #foreign miniaudio;
ma_pcm_rb_get_format :: (pRB: *ma_pcm_rb) -> ma_format #foreign miniaudio;
ma_pcm_rb_get_channels :: (pRB: *ma_pcm_rb) -> ma_uint32 #foreign miniaudio;
ma_pcm_rb_get_sample_rate :: (pRB: *ma_pcm_rb) -> ma_uint32 #foreign miniaudio;
ma_pcm_rb_set_sample_rate :: (pRB: *ma_pcm_rb, sampleRate: ma_uint32) -> void #foreign miniaudio;

/*
The idea of the duplex ring buffer is to act as the intermediary buffer when running two asynchronous devices in a duplex set up. The
capture device writes to it, and then a playback device reads from it.

At the moment this is just a simple naive implementation, but in the future I want to implement some dynamic resampling to seamlessly
handle desyncs. Note that the API is work in progress and may change at any time in any version.

The size of the buffer is based on the capture side since that's what'll be written to the buffer. It is based on the capture period size
in frames. The internal sample rate of the capture device is also needed in order to calculate the size.
*/
ma_duplex_rb :: struct {
    rb: ma_pcm_rb;
}

ma_duplex_rb_init :: (captureFormat: ma_format, captureChannels: ma_uint32, sampleRate: ma_uint32, captureInternalSampleRate: ma_uint32, captureInternalPeriodSizeInFrames: ma_uint32, pAllocationCallbacks: *ma_allocation_callbacks, pRB: *ma_duplex_rb) -> ma_result #foreign miniaudio;
ma_duplex_rb_uninit :: (pRB: *ma_duplex_rb) -> ma_result #foreign miniaudio;

/************************************************************************************************************************************************************

Miscellaneous Helpers

************************************************************************************************************************************************************/
/*
Retrieves a human readable description of the given result code.
*/
ma_result_description :: (result: ma_result) -> *u8 #foreign miniaudio;

/*
malloc()
*/
ma_malloc :: (sz: u64, pAllocationCallbacks: *ma_allocation_callbacks) -> *void #foreign miniaudio;

/*
calloc()
*/
ma_calloc :: (sz: u64, pAllocationCallbacks: *ma_allocation_callbacks) -> *void #foreign miniaudio;

/*
realloc()
*/
ma_realloc :: (p: *void, sz: u64, pAllocationCallbacks: *ma_allocation_callbacks) -> *void #foreign miniaudio;

/*
free()
*/
ma_free :: (p: *void, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Performs an aligned malloc, with the assumption that the alignment is a power of 2.
*/
ma_aligned_malloc :: (sz: u64, alignment: u64, pAllocationCallbacks: *ma_allocation_callbacks) -> *void #foreign miniaudio;

/*
Free's an aligned malloc'd buffer.
*/
ma_aligned_free :: (p: *void, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Retrieves a friendly name for a format.
*/
ma_get_format_name :: (format: ma_format) -> *u8 #foreign miniaudio;

/*
Blends two frames in floating point format.
*/
ma_blend_f32 :: (pOut: *float, pInA: *float, pInB: *float, factor: float, channels: ma_uint32) -> void #foreign miniaudio;

/*
Retrieves the size of a sample in bytes for the given format.

This API is efficient and is implemented using a lookup table.

Thread Safety: SAFE
This API is pure.
*/
ma_get_bytes_per_sample :: (format: ma_format) -> ma_uint32 #foreign miniaudio;

/*
Converts a log level to a string.
*/
ma_log_level_to_string :: (logLevel: ma_uint32) -> *u8 #foreign miniaudio;

/************************************************************************************************************************************************************

Synchronization

************************************************************************************************************************************************************/
/*
Locks a spinlock.
*/
ma_spinlock_lock :: (pSpinlock: *ma_spinlock) -> ma_result #foreign miniaudio;

/*
Locks a spinlock, but does not yield() when looping.
*/
ma_spinlock_lock_noyield :: (pSpinlock: *ma_spinlock) -> ma_result #foreign miniaudio;

/*
Unlocks a spinlock.
*/
ma_spinlock_unlock :: (pSpinlock: *ma_spinlock) -> ma_result #foreign miniaudio;

/*
Creates a mutex.

A mutex must be created from a valid context. A mutex is initially unlocked.
*/
ma_mutex_init :: (pMutex: *ma_mutex) -> ma_result #foreign miniaudio;

/*
Deletes a mutex.
*/
ma_mutex_uninit :: (pMutex: *ma_mutex) -> void #foreign miniaudio;

/*
Locks a mutex with an infinite timeout.
*/
ma_mutex_lock :: (pMutex: *ma_mutex) -> void #foreign miniaudio;

/*
Unlocks a mutex.
*/
ma_mutex_unlock :: (pMutex: *ma_mutex) -> void #foreign miniaudio;

/*
Initializes an auto-reset event.
*/
ma_event_init :: (pEvent: *ma_event) -> ma_result #foreign miniaudio;

/*
Uninitializes an auto-reset event.
*/
ma_event_uninit :: (pEvent: *ma_event) -> void #foreign miniaudio;

/*
Waits for the specified auto-reset event to become signalled.
*/
ma_event_wait :: (pEvent: *ma_event) -> ma_result #foreign miniaudio;

/*
Signals the specified auto-reset event.
*/
ma_event_signal :: (pEvent: *ma_event) -> ma_result #foreign miniaudio;

ma_semaphore_init :: (initialValue: s32, pSemaphore: *ma_semaphore) -> ma_result #foreign miniaudio;
ma_semaphore_uninit :: (pSemaphore: *ma_semaphore) -> void #foreign miniaudio;
ma_semaphore_wait :: (pSemaphore: *ma_semaphore) -> ma_result #foreign miniaudio;
ma_semaphore_release :: (pSemaphore: *ma_semaphore) -> ma_result #foreign miniaudio;

/*
Fence
=====
This locks while the counter is larger than 0. Counter can be incremented and decremented by any
thread, but care needs to be taken when waiting. It is possible for one thread to acquire the
fence just as another thread returns from ma_fence_wait().

The idea behind a fence is to allow you to wait for a group of operations to complete. When an
operation starts, the counter is incremented which locks the fence. When the operation completes,
the fence will be released which decrements the counter. ma_fence_wait() will block until the
counter hits zero.

If threading is disabled, ma_fence_wait() will spin on the counter.
*/
ma_fence :: struct {
    e:       ma_event;

    counter: ma_uint32;
}

ma_fence_init :: (pFence: *ma_fence) -> ma_result #foreign miniaudio;
ma_fence_uninit :: (pFence: *ma_fence) -> void #foreign miniaudio;
ma_fence_acquire :: (pFence: *ma_fence) -> ma_result #foreign miniaudio;
ma_fence_release :: (pFence: *ma_fence) -> ma_result #foreign miniaudio;
ma_fence_wait :: (pFence: *ma_fence) -> ma_result #foreign miniaudio;

/*
Notification callback for asynchronous operations.
*/
ma_async_notification :: void;

ma_async_notification_callbacks :: struct {
    onSignal: #type (pNotification: *ma_async_notification) -> void #c_call;
}

ma_async_notification_signal :: (pNotification: *ma_async_notification) -> ma_result #foreign miniaudio;

/*
Simple polling notification.

This just sets a variable when the notification has been signalled which is then polled with ma_async_notification_poll_is_signalled()
*/
ma_async_notification_poll :: struct {
    cb:        ma_async_notification_callbacks;
    signalled: ma_bool32;
}

ma_async_notification_poll_init :: (pNotificationPoll: *ma_async_notification_poll) -> ma_result #foreign miniaudio;
ma_async_notification_poll_is_signalled :: (pNotificationPoll: *ma_async_notification_poll) -> ma_bool32 #foreign miniaudio;

/*
Event Notification

This uses an ma_event. If threading is disabled (MA_NO_THREADING), initialization will fail.
*/
ma_async_notification_event :: struct {
    cb: ma_async_notification_callbacks;

    e:  ma_event;
}

ma_async_notification_event_init :: (pNotificationEvent: *ma_async_notification_event) -> ma_result #foreign miniaudio;
ma_async_notification_event_uninit :: (pNotificationEvent: *ma_async_notification_event) -> ma_result #foreign miniaudio;
ma_async_notification_event_wait :: (pNotificationEvent: *ma_async_notification_event) -> ma_result #foreign miniaudio;
ma_async_notification_event_signal :: (pNotificationEvent: *ma_async_notification_event) -> ma_result #foreign miniaudio;

/*
Slot Allocator
--------------
The idea of the slot allocator is for it to be used in conjunction with a fixed sized buffer. You use the slot allocator to allocate an index that can be used
as the insertion point for an object.

Slots are reference counted to help mitigate the ABA problem in the lock-free queue we use for tracking jobs.

The slot index is stored in the low 32 bits. The reference counter is stored in the high 32 bits:

+-----------------+-----------------+
| 32 Bits         | 32 Bits         |
+-----------------+-----------------+
| Reference Count | Slot Index      |
+-----------------+-----------------+
*/
ma_slot_allocator_config :: struct {
    capacity: ma_uint32; /* The number of slots to make available. */
}

ma_slot_allocator_config_init :: (capacity: ma_uint32) -> ma_slot_allocator_config #foreign miniaudio;

ma_slot_allocator_group :: struct {
    bitfield: ma_uint32; /* Must be used atomically because the allocation and freeing routines need to make copies of this which must never be optimized away by the compiler. */
}

ma_slot_allocator :: struct {
    pGroups:   *ma_slot_allocator_group; /* Slots are grouped in chunks of 32. */
    pSlots:    *ma_uint32; /* 32 bits for reference counting for ABA mitigation. */
    count:     ma_uint32; /* Allocation count. */
    capacity:  ma_uint32;

    /* Memory management. */
    _ownsHeap: ma_bool32;
    _pHeap:    *void;
}

ma_slot_allocator_get_heap_size :: (pConfig: *ma_slot_allocator_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_slot_allocator_init_preallocated :: (pConfig: *ma_slot_allocator_config, pHeap: *void, pAllocator: *ma_slot_allocator) -> ma_result #foreign miniaudio;
ma_slot_allocator_init :: (pConfig: *ma_slot_allocator_config, pAllocationCallbacks: *ma_allocation_callbacks, pAllocator: *ma_slot_allocator) -> ma_result #foreign miniaudio;
ma_slot_allocator_uninit :: (pAllocator: *ma_slot_allocator, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_slot_allocator_alloc :: (pAllocator: *ma_slot_allocator, pSlot: *ma_uint64) -> ma_result #foreign miniaudio;
ma_slot_allocator_free :: (pAllocator: *ma_slot_allocator, slot: ma_uint64) -> ma_result #foreign miniaudio;

/*
Callback for processing a job. Each job type will have their own processing callback which will be
called by ma_job_process().
*/
ma_job_proc :: #type (pJob: *ma_job) -> ma_result #c_call;

/* When a job type is added here an callback needs to be added go "g_jobVTable" in the implementation section. */
ma_job_type :: enum u32 {
    QUIT                                   :: 0;
    CUSTOM                                 :: 1;

    RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE :: 2;
    RESOURCE_MANAGER_FREE_DATA_BUFFER_NODE :: 3;
    RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE :: 4;
    RESOURCE_MANAGER_LOAD_DATA_BUFFER      :: 5;
    RESOURCE_MANAGER_FREE_DATA_BUFFER      :: 6;
    RESOURCE_MANAGER_LOAD_DATA_STREAM      :: 7;
    RESOURCE_MANAGER_FREE_DATA_STREAM      :: 8;
    RESOURCE_MANAGER_PAGE_DATA_STREAM      :: 9;
    RESOURCE_MANAGER_SEEK_DATA_STREAM      :: 10;

    DEVICE_AAUDIO_REROUTE                  :: 11;

    COUNT                                  :: 12;

    MA_JOB_TYPE_QUIT                                   :: QUIT;
    MA_JOB_TYPE_CUSTOM                                 :: CUSTOM;

    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE :: RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE;
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER_NODE :: RESOURCE_MANAGER_FREE_DATA_BUFFER_NODE;
    MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE :: RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE;
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER      :: RESOURCE_MANAGER_LOAD_DATA_BUFFER;
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER      :: RESOURCE_MANAGER_FREE_DATA_BUFFER;
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_STREAM      :: RESOURCE_MANAGER_LOAD_DATA_STREAM;
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_STREAM      :: RESOURCE_MANAGER_FREE_DATA_STREAM;
    MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_STREAM      :: RESOURCE_MANAGER_PAGE_DATA_STREAM;
    MA_JOB_TYPE_RESOURCE_MANAGER_SEEK_DATA_STREAM      :: RESOURCE_MANAGER_SEEK_DATA_STREAM;

    MA_JOB_TYPE_DEVICE_AAUDIO_REROUTE                  :: DEVICE_AAUDIO_REROUTE;

    MA_JOB_TYPE_COUNT                                  :: COUNT;
}

ma_job :: struct {
    toc:   union {
        breakup:    struct {
            code:     ma_uint16; /* Job type. */
            slot:     ma_uint16; /* Index into a ma_slot_allocator. */
            refcount: ma_uint32;
        };

        allocation: ma_uint64;
    }; /* 8 bytes. We encode the job code into the slot allocation data to save space. */

    next:  ma_uint64; /* refcount + slot for the next item. Does not include the job code. */
    order: ma_uint32; /* Execution order. Used to create a data dependency and ensure a job is executed in order. Usage is contextual depending on the job type. */

    data:  union {
        custom:          struct {
            proc:  ma_job_proc;
            data0: ma_uintptr;
            data1: ma_uintptr;
        };

        resourceManager: union {
            loadDataBufferNode: struct {
                pResourceManager:  *void; /*ma_resource_manager**/
                pDataBufferNode:   *void; /*ma_resource_manager_data_buffer_node**/
                pFilePath:         *u8;
                pFilePathW:        *s32;
                flags:             ma_uint32; /* Resource manager data source flags that were used when initializing the data buffer. */
                pInitNotification: *ma_async_notification; /* Signalled when the data buffer has been initialized and the format/channels/rate can be retrieved. */
                pDoneNotification: *ma_async_notification; /* Signalled when the data buffer has been fully decoded. Will be passed through to MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE when decoding. */
                pInitFence:        *ma_fence; /* Released when initialization of the decoder is complete. */
                pDoneFence:        *ma_fence; /* Released if initialization of the decoder fails. Passed through to PAGE_DATA_BUFFER_NODE untouched if init is successful. */
            };

            freeDataBufferNode: struct {
                pResourceManager:  *void; /*ma_resource_manager**/
                pDataBufferNode:   *void; /*ma_resource_manager_data_buffer_node**/
                pDoneNotification: *ma_async_notification;
                pDoneFence:        *ma_fence;
            };

            pageDataBufferNode: struct {
                pResourceManager:  *void; /*ma_resource_manager**/
                pDataBufferNode:   *void; /*ma_resource_manager_data_buffer_node**/
                pDecoder:          *void; /*ma_decoder**/
                pDoneNotification: *ma_async_notification; /* Signalled when the data buffer has been fully decoded. */
                pDoneFence:        *ma_fence; /* Passed through from LOAD_DATA_BUFFER_NODE and released when the data buffer completes decoding or an error occurs. */
            };

            loadDataBuffer:     struct {
                pDataBuffer:             *void; /*ma_resource_manager_data_buffer**/
                pInitNotification:       *ma_async_notification; /* Signalled when the data buffer has been initialized and the format/channels/rate can be retrieved. */
                pDoneNotification:       *ma_async_notification; /* Signalled when the data buffer has been fully decoded. */
                pInitFence:              *ma_fence; /* Released when the data buffer has been initialized and the format/channels/rate can be retrieved. */
                pDoneFence:              *ma_fence; /* Released when the data buffer has been fully decoded. */
                rangeBegInPCMFrames:     ma_uint64;
                rangeEndInPCMFrames:     ma_uint64;
                loopPointBegInPCMFrames: ma_uint64;
                loopPointEndInPCMFrames: ma_uint64;
                isLooping:               ma_uint32;
            };

            freeDataBuffer:     struct {
                pDataBuffer:       *void; /*ma_resource_manager_data_buffer**/
                pDoneNotification: *ma_async_notification;
                pDoneFence:        *ma_fence;
            };

            loadDataStream:     struct {
                pDataStream:       *void; /*ma_resource_manager_data_stream**/
                pFilePath:         *u8; /* Allocated when the job is posted, freed by the job thread after loading. */
                pFilePathW:        *s32; /* ^ As above ^. Only used if pFilePath is NULL. */
                initialSeekPoint:  ma_uint64;
                pInitNotification: *ma_async_notification; /* Signalled after the first two pages have been decoded and frames can be read from the stream. */
                pInitFence:        *ma_fence;
            };

            freeDataStream:     struct {
                pDataStream:       *void; /*ma_resource_manager_data_stream**/
                pDoneNotification: *ma_async_notification;
                pDoneFence:        *ma_fence;
            };

            pageDataStream:     struct {
                pDataStream: *void; /*ma_resource_manager_data_stream**/
                pageIndex:   ma_uint32; /* The index of the page to decode into. */
            };

            seekDataStream:     struct {
                pDataStream: *void; /*ma_resource_manager_data_stream**/
                frameIndex:  ma_uint64;
            };
        };

        device:          union {
            aaudio: union {
                reroute: struct {
                    pDevice:    *void; /*ma_device**/
                    deviceType: ma_uint32; /*ma_device_type*/
                };
            };
        };
    };
}

ma_job_init :: (code: ma_uint16) -> ma_job #foreign miniaudio;
ma_job_process :: (pJob: *ma_job) -> ma_result #foreign miniaudio;

/*
When set, ma_job_queue_next() will not wait and no semaphore will be signaled in
ma_job_queue_post(). ma_job_queue_next() will return MA_NO_DATA_AVAILABLE if nothing is available.

This flag should always be used for platforms that do not support multithreading.
*/
ma_job_queue_flags :: enum u32 {
    MA_JOB_QUEUE_FLAG_NON_BLOCKING :: 1;
}

ma_job_queue_config :: struct {
    flags:    ma_uint32;
    capacity: ma_uint32; /* The maximum number of jobs that can fit in the queue at a time. */
}

ma_job_queue_config_init :: (flags: ma_uint32, capacity: ma_uint32) -> ma_job_queue_config #foreign miniaudio;

ma_job_queue :: struct {
    flags:     ma_uint32; /* Flags passed in at initialization time. */
    capacity:  ma_uint32; /* The maximum number of jobs that can fit in the queue at a time. Set by the config. */
    head:      ma_uint64; /* The first item in the list. Required for removing from the top of the list. */
    tail:      ma_uint64; /* The last item in the list. Required for appending to the end of the list. */

    sem:       ma_semaphore; /* Only used when MA_JOB_QUEUE_FLAG_NON_BLOCKING is unset. */

    allocator: ma_slot_allocator;
    pJobs:     *ma_job;

    lock:      ma_spinlock;

    /* Memory management. */
    _pHeap:    *void;
    _ownsHeap: ma_bool32;
}

ma_job_queue_get_heap_size :: (pConfig: *ma_job_queue_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_job_queue_init_preallocated :: (pConfig: *ma_job_queue_config, pHeap: *void, pQueue: *ma_job_queue) -> ma_result #foreign miniaudio;
ma_job_queue_init :: (pConfig: *ma_job_queue_config, pAllocationCallbacks: *ma_allocation_callbacks, pQueue: *ma_job_queue) -> ma_result #foreign miniaudio;
ma_job_queue_uninit :: (pQueue: *ma_job_queue, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_job_queue_post :: (pQueue: *ma_job_queue, pJob: *ma_job) -> ma_result #foreign miniaudio;
ma_job_queue_next :: (pQueue: *ma_job_queue, pJob: *ma_job) -> ma_result #foreign miniaudio;

ma_device_state :: enum u32 {
    uninitialized :: 0;
    stopped       :: 1;
    started       :: 2;
    starting      :: 3;
    stopping      :: 4;

    ma_device_state_uninitialized :: uninitialized;
    ma_device_state_stopped       :: stopped;
    ma_device_state_started       :: started;
    ma_device_state_starting      :: starting;
    ma_device_state_stopping      :: stopping;
}

ma_atomic_device_state :: struct {
    value: ma_device_state;
}

/* Backend enums must be in priority order. */
ma_backend :: enum u32 {
    wasapi     :: 0;
    dsound     :: 1;
    winmm      :: 2;
    coreaudio  :: 3;
    sndio      :: 4;
    audio4     :: 5;
    oss        :: 6;
    pulseaudio :: 7;
    alsa       :: 8;
    jack       :: 9;
    aaudio     :: 10;
    opensl     :: 11;
    webaudio   :: 12;
    custom     :: 13;
    _null      :: 14;

    ma_backend_wasapi     :: wasapi;
    ma_backend_dsound     :: dsound;
    ma_backend_winmm      :: winmm;
    ma_backend_coreaudio  :: coreaudio;
    ma_backend_sndio      :: sndio;
    ma_backend_audio4     :: audio4;
    ma_backend_oss        :: oss;
    ma_backend_pulseaudio :: pulseaudio;
    ma_backend_alsa       :: alsa;
    ma_backend_jack       :: jack;
    ma_backend_aaudio     :: aaudio;
    ma_backend_opensl     :: opensl;
    ma_backend_webaudio   :: webaudio;
    ma_backend_custom     :: custom;
    ma_backend_null       :: _null;
}

/*
Device job thread. This is used by backends that require asynchronous processing of certain
operations. It is not used by all backends.

The device job thread is made up of a thread and a job queue. You can post a job to the thread with
ma_device_job_thread_post(). The thread will do the processing of the job.
*/
ma_device_job_thread_config :: struct {
    noThread:         ma_bool32; /* Set this to true if you want to process jobs yourself. */
    jobQueueCapacity: ma_uint32;
    jobQueueFlags:    ma_uint32;
}

ma_device_job_thread_config_init :: () -> ma_device_job_thread_config #foreign miniaudio;

ma_device_job_thread :: struct {
    thread:     ma_thread;
    jobQueue:   ma_job_queue;
    _hasThread: ma_bool32;
}

ma_device_job_thread_init :: (pConfig: *ma_device_job_thread_config, pAllocationCallbacks: *ma_allocation_callbacks, pJobThread: *ma_device_job_thread) -> ma_result #foreign miniaudio;
ma_device_job_thread_uninit :: (pJobThread: *ma_device_job_thread, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_device_job_thread_post :: (pJobThread: *ma_device_job_thread, pJob: *ma_job) -> ma_result #foreign miniaudio;
ma_device_job_thread_next :: (pJobThread: *ma_device_job_thread, pJob: *ma_job) -> ma_result #foreign miniaudio;

/* Device notification types. */
ma_device_notification_type :: enum u32 {
    started            :: 0;
    stopped            :: 1;
    rerouted           :: 2;
    interruption_began :: 3;
    interruption_ended :: 4;
    unlocked           :: 5;

    ma_device_notification_type_started            :: started;
    ma_device_notification_type_stopped            :: stopped;
    ma_device_notification_type_rerouted           :: rerouted;
    ma_device_notification_type_interruption_began :: interruption_began;
    ma_device_notification_type_interruption_ended :: interruption_ended;
    ma_device_notification_type_unlocked           :: unlocked;
}

ma_device_notification :: struct {
    pDevice: *ma_device;
    type:    ma_device_notification_type;
    data:    union {
        started:      struct {
            _unused: s32;
        };

        stopped:      struct {
            _unused: s32;
        };

        rerouted:     struct {
            _unused: s32;
        };

        interruption: struct {
            _unused: s32;
        };
    };
}

/*
The notification callback for when the application should be notified of a change to the device.

This callback is used for notifying the application of changes such as when the device has started,
stopped, rerouted or an interruption has occurred. Note that not all backends will post all
notification types. For example, some backends will perform automatic stream routing without any
kind of notification to the host program which means miniaudio will never know about it and will
never be able to fire the rerouted notification. You should keep this in mind when designing your
program.

The stopped notification will *not* get fired when a device is rerouted.


Parameters
----------
pNotification (in)
A pointer to a structure containing information about the event. Use the `pDevice` member of
this object to retrieve the relevant device. The `type` member can be used to discriminate
against each of the notification types.


Remarks
-------
Do not restart or uninitialize the device from the callback.

Not all notifications will be triggered by all backends, however the started and stopped events
should be reliable for all backends. Some backends do not have a good way to detect device
stoppages due to unplugging the device which may result in the stopped callback not getting
fired. This has been observed with at least one BSD variant.

The rerouted notification is fired *after* the reroute has occurred. The stopped notification will
*not* get fired when a device is rerouted. The following backends are known to do automatic stream
rerouting, but do not have a way to be notified of the change:

* DirectSound

The interruption notifications are used on mobile platforms for detecting when audio is interrupted
due to things like an incoming phone call. Currently this is only implemented on iOS. None of the
Android backends will report this notification.
*/
ma_device_notification_proc :: #type (pNotification: *ma_device_notification) -> void #c_call;

/*
The callback for processing audio data from the device.

The data callback is fired by miniaudio whenever the device needs to have more data delivered to a playback device, or when a capture device has some data
available. This is called as soon as the backend asks for more data which means it may be called with inconsistent frame counts. You cannot assume the
callback will be fired with a consistent frame count.


Parameters
----------
pDevice (in)
A pointer to the relevant device.

pOutput (out)
A pointer to the output buffer that will receive audio data that will later be played back through the speakers. This will be non-null for a playback or
full-duplex device and null for a capture and loopback device.

pInput (in)
A pointer to the buffer containing input data from a recording device. This will be non-null for a capture, full-duplex or loopback device and null for a
playback device.

frameCount (in)
The number of PCM frames to process. Note that this will not necessarily be equal to what you requested when you initialized the device. The
`periodSizeInFrames` and `periodSizeInMilliseconds` members of the device config are just hints, and are not necessarily exactly what you'll get. You must
not assume this will always be the same value each time the callback is fired.


Remarks
-------
You cannot stop and start the device from inside the callback or else you'll get a deadlock. You must also not uninitialize the device from inside the
callback. The following APIs cannot be called from inside the callback:

ma_device_init()
ma_device_init_ex()
ma_device_uninit()
ma_device_start()
ma_device_stop()

The proper way to stop the device is to call `ma_device_stop()` from a different thread, normally the main application thread.
*/
ma_device_data_proc :: #type (pDevice: *ma_device, pOutput: *void, pInput: *void, frameCount: ma_uint32) -> void #c_call;

/*
DEPRECATED. Use ma_device_notification_proc instead.

The callback for when the device has been stopped.

This will be called when the device is stopped explicitly with `ma_device_stop()` and also called implicitly when the device is stopped through external forces
such as being unplugged or an internal error occurring.


Parameters
----------
pDevice (in)
A pointer to the device that has just stopped.


Remarks
-------
Do not restart or uninitialize the device from the callback.
*/
ma_stop_proc :: #type (pDevice: *ma_device) -> void #c_call;

ma_device_type :: enum u32 {
    playback :: 1;
    capture  :: 2;
    duplex   :: 3;
    loopback :: 4;

    ma_device_type_playback :: playback;
    ma_device_type_capture  :: capture;
    ma_device_type_duplex   :: duplex;
    ma_device_type_loopback :: loopback;
}

ma_share_mode :: enum u32 {
    shared    :: 0;
    exclusive :: 1;

    ma_share_mode_shared    :: shared;
    ma_share_mode_exclusive :: exclusive;
}

/* iOS/tvOS/watchOS session categories. */
ma_ios_session_category :: enum u32 {
    default         :: 0;
    none            :: 1;
    ambient         :: 2;
    solo_ambient    :: 3;
    playback        :: 4;
    record          :: 5;
    play_and_record :: 6;
    multi_route     :: 7;

    ma_ios_session_category_default         :: default;
    ma_ios_session_category_none            :: none;
    ma_ios_session_category_ambient         :: ambient;
    ma_ios_session_category_solo_ambient    :: solo_ambient;
    ma_ios_session_category_playback        :: playback;
    ma_ios_session_category_record          :: record;
    ma_ios_session_category_play_and_record :: play_and_record;
    ma_ios_session_category_multi_route     :: multi_route;
}

/* iOS/tvOS/watchOS session category options */
ma_ios_session_category_option :: enum u32 {
    mix_with_others                            :: 1;
    duck_others                                :: 2;
    allow_bluetooth                            :: 4;
    default_to_speaker                         :: 8;
    interrupt_spoken_audio_and_mix_with_others :: 17;
    allow_bluetooth_a2dp                       :: 32;
    allow_air_play                             :: 64;

    ma_ios_session_category_option_mix_with_others                            :: mix_with_others;
    ma_ios_session_category_option_duck_others                                :: duck_others;
    ma_ios_session_category_option_allow_bluetooth                            :: allow_bluetooth;
    ma_ios_session_category_option_default_to_speaker                         :: default_to_speaker;
    ma_ios_session_category_option_interrupt_spoken_audio_and_mix_with_others :: interrupt_spoken_audio_and_mix_with_others;
    ma_ios_session_category_option_allow_bluetooth_a2dp                       :: allow_bluetooth_a2dp;
    ma_ios_session_category_option_allow_air_play                             :: allow_air_play;
}

/* OpenSL stream types. */
ma_opensl_stream_type :: enum u32 {
    default      :: 0;
    voice        :: 1;
    system       :: 2;
    ring         :: 3;
    media        :: 4;
    alarm        :: 5;
    notification :: 6;

    ma_opensl_stream_type_default      :: default;
    ma_opensl_stream_type_voice        :: voice;
    ma_opensl_stream_type_system       :: system;
    ma_opensl_stream_type_ring         :: ring;
    ma_opensl_stream_type_media        :: media;
    ma_opensl_stream_type_alarm        :: alarm;
    ma_opensl_stream_type_notification :: notification;
}

/* OpenSL recording presets. */
ma_opensl_recording_preset :: enum u32 {
    default             :: 0;
    generic             :: 1;
    camcorder           :: 2;
    voice_recognition   :: 3;
    voice_communication :: 4;
    voice_unprocessed   :: 5;

    ma_opensl_recording_preset_default             :: default;
    ma_opensl_recording_preset_generic             :: generic;
    ma_opensl_recording_preset_camcorder           :: camcorder;
    ma_opensl_recording_preset_voice_recognition   :: voice_recognition;
    ma_opensl_recording_preset_voice_communication :: voice_communication;
    ma_opensl_recording_preset_voice_unprocessed   :: voice_unprocessed;
}

/* WASAPI audio thread priority characteristics. */
ma_wasapi_usage :: enum u32 {
    default   :: 0;
    games     :: 1;
    pro_audio :: 2;

    ma_wasapi_usage_default   :: default;
    ma_wasapi_usage_games     :: games;
    ma_wasapi_usage_pro_audio :: pro_audio;
}

/* AAudio usage types. */
ma_aaudio_usage :: enum u32 {
    default                        :: 0;
    media                          :: 1;
    voice_communication            :: 2;
    voice_communication_signalling :: 3;
    alarm                          :: 4;
    notification                   :: 5;
    notification_ringtone          :: 6;
    notification_event             :: 7;
    assistance_accessibility       :: 8;
    assistance_navigation_guidance :: 9;
    assistance_sonification        :: 10;
    game                           :: 11;
    assitant                       :: 12;
    emergency                      :: 13;
    safety                         :: 14;
    vehicle_status                 :: 15;
    announcement                   :: 16;

    ma_aaudio_usage_default                        :: default;
    ma_aaudio_usage_media                          :: media;
    ma_aaudio_usage_voice_communication            :: voice_communication;
    ma_aaudio_usage_voice_communication_signalling :: voice_communication_signalling;
    ma_aaudio_usage_alarm                          :: alarm;
    ma_aaudio_usage_notification                   :: notification;
    ma_aaudio_usage_notification_ringtone          :: notification_ringtone;
    ma_aaudio_usage_notification_event             :: notification_event;
    ma_aaudio_usage_assistance_accessibility       :: assistance_accessibility;
    ma_aaudio_usage_assistance_navigation_guidance :: assistance_navigation_guidance;
    ma_aaudio_usage_assistance_sonification        :: assistance_sonification;
    ma_aaudio_usage_game                           :: game;
    ma_aaudio_usage_assitant                       :: assitant;
    ma_aaudio_usage_emergency                      :: emergency;
    ma_aaudio_usage_safety                         :: safety;
    ma_aaudio_usage_vehicle_status                 :: vehicle_status;
    ma_aaudio_usage_announcement                   :: announcement;
}

/* AAudio content types. */
ma_aaudio_content_type :: enum u32 {
    default      :: 0;
    speech       :: 1;
    music        :: 2;
    movie        :: 3;
    sonification :: 4;

    ma_aaudio_content_type_default      :: default;
    ma_aaudio_content_type_speech       :: speech;
    ma_aaudio_content_type_music        :: music;
    ma_aaudio_content_type_movie        :: movie;
    ma_aaudio_content_type_sonification :: sonification;
}

/* AAudio input presets. */
ma_aaudio_input_preset :: enum u32 {
    default             :: 0;
    generic             :: 1;
    camcorder           :: 2;
    voice_recognition   :: 3;
    voice_communication :: 4;
    unprocessed         :: 5;
    voice_performance   :: 6;

    ma_aaudio_input_preset_default             :: default;
    ma_aaudio_input_preset_generic             :: generic;
    ma_aaudio_input_preset_camcorder           :: camcorder;
    ma_aaudio_input_preset_voice_recognition   :: voice_recognition;
    ma_aaudio_input_preset_voice_communication :: voice_communication;
    ma_aaudio_input_preset_unprocessed         :: unprocessed;
    ma_aaudio_input_preset_voice_performance   :: voice_performance;
}

ma_aaudio_allowed_capture_policy :: enum u32 {
    default   :: 0;
    by_all    :: 1;
    by_system :: 2;
    by_none   :: 3;

    ma_aaudio_allow_capture_default   :: default;
    ma_aaudio_allow_capture_by_all    :: by_all;
    ma_aaudio_allow_capture_by_system :: by_system;
    ma_aaudio_allow_capture_by_none   :: by_none;
}

ma_timer :: union {
    counter:  ma_int64;
    counterD: float64;
}

ma_device_id :: union {
    wasapi:      [64] ma_wchar_win32; /* WASAPI uses a wchar_t string for identification. */
    dsound:      [16] ma_uint8; /* DirectSound uses a GUID for identification. */
    winmm:       ma_uint32; /* When creating a device, WinMM expects a Win32 UINT_PTR for device identification. In practice it's actually just a UINT. */
    alsa:        [256] u8; /* ALSA uses a name string for identification. */
    pulse:       [256] u8; /* PulseAudio uses a name string for identification. */
    jack:        s32; /* JACK always uses default devices. */
    coreaudio:   [256] u8; /* Core Audio uses a string for identification. */
    sndio:       [256] u8; /* "snd/0", etc. */
    audio4:      [256] u8; /* "/dev/audio", etc. */
    oss:         [64] u8; /* "dev/dsp0", etc. "dev/dsp" for the default device. */
    aaudio:      ma_int32; /* AAudio uses a 32-bit integer for identification. */
    opensl:      ma_uint32; /* OpenSL|ES uses a 32-bit unsigned integer for identification. */
    webaudio:    [32] u8; /* Web Audio always uses default devices for now, but if this changes it'll be a GUID. */
    custom:      union {
        i: s32;
        s: [256] u8;
        p: *void;
    }; /* The custom backend could be anything. Give them a few options. */

    nullbackend: s32; /* The null backend uses an integer for device IDs. */
}

ma_device_id_equal :: (pA: *ma_device_id, pB: *ma_device_id) -> ma_bool32 #foreign miniaudio;

ma_device_info :: struct {
    /* Basic info. This is the only information guaranteed to be filled in during device enumeration. */
    id:                    ma_device_id;
    name:                  [256] u8; /* +1 for null terminator. */
    isDefault:             ma_bool32;

    nativeDataFormatCount: ma_uint32;
    nativeDataFormats:     [64] struct {
        format:     ma_format; /* Sample format. If set to ma_format_unknown, all sample formats are supported. */
        channels:   ma_uint32; /* If set to 0, all channels are supported. */
        sampleRate: ma_uint32; /* If set to 0, all sample rates are supported. */
        flags:      ma_uint32; /* A combination of MA_DATA_FORMAT_FLAG_* flags. */
    }; /*ma_format_count * ma_standard_sample_rate_count * MA_MAX_CHANNELS*/
}

ma_device_config :: struct {
    deviceType:                ma_device_type;
    sampleRate:                ma_uint32;
    periodSizeInFrames:        ma_uint32;
    periodSizeInMilliseconds:  ma_uint32;
    periods:                   ma_uint32;
    performanceProfile:        ma_performance_profile;
    noPreSilencedOutputBuffer: ma_bool8; /* When set to true, the contents of the output buffer passed into the data callback will be left undefined rather than initialized to silence. */
    noClip:                    ma_bool8; /* When set to true, the contents of the output buffer passed into the data callback will not be clipped after returning. Only applies when the playback sample format is f32. */
    noDisableDenormals:        ma_bool8; /* Do not disable denormals when firing the data callback. */
    noFixedSizedCallback:      ma_bool8; /* Disables strict fixed-sized data callbacks. Setting this to true will result in the period size being treated only as a hint to the backend. This is an optimization for those who don't need fixed sized callbacks. */
    dataCallback:              ma_device_data_proc;
    notificationCallback:      ma_device_notification_proc;
    stopCallback:              ma_stop_proc;
    pUserData:                 *void;
    resampling:                ma_resampler_config;
    playback:                  struct {
        pDeviceID:                       *ma_device_id;
        format:                          ma_format;
        channels:                        ma_uint32;
        pChannelMap:                     *ma_channel;
        channelMixMode:                  ma_channel_mix_mode;
        calculateLFEFromSpatialChannels: ma_bool32; /* When an output LFE channel is present, but no input LFE, set to true to set the output LFE to the average of all spatial channels (LR, FR, etc.). Ignored when an input LFE is present. */
        shareMode:                       ma_share_mode;
    };

    capture:                   struct {
        pDeviceID:                       *ma_device_id;
        format:                          ma_format;
        channels:                        ma_uint32;
        pChannelMap:                     *ma_channel;
        channelMixMode:                  ma_channel_mix_mode;
        calculateLFEFromSpatialChannels: ma_bool32; /* When an output LFE channel is present, but no input LFE, set to true to set the output LFE to the average of all spatial channels (LR, FR, etc.). Ignored when an input LFE is present. */
        shareMode:                       ma_share_mode;
    };

    wasapi:                    struct {
        usage:                  ma_wasapi_usage; /* When configured, uses Avrt APIs to set the thread characteristics. */
        noAutoConvertSRC:       ma_bool8; /* When set to true, disables the use of AUDCLNT_STREAMFLAGS_AUTOCONVERTPCM. */
        noDefaultQualitySRC:    ma_bool8; /* When set to true, disables the use of AUDCLNT_STREAMFLAGS_SRC_DEFAULT_QUALITY. */
        noAutoStreamRouting:    ma_bool8; /* Disables automatic stream routing. */
        noHardwareOffloading:   ma_bool8; /* Disables WASAPI's hardware offloading feature. */
        loopbackProcessID:      ma_uint32; /* The process ID to include or exclude for loopback mode. Set to 0 to capture audio from all processes. Ignored when an explicit device ID is specified. */
        loopbackProcessExclude: ma_bool8; /* When set to true, excludes the process specified by loopbackProcessID. By default, the process will be included. */
    };

    alsa:                      struct {
        noMMap:         ma_bool32; /* Disables MMap mode. */
        noAutoFormat:   ma_bool32; /* Opens the ALSA device with SND_PCM_NO_AUTO_FORMAT. */
        noAutoChannels: ma_bool32; /* Opens the ALSA device with SND_PCM_NO_AUTO_CHANNELS. */
        noAutoResample: ma_bool32; /* Opens the ALSA device with SND_PCM_NO_AUTO_RESAMPLE. */
    };

    pulse:                     struct {
        pStreamNamePlayback: *u8;
        pStreamNameCapture:  *u8;
        channelMap:          s32;
    };

    coreaudio:                 struct {
        allowNominalSampleRateChange: ma_bool32; /* Desktop only. When enabled, allows changing of the sample rate at the operating system level. */
    };

    opensl:                    struct {
        streamType:                     ma_opensl_stream_type;
        recordingPreset:                ma_opensl_recording_preset;
        enableCompatibilityWorkarounds: ma_bool32;
    };

    aaudio:                    struct {
        usage:                          ma_aaudio_usage;
        contentType:                    ma_aaudio_content_type;
        inputPreset:                    ma_aaudio_input_preset;
        allowedCapturePolicy:           ma_aaudio_allowed_capture_policy;
        noAutoStartAfterReroute:        ma_bool32;
        enableCompatibilityWorkarounds: ma_bool32;
        allowSetBufferCapacity:         ma_bool32;
    };
}

/*
The callback for handling device enumeration. This is fired from `ma_context_enumerate_devices()`.


Parameters
----------
pContext (in)
A pointer to the context performing the enumeration.

deviceType (in)
The type of the device being enumerated. This will always be either `ma_device_type_playback` or `ma_device_type_capture`.

pInfo (in)
A pointer to a `ma_device_info` containing the ID and name of the enumerated device. Note that this will not include detailed information about the device,
only basic information (ID and name). The reason for this is that it would otherwise require opening the backend device to probe for the information which
is too inefficient.

pUserData (in)
The user data pointer passed into `ma_context_enumerate_devices()`.
*/
ma_enum_devices_callback_proc :: #type (pContext: *ma_context, deviceType: ma_device_type, pInfo: *ma_device_info, pUserData: *void) -> ma_bool32 #c_call;

/*
Describes some basic details about a playback or capture device.
*/
ma_device_descriptor :: struct {
    pDeviceID:                *ma_device_id;
    shareMode:                ma_share_mode;
    format:                   ma_format;
    channels:                 ma_uint32;
    sampleRate:               ma_uint32;
    channelMap:               [254] ma_channel;
    periodSizeInFrames:       ma_uint32;
    periodSizeInMilliseconds: ma_uint32;
    periodCount:              ma_uint32;
}

/*
These are the callbacks required to be implemented for a backend. These callbacks are grouped into two parts: context and device. There is one context
to many devices. A device is created from a context.

The general flow goes like this:

1) A context is created with `onContextInit()`
1a) Available devices can be enumerated with `onContextEnumerateDevices()` if required.
1b) Detailed information about a device can be queried with `onContextGetDeviceInfo()` if required.
2) A device is created from the context that was created in the first step using `onDeviceInit()`, and optionally a device ID that was
selected from device enumeration via `onContextEnumerateDevices()`.
3) A device is started or stopped with `onDeviceStart()` / `onDeviceStop()`
4) Data is delivered to and from the device by the backend. This is always done based on the native format returned by the prior call
to `onDeviceInit()`. Conversion between the device's native format and the format requested by the application will be handled by
miniaudio internally.

Initialization of the context is quite simple. You need to do any necessary initialization of internal objects and then output the
callbacks defined in this structure.

Once the context has been initialized you can initialize a device. Before doing so, however, the application may want to know which
physical devices are available. This is where `onContextEnumerateDevices()` comes in. This is fairly simple. For each device, fire the
given callback with, at a minimum, the basic information filled out in `ma_device_info`. When the callback returns `MA_FALSE`, enumeration
needs to stop and the `onContextEnumerateDevices()` function returns with a success code.

Detailed device information can be retrieved from a device ID using `onContextGetDeviceInfo()`. This takes as input the device type and ID,
and on output returns detailed information about the device in `ma_device_info`. The `onContextGetDeviceInfo()` callback must handle the
case when the device ID is NULL, in which case information about the default device needs to be retrieved.

Once the context has been created and the device ID retrieved (if using anything other than the default device), the device can be created.
This is a little bit more complicated than initialization of the context due to its more complicated configuration. When initializing a
device, a duplex device may be requested. This means a separate data format needs to be specified for both playback and capture. On input,
the data format is set to what the application wants. On output it's set to the native format which should match as closely as possible to
the requested format. The conversion between the format requested by the application and the device's native format will be handled
internally by miniaudio.

On input, if the sample format is set to `ma_format_unknown`, the backend is free to use whatever sample format it desires, so long as it's
supported by miniaudio. When the channel count is set to 0, the backend should use the device's native channel count. The same applies for
sample rate. For the channel map, the default should be used when `ma_channel_map_is_blank()` returns true (all channels set to
`MA_CHANNEL_NONE`). On input, the `periodSizeInFrames` or `periodSizeInMilliseconds` option should always be set. The backend should
inspect both of these variables. If `periodSizeInFrames` is set, it should take priority, otherwise it needs to be derived from the period
size in milliseconds (`periodSizeInMilliseconds`) and the sample rate, keeping in mind that the sample rate may be 0, in which case the
sample rate will need to be determined before calculating the period size in frames. On output, all members of the `ma_device_descriptor`
object should be set to a valid value, except for `periodSizeInMilliseconds` which is optional (`periodSizeInFrames` *must* be set).

Starting and stopping of the device is done with `onDeviceStart()` and `onDeviceStop()` and should be self-explanatory. If the backend uses
asynchronous reading and writing, `onDeviceStart()` and `onDeviceStop()` should always be implemented.

The handling of data delivery between the application and the device is the most complicated part of the process. To make this a bit
easier, some helper callbacks are available. If the backend uses a blocking read/write style of API, the `onDeviceRead()` and
`onDeviceWrite()` callbacks can optionally be implemented. These are blocking and work just like reading and writing from a file. If the
backend uses a callback for data delivery, that callback must call `ma_device_handle_backend_data_callback()` from within its callback.
This allows miniaudio to then process any necessary data conversion and then pass it to the miniaudio data callback.

If the backend requires absolute flexibility with its data delivery, it can optionally implement the `onDeviceDataLoop()` callback
which will allow it to implement the logic that will run on the audio thread. This is much more advanced and is completely optional.

The audio thread should run data delivery logic in a loop while `ma_device_get_state() == ma_device_state_started` and no errors have been
encountered. Do not start or stop the device here. That will be handled from outside the `onDeviceDataLoop()` callback.

The invocation of the `onDeviceDataLoop()` callback will be handled by miniaudio. When you start the device, miniaudio will fire this
callback. When the device is stopped, the `ma_device_get_state() == ma_device_state_started` condition will fail and the loop will be terminated
which will then fall through to the part that stops the device. For an example on how to implement the `onDeviceDataLoop()` callback,
look at `ma_device_audio_thread__default_read_write()`. Implement the `onDeviceDataLoopWakeup()` callback if you need a mechanism to
wake up the audio thread.

If the backend supports an optimized retrieval of device information from an initialized `ma_device` object, it should implement the
`onDeviceGetInfo()` callback. This is optional, in which case it will fall back to `onContextGetDeviceInfo()` which is less efficient.
*/
ma_backend_callbacks :: struct {
    onContextInit:             #type (pContext: *ma_context, pConfig: *ma_context_config, pCallbacks: *ma_backend_callbacks) -> ma_result #c_call;
    onContextUninit:           #type (pContext: *ma_context) -> ma_result #c_call;
    onContextEnumerateDevices: #type (pContext: *ma_context, callback: ma_enum_devices_callback_proc, pUserData: *void) -> ma_result #c_call;
    onContextGetDeviceInfo:    #type (pContext: *ma_context, deviceType: ma_device_type, pDeviceID: *ma_device_id, pDeviceInfo: *ma_device_info) -> ma_result #c_call;
    onDeviceInit:              #type (pDevice: *ma_device, pConfig: *ma_device_config, pDescriptorPlayback: *ma_device_descriptor, pDescriptorCapture: *ma_device_descriptor) -> ma_result #c_call;
    onDeviceUninit:            #type (pDevice: *ma_device) -> ma_result #c_call;
    onDeviceStart:             #type (pDevice: *ma_device) -> ma_result #c_call;
    onDeviceStop:              #type (pDevice: *ma_device) -> ma_result #c_call;
    onDeviceRead:              #type (pDevice: *ma_device, pFrames: *void, frameCount: ma_uint32, pFramesRead: *ma_uint32) -> ma_result #c_call;
    onDeviceWrite:             #type (pDevice: *ma_device, pFrames: *void, frameCount: ma_uint32, pFramesWritten: *ma_uint32) -> ma_result #c_call;
    onDeviceDataLoop:          #type (pDevice: *ma_device) -> ma_result #c_call;
    onDeviceDataLoopWakeup:    #type (pDevice: *ma_device) -> ma_result #c_call;
    onDeviceGetInfo:           #type (pDevice: *ma_device, type: ma_device_type, pDeviceInfo: *ma_device_info) -> ma_result #c_call;
}

ma_context_config :: struct {
    pLog:                *ma_log;
    threadPriority:      ma_thread_priority;
    threadStackSize:     u64;
    pUserData:           *void;
    allocationCallbacks: ma_allocation_callbacks;
    dsound:              struct {
        hWnd: ma_handle; /* HWND. Optional window handle to pass into SetCooperativeLevel(). Will default to the foreground window, and if that fails, the desktop window. */
    };

    alsa:                struct {
        useVerboseDeviceEnumeration: ma_bool32;
    };

    pulse:               struct {
        pApplicationName: *u8;
        pServerName:      *u8;
        tryAutoSpawn:     ma_bool32; /* Enables autospawning of the PulseAudio daemon if necessary. */
    };

    coreaudio:           struct {
        sessionCategory:          ma_ios_session_category;
        sessionCategoryOptions:   ma_uint32;
        noAudioSessionActivate:   ma_bool32; /* iOS only. When set to true, does not perform an explicit [[AVAudioSession sharedInstace] setActive:true] on initialization. */
        noAudioSessionDeactivate: ma_bool32; /* iOS only. When set to true, does not perform an explicit [[AVAudioSession sharedInstace] setActive:false] on uninitialization. */
    };

    jack:                struct {
        pClientName:    *u8;
        tryStartServer: ma_bool32;
    };

    custom:              ma_backend_callbacks;
}

/* WASAPI specific structure for some commands which must run on a common thread due to bugs in WASAPI. */
ma_context_command__wasapi :: struct {
    code:   s32;
    pEvent: *ma_event; /* This will be signalled when the event is complete. */
    data:   union {
        quit:               struct {
            _unused: s32;
        };

        createAudioClient:  struct {
            deviceType:           ma_device_type;
            pAudioClient:         *void;
            ppAudioClientService: **void;
            pResult:              *ma_result; /* The result from creating the audio client service. */
        };

        releaseAudioClient: struct {
            pDevice:    *ma_device;
            deviceType: ma_device_type;
        };
    };
}

ma_context :: struct {
    callbacks:               ma_backend_callbacks;
    backend:                 ma_backend; /* DirectSound, ALSA, etc. */
    pLog:                    *ma_log;
    log:                     ma_log; /* Only used if the log is owned by the context. The pLog member will be set to &log in this case. */
    threadPriority:          ma_thread_priority;
    threadStackSize:         u64;
    pUserData:               *void;
    allocationCallbacks:     ma_allocation_callbacks;
    deviceEnumLock:          ma_mutex; /* Used to make ma_context_get_devices() thread safe. */
    deviceInfoLock:          ma_mutex; /* Used to make ma_context_get_device_info() thread safe. */
    deviceInfoCapacity:      ma_uint32; /* Total capacity of pDeviceInfos. */
    playbackDeviceInfoCount: ma_uint32;
    captureDeviceInfoCount:  ma_uint32;
    pDeviceInfos:            *ma_device_info; /* Playback devices first, then capture. */

    union {
        coreaudio:    struct {
            hCoreFoundation:                   ma_handle;
            CFStringGetCString:                ma_proc;
            CFRelease:                         ma_proc;

            hCoreAudio:                        ma_handle;
            AudioObjectGetPropertyData:        ma_proc;
            AudioObjectGetPropertyDataSize:    ma_proc;
            AudioObjectSetPropertyData:        ma_proc;
            AudioObjectAddPropertyListener:    ma_proc;
            AudioObjectRemovePropertyListener: ma_proc;

            hAudioUnit:                        ma_handle; /* Could possibly be set to AudioToolbox on later versions of macOS. */
            AudioComponentFindNext:            ma_proc;
            AudioComponentInstanceDispose:     ma_proc;
            AudioComponentInstanceNew:         ma_proc;
            AudioOutputUnitStart:              ma_proc;
            AudioOutputUnitStop:               ma_proc;
            AudioUnitAddPropertyListener:      ma_proc;
            AudioUnitGetPropertyInfo:          ma_proc;
            AudioUnitGetProperty:              ma_proc;
            AudioUnitSetProperty:              ma_proc;
            AudioUnitInitialize:               ma_proc;
            AudioUnitRender:                   ma_proc;

            component:                         ma_ptr; /*AudioComponent*/
            noAudioSessionDeactivate:          ma_bool32; /* For tracking whether or not the iOS audio session should be explicitly deactivated. Set from the config in ma_context_init__coreaudio(). */
        };

        null_backend: struct {
            _unused: s32;
        };
    }

    union {
        posix:   struct {
            _unused: s32;
        };

        _unused: s32;
    }
}

ma_device :: struct {
    pContext:                  *ma_context;
    type:                      ma_device_type;
    sampleRate:                ma_uint32;
    state:                     ma_atomic_device_state; /* The state of the device is variable and can change at any time on any thread. Must be used atomically. */
    onData:                    ma_device_data_proc; /* Set once at initialization time and should not be changed after. */
    onNotification:            ma_device_notification_proc; /* Set once at initialization time and should not be changed after. */
    onStop:                    ma_stop_proc; /* DEPRECATED. Use the notification callback instead. Set once at initialization time and should not be changed after. */
    pUserData:                 *void; /* Application defined data. */
    startStopLock:             ma_mutex;
    wakeupEvent:               ma_event;
    startEvent:                ma_event;
    stopEvent:                 ma_event;
    thread:                    ma_thread;
    workResult:                ma_result; /* This is set by the worker thread after it's finished doing a job. */
    isOwnerOfContext:          ma_bool8; /* When set to true, uninitializing the device will also uninitialize the context. Set to true when NULL is passed into ma_device_init(). */
    noPreSilencedOutputBuffer: ma_bool8;
    noClip:                    ma_bool8;
    noDisableDenormals:        ma_bool8;
    noFixedSizedCallback:      ma_bool8;
    masterVolumeFactor:        ma_atomic_float; /* Linear 0..1. Can be read and written simultaneously by different threads. Must be used atomically. */
    duplexRB:                  ma_duplex_rb; /* Intermediary buffer for duplex device on asynchronous backends. */
    resampling:                struct {
        algorithm:        ma_resample_algorithm;
        pBackendVTable:   *ma_resampling_backend_vtable;
        pBackendUserData: *void;
        linear:           struct {
            lpfOrder: ma_uint32;
        };
    };

    playback:                  struct {
        pID:                             *ma_device_id; /* Set to NULL if using default ID, otherwise set to the address of "id". */
        id:                              ma_device_id; /* If using an explicit device, will be set to a copy of the ID used for initialization. Otherwise cleared to 0. */
        name:                            [256] u8; /* Maybe temporary. Likely to be replaced with a query API. */
        shareMode:                       ma_share_mode; /* Set to whatever was passed in when the device was initialized. */
        format:                          ma_format;
        channels:                        ma_uint32;
        channelMap:                      [254] ma_channel;
        internalFormat:                  ma_format;
        internalChannels:                ma_uint32;
        internalSampleRate:              ma_uint32;
        internalChannelMap:              [254] ma_channel;
        internalPeriodSizeInFrames:      ma_uint32;
        internalPeriods:                 ma_uint32;
        channelMixMode:                  ma_channel_mix_mode;
        calculateLFEFromSpatialChannels: ma_bool32;
        converter:                       ma_data_converter;
        pIntermediaryBuffer:             *void; /* For implementing fixed sized buffer callbacks. Will be null if using variable sized callbacks. */
        intermediaryBufferCap:           ma_uint32;
        intermediaryBufferLen:           ma_uint32; /* How many valid frames are sitting in the intermediary buffer. */
        pInputCache:                     *void; /* In external format. Can be null. */
        inputCacheCap:                   ma_uint64;
        inputCacheConsumed:              ma_uint64;
        inputCacheRemaining:             ma_uint64;
    };

    capture:                   struct {
        pID:                             *ma_device_id; /* Set to NULL if using default ID, otherwise set to the address of "id". */
        id:                              ma_device_id; /* If using an explicit device, will be set to a copy of the ID used for initialization. Otherwise cleared to 0. */
        name:                            [256] u8; /* Maybe temporary. Likely to be replaced with a query API. */
        shareMode:                       ma_share_mode; /* Set to whatever was passed in when the device was initialized. */
        format:                          ma_format;
        channels:                        ma_uint32;
        channelMap:                      [254] ma_channel;
        internalFormat:                  ma_format;
        internalChannels:                ma_uint32;
        internalSampleRate:              ma_uint32;
        internalChannelMap:              [254] ma_channel;
        internalPeriodSizeInFrames:      ma_uint32;
        internalPeriods:                 ma_uint32;
        channelMixMode:                  ma_channel_mix_mode;
        calculateLFEFromSpatialChannels: ma_bool32;
        converter:                       ma_data_converter;
        pIntermediaryBuffer:             *void; /* For implementing fixed sized buffer callbacks. Will be null if using variable sized callbacks. */
        intermediaryBufferCap:           ma_uint32;
        intermediaryBufferLen:           ma_uint32; /* How many valid frames are sitting in the intermediary buffer. */
    };

    union {
        coreaudio:   struct {
            deviceObjectIDPlayback:           ma_uint32;
            deviceObjectIDCapture:            ma_uint32;
            audioUnitPlayback:                ma_ptr; /*AudioUnit*/
            audioUnitCapture:                 ma_ptr; /*AudioUnit*/
            pAudioBufferList:                 ma_ptr; /* Only used for input devices. */
            audioBufferCapInFrames:           ma_uint32; /* Only used for input devices. The capacity in frames of each buffer in pAudioBufferList. */
            stopEvent:                        ma_event;
            originalPeriodSizeInFrames:       ma_uint32;
            originalPeriodSizeInMilliseconds: ma_uint32;
            originalPeriods:                  ma_uint32;
            originalPerformanceProfile:       ma_performance_profile;
            isDefaultPlaybackDevice:          ma_bool32;
            isDefaultCaptureDevice:           ma_bool32;
            isSwitchingPlaybackDevice:        ma_bool32; /* <-- Set to true when the default device has changed and miniaudio is in the process of switching. */
            isSwitchingCaptureDevice:         ma_bool32; /* <-- Set to true when the default device has changed and miniaudio is in the process of switching. */
            pNotificationHandler:             *void; /* Only used on mobile platforms. Obj-C object for handling route changes. */
        };

        null_device: struct {
            deviceThread:                         ma_thread;
            operationEvent:                       ma_event;
            operationCompletionEvent:             ma_event;
            operationSemaphore:                   ma_semaphore;
            operation:                            ma_uint32;
            operationResult:                      ma_result;
            timer:                                ma_timer;
            priorRunTime:                         float64;
            currentPeriodFramesRemainingPlayback: ma_uint32;
            currentPeriodFramesRemainingCapture:  ma_uint32;
            lastProcessedFramePlayback:           ma_uint64;
            lastProcessedFrameCapture:            ma_uint64;
            isStarted:                            ma_atomic_bool32; /* Read and written by multiple threads. Must be used atomically, and must be 32-bit for compiler compatibility. */
        };
    }
}

/*
Initializes a `ma_context_config` object.


Return Value
------------
A `ma_context_config` initialized to defaults.


Remarks
-------
You must always use this to initialize the default state of the `ma_context_config` object. Not using this will result in your program breaking when miniaudio
is updated and new members are added to `ma_context_config`. It also sets logical defaults.

You can override members of the returned object by changing it's members directly.


See Also
--------
ma_context_init()
*/
ma_context_config_init :: () -> ma_context_config #foreign miniaudio;

/*
Initializes a context.

The context is used for selecting and initializing an appropriate backend and to represent the backend at a more global level than that of an individual
device. There is one context to many devices, and a device is created from a context. A context is required to enumerate devices.


Parameters
----------
backends (in, optional)
A list of backends to try initializing, in priority order. Can be NULL, in which case it uses default priority order.

backendCount (in, optional)
The number of items in `backend`. Ignored if `backend` is NULL.

pConfig (in, optional)
The context configuration.

pContext (in)
A pointer to the context object being initialized.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Unsafe. Do not call this function across multiple threads as some backends read and write to global state.


Remarks
-------
When `backends` is NULL, the default priority order will be used. Below is a list of backends in priority order:

|-------------|-----------------------|--------------------------------------------------------|
| Name        | Enum Name             | Supported Operating Systems                            |
|-------------|-----------------------|--------------------------------------------------------|
| WASAPI      | ma_backend_wasapi     | Windows Vista+                                         |
| DirectSound | ma_backend_dsound     | Windows XP+                                            |
| WinMM       | ma_backend_winmm      | Windows XP+ (may work on older versions, but untested) |
| Core Audio  | ma_backend_coreaudio  | macOS, iOS                                             |
| ALSA        | ma_backend_alsa       | Linux                                                  |
| PulseAudio  | ma_backend_pulseaudio | Cross Platform (disabled on Windows, BSD and Android)  |
| JACK        | ma_backend_jack       | Cross Platform (disabled on BSD and Android)           |
| sndio       | ma_backend_sndio      | OpenBSD                                                |
| audio(4)    | ma_backend_audio4     | NetBSD, OpenBSD                                        |
| OSS         | ma_backend_oss        | FreeBSD                                                |
| AAudio      | ma_backend_aaudio     | Android 8+                                             |
| OpenSL|ES   | ma_backend_opensl     | Android (API level 16+)                                |
| Web Audio   | ma_backend_webaudio   | Web (via Emscripten)                                   |
| Null        | ma_backend_null       | Cross Platform (not used on Web)                       |
|-------------|-----------------------|--------------------------------------------------------|

The context can be configured via the `pConfig` argument. The config object is initialized with `ma_context_config_init()`. Individual configuration settings
can then be set directly on the structure. Below are the members of the `ma_context_config` object.

pLog
A pointer to the `ma_log` to post log messages to. Can be NULL if the application does not
require logging. See the `ma_log` API for details on how to use the logging system.

threadPriority
The desired priority to use for the audio thread. Allowable values include the following:

|--------------------------------------|
| Thread Priority                      |
|--------------------------------------|
| ma_thread_priority_idle              |
| ma_thread_priority_lowest            |
| ma_thread_priority_low               |
| ma_thread_priority_normal            |
| ma_thread_priority_high              |
| ma_thread_priority_highest (default) |
| ma_thread_priority_realtime          |
| ma_thread_priority_default           |
|--------------------------------------|

threadStackSize
The desired size of the stack for the audio thread. Defaults to the operating system's default.

pUserData
A pointer to application-defined data. This can be accessed from the context object directly such as `context.pUserData`.

allocationCallbacks
Structure containing custom allocation callbacks. Leaving this at defaults will cause it to use MA_MALLOC, MA_REALLOC and MA_FREE. These allocation
callbacks will be used for anything tied to the context, including devices.

alsa.useVerboseDeviceEnumeration
ALSA will typically enumerate many different devices which can be intrusive and not user-friendly. To combat this, miniaudio will enumerate only unique
card/device pairs by default. The problem with this is that you lose a bit of flexibility and control. Setting alsa.useVerboseDeviceEnumeration makes
it so the ALSA backend includes all devices. Defaults to false.

pulse.pApplicationName
PulseAudio only. The application name to use when initializing the PulseAudio context with `pa_context_new()`.

pulse.pServerName
PulseAudio only. The name of the server to connect to with `pa_context_connect()`.

pulse.tryAutoSpawn
PulseAudio only. Whether or not to try automatically starting the PulseAudio daemon. Defaults to false. If you set this to true, keep in mind that
miniaudio uses a trial and error method to find the most appropriate backend, and this will result in the PulseAudio daemon starting which may be
intrusive for the end user.

coreaudio.sessionCategory
iOS only. The session category to use for the shared AudioSession instance. Below is a list of allowable values and their Core Audio equivalents.

|-----------------------------------------|-------------------------------------|
| miniaudio Token                         | Core Audio Token                    |
|-----------------------------------------|-------------------------------------|
| ma_ios_session_category_ambient         | AVAudioSessionCategoryAmbient       |
| ma_ios_session_category_solo_ambient    | AVAudioSessionCategorySoloAmbient   |
| ma_ios_session_category_playback        | AVAudioSessionCategoryPlayback      |
| ma_ios_session_category_record          | AVAudioSessionCategoryRecord        |
| ma_ios_session_category_play_and_record | AVAudioSessionCategoryPlayAndRecord |
| ma_ios_session_category_multi_route     | AVAudioSessionCategoryMultiRoute    |
| ma_ios_session_category_none            | AVAudioSessionCategoryAmbient       |
| ma_ios_session_category_default         | AVAudioSessionCategoryAmbient       |
|-----------------------------------------|-------------------------------------|

coreaudio.sessionCategoryOptions
iOS only. Session category options to use with the shared AudioSession instance. Below is a list of allowable values and their Core Audio equivalents.

|---------------------------------------------------------------------------|------------------------------------------------------------------|
| miniaudio Token                                                           | Core Audio Token                                                 |
|---------------------------------------------------------------------------|------------------------------------------------------------------|
| ma_ios_session_category_option_mix_with_others                            | AVAudioSessionCategoryOptionMixWithOthers                        |
| ma_ios_session_category_option_duck_others                                | AVAudioSessionCategoryOptionDuckOthers                           |
| ma_ios_session_category_option_allow_bluetooth                            | AVAudioSessionCategoryOptionAllowBluetooth                       |
| ma_ios_session_category_option_default_to_speaker                         | AVAudioSessionCategoryOptionDefaultToSpeaker                     |
| ma_ios_session_category_option_interrupt_spoken_audio_and_mix_with_others | AVAudioSessionCategoryOptionInterruptSpokenAudioAndMixWithOthers |
| ma_ios_session_category_option_allow_bluetooth_a2dp                       | AVAudioSessionCategoryOptionAllowBluetoothA2DP                   |
| ma_ios_session_category_option_allow_air_play                             | AVAudioSessionCategoryOptionAllowAirPlay                         |
|---------------------------------------------------------------------------|------------------------------------------------------------------|

coreaudio.noAudioSessionActivate
iOS only. When set to true, does not perform an explicit [[AVAudioSession sharedInstace] setActive:true] on initialization.

coreaudio.noAudioSessionDeactivate
iOS only. When set to true, does not perform an explicit [[AVAudioSession sharedInstace] setActive:false] on uninitialization.

jack.pClientName
The name of the client to pass to `jack_client_open()`.

jack.tryStartServer
Whether or not to try auto-starting the JACK server. Defaults to false.


It is recommended that only a single context is active at any given time because it's a bulky data structure which performs run-time linking for the
relevant backends every time it's initialized.

The location of the context cannot change throughout it's lifetime. Consider allocating the `ma_context` object with `malloc()` if this is an issue. The
reason for this is that a pointer to the context is stored in the `ma_device` structure.


Example 1 - Default Initialization
----------------------------------
The example below shows how to initialize the context using the default configuration.

```c
ma_context context;
ma_result result = ma_context_init(NULL, 0, NULL, &context);
if (result != MA_SUCCESS) {
// Error.
}
```


Example 2 - Custom Configuration
--------------------------------
The example below shows how to initialize the context using custom backend priorities and a custom configuration. In this hypothetical example, the program
wants to prioritize ALSA over PulseAudio on Linux. They also want to avoid using the WinMM backend on Windows because it's latency is too high. They also
want an error to be returned if no valid backend is available which they achieve by excluding the Null backend.

For the configuration, the program wants to capture any log messages so they can, for example, route it to a log file and user interface.

```c
ma_backend backends[] = {
ma_backend_alsa,
ma_backend_pulseaudio,
ma_backend_wasapi,
ma_backend_dsound
};

ma_log log;
ma_log_init(&log);
ma_log_register_callback(&log, ma_log_callback_init(my_log_callbac, pMyLogUserData));

ma_context_config config = ma_context_config_init();
config.pLog = &log; // Specify a custom log object in the config so any logs that are posted from ma_context_init() are captured.

ma_context context;
ma_result result = ma_context_init(backends, sizeof(backends)/sizeof(backends[0]), &config, &context);
if (result != MA_SUCCESS) {
// Error.
if (result == MA_NO_BACKEND) {
// Couldn't find an appropriate backend.
}
}

// You could also attach a log callback post-initialization:
ma_log_register_callback(ma_context_get_log(&context), ma_log_callback_init(my_log_callback, pMyLogUserData));
```


See Also
--------
ma_context_config_init()
ma_context_uninit()
*/
ma_context_init :: (backends: *ma_backend, backendCount: ma_uint32, pConfig: *ma_context_config, pContext: *ma_context) -> ma_result #foreign miniaudio;

/*
Uninitializes a context.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Unsafe. Do not call this function across multiple threads as some backends read and write to global state.


Remarks
-------
Results are undefined if you call this while any device created by this context is still active.


See Also
--------
ma_context_init()
*/
ma_context_uninit :: (pContext: *ma_context) -> ma_result #foreign miniaudio;

/*
Retrieves the size of the ma_context object.

This is mainly for the purpose of bindings to know how much memory to allocate.
*/
ma_context_sizeof :: () -> u64 #foreign miniaudio;

/*
Retrieves a pointer to the log object associated with this context.


Remarks
-------
Pass the returned pointer to `ma_log_post()`, `ma_log_postv()` or `ma_log_postf()` to post a log
message.

You can attach your own logging callback to the log with `ma_log_register_callback()`


Return Value
------------
A pointer to the `ma_log` object that the context uses to post log messages. If some error occurs,
NULL will be returned.
*/
ma_context_get_log :: (pContext: *ma_context) -> *ma_log #foreign miniaudio;

/*
Enumerates over every device (both playback and capture).

This is a lower-level enumeration function to the easier to use `ma_context_get_devices()`. Use `ma_context_enumerate_devices()` if you would rather not incur
an internal heap allocation, or it simply suits your code better.

Note that this only retrieves the ID and name/description of the device. The reason for only retrieving basic information is that it would otherwise require
opening the backend device in order to probe it for more detailed information which can be inefficient. Consider using `ma_context_get_device_info()` for this,
but don't call it from within the enumeration callback.

Returning false from the callback will stop enumeration. Returning true will continue enumeration.


Parameters
----------
pContext (in)
A pointer to the context performing the enumeration.

callback (in)
The callback to fire for each enumerated device.

pUserData (in)
A pointer to application-defined data passed to the callback.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Safe. This is guarded using a simple mutex lock.


Remarks
-------
Do _not_ assume the first enumerated device of a given type is the default device.

Some backends and platforms may only support default playback and capture devices.

In general, you should not do anything complicated from within the callback. In particular, do not try initializing a device from within the callback. Also,
do not try to call `ma_context_get_device_info()` from within the callback.

Consider using `ma_context_get_devices()` for a simpler and safer API, albeit at the expense of an internal heap allocation.


Example 1 - Simple Enumeration
------------------------------
ma_bool32 ma_device_enum_callback(ma_context* pContext, ma_device_type deviceType, const ma_device_info* pInfo, void* pUserData)
{
printf("Device Name: %s\n", pInfo->name);
return MA_TRUE;
}

ma_result result = ma_context_enumerate_devices(&context, my_device_enum_callback, pMyUserData);
if (result != MA_SUCCESS) {
// Error.
}


See Also
--------
ma_context_get_devices()
*/
ma_context_enumerate_devices :: (pContext: *ma_context, callback: ma_enum_devices_callback_proc, pUserData: *void) -> ma_result #foreign miniaudio;

/*
Retrieves basic information about every active playback and/or capture device.

This function will allocate memory internally for the device lists and return a pointer to them through the `ppPlaybackDeviceInfos` and `ppCaptureDeviceInfos`
parameters. If you do not want to incur the overhead of these allocations consider using `ma_context_enumerate_devices()` which will instead use a callback.

Note that this only retrieves the ID and name/description of the device. The reason for only retrieving basic information is that it would otherwise require
opening the backend device in order to probe it for more detailed information which can be inefficient. Consider using `ma_context_get_device_info()` for this,
but don't call it from within the enumeration callback.


Parameters
----------
pContext (in)
A pointer to the context performing the enumeration.

ppPlaybackDeviceInfos (out)
A pointer to a pointer that will receive the address of a buffer containing the list of `ma_device_info` structures for playback devices.

pPlaybackDeviceCount (out)
A pointer to an unsigned integer that will receive the number of playback devices.

ppCaptureDeviceInfos (out)
A pointer to a pointer that will receive the address of a buffer containing the list of `ma_device_info` structures for capture devices.

pCaptureDeviceCount (out)
A pointer to an unsigned integer that will receive the number of capture devices.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Unsafe. Since each call to this function invalidates the pointers from the previous call, you should not be calling this simultaneously across multiple
threads. Instead, you need to make a copy of the returned data with your own higher level synchronization.


Remarks
-------
It is _not_ safe to assume the first device in the list is the default device.

You can pass in NULL for the playback or capture lists in which case they'll be ignored.

The returned pointers will become invalid upon the next call this this function, or when the context is uninitialized. Do not free the returned pointers.


See Also
--------
ma_context_enumerate_devices()
*/
ma_context_get_devices :: (pContext: *ma_context, ppPlaybackDeviceInfos: **ma_device_info, pPlaybackDeviceCount: *ma_uint32, ppCaptureDeviceInfos: **ma_device_info, pCaptureDeviceCount: *ma_uint32) -> ma_result #foreign miniaudio;

/*
Retrieves information about a device of the given type, with the specified ID and share mode.


Parameters
----------
pContext (in)
A pointer to the context performing the query.

deviceType (in)
The type of the device being queried. Must be either `ma_device_type_playback` or `ma_device_type_capture`.

pDeviceID (in)
The ID of the device being queried.

pDeviceInfo (out)
A pointer to the `ma_device_info` structure that will receive the device information.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Safe. This is guarded using a simple mutex lock.


Remarks
-------
Do _not_ call this from within the `ma_context_enumerate_devices()` callback.

It's possible for a device to have different information and capabilities depending on whether or not it's opened in shared or exclusive mode. For example, in
shared mode, WASAPI always uses floating point samples for mixing, but in exclusive mode it can be anything. Therefore, this function allows you to specify
which share mode you want information for. Note that not all backends and devices support shared or exclusive mode, in which case this function will fail if
the requested share mode is unsupported.

This leaves pDeviceInfo unmodified in the result of an error.
*/
ma_context_get_device_info :: (pContext: *ma_context, deviceType: ma_device_type, pDeviceID: *ma_device_id, pDeviceInfo: *ma_device_info) -> ma_result #foreign miniaudio;

/*
Determines if the given context supports loopback mode.


Parameters
----------
pContext (in)
A pointer to the context getting queried.


Return Value
------------
MA_TRUE if the context supports loopback mode; MA_FALSE otherwise.
*/
ma_context_is_loopback_supported :: (pContext: *ma_context) -> ma_bool32 #foreign miniaudio;

/*
Initializes a device config with default settings.


Parameters
----------
deviceType (in)
The type of the device this config is being initialized for. This must set to one of the following:

|-------------------------|
| Device Type             |
|-------------------------|
| ma_device_type_playback |
| ma_device_type_capture  |
| ma_device_type_duplex   |
| ma_device_type_loopback |
|-------------------------|


Return Value
------------
A new device config object with default settings. You will typically want to adjust the config after this function returns. See remarks.


Thread Safety
-------------
Safe.


Callback Safety
---------------
Safe, but don't try initializing a device in a callback.


Remarks
-------
The returned config will be initialized to defaults. You will normally want to customize a few variables before initializing the device. See Example 1 for a
typical configuration which sets the sample format, channel count, sample rate, data callback and user data. These are usually things you will want to change
before initializing the device.

See `ma_device_init()` for details on specific configuration options.


Example 1 - Simple Configuration
--------------------------------
The example below is what a program will typically want to configure for each device at a minimum. Notice how `ma_device_config_init()` is called first, and
then the returned object is modified directly. This is important because it ensures that your program continues to work as new configuration options are added
to the `ma_device_config` structure.

```c
ma_device_config config = ma_device_config_init(ma_device_type_playback);
config.playback.format   = ma_format_f32;
config.playback.channels = 2;
config.sampleRate        = 48000;
config.dataCallback      = ma_data_callback;
config.pUserData         = pMyUserData;
```


See Also
--------
ma_device_init()
ma_device_init_ex()
*/
ma_device_config_init :: (deviceType: ma_device_type) -> ma_device_config #foreign miniaudio;

/*
Initializes a device.

A device represents a physical audio device. The idea is you send or receive audio data from the device to either play it back through a speaker, or capture it
from a microphone. Whether or not you should send or receive data from the device (or both) depends on the type of device you are initializing which can be
playback, capture, full-duplex or loopback. (Note that loopback mode is only supported on select backends.) Sending and receiving audio data to and from the
device is done via a callback which is fired by miniaudio at periodic time intervals.

The frequency at which data is delivered to and from a device depends on the size of its period. The size of the period can be defined in terms of PCM frames
or milliseconds, whichever is more convenient. Generally speaking, the smaller the period, the lower the latency at the expense of higher CPU usage and
increased risk of glitching due to the more frequent and granular data deliver intervals. The size of a period will depend on your requirements, but
miniaudio's defaults should work fine for most scenarios. If you're building a game you should leave this fairly small, whereas if you're building a simple
media player you can make it larger. Note that the period size you request is actually just a hint - miniaudio will tell the backend what you want, but the
backend is ultimately responsible for what it gives you. You cannot assume you will get exactly what you ask for.

When delivering data to and from a device you need to make sure it's in the correct format which you can set through the device configuration. You just set the
format that you want to use and miniaudio will perform all of the necessary conversion for you internally. When delivering data to and from the callback you
can assume the format is the same as what you requested when you initialized the device. See Remarks for more details on miniaudio's data conversion pipeline.


Parameters
----------
pContext (in, optional)
A pointer to the context that owns the device. This can be null, in which case it creates a default context internally.

pConfig (in)
A pointer to the device configuration. Cannot be null. See remarks for details.

pDevice (out)
A pointer to the device object being initialized.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Unsafe. It is not safe to call this function simultaneously for different devices because some backends depend on and mutate global state. The same applies to
calling this at the same time as `ma_device_uninit()`.


Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback.


Remarks
-------
Setting `pContext` to NULL will result in miniaudio creating a default context internally and is equivalent to passing in a context initialized like so:

```c
ma_context_init(NULL, 0, NULL, &context);
```

Do not set `pContext` to NULL if you are needing to open multiple devices. You can, however, use NULL when initializing the first device, and then use
device.pContext for the initialization of other devices.

The device can be configured via the `pConfig` argument. The config object is initialized with `ma_device_config_init()`. Individual configuration settings can
then be set directly on the structure. Below are the members of the `ma_device_config` object.

deviceType
Must be `ma_device_type_playback`, `ma_device_type_capture`, `ma_device_type_duplex` of `ma_device_type_loopback`.

sampleRate
The sample rate, in hertz. The most common sample rates are 48000 and 44100. Setting this to 0 will use the device's native sample rate.

periodSizeInFrames
The desired size of a period in PCM frames. If this is 0, `periodSizeInMilliseconds` will be used instead. If both are 0 the default buffer size will
be used depending on the selected performance profile. This value affects latency. See below for details.

periodSizeInMilliseconds
The desired size of a period in milliseconds. If this is 0, `periodSizeInFrames` will be used instead. If both are 0 the default buffer size will be
used depending on the selected performance profile. The value affects latency. See below for details.

periods
The number of periods making up the device's entire buffer. The total buffer size is `periodSizeInFrames` or `periodSizeInMilliseconds` multiplied by
this value. This is just a hint as backends will be the ones who ultimately decide how your periods will be configured.

performanceProfile
A hint to miniaudio as to the performance requirements of your program. Can be either `ma_performance_profile_low_latency` (default) or
`ma_performance_profile_conservative`. This mainly affects the size of default buffers and can usually be left at its default value.

noPreSilencedOutputBuffer
When set to true, the contents of the output buffer passed into the data callback will be left undefined. When set to false (default), the contents of
the output buffer will be cleared the zero. You can use this to avoid the overhead of zeroing out the buffer if you can guarantee that your data
callback will write to every sample in the output buffer, or if you are doing your own clearing.

noClip
When set to true, the contents of the output buffer are left alone after returning and it will be left up to the backend itself to decide whether or
not to clip. When set to false (default), the contents of the output buffer passed into the data callback will be clipped after returning. This only
applies when the playback sample format is f32.

noDisableDenormals
By default, miniaudio will disable denormals when the data callback is called. Setting this to true will prevent the disabling of denormals.

noFixedSizedCallback
Allows miniaudio to fire the data callback with any frame count. When this is set to false (the default), the data callback will be fired with a
consistent frame count as specified by `periodSizeInFrames` or `periodSizeInMilliseconds`. When set to true, miniaudio will fire the callback with
whatever the backend requests, which could be anything.

dataCallback
The callback to fire whenever data is ready to be delivered to or from the device.

notificationCallback
The callback to fire when something has changed with the device, such as whether or not it has been started or stopped.

pUserData
The user data pointer to use with the device. You can access this directly from the device object like `device.pUserData`.

resampling.algorithm
The resampling algorithm to use when miniaudio needs to perform resampling between the rate specified by `sampleRate` and the device's native rate. The
default value is `ma_resample_algorithm_linear`, and the quality can be configured with `resampling.linear.lpfOrder`.

resampling.pBackendVTable
A pointer to an optional vtable that can be used for plugging in a custom resampler.

resampling.pBackendUserData
A pointer that will passed to callbacks in pBackendVTable.

resampling.linear.lpfOrder
The linear resampler applies a low-pass filter as part of its processing for anti-aliasing. This setting controls the order of the filter. The higher
the value, the better the quality, in general. Setting this to 0 will disable low-pass filtering altogether. The maximum value is
`MA_MAX_FILTER_ORDER`. The default value is `min(4, MA_MAX_FILTER_ORDER)`.

playback.pDeviceID
A pointer to a `ma_device_id` structure containing the ID of the playback device to initialize. Setting this NULL (default) will use the system's
default playback device. Retrieve the device ID from the `ma_device_info` structure, which can be retrieved using device enumeration.

playback.format
The sample format to use for playback. When set to `ma_format_unknown` the device's native format will be used. This can be retrieved after
initialization from the device object directly with `device.playback.format`.

playback.channels
The number of channels to use for playback. When set to 0 the device's native channel count will be used. This can be retrieved after initialization
from the device object directly with `device.playback.channels`.

playback.pChannelMap
The channel map to use for playback. When left empty, the device's native channel map will be used. This can be retrieved after initialization from the
device object direct with `device.playback.pChannelMap`. When set, the buffer should contain `channels` items.

playback.shareMode
The preferred share mode to use for playback. Can be either `ma_share_mode_shared` (default) or `ma_share_mode_exclusive`. Note that if you specify
exclusive mode, but it's not supported by the backend, initialization will fail. You can then fall back to shared mode if desired by changing this to
ma_share_mode_shared and reinitializing.

capture.pDeviceID
A pointer to a `ma_device_id` structure containing the ID of the capture device to initialize. Setting this NULL (default) will use the system's
default capture device. Retrieve the device ID from the `ma_device_info` structure, which can be retrieved using device enumeration.

capture.format
The sample format to use for capture. When set to `ma_format_unknown` the device's native format will be used. This can be retrieved after
initialization from the device object directly with `device.capture.format`.

capture.channels
The number of channels to use for capture. When set to 0 the device's native channel count will be used. This can be retrieved after initialization
from the device object directly with `device.capture.channels`.

capture.pChannelMap
The channel map to use for capture. When left empty, the device's native channel map will be used. This can be retrieved after initialization from the
device object direct with `device.capture.pChannelMap`. When set, the buffer should contain `channels` items.

capture.shareMode
The preferred share mode to use for capture. Can be either `ma_share_mode_shared` (default) or `ma_share_mode_exclusive`. Note that if you specify
exclusive mode, but it's not supported by the backend, initialization will fail. You can then fall back to shared mode if desired by changing this to
ma_share_mode_shared and reinitializing.

wasapi.noAutoConvertSRC
WASAPI only. When set to true, disables WASAPI's automatic resampling and forces the use of miniaudio's resampler. Defaults to false.

wasapi.noDefaultQualitySRC
WASAPI only. Only used when `wasapi.noAutoConvertSRC` is set to false. When set to true, disables the use of `AUDCLNT_STREAMFLAGS_SRC_DEFAULT_QUALITY`.
You should usually leave this set to false, which is the default.

wasapi.noAutoStreamRouting
WASAPI only. When set to true, disables automatic stream routing on the WASAPI backend. Defaults to false.

wasapi.noHardwareOffloading
WASAPI only. When set to true, disables the use of WASAPI's hardware offloading feature. Defaults to false.

alsa.noMMap
ALSA only. When set to true, disables MMap mode. Defaults to false.

alsa.noAutoFormat
ALSA only. When set to true, disables ALSA's automatic format conversion by including the SND_PCM_NO_AUTO_FORMAT flag. Defaults to false.

alsa.noAutoChannels
ALSA only. When set to true, disables ALSA's automatic channel conversion by including the SND_PCM_NO_AUTO_CHANNELS flag. Defaults to false.

alsa.noAutoResample
ALSA only. When set to true, disables ALSA's automatic resampling by including the SND_PCM_NO_AUTO_RESAMPLE flag. Defaults to false.

pulse.pStreamNamePlayback
PulseAudio only. Sets the stream name for playback.

pulse.pStreamNameCapture
PulseAudio only. Sets the stream name for capture.

pulse.channelMap
PulseAudio only. Sets the channel map that is requested from PulseAudio. See MA_PA_CHANNEL_MAP_* constants. Defaults to MA_PA_CHANNEL_MAP_AIFF.

coreaudio.allowNominalSampleRateChange
Core Audio only. Desktop only. When enabled, allows the sample rate of the device to be changed at the operating system level. This
is disabled by default in order to prevent intrusive changes to the user's system. This is useful if you want to use a sample rate
that is known to be natively supported by the hardware thereby avoiding the cost of resampling. When set to true, miniaudio will
find the closest match between the sample rate requested in the device config and the sample rates natively supported by the
hardware. When set to false, the sample rate currently set by the operating system will always be used.

opensl.streamType
OpenSL only. Explicitly sets the stream type. If left unset (`ma_opensl_stream_type_default`), the
stream type will be left unset. Think of this as the type of audio you're playing.

opensl.recordingPreset
OpenSL only. Explicitly sets the type of recording your program will be doing. When left
unset, the recording preset will be left unchanged.

aaudio.usage
AAudio only. Explicitly sets the nature of the audio the program will be consuming. When
left unset, the usage will be left unchanged.

aaudio.contentType
AAudio only. Sets the content type. When left unset, the content type will be left unchanged.

aaudio.inputPreset
AAudio only. Explicitly sets the type of recording your program will be doing. When left
unset, the input preset will be left unchanged.

aaudio.noAutoStartAfterReroute
AAudio only. Controls whether or not the device should be automatically restarted after a
stream reroute. When set to false (default) the device will be restarted automatically;
otherwise the device will be stopped.


Once initialized, the device's config is immutable. If you need to change the config you will need to initialize a new device.

After initializing the device it will be in a stopped state. To start it, use `ma_device_start()`.

If both `periodSizeInFrames` and `periodSizeInMilliseconds` are set to zero, it will default to `MA_DEFAULT_PERIOD_SIZE_IN_MILLISECONDS_LOW_LATENCY` or
`MA_DEFAULT_PERIOD_SIZE_IN_MILLISECONDS_CONSERVATIVE`, depending on whether or not `performanceProfile` is set to `ma_performance_profile_low_latency` or
`ma_performance_profile_conservative`.

If you request exclusive mode and the backend does not support it an error will be returned. For robustness, you may want to first try initializing the device
in exclusive mode, and then fall back to shared mode if required. Alternatively you can just request shared mode (the default if you leave it unset in the
config) which is the most reliable option. Some backends do not have a practical way of choosing whether or not the device should be exclusive or not (ALSA,
for example) in which case it just acts as a hint. Unless you have special requirements you should try avoiding exclusive mode as it's intrusive to the user.
Starting with Windows 10, miniaudio will use low-latency shared mode where possible which may make exclusive mode unnecessary.

When sending or receiving data to/from a device, miniaudio will internally perform a format conversion to convert between the format specified by the config
and the format used internally by the backend. If you pass in 0 for the sample format, channel count, sample rate _and_ channel map, data transmission will run
on an optimized pass-through fast path. You can retrieve the format, channel count and sample rate by inspecting the `playback/capture.format`,
`playback/capture.channels` and `sampleRate` members of the device object.

When compiling for UWP you must ensure you call this function on the main UI thread because the operating system may need to present the user with a message
asking for permissions. Please refer to the official documentation for ActivateAudioInterfaceAsync() for more information.

ALSA Specific: When initializing the default device, requesting shared mode will try using the "dmix" device for playback and the "dsnoop" device for capture.
If these fail it will try falling back to the "hw" device.


Example 1 - Simple Initialization
---------------------------------
This example shows how to initialize a simple playback device using a standard configuration. If you are just needing to do simple playback from the default
playback device this is usually all you need.

```c
ma_device_config config = ma_device_config_init(ma_device_type_playback);
config.playback.format   = ma_format_f32;
config.playback.channels = 2;
config.sampleRate        = 48000;
config.dataCallback      = ma_data_callback;
config.pMyUserData       = pMyUserData;

ma_device device;
ma_result result = ma_device_init(NULL, &config, &device);
if (result != MA_SUCCESS) {
// Error
}
```


Example 2 - Advanced Initialization
-----------------------------------
This example shows how you might do some more advanced initialization. In this hypothetical example we want to control the latency by setting the buffer size
and period count. We also want to allow the user to be able to choose which device to output from which means we need a context so we can perform device
enumeration.

```c
ma_context context;
ma_result result = ma_context_init(NULL, 0, NULL, &context);
if (result != MA_SUCCESS) {
// Error
}

ma_device_info* pPlaybackDeviceInfos;
ma_uint32 playbackDeviceCount;
result = ma_context_get_devices(&context, &pPlaybackDeviceInfos, &playbackDeviceCount, NULL, NULL);
if (result != MA_SUCCESS) {
// Error
}

// ... choose a device from pPlaybackDeviceInfos ...

ma_device_config config = ma_device_config_init(ma_device_type_playback);
config.playback.pDeviceID       = pMyChosenDeviceID;    // <-- Get this from the `id` member of one of the `ma_device_info` objects returned by ma_context_get_devices().
config.playback.format          = ma_format_f32;
config.playback.channels        = 2;
config.sampleRate               = 48000;
config.dataCallback             = ma_data_callback;
config.pUserData                = pMyUserData;
config.periodSizeInMilliseconds = 10;
config.periods                  = 3;

ma_device device;
result = ma_device_init(&context, &config, &device);
if (result != MA_SUCCESS) {
// Error
}
```


See Also
--------
ma_device_config_init()
ma_device_uninit()
ma_device_start()
ma_context_init()
ma_context_get_devices()
ma_context_enumerate_devices()
*/
ma_device_init :: (pContext: *ma_context, pConfig: *ma_device_config, pDevice: *ma_device) -> ma_result #foreign miniaudio;

/*
Initializes a device without a context, with extra parameters for controlling the configuration of the internal self-managed context.

This is the same as `ma_device_init()`, only instead of a context being passed in, the parameters from `ma_context_init()` are passed in instead. This function
allows you to configure the internally created context.


Parameters
----------
backends (in, optional)
A list of backends to try initializing, in priority order. Can be NULL, in which case it uses default priority order.

backendCount (in, optional)
The number of items in `backend`. Ignored if `backend` is NULL.

pContextConfig (in, optional)
The context configuration.

pConfig (in)
A pointer to the device configuration. Cannot be null. See remarks for details.

pDevice (out)
A pointer to the device object being initialized.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Unsafe. It is not safe to call this function simultaneously for different devices because some backends depend on and mutate global state. The same applies to
calling this at the same time as `ma_device_uninit()`.


Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback.


Remarks
-------
You only need to use this function if you want to configure the context differently to its defaults. You should never use this function if you want to manage
your own context.

See the documentation for `ma_context_init()` for information on the different context configuration options.


See Also
--------
ma_device_init()
ma_device_uninit()
ma_device_config_init()
ma_context_init()
*/
ma_device_init_ex :: (backends: *ma_backend, backendCount: ma_uint32, pContextConfig: *ma_context_config, pConfig: *ma_device_config, pDevice: *ma_device) -> ma_result #foreign miniaudio;

/*
Uninitializes a device.

This will explicitly stop the device. You do not need to call `ma_device_stop()` beforehand, but it's harmless if you do.


Parameters
----------
pDevice (in)
A pointer to the device to stop.


Return Value
------------
Nothing


Thread Safety
-------------
Unsafe. As soon as this API is called the device should be considered undefined.


Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback. Doing this will result in a deadlock.


See Also
--------
ma_device_init()
ma_device_stop()
*/
ma_device_uninit :: (pDevice: *ma_device) -> void #foreign miniaudio;

/*
Retrieves a pointer to the context that owns the given device.
*/
ma_device_get_context :: (pDevice: *ma_device) -> *ma_context #foreign miniaudio;

/*
Helper function for retrieving the log object associated with the context that owns this device.
*/
ma_device_get_log :: (pDevice: *ma_device) -> *ma_log #foreign miniaudio;

/*
Retrieves information about the device.


Parameters
----------
pDevice (in)
A pointer to the device whose information is being retrieved.

type (in)
The device type. This parameter is required for duplex devices. When retrieving device
information, you are doing so for an individual playback or capture device.

pDeviceInfo (out)
A pointer to the `ma_device_info` that will receive the device information.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Unsafe. This should be considered unsafe because it may be calling into the backend which may or
may not be safe.


Callback Safety
---------------
Unsafe. You should avoid calling this in the data callback because it may call into the backend
which may or may not be safe.
*/
ma_device_get_info :: (pDevice: *ma_device, type: ma_device_type, pDeviceInfo: *ma_device_info) -> ma_result #foreign miniaudio;

/*
Retrieves the name of the device.


Parameters
----------
pDevice (in)
A pointer to the device whose information is being retrieved.

type (in)
The device type. This parameter is required for duplex devices. When retrieving device
information, you are doing so for an individual playback or capture device.

pName (out)
A pointer to the buffer that will receive the name.

nameCap (in)
The capacity of the output buffer, including space for the null terminator.

pLengthNotIncludingNullTerminator (out, optional)
A pointer to the variable that will receive the length of the name, not including the null
terminator.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Unsafe. This should be considered unsafe because it may be calling into the backend which may or
may not be safe.


Callback Safety
---------------
Unsafe. You should avoid calling this in the data callback because it may call into the backend
which may or may not be safe.


Remarks
-------
If the name does not fully fit into the output buffer, it'll be truncated. You can pass in NULL to
`pName` if you want to first get the length of the name for the purpose of memory allocation of the
output buffer. Allocating a buffer of size `MA_MAX_DEVICE_NAME_LENGTH + 1` should be enough for
most cases and will avoid the need for the inefficiency of calling this function twice.

This is implemented in terms of `ma_device_get_info()`.
*/
ma_device_get_name :: (pDevice: *ma_device, type: ma_device_type, pName: *u8, nameCap: u64, pLengthNotIncludingNullTerminator: *u64) -> ma_result #foreign miniaudio;

/*
Starts the device. For playback devices this begins playback. For capture devices it begins recording.

Use `ma_device_stop()` to stop the device.


Parameters
----------
pDevice (in)
A pointer to the device to start.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Safe. It's safe to call this from any thread with the exception of the callback thread.


Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback.


Remarks
-------
For a playback device, this will retrieve an initial chunk of audio data from the client before returning. The reason for this is to ensure there is valid
audio data in the buffer, which needs to be done before the device begins playback.

This API waits until the backend device has been started for real by the worker thread. It also waits on a mutex for thread-safety.

Do not call this in any callback.


See Also
--------
ma_device_stop()
*/
ma_device_start :: (pDevice: *ma_device) -> ma_result #foreign miniaudio;

/*
Stops the device. For playback devices this stops playback. For capture devices it stops recording.

Use `ma_device_start()` to start the device again.


Parameters
----------
pDevice (in)
A pointer to the device to stop.


Return Value
------------
MA_SUCCESS if successful; any other error code otherwise.


Thread Safety
-------------
Safe. It's safe to call this from any thread with the exception of the callback thread.


Callback Safety
---------------
Unsafe. It is not safe to call this inside any callback. Doing this will result in a deadlock.


Remarks
-------
This API needs to wait on the worker thread to stop the backend device properly before returning. It also waits on a mutex for thread-safety. In addition, some
backends need to wait for the device to finish playback/recording of the current fragment which can take some time (usually proportionate to the buffer size
that was specified at initialization time).

Backends are required to either pause the stream in-place or drain the buffer if pausing is not possible. The reason for this is that stopping the device and
the resuming it with ma_device_start() (which you might do when your program loses focus) may result in a situation where those samples are never output to the
speakers or received from the microphone which can in turn result in de-syncs.

Do not call this in any callback.


See Also
--------
ma_device_start()
*/
ma_device_stop :: (pDevice: *ma_device) -> ma_result #foreign miniaudio;

/*
Determines whether or not the device is started.


Parameters
----------
pDevice (in)
A pointer to the device whose start state is being retrieved.


Return Value
------------
True if the device is started, false otherwise.


Thread Safety
-------------
Safe. If another thread calls `ma_device_start()` or `ma_device_stop()` at this same time as this function is called, there's a very small chance the return
value will be out of sync.


Callback Safety
---------------
Safe. This is implemented as a simple accessor.


See Also
--------
ma_device_start()
ma_device_stop()
*/
ma_device_is_started :: (pDevice: *ma_device) -> ma_bool32 #foreign miniaudio;

/*
Retrieves the state of the device.


Parameters
----------
pDevice (in)
A pointer to the device whose state is being retrieved.


Return Value
------------
The current state of the device. The return value will be one of the following:

+-------------------------------+------------------------------------------------------------------------------+
| ma_device_state_uninitialized | Will only be returned if the device is in the middle of initialization.      |
+-------------------------------+------------------------------------------------------------------------------+
| ma_device_state_stopped       | The device is stopped. The initial state of the device after initialization. |
+-------------------------------+------------------------------------------------------------------------------+
| ma_device_state_started       | The device started and requesting and/or delivering audio data.              |
+-------------------------------+------------------------------------------------------------------------------+
| ma_device_state_starting      | The device is in the process of starting.                                    |
+-------------------------------+------------------------------------------------------------------------------+
| ma_device_state_stopping      | The device is in the process of stopping.                                    |
+-------------------------------+------------------------------------------------------------------------------+


Thread Safety
-------------
Safe. This is implemented as a simple accessor. Note that if the device is started or stopped at the same time as this function is called,
there's a possibility the return value could be out of sync. See remarks.


Callback Safety
---------------
Safe. This is implemented as a simple accessor.


Remarks
-------
The general flow of a devices state goes like this:

```
ma_device_init()  -> ma_device_state_uninitialized -> ma_device_state_stopped
ma_device_start() -> ma_device_state_starting      -> ma_device_state_started
ma_device_stop()  -> ma_device_state_stopping      -> ma_device_state_stopped
```

When the state of the device is changed with `ma_device_start()` or `ma_device_stop()` at this same time as this function is called, the
value returned by this function could potentially be out of sync. If this is significant to your program you need to implement your own
synchronization.
*/
ma_device_get_state :: (pDevice: *ma_device) -> ma_device_state #foreign miniaudio;

/*
Performs post backend initialization routines for setting up internal data conversion.

This should be called whenever the backend is initialized. The only time this should be called from
outside of miniaudio is if you're implementing a custom backend, and you would only do it if you
are reinitializing the backend due to rerouting or reinitializing for some reason.


Parameters
----------
pDevice [in]
A pointer to the device.

deviceType [in]
The type of the device that was just reinitialized.

pPlaybackDescriptor [in]
The descriptor of the playback device containing the internal data format and buffer sizes.

pPlaybackDescriptor [in]
The descriptor of the capture device containing the internal data format and buffer sizes.


Return Value
------------
MA_SUCCESS if successful; any other error otherwise.


Thread Safety
-------------
Unsafe. This will be reinitializing internal data converters which may be in use by another thread.


Callback Safety
---------------
Unsafe. This will be reinitializing internal data converters which may be in use by the callback.


Remarks
-------
For a duplex device, you can call this for only one side of the system. This is why the deviceType
is specified as a parameter rather than deriving it from the device.

You do not need to call this manually unless you are doing a custom backend, in which case you need
only do it if you're manually performing rerouting or reinitialization.
*/
ma_device_post_init :: (pDevice: *ma_device, deviceType: ma_device_type, pPlaybackDescriptor: *ma_device_descriptor, pCaptureDescriptor: *ma_device_descriptor) -> ma_result #foreign miniaudio;

/*
Sets the master volume factor for the device.

The volume factor must be between 0 (silence) and 1 (full volume). Use `ma_device_set_master_volume_db()` to use decibel notation, where 0 is full volume and
values less than 0 decreases the volume.


Parameters
----------
pDevice (in)
A pointer to the device whose volume is being set.

volume (in)
The new volume factor. Must be >= 0.


Return Value
------------
MA_SUCCESS if the volume was set successfully.
MA_INVALID_ARGS if pDevice is NULL.
MA_INVALID_ARGS if volume is negative.


Thread Safety
-------------
Safe. This just sets a local member of the device object.


Callback Safety
---------------
Safe. If you set the volume in the data callback, that data written to the output buffer will have the new volume applied.


Remarks
-------
This applies the volume factor across all channels.

This does not change the operating system's volume. It only affects the volume for the given `ma_device` object's audio stream.


See Also
--------
ma_device_get_master_volume()
ma_device_set_master_volume_db()
ma_device_get_master_volume_db()
*/
ma_device_set_master_volume :: (pDevice: *ma_device, volume: float) -> ma_result #foreign miniaudio;

/*
Retrieves the master volume factor for the device.


Parameters
----------
pDevice (in)
A pointer to the device whose volume factor is being retrieved.

pVolume (in)
A pointer to the variable that will receive the volume factor. The returned value will be in the range of [0, 1].


Return Value
------------
MA_SUCCESS if successful.
MA_INVALID_ARGS if pDevice is NULL.
MA_INVALID_ARGS if pVolume is NULL.


Thread Safety
-------------
Safe. This just a simple member retrieval.


Callback Safety
---------------
Safe.


Remarks
-------
If an error occurs, `*pVolume` will be set to 0.


See Also
--------
ma_device_set_master_volume()
ma_device_set_master_volume_gain_db()
ma_device_get_master_volume_gain_db()
*/
ma_device_get_master_volume :: (pDevice: *ma_device, pVolume: *float) -> ma_result #foreign miniaudio;

/*
Sets the master volume for the device as gain in decibels.

A gain of 0 is full volume, whereas a gain of < 0 will decrease the volume.


Parameters
----------
pDevice (in)
A pointer to the device whose gain is being set.

gainDB (in)
The new volume as gain in decibels. Must be less than or equal to 0, where 0 is full volume and anything less than 0 decreases the volume.


Return Value
------------
MA_SUCCESS if the volume was set successfully.
MA_INVALID_ARGS if pDevice is NULL.
MA_INVALID_ARGS if the gain is > 0.


Thread Safety
-------------
Safe. This just sets a local member of the device object.


Callback Safety
---------------
Safe. If you set the volume in the data callback, that data written to the output buffer will have the new volume applied.


Remarks
-------
This applies the gain across all channels.

This does not change the operating system's volume. It only affects the volume for the given `ma_device` object's audio stream.


See Also
--------
ma_device_get_master_volume_gain_db()
ma_device_set_master_volume()
ma_device_get_master_volume()
*/
ma_device_set_master_volume_db :: (pDevice: *ma_device, gainDB: float) -> ma_result #foreign miniaudio;

/*
Retrieves the master gain in decibels.


Parameters
----------
pDevice (in)
A pointer to the device whose gain is being retrieved.

pGainDB (in)
A pointer to the variable that will receive the gain in decibels. The returned value will be <= 0.


Return Value
------------
MA_SUCCESS if successful.
MA_INVALID_ARGS if pDevice is NULL.
MA_INVALID_ARGS if pGainDB is NULL.


Thread Safety
-------------
Safe. This just a simple member retrieval.


Callback Safety
---------------
Safe.


Remarks
-------
If an error occurs, `*pGainDB` will be set to 0.


See Also
--------
ma_device_set_master_volume_db()
ma_device_set_master_volume()
ma_device_get_master_volume()
*/
ma_device_get_master_volume_db :: (pDevice: *ma_device, pGainDB: *float) -> ma_result #foreign miniaudio;

/*
Called from the data callback of asynchronous backends to allow miniaudio to process the data and fire the miniaudio data callback.


Parameters
----------
pDevice (in)
A pointer to device whose processing the data callback.

pOutput (out)
A pointer to the buffer that will receive the output PCM frame data. On a playback device this must not be NULL. On a duplex device
this can be NULL, in which case pInput must not be NULL.

pInput (in)
A pointer to the buffer containing input PCM frame data. On a capture device this must not be NULL. On a duplex device this can be
NULL, in which case `pOutput` must not be NULL.

frameCount (in)
The number of frames being processed.


Return Value
------------
MA_SUCCESS if successful; any other result code otherwise.


Thread Safety
-------------
This function should only ever be called from the internal data callback of the backend. It is safe to call this simultaneously between a
playback and capture device in duplex setups.


Callback Safety
---------------
Do not call this from the miniaudio data callback. It should only ever be called from the internal data callback of the backend.


Remarks
-------
If both `pOutput` and `pInput` are NULL, and error will be returned. In duplex scenarios, both `pOutput` and `pInput` can be non-NULL, in
which case `pInput` will be processed first, followed by `pOutput`.

If you are implementing a custom backend, and that backend uses a callback for data delivery, you'll need to call this from inside that
callback.
*/
ma_device_handle_backend_data_callback :: (pDevice: *ma_device, pOutput: *void, pInput: *void, frameCount: ma_uint32) -> ma_result #foreign miniaudio;

/*
Calculates an appropriate buffer size from a descriptor, native sample rate and performance profile.

This function is used by backends for helping determine an appropriately sized buffer to use with
the device depending on the values of `periodSizeInFrames` and `periodSizeInMilliseconds` in the
`pDescriptor` object. Since buffer size calculations based on time depends on the sample rate, a
best guess at the device's native sample rate is also required which is where `nativeSampleRate`
comes in. In addition, the performance profile is also needed for cases where both the period size
in frames and milliseconds are both zero.


Parameters
----------
pDescriptor (in)
A pointer to device descriptor whose `periodSizeInFrames` and `periodSizeInMilliseconds` members
will be used for the calculation of the buffer size.

nativeSampleRate (in)
The device's native sample rate. This is only ever used when the `periodSizeInFrames` member of
`pDescriptor` is zero. In this case, `periodSizeInMilliseconds` will be used instead, in which
case a sample rate is required to convert to a size in frames.

performanceProfile (in)
When both the `periodSizeInFrames` and `periodSizeInMilliseconds` members of `pDescriptor` are
zero, miniaudio will fall back to a buffer size based on the performance profile. The profile
to use for this calculation is determine by this parameter.


Return Value
------------
The calculated buffer size in frames.


Thread Safety
-------------
This is safe so long as nothing modifies `pDescriptor` at the same time. However, this function
should only ever be called from within the backend's device initialization routine and therefore
shouldn't have any multithreading concerns.


Callback Safety
---------------
This is safe to call within the data callback, but there is no reason to ever do this.


Remarks
-------
If `nativeSampleRate` is zero, this function will fall back to `pDescriptor->sampleRate`. If that
is also zero, `MA_DEFAULT_SAMPLE_RATE` will be used instead.
*/
ma_calculate_buffer_size_in_frames_from_descriptor :: (pDescriptor: *ma_device_descriptor, nativeSampleRate: ma_uint32, performanceProfile: ma_performance_profile) -> ma_uint32 #foreign miniaudio;

/*
Retrieves a friendly name for a backend.
*/
ma_get_backend_name :: (backend: ma_backend) -> *u8 #foreign miniaudio;

/*
Retrieves the backend enum from the given name.
*/
ma_get_backend_from_name :: (pBackendName: *u8, pBackend: *ma_backend) -> ma_result #foreign miniaudio;

/*
Determines whether or not the given backend is available by the compilation environment.
*/
ma_is_backend_enabled :: (backend: ma_backend) -> ma_bool32 #foreign miniaudio;

/*
Retrieves compile-time enabled backends.


Parameters
----------
pBackends (out, optional)
A pointer to the buffer that will receive the enabled backends. Set to NULL to retrieve the backend count. Setting
the capacity of the buffer to `MA_BUFFER_COUNT` will guarantee it's large enough for all backends.

backendCap (in)
The capacity of the `pBackends` buffer.

pBackendCount (out)
A pointer to the variable that will receive the enabled backend count.


Return Value
------------
MA_SUCCESS if successful.
MA_INVALID_ARGS if `pBackendCount` is NULL.
MA_NO_SPACE if the capacity of `pBackends` is not large enough.

If `MA_NO_SPACE` is returned, the `pBackends` buffer will be filled with `*pBackendCount` values.


Thread Safety
-------------
Safe.


Callback Safety
---------------
Safe.


Remarks
-------
If you want to retrieve the number of backends so you can determine the capacity of `pBackends` buffer, you can call
this function with `pBackends` set to NULL.

This will also enumerate the null backend. If you don't want to include this you need to check for `ma_backend_null`
when you enumerate over the returned backends and handle it appropriately. Alternatively, you can disable it at
compile time with `MA_NO_NULL`.

The returned backends are determined based on compile time settings, not the platform it's currently running on. For
example, PulseAudio will be returned if it was enabled at compile time, even when the user doesn't actually have
PulseAudio installed.


Example 1
---------
The example below retrieves the enabled backend count using a fixed sized buffer allocated on the stack. The buffer is
given a capacity of `MA_BACKEND_COUNT` which will guarantee it'll be large enough to store all available backends.
Since `MA_BACKEND_COUNT` is always a relatively small value, this should be suitable for most scenarios.

```
ma_backend enabledBackends[MA_BACKEND_COUNT];
size_t enabledBackendCount;

result = ma_get_enabled_backends(enabledBackends, MA_BACKEND_COUNT, &enabledBackendCount);
if (result != MA_SUCCESS) {
// Failed to retrieve enabled backends. Should never happen in this example since all inputs are valid.
}
```


See Also
--------
ma_is_backend_enabled()
*/
ma_get_enabled_backends :: (pBackends: *ma_backend, backendCap: u64, pBackendCount: *u64) -> ma_result #foreign miniaudio;

/*
Determines whether or not loopback mode is support by a backend.
*/
ma_is_loopback_supported :: (backend: ma_backend) -> ma_bool32 #foreign miniaudio;

/*
Calculates a buffer size in milliseconds (rounded up) from the specified number of frames and sample rate.
*/
ma_calculate_buffer_size_in_milliseconds_from_frames :: (bufferSizeInFrames: ma_uint32, sampleRate: ma_uint32) -> ma_uint32 #foreign miniaudio;

/*
Calculates a buffer size in frames from the specified number of milliseconds and sample rate.
*/
ma_calculate_buffer_size_in_frames_from_milliseconds :: (bufferSizeInMilliseconds: ma_uint32, sampleRate: ma_uint32) -> ma_uint32 #foreign miniaudio;

/*
Copies PCM frames from one buffer to another.
*/
ma_copy_pcm_frames :: (dst: *void, src: *void, frameCount: ma_uint64, format: ma_format, channels: ma_uint32) -> void #foreign miniaudio;

/*
Copies silent frames into the given buffer.

Remarks
-------
For all formats except `ma_format_u8`, the output buffer will be filled with 0. For `ma_format_u8` it will be filled with 128. The reason for this is that it
makes more sense for the purpose of mixing to initialize it to the center point.
*/
ma_silence_pcm_frames :: (p: *void, frameCount: ma_uint64, format: ma_format, channels: ma_uint32) -> void #foreign miniaudio;

/*
Offsets a pointer by the specified number of PCM frames.
*/
ma_offset_pcm_frames_ptr :: (p: *void, offsetInFrames: ma_uint64, format: ma_format, channels: ma_uint32) -> *void #foreign miniaudio;
ma_offset_pcm_frames_const_ptr :: (p: *void, offsetInFrames: ma_uint64, format: ma_format, channels: ma_uint32) -> *void #foreign miniaudio;

/*
Clips samples.
*/
ma_clip_samples_u8 :: (pDst: *ma_uint8, pSrc: *ma_int16, count: ma_uint64) -> void #foreign miniaudio;
ma_clip_samples_s16 :: (pDst: *ma_int16, pSrc: *ma_int32, count: ma_uint64) -> void #foreign miniaudio;
ma_clip_samples_s24 :: (pDst: *ma_uint8, pSrc: *ma_int64, count: ma_uint64) -> void #foreign miniaudio;
ma_clip_samples_s32 :: (pDst: *ma_int32, pSrc: *ma_int64, count: ma_uint64) -> void #foreign miniaudio;
ma_clip_samples_f32 :: (pDst: *float, pSrc: *float, count: ma_uint64) -> void #foreign miniaudio;
ma_clip_pcm_frames :: (pDst: *void, pSrc: *void, frameCount: ma_uint64, format: ma_format, channels: ma_uint32) -> void #foreign miniaudio;

/*
Helper for applying a volume factor to samples.

Note that the source and destination buffers can be the same, in which case it'll perform the operation in-place.
*/
ma_copy_and_apply_volume_factor_u8 :: (pSamplesOut: *ma_uint8, pSamplesIn: *ma_uint8, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_s16 :: (pSamplesOut: *ma_int16, pSamplesIn: *ma_int16, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_s24 :: (pSamplesOut: *void, pSamplesIn: *void, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_s32 :: (pSamplesOut: *ma_int32, pSamplesIn: *ma_int32, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_f32 :: (pSamplesOut: *float, pSamplesIn: *float, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;

ma_apply_volume_factor_u8 :: (pSamples: *ma_uint8, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_s16 :: (pSamples: *ma_int16, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_s24 :: (pSamples: *void, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_s32 :: (pSamples: *ma_int32, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_f32 :: (pSamples: *float, sampleCount: ma_uint64, factor: float) -> void #foreign miniaudio;

ma_copy_and_apply_volume_factor_pcm_frames_u8 :: (pFramesOut: *ma_uint8, pFramesIn: *ma_uint8, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_pcm_frames_s16 :: (pFramesOut: *ma_int16, pFramesIn: *ma_int16, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_pcm_frames_s24 :: (pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_pcm_frames_s32 :: (pFramesOut: *ma_int32, pFramesIn: *ma_int32, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_pcm_frames_f32 :: (pFramesOut: *float, pFramesIn: *float, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_factor_pcm_frames :: (pFramesOut: *void, pFramesIn: *void, frameCount: ma_uint64, format: ma_format, channels: ma_uint32, factor: float) -> void #foreign miniaudio;

ma_apply_volume_factor_pcm_frames_u8 :: (pFrames: *ma_uint8, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_pcm_frames_s16 :: (pFrames: *ma_int16, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_pcm_frames_s24 :: (pFrames: *void, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_pcm_frames_s32 :: (pFrames: *ma_int32, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_pcm_frames_f32 :: (pFrames: *float, frameCount: ma_uint64, channels: ma_uint32, factor: float) -> void #foreign miniaudio;
ma_apply_volume_factor_pcm_frames :: (pFrames: *void, frameCount: ma_uint64, format: ma_format, channels: ma_uint32, factor: float) -> void #foreign miniaudio;

ma_copy_and_apply_volume_factor_per_channel_f32 :: (pFramesOut: *float, pFramesIn: *float, frameCount: ma_uint64, channels: ma_uint32, pChannelGains: *float) -> void #foreign miniaudio;

ma_copy_and_apply_volume_and_clip_samples_u8 :: (pDst: *ma_uint8, pSrc: *ma_int16, count: ma_uint64, volume: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_and_clip_samples_s16 :: (pDst: *ma_int16, pSrc: *ma_int32, count: ma_uint64, volume: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_and_clip_samples_s24 :: (pDst: *ma_uint8, pSrc: *ma_int64, count: ma_uint64, volume: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_and_clip_samples_s32 :: (pDst: *ma_int32, pSrc: *ma_int64, count: ma_uint64, volume: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_and_clip_samples_f32 :: (pDst: *float, pSrc: *float, count: ma_uint64, volume: float) -> void #foreign miniaudio;
ma_copy_and_apply_volume_and_clip_pcm_frames :: (pDst: *void, pSrc: *void, frameCount: ma_uint64, format: ma_format, channels: ma_uint32, volume: float) -> void #foreign miniaudio;

/*
Helper for converting a linear factor to gain in decibels.
*/
ma_volume_linear_to_db :: (factor: float) -> float #foreign miniaudio;

/*
Helper for converting gain in decibels to a linear factor.
*/
ma_volume_db_to_linear :: (gain: float) -> float #foreign miniaudio;

/*
Mixes the specified number of frames in floating point format with a volume factor.

This will run on an optimized path when the volume is equal to 1.
*/
ma_mix_pcm_frames_f32 :: (pDst: *float, pSrc: *float, frameCount: ma_uint64, channels: ma_uint32, volume: float) -> ma_result #foreign miniaudio;

/************************************************************************************************************************************************************

VFS
===

The VFS object (virtual file system) is what's used to customize file access. This is useful in cases where stdio FILE* based APIs may not be entirely
appropriate for a given situation.

************************************************************************************************************************************************************/
ma_vfs :: void;
ma_vfs_file :: ma_handle;

ma_open_mode_flags :: enum u32 {
    READ  :: 1;
    WRITE :: 2;

    MA_OPEN_MODE_READ  :: READ;
    MA_OPEN_MODE_WRITE :: WRITE;
}

ma_seek_origin :: enum u32 {
    start   :: 0;
    current :: 1;
    end     :: 2;

    ma_seek_origin_start   :: start;
    ma_seek_origin_current :: current;
    ma_seek_origin_end     :: end;
}

ma_file_info :: struct {
    sizeInBytes: ma_uint64;
}

ma_vfs_callbacks :: struct {
    onOpen:  #type (pVFS: *ma_vfs, pFilePath: *u8, openMode: ma_uint32, pFile: *ma_vfs_file) -> ma_result #c_call;
    onOpenW: #type (pVFS: *ma_vfs, pFilePath: *s32, openMode: ma_uint32, pFile: *ma_vfs_file) -> ma_result #c_call;
    onClose: #type (pVFS: *ma_vfs, file: ma_vfs_file) -> ma_result #c_call;
    onRead:  #type (pVFS: *ma_vfs, file: ma_vfs_file, pDst: *void, sizeInBytes: u64, pBytesRead: *u64) -> ma_result #c_call;
    onWrite: #type (pVFS: *ma_vfs, file: ma_vfs_file, pSrc: *void, sizeInBytes: u64, pBytesWritten: *u64) -> ma_result #c_call;
    onSeek:  #type (pVFS: *ma_vfs, file: ma_vfs_file, offset: ma_int64, origin: ma_seek_origin) -> ma_result #c_call;
    onTell:  #type (pVFS: *ma_vfs, file: ma_vfs_file, pCursor: *ma_int64) -> ma_result #c_call;
    onInfo:  #type (pVFS: *ma_vfs, file: ma_vfs_file, pInfo: *ma_file_info) -> ma_result #c_call;
}

ma_vfs_open :: (pVFS: *ma_vfs, pFilePath: *u8, openMode: ma_uint32, pFile: *ma_vfs_file) -> ma_result #foreign miniaudio;
ma_vfs_open_w :: (pVFS: *ma_vfs, pFilePath: *s32, openMode: ma_uint32, pFile: *ma_vfs_file) -> ma_result #foreign miniaudio;
ma_vfs_close :: (pVFS: *ma_vfs, file: ma_vfs_file) -> ma_result #foreign miniaudio;
ma_vfs_read :: (pVFS: *ma_vfs, file: ma_vfs_file, pDst: *void, sizeInBytes: u64, pBytesRead: *u64) -> ma_result #foreign miniaudio;
ma_vfs_write :: (pVFS: *ma_vfs, file: ma_vfs_file, pSrc: *void, sizeInBytes: u64, pBytesWritten: *u64) -> ma_result #foreign miniaudio;
ma_vfs_seek :: (pVFS: *ma_vfs, file: ma_vfs_file, offset: ma_int64, origin: ma_seek_origin) -> ma_result #foreign miniaudio;
ma_vfs_tell :: (pVFS: *ma_vfs, file: ma_vfs_file, pCursor: *ma_int64) -> ma_result #foreign miniaudio;
ma_vfs_info :: (pVFS: *ma_vfs, file: ma_vfs_file, pInfo: *ma_file_info) -> ma_result #foreign miniaudio;
ma_vfs_open_and_read_file :: (pVFS: *ma_vfs, pFilePath: *u8, ppData: **void, pSize: *u64, pAllocationCallbacks: *ma_allocation_callbacks) -> ma_result #foreign miniaudio;

ma_default_vfs :: struct {
    cb:                  ma_vfs_callbacks;
    allocationCallbacks: ma_allocation_callbacks; /* Only used for the wchar_t version of open() on non-Windows platforms. */
}

ma_default_vfs_init :: (pVFS: *ma_default_vfs, pAllocationCallbacks: *ma_allocation_callbacks) -> ma_result #foreign miniaudio;

ma_read_proc :: #type (pUserData: *void, pBufferOut: *void, bytesToRead: u64, pBytesRead: *u64) -> ma_result #c_call;
ma_seek_proc :: #type (pUserData: *void, offset: ma_int64, origin: ma_seek_origin) -> ma_result #c_call;
ma_tell_proc :: #type (pUserData: *void, pCursor: *ma_int64) -> ma_result #c_call;

ma_encoding_format :: enum u32 {
    unknown :: 0;
    wav     :: 1;
    flac    :: 2;
    mp3     :: 3;
    vorbis  :: 4;

    ma_encoding_format_unknown :: unknown;
    ma_encoding_format_wav     :: wav;
    ma_encoding_format_flac    :: flac;
    ma_encoding_format_mp3     :: mp3;
    ma_encoding_format_vorbis  :: vorbis;
}

ma_decoding_backend_config :: struct {
    preferredFormat: ma_format;
    seekPointCount:  ma_uint32; /* Set to > 0 to generate a seektable if the decoding backend supports it. */
}

ma_decoding_backend_config_init :: (preferredFormat: ma_format, seekPointCount: ma_uint32) -> ma_decoding_backend_config #foreign miniaudio;

ma_decoding_backend_vtable :: struct {
    onInit:       #type (pUserData: *void, onRead: ma_read_proc, onSeek: ma_seek_proc, onTell: ma_tell_proc, pReadSeekTellUserData: *void, pConfig: *ma_decoding_backend_config, pAllocationCallbacks: *ma_allocation_callbacks, ppBackend: **ma_data_source) -> ma_result #c_call;
    onInitFile:   #type (pUserData: *void, pFilePath: *u8, pConfig: *ma_decoding_backend_config, pAllocationCallbacks: *ma_allocation_callbacks, ppBackend: **ma_data_source) -> ma_result #c_call; /* Optional. */
    onInitFileW:  #type (pUserData: *void, pFilePath: *s32, pConfig: *ma_decoding_backend_config, pAllocationCallbacks: *ma_allocation_callbacks, ppBackend: **ma_data_source) -> ma_result #c_call; /* Optional. */
    onInitMemory: #type (pUserData: *void, pData: *void, dataSize: u64, pConfig: *ma_decoding_backend_config, pAllocationCallbacks: *ma_allocation_callbacks, ppBackend: **ma_data_source) -> ma_result #c_call; /* Optional. */
    onUninit:     #type (pUserData: *void, pBackend: *ma_data_source, pAllocationCallbacks: *ma_allocation_callbacks) -> void #c_call;
}

ma_decoder_read_proc :: #type (pDecoder: *ma_decoder, pBufferOut: *void, bytesToRead: u64, pBytesRead: *u64) -> ma_result #c_call;
ma_decoder_seek_proc :: #type (pDecoder: *ma_decoder, byteOffset: ma_int64, origin: ma_seek_origin) -> ma_result #c_call;
ma_decoder_tell_proc :: #type (pDecoder: *ma_decoder, pCursor: *ma_int64) -> ma_result #c_call;

ma_decoder_config :: struct {
    format:                 ma_format; /* Set to 0 or ma_format_unknown to use the stream's internal format. */
    channels:               ma_uint32; /* Set to 0 to use the stream's internal channels. */
    sampleRate:             ma_uint32; /* Set to 0 to use the stream's internal sample rate. */
    pChannelMap:            *ma_channel;
    channelMixMode:         ma_channel_mix_mode;
    ditherMode:             ma_dither_mode;
    resampling:             ma_resampler_config;
    allocationCallbacks:    ma_allocation_callbacks;
    encodingFormat:         ma_encoding_format;
    seekPointCount:         ma_uint32; /* When set to > 0, specifies the number of seek points to use for the generation of a seek table. Not all decoding backends support this. */
    ppCustomBackendVTables: **ma_decoding_backend_vtable;
    customBackendCount:     ma_uint32;
    pCustomBackendUserData: *void;
}

ma_decoder :: struct {
    ds:                     ma_data_source_base;
    pBackend:               *ma_data_source; /* The decoding backend we'll be pulling data from. */
    pBackendVTable:         *ma_decoding_backend_vtable; /* The vtable for the decoding backend. This needs to be stored so we can access the onUninit() callback. */
    pBackendUserData:       *void;
    onRead:                 ma_decoder_read_proc;
    onSeek:                 ma_decoder_seek_proc;
    onTell:                 ma_decoder_tell_proc;
    pUserData:              *void;
    readPointerInPCMFrames: ma_uint64; /* In output sample rate. Used for keeping track of how many frames are available for decoding. */
    outputFormat:           ma_format;
    outputChannels:         ma_uint32;
    outputSampleRate:       ma_uint32;
    converter:              ma_data_converter; /* Data conversion is achieved by running frames through this. */
    pInputCache:            *void; /* In input format. Can be null if it's not needed. */
    inputCacheCap:          ma_uint64; /* The capacity of the input cache. */
    inputCacheConsumed:     ma_uint64; /* The number of frames that have been consumed in the cache. Used for determining the next valid frame. */
    inputCacheRemaining:    ma_uint64; /* The number of valid frames remaining in the cache. */
    allocationCallbacks:    ma_allocation_callbacks;
    data:                   union {
        vfs:    struct {
            pVFS: *ma_vfs;
            file: ma_vfs_file;
        };

        memory: struct {
            pData:          *ma_uint8;
            dataSize:       u64;
            currentReadPos: u64;
        }; /* Only used for decoders that were opened against a block of memory. */
    };
}

ma_decoder_config_init :: (outputFormat: ma_format, outputChannels: ma_uint32, outputSampleRate: ma_uint32) -> ma_decoder_config #foreign miniaudio;
ma_decoder_config_init_default :: () -> ma_decoder_config #foreign miniaudio;

ma_decoder_init :: (onRead: ma_decoder_read_proc, onSeek: ma_decoder_seek_proc, pUserData: *void, pConfig: *ma_decoder_config, pDecoder: *ma_decoder) -> ma_result #foreign miniaudio;
ma_decoder_init_memory :: (pData: *void, dataSize: u64, pConfig: *ma_decoder_config, pDecoder: *ma_decoder) -> ma_result #foreign miniaudio;
ma_decoder_init_vfs :: (pVFS: *ma_vfs, pFilePath: *u8, pConfig: *ma_decoder_config, pDecoder: *ma_decoder) -> ma_result #foreign miniaudio;
ma_decoder_init_vfs_w :: (pVFS: *ma_vfs, pFilePath: *s32, pConfig: *ma_decoder_config, pDecoder: *ma_decoder) -> ma_result #foreign miniaudio;
ma_decoder_init_file :: (pFilePath: *u8, pConfig: *ma_decoder_config, pDecoder: *ma_decoder) -> ma_result #foreign miniaudio;
ma_decoder_init_file_w :: (pFilePath: *s32, pConfig: *ma_decoder_config, pDecoder: *ma_decoder) -> ma_result #foreign miniaudio;

/*
Uninitializes a decoder.
*/
ma_decoder_uninit :: (pDecoder: *ma_decoder) -> ma_result #foreign miniaudio;

/*
Reads PCM frames from the given decoder.

This is not thread safe without your own synchronization.
*/
ma_decoder_read_pcm_frames :: (pDecoder: *ma_decoder, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;

/*
Seeks to a PCM frame based on its absolute index.

This is not thread safe without your own synchronization.
*/
ma_decoder_seek_to_pcm_frame :: (pDecoder: *ma_decoder, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;

/*
Retrieves the decoder's output data format.
*/
ma_decoder_get_data_format :: (pDecoder: *ma_decoder, pFormat: *ma_format, pChannels: *ma_uint32, pSampleRate: *ma_uint32, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;

/*
Retrieves the current position of the read cursor in PCM frames.
*/
ma_decoder_get_cursor_in_pcm_frames :: (pDecoder: *ma_decoder, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;

/*
Retrieves the length of the decoder in PCM frames.

Do not call this on streams of an undefined length, such as internet radio.

If the length is unknown or an error occurs, 0 will be returned.

This will always return 0 for Vorbis decoders. This is due to a limitation with stb_vorbis in push mode which is what miniaudio
uses internally.

For MP3's, this will decode the entire file. Do not call this in time critical scenarios.

This function is not thread safe without your own synchronization.
*/
ma_decoder_get_length_in_pcm_frames :: (pDecoder: *ma_decoder, pLength: *ma_uint64) -> ma_result #foreign miniaudio;

/*
Retrieves the number of frames that can be read before reaching the end.

This calls `ma_decoder_get_length_in_pcm_frames()` so you need to be aware of the rules for that function, in
particular ensuring you do not call it on streams of an undefined length, such as internet radio.

If the total length of the decoder cannot be retrieved, such as with Vorbis decoders, `MA_NOT_IMPLEMENTED` will be
returned.
*/
ma_decoder_get_available_frames :: (pDecoder: *ma_decoder, pAvailableFrames: *ma_uint64) -> ma_result #foreign miniaudio;

/*
Helper for opening and decoding a file into a heap allocated block of memory. Free the returned pointer with ma_free(). On input,
pConfig should be set to what you want. On output it will be set to what you got.
*/
ma_decode_from_vfs :: (pVFS: *ma_vfs, pFilePath: *u8, pConfig: *ma_decoder_config, pFrameCountOut: *ma_uint64, ppPCMFramesOut: **void) -> ma_result #foreign miniaudio;
ma_decode_file :: (pFilePath: *u8, pConfig: *ma_decoder_config, pFrameCountOut: *ma_uint64, ppPCMFramesOut: **void) -> ma_result #foreign miniaudio;
ma_decode_memory :: (pData: *void, dataSize: u64, pConfig: *ma_decoder_config, pFrameCountOut: *ma_uint64, ppPCMFramesOut: **void) -> ma_result #foreign miniaudio;

ma_encoder_write_proc :: #type (pEncoder: *ma_encoder, pBufferIn: *void, bytesToWrite: u64, pBytesWritten: *u64) -> ma_result #c_call;
ma_encoder_seek_proc :: #type (pEncoder: *ma_encoder, offset: ma_int64, origin: ma_seek_origin) -> ma_result #c_call;
ma_encoder_init_proc :: #type (pEncoder: *ma_encoder) -> ma_result #c_call;
ma_encoder_uninit_proc :: #type (pEncoder: *ma_encoder) -> void #c_call;
ma_encoder_write_pcm_frames_proc :: #type (pEncoder: *ma_encoder, pFramesIn: *void, frameCount: ma_uint64, pFramesWritten: *ma_uint64) -> ma_result #c_call;

ma_encoder_config :: struct {
    encodingFormat:      ma_encoding_format;
    format:              ma_format;
    channels:            ma_uint32;
    sampleRate:          ma_uint32;
    allocationCallbacks: ma_allocation_callbacks;
}

ma_encoder_config_init :: (encodingFormat: ma_encoding_format, format: ma_format, channels: ma_uint32, sampleRate: ma_uint32) -> ma_encoder_config #foreign miniaudio;

ma_encoder :: struct {
    config:           ma_encoder_config;
    onWrite:          ma_encoder_write_proc;
    onSeek:           ma_encoder_seek_proc;
    onInit:           ma_encoder_init_proc;
    onUninit:         ma_encoder_uninit_proc;
    onWritePCMFrames: ma_encoder_write_pcm_frames_proc;
    pUserData:        *void;
    pInternalEncoder: *void;
    data:             union {
        vfs: struct {
            pVFS: *ma_vfs;
            file: ma_vfs_file;
        };
    };
}

ma_encoder_init :: (onWrite: ma_encoder_write_proc, onSeek: ma_encoder_seek_proc, pUserData: *void, pConfig: *ma_encoder_config, pEncoder: *ma_encoder) -> ma_result #foreign miniaudio;
ma_encoder_init_vfs :: (pVFS: *ma_vfs, pFilePath: *u8, pConfig: *ma_encoder_config, pEncoder: *ma_encoder) -> ma_result #foreign miniaudio;
ma_encoder_init_vfs_w :: (pVFS: *ma_vfs, pFilePath: *s32, pConfig: *ma_encoder_config, pEncoder: *ma_encoder) -> ma_result #foreign miniaudio;
ma_encoder_init_file :: (pFilePath: *u8, pConfig: *ma_encoder_config, pEncoder: *ma_encoder) -> ma_result #foreign miniaudio;
ma_encoder_init_file_w :: (pFilePath: *s32, pConfig: *ma_encoder_config, pEncoder: *ma_encoder) -> ma_result #foreign miniaudio;
ma_encoder_uninit :: (pEncoder: *ma_encoder) -> void #foreign miniaudio;
ma_encoder_write_pcm_frames :: (pEncoder: *ma_encoder, pFramesIn: *void, frameCount: ma_uint64, pFramesWritten: *ma_uint64) -> ma_result #foreign miniaudio;

ma_waveform_type :: enum u32 {
    sine     :: 0;
    square   :: 1;
    triangle :: 2;
    sawtooth :: 3;

    ma_waveform_type_sine     :: sine;
    ma_waveform_type_square   :: square;
    ma_waveform_type_triangle :: triangle;
    ma_waveform_type_sawtooth :: sawtooth;
}

ma_waveform_config :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
    type:       ma_waveform_type;
    amplitude:  float64;
    frequency:  float64;
}

ma_waveform_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, type: ma_waveform_type, amplitude: float64, frequency: float64) -> ma_waveform_config #foreign miniaudio;

ma_waveform :: struct {
    ds:      ma_data_source_base;
    config:  ma_waveform_config;
    advance: float64;
    time:    float64;
}

ma_waveform_init :: (pConfig: *ma_waveform_config, pWaveform: *ma_waveform) -> ma_result #foreign miniaudio;
ma_waveform_uninit :: (pWaveform: *ma_waveform) -> void #foreign miniaudio;
ma_waveform_read_pcm_frames :: (pWaveform: *ma_waveform, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_waveform_seek_to_pcm_frame :: (pWaveform: *ma_waveform, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_waveform_set_amplitude :: (pWaveform: *ma_waveform, amplitude: float64) -> ma_result #foreign miniaudio;
ma_waveform_set_frequency :: (pWaveform: *ma_waveform, frequency: float64) -> ma_result #foreign miniaudio;
ma_waveform_set_type :: (pWaveform: *ma_waveform, type: ma_waveform_type) -> ma_result #foreign miniaudio;
ma_waveform_set_sample_rate :: (pWaveform: *ma_waveform, sampleRate: ma_uint32) -> ma_result #foreign miniaudio;

ma_pulsewave_config :: struct {
    format:     ma_format;
    channels:   ma_uint32;
    sampleRate: ma_uint32;
    dutyCycle:  float64;
    amplitude:  float64;
    frequency:  float64;
}

ma_pulsewave_config_init :: (format: ma_format, channels: ma_uint32, sampleRate: ma_uint32, dutyCycle: float64, amplitude: float64, frequency: float64) -> ma_pulsewave_config #foreign miniaudio;

ma_pulsewave :: struct {
    waveform: ma_waveform;
    config:   ma_pulsewave_config;
}

ma_pulsewave_init :: (pConfig: *ma_pulsewave_config, pWaveform: *ma_pulsewave) -> ma_result #foreign miniaudio;
ma_pulsewave_uninit :: (pWaveform: *ma_pulsewave) -> void #foreign miniaudio;
ma_pulsewave_read_pcm_frames :: (pWaveform: *ma_pulsewave, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_pulsewave_seek_to_pcm_frame :: (pWaveform: *ma_pulsewave, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_pulsewave_set_amplitude :: (pWaveform: *ma_pulsewave, amplitude: float64) -> ma_result #foreign miniaudio;
ma_pulsewave_set_frequency :: (pWaveform: *ma_pulsewave, frequency: float64) -> ma_result #foreign miniaudio;
ma_pulsewave_set_sample_rate :: (pWaveform: *ma_pulsewave, sampleRate: ma_uint32) -> ma_result #foreign miniaudio;
ma_pulsewave_set_duty_cycle :: (pWaveform: *ma_pulsewave, dutyCycle: float64) -> ma_result #foreign miniaudio;

ma_noise_type :: enum u32 {
    white    :: 0;
    pink     :: 1;
    brownian :: 2;

    ma_noise_type_white    :: white;
    ma_noise_type_pink     :: pink;
    ma_noise_type_brownian :: brownian;
}

ma_noise_config :: struct {
    format:            ma_format;
    channels:          ma_uint32;
    type:              ma_noise_type;
    seed:              ma_int32;
    amplitude:         float64;
    duplicateChannels: ma_bool32;
}

ma_noise_config_init :: (format: ma_format, channels: ma_uint32, type: ma_noise_type, seed: ma_int32, amplitude: float64) -> ma_noise_config #foreign miniaudio;

ma_noise :: struct {
    ds:        ma_data_source_base;
    config:    ma_noise_config;
    lcg:       ma_lcg;
    state:     union {
        pink:     struct {
            bin:          **float64;
            accumulation: *float64;
            counter:      *ma_uint32;
        };

        brownian: struct {
            accumulation: *float64;
        };
    };

    /* Memory management. */
    _pHeap:    *void;
    _ownsHeap: ma_bool32;
}

ma_noise_get_heap_size :: (pConfig: *ma_noise_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_noise_init_preallocated :: (pConfig: *ma_noise_config, pHeap: *void, pNoise: *ma_noise) -> ma_result #foreign miniaudio;
ma_noise_init :: (pConfig: *ma_noise_config, pAllocationCallbacks: *ma_allocation_callbacks, pNoise: *ma_noise) -> ma_result #foreign miniaudio;
ma_noise_uninit :: (pNoise: *ma_noise, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_noise_read_pcm_frames :: (pNoise: *ma_noise, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_noise_set_amplitude :: (pNoise: *ma_noise, amplitude: float64) -> ma_result #foreign miniaudio;
ma_noise_set_seed :: (pNoise: *ma_noise, seed: ma_int32) -> ma_result #foreign miniaudio;
ma_noise_set_type :: (pNoise: *ma_noise, type: ma_noise_type) -> ma_result #foreign miniaudio;

ma_resource_manager_data_source_flags :: enum u32 {
    STREAM         :: 1;
    DECODE         :: 2;
    ASYNC          :: 4;
    WAIT_INIT      :: 8;
    UNKNOWN_LENGTH :: 16;
    LOOPING        :: 32;

    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM         :: STREAM;
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE         :: DECODE;
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC          :: ASYNC;
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_WAIT_INIT      :: WAIT_INIT;
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_UNKNOWN_LENGTH :: UNKNOWN_LENGTH;
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_LOOPING        :: LOOPING;
}

/*
Pipeline notifications used by the resource manager. Made up of both an async notification and a fence, both of which are optional.
*/
ma_resource_manager_pipeline_stage_notification :: struct {
    pNotification: *ma_async_notification;
    pFence:        *ma_fence;
}

ma_resource_manager_pipeline_notifications :: struct {
    init: ma_resource_manager_pipeline_stage_notification; /* Initialization of the decoder. */
    done: ma_resource_manager_pipeline_stage_notification; /* Decoding fully completed. */
}

ma_resource_manager_pipeline_notifications_init :: () -> ma_resource_manager_pipeline_notifications #foreign miniaudio;

ma_resource_manager_flags :: enum u32 {
    NON_BLOCKING :: 1;

    NO_THREADING :: 2;

    MA_RESOURCE_MANAGER_FLAG_NON_BLOCKING :: NON_BLOCKING;

    MA_RESOURCE_MANAGER_FLAG_NO_THREADING :: NO_THREADING;
}

ma_resource_manager_data_source_config :: struct {
    pFilePath:                   *u8;
    pFilePathW:                  *s32;
    pNotifications:              *ma_resource_manager_pipeline_notifications;
    initialSeekPointInPCMFrames: ma_uint64;
    rangeBegInPCMFrames:         ma_uint64;
    rangeEndInPCMFrames:         ma_uint64;
    loopPointBegInPCMFrames:     ma_uint64;
    loopPointEndInPCMFrames:     ma_uint64;
    flags:                       ma_uint32;
    isLooping:                   ma_bool32; /* Deprecated. Use the MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_LOOPING flag in `flags` instead. */
}

ma_resource_manager_data_source_config_init :: () -> ma_resource_manager_data_source_config #foreign miniaudio;

ma_resource_manager_data_supply_type :: enum u32 {
    unknown       :: 0;
    encoded       :: 1;
    decoded       :: 2;
    decoded_paged :: 3;

    ma_resource_manager_data_supply_type_unknown       :: unknown;
    ma_resource_manager_data_supply_type_encoded       :: encoded;
    ma_resource_manager_data_supply_type_decoded       :: decoded;
    ma_resource_manager_data_supply_type_decoded_paged :: decoded_paged;
}

ma_resource_manager_data_supply :: struct {
    type:    ma_resource_manager_data_supply_type; /* Read and written from different threads so needs to be accessed atomically. */
    backend: union {
        encoded:      struct {
            pData:       *void;
            sizeInBytes: u64;
        };

        decoded:      struct {
            pData:             *void;
            totalFrameCount:   ma_uint64;
            decodedFrameCount: ma_uint64;
            format:            ma_format;
            channels:          ma_uint32;
            sampleRate:        ma_uint32;
        };

        decodedPaged: struct {
            data:              ma_paged_audio_buffer_data;
            decodedFrameCount: ma_uint64;
            sampleRate:        ma_uint32;
        };
    };
}

ma_resource_manager_data_buffer_node :: struct {
    hashedName32:                 ma_uint32; /* The hashed name. This is the key. */
    refCount:                     ma_uint32;
    result:                       ma_result; /* Result from asynchronous loading. When loading set to MA_BUSY. When fully loaded set to MA_SUCCESS. When deleting set to MA_UNAVAILABLE. */
    executionCounter:             ma_uint32; /* For allocating execution orders for jobs. */
    executionPointer:             ma_uint32; /* For managing the order of execution for asynchronous jobs relating to this object. Incremented as jobs complete processing. */
    isDataOwnedByResourceManager: ma_bool32; /* Set to true when the underlying data buffer was allocated the resource manager. Set to false if it is owned by the application (via ma_resource_manager_register_*()). */
    data:                         ma_resource_manager_data_supply;
    pParent:                      *ma_resource_manager_data_buffer_node;
    pChildLo:                     *ma_resource_manager_data_buffer_node;
    pChildHi:                     *ma_resource_manager_data_buffer_node;
}

ma_resource_manager_data_buffer :: struct {
    ds:                     ma_data_source_base; /* Base data source. A data buffer is a data source. */
    pResourceManager:       *ma_resource_manager; /* A pointer to the resource manager that owns this buffer. */
    pNode:                  *ma_resource_manager_data_buffer_node; /* The data node. This is reference counted and is what supplies the data. */
    flags:                  ma_uint32; /* The flags that were passed used to initialize the buffer. */
    executionCounter:       ma_uint32; /* For allocating execution orders for jobs. */
    executionPointer:       ma_uint32; /* For managing the order of execution for asynchronous jobs relating to this object. Incremented as jobs complete processing. */
    seekTargetInPCMFrames:  ma_uint64; /* Only updated by the public API. Never written nor read from the job thread. */
    seekToCursorOnNextRead: ma_bool32; /* On the next read we need to seek to the frame cursor. */
    result:                 ma_result; /* Keeps track of a result of decoding. Set to MA_BUSY while the buffer is still loading. Set to MA_SUCCESS when loading is finished successfully. Otherwise set to some other code. */
    isLooping:              ma_bool32; /* Can be read and written by different threads at the same time. Must be used atomically. */
    isConnectorInitialized: ma_atomic_bool32; /* Used for asynchronous loading to ensure we don't try to initialize the connector multiple times while waiting for the node to fully load. */
    connector:              union {
        decoder:     ma_decoder; /* Supply type is ma_resource_manager_data_supply_type_encoded */
        buffer:      ma_audio_buffer; /* Supply type is ma_resource_manager_data_supply_type_decoded */
        pagedBuffer: ma_paged_audio_buffer; /* Supply type is ma_resource_manager_data_supply_type_decoded_paged */
    }; /* Connects this object to the node's data supply. */
}

ma_resource_manager_data_stream :: struct {
    ds:                     ma_data_source_base; /* Base data source. A data stream is a data source. */
    pResourceManager:       *ma_resource_manager; /* A pointer to the resource manager that owns this data stream. */
    flags:                  ma_uint32; /* The flags that were passed used to initialize the stream. */
    decoder:                ma_decoder; /* Used for filling pages with data. This is only ever accessed by the job thread. The public API should never touch this. */
    isDecoderInitialized:   ma_bool32; /* Required for determining whether or not the decoder should be uninitialized in MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_STREAM. */
    totalLengthInPCMFrames: ma_uint64; /* This is calculated when first loaded by the MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_STREAM. */
    relativeCursor:         ma_uint32; /* The playback cursor, relative to the current page. Only ever accessed by the public API. Never accessed by the job thread. */
    absoluteCursor:         ma_uint64; /* The playback cursor, in absolute position starting from the start of the file. */
    currentPageIndex:       ma_uint32; /* Toggles between 0 and 1. Index 0 is the first half of pPageData. Index 1 is the second half. Only ever accessed by the public API. Never accessed by the job thread. */
    executionCounter:       ma_uint32; /* For allocating execution orders for jobs. */
    executionPointer:       ma_uint32; /* For managing the order of execution for asynchronous jobs relating to this object. Incremented as jobs complete processing. */

    isLooping:              ma_bool32; /* Whether or not the stream is looping. It's important to set the looping flag at the data stream level for smooth loop transitions. */

    pPageData:              *void; /* Buffer containing the decoded data of each page. Allocated once at initialization time. */
    pageFrameCount:         [2] ma_uint32; /* The number of valid PCM frames in each page. Used to determine the last valid frame. */

    result:                 ma_result; /* Result from asynchronous loading. When loading set to MA_BUSY. When initialized set to MA_SUCCESS. When deleting set to MA_UNAVAILABLE. If an error occurs when loading, set to an error code. */
    isDecoderAtEnd:         ma_bool32; /* Whether or not the decoder has reached the end. */
    isPageValid:            [2] ma_bool32; /* Booleans to indicate whether or not a page is valid. Set to false by the public API, set to true by the job thread. Set to false as the pages are consumed, true when they are filled. */
    seekCounter:            ma_bool32; /* When 0, no seeking is being performed. When > 0, a seek is being performed and reading should be delayed with MA_BUSY. */
}

ma_resource_manager_data_source :: struct {
    backend:          union {
        buffer: ma_resource_manager_data_buffer;
        stream: ma_resource_manager_data_stream;
    }; /* Must be the first item because we need the first item to be the data source callbacks for the buffer or stream. */

    flags:            ma_uint32; /* The flags that were passed in to ma_resource_manager_data_source_init(). */
    executionCounter: ma_uint32; /* For allocating execution orders for jobs. */
    executionPointer: ma_uint32; /* For managing the order of execution for asynchronous jobs relating to this object. Incremented as jobs complete processing. */
}

ma_resource_manager_config :: struct {
    allocationCallbacks:            ma_allocation_callbacks;
    pLog:                           *ma_log;
    decodedFormat:                  ma_format; /* The decoded format to use. Set to ma_format_unknown (default) to use the file's native format. */
    decodedChannels:                ma_uint32; /* The decoded channel count to use. Set to 0 (default) to use the file's native channel count. */
    decodedSampleRate:              ma_uint32; /* the decoded sample rate to use. Set to 0 (default) to use the file's native sample rate. */
    jobThreadCount:                 ma_uint32; /* Set to 0 if you want to self-manage your job threads. Defaults to 1. */
    jobThreadStackSize:             u64;
    jobQueueCapacity:               ma_uint32; /* The maximum number of jobs that can fit in the queue at a time. Defaults to MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_CAPACITY. Cannot be zero. */
    flags:                          ma_uint32;
    pVFS:                           *ma_vfs; /* Can be NULL in which case defaults will be used. */
    ppCustomDecodingBackendVTables: **ma_decoding_backend_vtable;
    customDecodingBackendCount:     ma_uint32;
    pCustomDecodingBackendUserData: *void;
}

ma_resource_manager_config_init :: () -> ma_resource_manager_config #foreign miniaudio;

ma_resource_manager :: struct {
    config:              ma_resource_manager_config;
    pRootDataBufferNode: *ma_resource_manager_data_buffer_node; /* The root buffer in the binary tree. */

    dataBufferBSTLock:   ma_mutex; /* For synchronizing access to the data buffer binary tree. */
    jobThreads:          [64] ma_thread; /* The threads for executing jobs. */

    jobQueue:            ma_job_queue; /* Multi-consumer, multi-producer job queue for managing jobs for asynchronous decoding and streaming. */
    defaultVFS:          ma_default_vfs; /* Only used if a custom VFS is not specified. */
    log:                 ma_log; /* Only used if no log was specified in the config. */
}

/* Init. */
ma_resource_manager_init :: (pConfig: *ma_resource_manager_config, pResourceManager: *ma_resource_manager) -> ma_result #foreign miniaudio;
ma_resource_manager_uninit :: (pResourceManager: *ma_resource_manager) -> void #foreign miniaudio;
ma_resource_manager_get_log :: (pResourceManager: *ma_resource_manager) -> *ma_log #foreign miniaudio;

/* Registration. */
ma_resource_manager_register_file :: (pResourceManager: *ma_resource_manager, pFilePath: *u8, flags: ma_uint32) -> ma_result #foreign miniaudio;
ma_resource_manager_register_file_w :: (pResourceManager: *ma_resource_manager, pFilePath: *s32, flags: ma_uint32) -> ma_result #foreign miniaudio;
ma_resource_manager_register_decoded_data :: (pResourceManager: *ma_resource_manager, pName: *u8, pData: *void, frameCount: ma_uint64, format: ma_format, channels: ma_uint32, sampleRate: ma_uint32) -> ma_result #foreign miniaudio;
ma_resource_manager_register_decoded_data_w :: (pResourceManager: *ma_resource_manager, pName: *s32, pData: *void, frameCount: ma_uint64, format: ma_format, channels: ma_uint32, sampleRate: ma_uint32) -> ma_result #foreign miniaudio;
ma_resource_manager_register_encoded_data :: (pResourceManager: *ma_resource_manager, pName: *u8, pData: *void, sizeInBytes: u64) -> ma_result #foreign miniaudio;
ma_resource_manager_register_encoded_data_w :: (pResourceManager: *ma_resource_manager, pName: *s32, pData: *void, sizeInBytes: u64) -> ma_result #foreign miniaudio;
ma_resource_manager_unregister_file :: (pResourceManager: *ma_resource_manager, pFilePath: *u8) -> ma_result #foreign miniaudio;
ma_resource_manager_unregister_file_w :: (pResourceManager: *ma_resource_manager, pFilePath: *s32) -> ma_result #foreign miniaudio;
ma_resource_manager_unregister_data :: (pResourceManager: *ma_resource_manager, pName: *u8) -> ma_result #foreign miniaudio;
ma_resource_manager_unregister_data_w :: (pResourceManager: *ma_resource_manager, pName: *s32) -> ma_result #foreign miniaudio;

/* Data Buffers. */
ma_resource_manager_data_buffer_init_ex :: (pResourceManager: *ma_resource_manager, pConfig: *ma_resource_manager_data_source_config, pDataBuffer: *ma_resource_manager_data_buffer) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_init :: (pResourceManager: *ma_resource_manager, pFilePath: *u8, flags: ma_uint32, pNotifications: *ma_resource_manager_pipeline_notifications, pDataBuffer: *ma_resource_manager_data_buffer) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_init_w :: (pResourceManager: *ma_resource_manager, pFilePath: *s32, flags: ma_uint32, pNotifications: *ma_resource_manager_pipeline_notifications, pDataBuffer: *ma_resource_manager_data_buffer) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_init_copy :: (pResourceManager: *ma_resource_manager, pExistingDataBuffer: *ma_resource_manager_data_buffer, pDataBuffer: *ma_resource_manager_data_buffer) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_uninit :: (pDataBuffer: *ma_resource_manager_data_buffer) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_read_pcm_frames :: (pDataBuffer: *ma_resource_manager_data_buffer, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_seek_to_pcm_frame :: (pDataBuffer: *ma_resource_manager_data_buffer, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_get_data_format :: (pDataBuffer: *ma_resource_manager_data_buffer, pFormat: *ma_format, pChannels: *ma_uint32, pSampleRate: *ma_uint32, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_get_cursor_in_pcm_frames :: (pDataBuffer: *ma_resource_manager_data_buffer, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_get_length_in_pcm_frames :: (pDataBuffer: *ma_resource_manager_data_buffer, pLength: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_result :: (pDataBuffer: *ma_resource_manager_data_buffer) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_set_looping :: (pDataBuffer: *ma_resource_manager_data_buffer, isLooping: ma_bool32) -> ma_result #foreign miniaudio;
ma_resource_manager_data_buffer_is_looping :: (pDataBuffer: *ma_resource_manager_data_buffer) -> ma_bool32 #foreign miniaudio;
ma_resource_manager_data_buffer_get_available_frames :: (pDataBuffer: *ma_resource_manager_data_buffer, pAvailableFrames: *ma_uint64) -> ma_result #foreign miniaudio;

/* Data Streams. */
ma_resource_manager_data_stream_init_ex :: (pResourceManager: *ma_resource_manager, pConfig: *ma_resource_manager_data_source_config, pDataStream: *ma_resource_manager_data_stream) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_init :: (pResourceManager: *ma_resource_manager, pFilePath: *u8, flags: ma_uint32, pNotifications: *ma_resource_manager_pipeline_notifications, pDataStream: *ma_resource_manager_data_stream) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_init_w :: (pResourceManager: *ma_resource_manager, pFilePath: *s32, flags: ma_uint32, pNotifications: *ma_resource_manager_pipeline_notifications, pDataStream: *ma_resource_manager_data_stream) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_uninit :: (pDataStream: *ma_resource_manager_data_stream) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_read_pcm_frames :: (pDataStream: *ma_resource_manager_data_stream, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_seek_to_pcm_frame :: (pDataStream: *ma_resource_manager_data_stream, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_get_data_format :: (pDataStream: *ma_resource_manager_data_stream, pFormat: *ma_format, pChannels: *ma_uint32, pSampleRate: *ma_uint32, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_get_cursor_in_pcm_frames :: (pDataStream: *ma_resource_manager_data_stream, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_get_length_in_pcm_frames :: (pDataStream: *ma_resource_manager_data_stream, pLength: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_result :: (pDataStream: *ma_resource_manager_data_stream) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_set_looping :: (pDataStream: *ma_resource_manager_data_stream, isLooping: ma_bool32) -> ma_result #foreign miniaudio;
ma_resource_manager_data_stream_is_looping :: (pDataStream: *ma_resource_manager_data_stream) -> ma_bool32 #foreign miniaudio;
ma_resource_manager_data_stream_get_available_frames :: (pDataStream: *ma_resource_manager_data_stream, pAvailableFrames: *ma_uint64) -> ma_result #foreign miniaudio;

/* Data Sources. */
ma_resource_manager_data_source_init_ex :: (pResourceManager: *ma_resource_manager, pConfig: *ma_resource_manager_data_source_config, pDataSource: *ma_resource_manager_data_source) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_init :: (pResourceManager: *ma_resource_manager, pName: *u8, flags: ma_uint32, pNotifications: *ma_resource_manager_pipeline_notifications, pDataSource: *ma_resource_manager_data_source) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_init_w :: (pResourceManager: *ma_resource_manager, pName: *s32, flags: ma_uint32, pNotifications: *ma_resource_manager_pipeline_notifications, pDataSource: *ma_resource_manager_data_source) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_init_copy :: (pResourceManager: *ma_resource_manager, pExistingDataSource: *ma_resource_manager_data_source, pDataSource: *ma_resource_manager_data_source) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_uninit :: (pDataSource: *ma_resource_manager_data_source) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_read_pcm_frames :: (pDataSource: *ma_resource_manager_data_source, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_seek_to_pcm_frame :: (pDataSource: *ma_resource_manager_data_source, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_get_data_format :: (pDataSource: *ma_resource_manager_data_source, pFormat: *ma_format, pChannels: *ma_uint32, pSampleRate: *ma_uint32, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_get_cursor_in_pcm_frames :: (pDataSource: *ma_resource_manager_data_source, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_get_length_in_pcm_frames :: (pDataSource: *ma_resource_manager_data_source, pLength: *ma_uint64) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_result :: (pDataSource: *ma_resource_manager_data_source) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_set_looping :: (pDataSource: *ma_resource_manager_data_source, isLooping: ma_bool32) -> ma_result #foreign miniaudio;
ma_resource_manager_data_source_is_looping :: (pDataSource: *ma_resource_manager_data_source) -> ma_bool32 #foreign miniaudio;
ma_resource_manager_data_source_get_available_frames :: (pDataSource: *ma_resource_manager_data_source, pAvailableFrames: *ma_uint64) -> ma_result #foreign miniaudio;

/* Job management. */
ma_resource_manager_post_job :: (pResourceManager: *ma_resource_manager, pJob: *ma_job) -> ma_result #foreign miniaudio;
ma_resource_manager_post_job_quit :: (pResourceManager: *ma_resource_manager) -> ma_result #foreign miniaudio;
ma_resource_manager_next_job :: (pResourceManager: *ma_resource_manager, pJob: *ma_job) -> ma_result #foreign miniaudio;
ma_resource_manager_process_job :: (pResourceManager: *ma_resource_manager, pJob: *ma_job) -> ma_result #foreign miniaudio;
ma_resource_manager_process_next_job :: (pResourceManager: *ma_resource_manager) -> ma_result #foreign miniaudio;

/* For some internal memory management of ma_node_graph. */
ma_stack :: struct {
    offset:      u64;
    sizeInBytes: u64;
    _data:       [1] u8;
}

ma_node :: void;

/* Node flags. */
ma_node_flags :: enum u32 {
    PASSTHROUGH                :: 1;
    CONTINUOUS_PROCESSING      :: 2;
    ALLOW_NULL_INPUT           :: 4;
    DIFFERENT_PROCESSING_RATES :: 8;
    SILENT_OUTPUT              :: 16;

    MA_NODE_FLAG_PASSTHROUGH                :: PASSTHROUGH;
    MA_NODE_FLAG_CONTINUOUS_PROCESSING      :: CONTINUOUS_PROCESSING;
    MA_NODE_FLAG_ALLOW_NULL_INPUT           :: ALLOW_NULL_INPUT;
    MA_NODE_FLAG_DIFFERENT_PROCESSING_RATES :: DIFFERENT_PROCESSING_RATES;
    MA_NODE_FLAG_SILENT_OUTPUT              :: SILENT_OUTPUT;
}

/* The playback state of a node. Either started or stopped. */
ma_node_state :: enum u32 {
    started :: 0;
    stopped :: 1;

    ma_node_state_started :: started;
    ma_node_state_stopped :: stopped;
}

ma_node_vtable :: struct {
    /*
    Extended processing callback. This callback is used for effects that process input and output
    at different rates (i.e. they perform resampling). This is similar to the simple version, only
    they take two separate frame counts: one for input, and one for output.
    
    On input, `pFrameCountOut` is equal to the capacity of the output buffer for each bus, whereas
    `pFrameCountIn` will be equal to the number of PCM frames in each of the buffers in `ppFramesIn`.
    
    On output, set `pFrameCountOut` to the number of PCM frames that were actually output and set
    `pFrameCountIn` to the number of input frames that were consumed.
    */
    onProcess:                    #type (pNode: *ma_node, ppFramesIn: **float, pFrameCountIn: *ma_uint32, ppFramesOut: **float, pFrameCountOut: *ma_uint32) -> void #c_call;

    /*
    A callback for retrieving the number of input frames that are required to output the
    specified number of output frames. You would only want to implement this when the node performs
    resampling. This is optional, even for nodes that perform resampling, but it does offer a
    small reduction in latency as it allows miniaudio to calculate the exact number of input frames
    to read at a time instead of having to estimate.
    */
    onGetRequiredInputFrameCount: #type (pNode: *ma_node, outputFrameCount: ma_uint32, pInputFrameCount: *ma_uint32) -> ma_result #c_call;

    /*
    The number of input buses. This is how many sub-buffers will be contained in the `ppFramesIn`
    parameters of the callbacks above.
    */
    inputBusCount:                ma_uint8;

    /*
    The number of output buses. This is how many sub-buffers will be contained in the `ppFramesOut`
    parameters of the callbacks above.
    */
    outputBusCount:               ma_uint8;

    /*
    Flags describing characteristics of the node. This is currently just a placeholder for some
    ideas for later on.
    */
    flags:                        ma_uint32;
}

ma_node_config :: struct {
    vtable:          *ma_node_vtable; /* Should never be null. Initialization of the node will fail if so. */
    initialState:    ma_node_state; /* Defaults to ma_node_state_started. */
    inputBusCount:   ma_uint32; /* Only used if the vtable specifies an input bus count of `MA_NODE_BUS_COUNT_UNKNOWN`, otherwise must be set to `MA_NODE_BUS_COUNT_UNKNOWN` (default). */
    outputBusCount:  ma_uint32; /* Only used if the vtable specifies an output bus count of `MA_NODE_BUS_COUNT_UNKNOWN`, otherwise  be set to `MA_NODE_BUS_COUNT_UNKNOWN` (default). */
    pInputChannels:  *ma_uint32; /* The number of elements are determined by the input bus count as determined by the vtable, or `inputBusCount` if the vtable specifies `MA_NODE_BUS_COUNT_UNKNOWN`. */
    pOutputChannels: *ma_uint32; /* The number of elements are determined by the output bus count as determined by the vtable, or `outputBusCount` if the vtable specifies `MA_NODE_BUS_COUNT_UNKNOWN`. */
}

ma_node_config_init :: () -> ma_node_config #foreign miniaudio;

ma_node_output_bus :: struct {
    pNode:                  *ma_node; /* The node that owns this output bus. The input node. Will be null for dummy head and tail nodes. */
    outputBusIndex:         ma_uint8; /* The index of the output bus on pNode that this output bus represents. */
    channels:               ma_uint8; /* The number of channels in the audio stream for this bus. */

    inputNodeInputBusIndex: ma_uint8; /* The index of the input bus on the input. Required for detaching. Will only be used within the spinlock so does not need to be atomic. */
    flags:                  ma_uint32; /* Some state flags for tracking the read state of the output buffer. A combination of MA_NODE_OUTPUT_BUS_FLAG_*. */
    refCount:               ma_uint32; /* Reference count for some thread-safety when detaching. */
    isAttached:             ma_bool32; /* This is used to prevent iteration of nodes that are in the middle of being detached. Used for thread safety. */
    lock:                   ma_spinlock; /* Unfortunate lock, but significantly simplifies the implementation. Required for thread-safe attaching and detaching. */
    volume:                 float; /* Linear. */
    pNext:                  *ma_node_output_bus; /* If null, it's the tail node or detached. */
    pPrev:                  *ma_node_output_bus; /* If null, it's the head node or detached. */
    pInputNode:             *ma_node; /* The node that this output bus is attached to. Required for detaching. */
}

ma_node_input_bus :: struct {
    head:        ma_node_output_bus; /* Dummy head node for simplifying some lock-free thread-safety stuff. */
    nextCounter: ma_uint32; /* This is used to determine whether or not the input bus is finding the next node in the list. Used for thread safety when detaching output buses. */
    lock:        ma_spinlock; /* Unfortunate lock, but significantly simplifies the implementation. Required for thread-safe attaching and detaching. */

    channels:    ma_uint8; /* The number of channels in the audio stream for this bus. */
}

ma_node_base :: struct {
    pNodeGraph:                  *ma_node_graph; /* The graph this node belongs to. */
    vtable:                      *ma_node_vtable;
    inputBusCount:               ma_uint32;
    outputBusCount:              ma_uint32;
    pInputBuses:                 *ma_node_input_bus;
    pOutputBuses:                *ma_node_output_bus;
    pCachedData:                 *float; /* Allocated on the heap. Fixed size. Needs to be stored on the heap because reading from output buses is done in separate function calls. */
    cachedDataCapInFramesPerBus: ma_uint16; /* The capacity of the input data cache in frames, per bus. */

    /* These variables are read and written only from the audio thread. */
    cachedFrameCountOut:         ma_uint16;
    cachedFrameCountIn:          ma_uint16;
    consumedFrameCountIn:        ma_uint16;

    state:                       ma_node_state; /* When set to stopped, nothing will be read, regardless of the times in stateTimes. */
    stateTimes:                  [2] ma_uint64; /* Indexed by ma_node_state. Specifies the time based on the global clock that a node should be considered to be in the relevant state. */
    localTime:                   ma_uint64; /* The node's local clock. This is just a running sum of the number of output frames that have been processed. Can be modified by any thread with `ma_node_set_time()`. */

    /* Memory management. */
    _inputBuses:                 [2] ma_node_input_bus;
    _outputBuses:                [2] ma_node_output_bus;
    _pHeap:                      *void; /* A heap allocation for internal use only. pInputBuses and/or pOutputBuses will point to this if the bus count exceeds MA_MAX_NODE_LOCAL_BUS_COUNT. */
    _ownsHeap:                   ma_bool32; /* If set to true, the node owns the heap allocation and _pHeap will be freed in ma_node_uninit(). */
}

ma_node_get_heap_size :: (pNodeGraph: *ma_node_graph, pConfig: *ma_node_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_node_init_preallocated :: (pNodeGraph: *ma_node_graph, pConfig: *ma_node_config, pHeap: *void, pNode: *ma_node) -> ma_result #foreign miniaudio;
ma_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_node) -> ma_result #foreign miniaudio;
ma_node_uninit :: (pNode: *ma_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_node_get_node_graph :: (pNode: *ma_node) -> *ma_node_graph #foreign miniaudio;
ma_node_get_input_bus_count :: (pNode: *ma_node) -> ma_uint32 #foreign miniaudio;
ma_node_get_output_bus_count :: (pNode: *ma_node) -> ma_uint32 #foreign miniaudio;
ma_node_get_input_channels :: (pNode: *ma_node, inputBusIndex: ma_uint32) -> ma_uint32 #foreign miniaudio;
ma_node_get_output_channels :: (pNode: *ma_node, outputBusIndex: ma_uint32) -> ma_uint32 #foreign miniaudio;
ma_node_attach_output_bus :: (pNode: *ma_node, outputBusIndex: ma_uint32, pOtherNode: *ma_node, otherNodeInputBusIndex: ma_uint32) -> ma_result #foreign miniaudio;
ma_node_detach_output_bus :: (pNode: *ma_node, outputBusIndex: ma_uint32) -> ma_result #foreign miniaudio;
ma_node_detach_all_output_buses :: (pNode: *ma_node) -> ma_result #foreign miniaudio;
ma_node_set_output_bus_volume :: (pNode: *ma_node, outputBusIndex: ma_uint32, volume: float) -> ma_result #foreign miniaudio;
ma_node_get_output_bus_volume :: (pNode: *ma_node, outputBusIndex: ma_uint32) -> float #foreign miniaudio;
ma_node_set_state :: (pNode: *ma_node, state: ma_node_state) -> ma_result #foreign miniaudio;
ma_node_get_state :: (pNode: *ma_node) -> ma_node_state #foreign miniaudio;
ma_node_set_state_time :: (pNode: *ma_node, state: ma_node_state, globalTime: ma_uint64) -> ma_result #foreign miniaudio;
ma_node_get_state_time :: (pNode: *ma_node, state: ma_node_state) -> ma_uint64 #foreign miniaudio;
ma_node_get_state_by_time :: (pNode: *ma_node, globalTime: ma_uint64) -> ma_node_state #foreign miniaudio;
ma_node_get_state_by_time_range :: (pNode: *ma_node, globalTimeBeg: ma_uint64, globalTimeEnd: ma_uint64) -> ma_node_state #foreign miniaudio;
ma_node_get_time :: (pNode: *ma_node) -> ma_uint64 #foreign miniaudio;
ma_node_set_time :: (pNode: *ma_node, localTime: ma_uint64) -> ma_result #foreign miniaudio;

ma_node_graph_config :: struct {
    channels:               ma_uint32;
    processingSizeInFrames: ma_uint32; /* This is the preferred processing size for node processing callbacks unless overridden by a node itself. Can be 0 in which case it will be based on the frame count passed into ma_node_graph_read_pcm_frames(), but will not be well defined. */
    preMixStackSizeInBytes: u64; /* Defaults to 512KB per channel. Reducing this will save memory, but the depth of your node graph will be more restricted. */
}

ma_node_graph_config_init :: (channels: ma_uint32) -> ma_node_graph_config #foreign miniaudio;

ma_node_graph :: struct {
    base:                           ma_node_base; /* The node graph itself is a node so it can be connected as an input to different node graph. This has zero inputs and calls ma_node_graph_read_pcm_frames() to generate it's output. */
    endpoint:                       ma_node_base; /* Special node that all nodes eventually connect to. Data is read from this node in ma_node_graph_read_pcm_frames(). */
    pProcessingCache:               *float; /* This will be allocated when processingSizeInFrames is non-zero. This is needed because ma_node_graph_read_pcm_frames() can be called with a variable number of frames, and we may need to do some buffering in situations where the caller requests a frame count that's not a multiple of processingSizeInFrames. */
    processingCacheFramesRemaining: ma_uint32;
    processingSizeInFrames:         ma_uint32;

    /* Read and written by multiple threads. */
    isReading:                      ma_bool32;

    /* Modified only by the audio thread. */
    pPreMixStack:                   *ma_stack;
}

ma_node_graph_init :: (pConfig: *ma_node_graph_config, pAllocationCallbacks: *ma_allocation_callbacks, pNodeGraph: *ma_node_graph) -> ma_result #foreign miniaudio;
ma_node_graph_uninit :: (pNodeGraph: *ma_node_graph, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_node_graph_get_endpoint :: (pNodeGraph: *ma_node_graph) -> *ma_node #foreign miniaudio;
ma_node_graph_read_pcm_frames :: (pNodeGraph: *ma_node_graph, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_node_graph_get_channels :: (pNodeGraph: *ma_node_graph) -> ma_uint32 #foreign miniaudio;
ma_node_graph_get_time :: (pNodeGraph: *ma_node_graph) -> ma_uint64 #foreign miniaudio;
ma_node_graph_set_time :: (pNodeGraph: *ma_node_graph, globalTime: ma_uint64) -> ma_result #foreign miniaudio;

/* Data source node. 0 input buses, 1 output bus. Used for reading from a data source. */
ma_data_source_node_config :: struct {
    nodeConfig:  ma_node_config;
    pDataSource: *ma_data_source;
}

ma_data_source_node_config_init :: (pDataSource: *ma_data_source) -> ma_data_source_node_config #foreign miniaudio;

ma_data_source_node :: struct {
    base:        ma_node_base;
    pDataSource: *ma_data_source;
}

ma_data_source_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_data_source_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pDataSourceNode: *ma_data_source_node) -> ma_result #foreign miniaudio;
ma_data_source_node_uninit :: (pDataSourceNode: *ma_data_source_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_data_source_node_set_looping :: (pDataSourceNode: *ma_data_source_node, isLooping: ma_bool32) -> ma_result #foreign miniaudio;
ma_data_source_node_is_looping :: (pDataSourceNode: *ma_data_source_node) -> ma_bool32 #foreign miniaudio;

/* Splitter Node. 1 input, many outputs. Used for splitting/copying a stream so it can be as input into two separate output nodes. */
ma_splitter_node_config :: struct {
    nodeConfig:     ma_node_config;
    channels:       ma_uint32;
    outputBusCount: ma_uint32;
}

ma_splitter_node_config_init :: (channels: ma_uint32) -> ma_splitter_node_config #foreign miniaudio;

ma_splitter_node :: struct {
    base: ma_node_base;
}

ma_splitter_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_splitter_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pSplitterNode: *ma_splitter_node) -> ma_result #foreign miniaudio;
ma_splitter_node_uninit :: (pSplitterNode: *ma_splitter_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Biquad Node
*/
ma_biquad_node_config :: struct {
    nodeConfig: ma_node_config;
    biquad:     ma_biquad_config;
}

ma_biquad_node_config_init :: (channels: ma_uint32, b0: float, b1: float, b2: float, a0: float, a1: float, a2: float) -> ma_biquad_node_config #foreign miniaudio;

ma_biquad_node :: struct {
    baseNode: ma_node_base;
    biquad:   ma_biquad;
}

ma_biquad_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_biquad_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_biquad_node) -> ma_result #foreign miniaudio;
ma_biquad_node_reinit :: (pConfig: *ma_biquad_config, pNode: *ma_biquad_node) -> ma_result #foreign miniaudio;
ma_biquad_node_uninit :: (pNode: *ma_biquad_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Low Pass Filter Node
*/
ma_lpf_node_config :: struct {
    nodeConfig: ma_node_config;
    lpf:        ma_lpf_config;
}

ma_lpf_node_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, order: ma_uint32) -> ma_lpf_node_config #foreign miniaudio;

ma_lpf_node :: struct {
    baseNode: ma_node_base;
    lpf:      ma_lpf;
}

ma_lpf_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_lpf_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_lpf_node) -> ma_result #foreign miniaudio;
ma_lpf_node_reinit :: (pConfig: *ma_lpf_config, pNode: *ma_lpf_node) -> ma_result #foreign miniaudio;
ma_lpf_node_uninit :: (pNode: *ma_lpf_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
High Pass Filter Node
*/
ma_hpf_node_config :: struct {
    nodeConfig: ma_node_config;
    hpf:        ma_hpf_config;
}

ma_hpf_node_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, order: ma_uint32) -> ma_hpf_node_config #foreign miniaudio;

ma_hpf_node :: struct {
    baseNode: ma_node_base;
    hpf:      ma_hpf;
}

ma_hpf_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_hpf_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_hpf_node) -> ma_result #foreign miniaudio;
ma_hpf_node_reinit :: (pConfig: *ma_hpf_config, pNode: *ma_hpf_node) -> ma_result #foreign miniaudio;
ma_hpf_node_uninit :: (pNode: *ma_hpf_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Band Pass Filter Node
*/
ma_bpf_node_config :: struct {
    nodeConfig: ma_node_config;
    bpf:        ma_bpf_config;
}

ma_bpf_node_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, cutoffFrequency: float64, order: ma_uint32) -> ma_bpf_node_config #foreign miniaudio;

ma_bpf_node :: struct {
    baseNode: ma_node_base;
    bpf:      ma_bpf;
}

ma_bpf_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_bpf_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_bpf_node) -> ma_result #foreign miniaudio;
ma_bpf_node_reinit :: (pConfig: *ma_bpf_config, pNode: *ma_bpf_node) -> ma_result #foreign miniaudio;
ma_bpf_node_uninit :: (pNode: *ma_bpf_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Notching Filter Node
*/
ma_notch_node_config :: struct {
    nodeConfig: ma_node_config;
    notch:      ma_notch_config;
}

ma_notch_node_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, q: float64, frequency: float64) -> ma_notch_node_config #foreign miniaudio;

ma_notch_node :: struct {
    baseNode: ma_node_base;
    notch:    ma_notch2;
}

ma_notch_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_notch_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_notch_node) -> ma_result #foreign miniaudio;
ma_notch_node_reinit :: (pConfig: *ma_notch_config, pNode: *ma_notch_node) -> ma_result #foreign miniaudio;
ma_notch_node_uninit :: (pNode: *ma_notch_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Peaking Filter Node
*/
ma_peak_node_config :: struct {
    nodeConfig: ma_node_config;
    peak:       ma_peak_config;
}

ma_peak_node_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, gainDB: float64, q: float64, frequency: float64) -> ma_peak_node_config #foreign miniaudio;

ma_peak_node :: struct {
    baseNode: ma_node_base;
    peak:     ma_peak2;
}

ma_peak_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_peak_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_peak_node) -> ma_result #foreign miniaudio;
ma_peak_node_reinit :: (pConfig: *ma_peak_config, pNode: *ma_peak_node) -> ma_result #foreign miniaudio;
ma_peak_node_uninit :: (pNode: *ma_peak_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
Low Shelf Filter Node
*/
ma_loshelf_node_config :: struct {
    nodeConfig: ma_node_config;
    loshelf:    ma_loshelf_config;
}

ma_loshelf_node_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, gainDB: float64, q: float64, frequency: float64) -> ma_loshelf_node_config #foreign miniaudio;

ma_loshelf_node :: struct {
    baseNode: ma_node_base;
    loshelf:  ma_loshelf2;
}

ma_loshelf_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_loshelf_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_loshelf_node) -> ma_result #foreign miniaudio;
ma_loshelf_node_reinit :: (pConfig: *ma_loshelf_config, pNode: *ma_loshelf_node) -> ma_result #foreign miniaudio;
ma_loshelf_node_uninit :: (pNode: *ma_loshelf_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/*
High Shelf Filter Node
*/
ma_hishelf_node_config :: struct {
    nodeConfig: ma_node_config;
    hishelf:    ma_hishelf_config;
}

ma_hishelf_node_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, gainDB: float64, q: float64, frequency: float64) -> ma_hishelf_node_config #foreign miniaudio;

ma_hishelf_node :: struct {
    baseNode: ma_node_base;
    hishelf:  ma_hishelf2;
}

ma_hishelf_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_hishelf_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pNode: *ma_hishelf_node) -> ma_result #foreign miniaudio;
ma_hishelf_node_reinit :: (pConfig: *ma_hishelf_config, pNode: *ma_hishelf_node) -> ma_result #foreign miniaudio;
ma_hishelf_node_uninit :: (pNode: *ma_hishelf_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

ma_delay_node_config :: struct {
    nodeConfig: ma_node_config;
    delay:      ma_delay_config;
}

ma_delay_node_config_init :: (channels: ma_uint32, sampleRate: ma_uint32, delayInFrames: ma_uint32, decay: float) -> ma_delay_node_config #foreign miniaudio;

ma_delay_node :: struct {
    baseNode: ma_node_base;
    delay:    ma_delay;
}

ma_delay_node_init :: (pNodeGraph: *ma_node_graph, pConfig: *ma_delay_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pDelayNode: *ma_delay_node) -> ma_result #foreign miniaudio;
ma_delay_node_uninit :: (pDelayNode: *ma_delay_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;
ma_delay_node_set_wet :: (pDelayNode: *ma_delay_node, value: float) -> void #foreign miniaudio;
ma_delay_node_get_wet :: (pDelayNode: *ma_delay_node) -> float #foreign miniaudio;
ma_delay_node_set_dry :: (pDelayNode: *ma_delay_node, value: float) -> void #foreign miniaudio;
ma_delay_node_get_dry :: (pDelayNode: *ma_delay_node) -> float #foreign miniaudio;
ma_delay_node_set_decay :: (pDelayNode: *ma_delay_node, value: float) -> void #foreign miniaudio;
ma_delay_node_get_decay :: (pDelayNode: *ma_delay_node) -> float #foreign miniaudio;

/* Sound flags. */
ma_sound_flags :: enum u32 {
    STREAM                :: 1;
    DECODE                :: 2;
    ASYNC                 :: 4;
    WAIT_INIT             :: 8;
    UNKNOWN_LENGTH        :: 16;
    LOOPING               :: 32;

    NO_DEFAULT_ATTACHMENT :: 4096;
    NO_PITCH              :: 8192;
    NO_SPATIALIZATION     :: 16384;

    MA_SOUND_FLAG_STREAM                :: STREAM;
    MA_SOUND_FLAG_DECODE                :: DECODE;
    MA_SOUND_FLAG_ASYNC                 :: ASYNC;
    MA_SOUND_FLAG_WAIT_INIT             :: WAIT_INIT;
    MA_SOUND_FLAG_UNKNOWN_LENGTH        :: UNKNOWN_LENGTH;
    MA_SOUND_FLAG_LOOPING               :: LOOPING;

    MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT :: NO_DEFAULT_ATTACHMENT;
    MA_SOUND_FLAG_NO_PITCH              :: NO_PITCH;
    MA_SOUND_FLAG_NO_SPATIALIZATION     :: NO_SPATIALIZATION;
}

ma_engine_node_type :: enum u32 {
    sound :: 0;
    group :: 1;

    ma_engine_node_type_sound :: sound;
    ma_engine_node_type_group :: group;
}

ma_engine_node_config :: struct {
    pEngine:                     *ma_engine;
    type:                        ma_engine_node_type;
    channelsIn:                  ma_uint32;
    channelsOut:                 ma_uint32;
    sampleRate:                  ma_uint32; /* Only used when the type is set to ma_engine_node_type_sound. */
    volumeSmoothTimeInPCMFrames: ma_uint32; /* The number of frames to smooth over volume changes. Defaults to 0 in which case no smoothing is used. */
    monoExpansionMode:           ma_mono_expansion_mode;
    isPitchDisabled:             ma_bool8; /* Pitching can be explicitly disabled with MA_SOUND_FLAG_NO_PITCH to optimize processing. */
    isSpatializationDisabled:    ma_bool8; /* Spatialization can be explicitly disabled with MA_SOUND_FLAG_NO_SPATIALIZATION. */
    pinnedListenerIndex:         ma_uint8; /* The index of the listener this node should always use for spatialization. If set to MA_LISTENER_INDEX_CLOSEST the engine will use the closest listener. */
}

ma_engine_node_config_init :: (pEngine: *ma_engine, type: ma_engine_node_type, flags: ma_uint32) -> ma_engine_node_config #foreign miniaudio;

/* Base node object for both ma_sound and ma_sound_group. */
ma_engine_node :: struct {
    baseNode:                    ma_node_base; /* Must be the first member for compatibility with the ma_node API. */
    pEngine:                     *ma_engine; /* A pointer to the engine. Set based on the value from the config. */
    sampleRate:                  ma_uint32; /* The sample rate of the input data. For sounds backed by a data source, this will be the data source's sample rate. Otherwise it'll be the engine's sample rate. */
    volumeSmoothTimeInPCMFrames: ma_uint32;
    monoExpansionMode:           ma_mono_expansion_mode;
    fader:                       ma_fader;
    resampler:                   ma_linear_resampler; /* For pitch shift. */
    spatializer:                 ma_spatializer;
    panner:                      ma_panner;
    volumeGainer:                ma_gainer; /* This will only be used if volumeSmoothTimeInPCMFrames is > 0. */
    volume:                      ma_atomic_float; /* Defaults to 1. */
    pitch:                       float;
    oldPitch:                    float; /* For determining whether or not the resampler needs to be updated to reflect the new pitch. The resampler will be updated on the mixing thread. */
    oldDopplerPitch:             float; /* For determining whether or not the resampler needs to be updated to take a new doppler pitch into account. */
    isPitchDisabled:             ma_bool32; /* When set to true, pitching will be disabled which will allow the resampler to be bypassed to save some computation. */
    isSpatializationDisabled:    ma_bool32; /* Set to false by default. When set to false, will not have spatialisation applied. */
    pinnedListenerIndex:         ma_uint32; /* The index of the listener this node should always use for spatialization. If set to MA_LISTENER_INDEX_CLOSEST the engine will use the closest listener. */

    fadeSettings:                struct {
        volumeBeg:                  ma_atomic_float;
        volumeEnd:                  ma_atomic_float;
        fadeLengthInFrames:         ma_atomic_uint64; /* <-- Defaults to (~(ma_uint64)0) which is used to indicate that no fade should be applied. */
        absoluteGlobalTimeInFrames: ma_atomic_uint64; /* <-- The time to start the fade. */
    };

    /* Memory management. */
    _ownsHeap:                   ma_bool8;
    _pHeap:                      *void;
}

ma_engine_node_get_heap_size :: (pConfig: *ma_engine_node_config, pHeapSizeInBytes: *u64) -> ma_result #foreign miniaudio;
ma_engine_node_init_preallocated :: (pConfig: *ma_engine_node_config, pHeap: *void, pEngineNode: *ma_engine_node) -> ma_result #foreign miniaudio;
ma_engine_node_init :: (pConfig: *ma_engine_node_config, pAllocationCallbacks: *ma_allocation_callbacks, pEngineNode: *ma_engine_node) -> ma_result #foreign miniaudio;
ma_engine_node_uninit :: (pEngineNode: *ma_engine_node, pAllocationCallbacks: *ma_allocation_callbacks) -> void #foreign miniaudio;

/* Callback for when a sound reaches the end. */
ma_sound_end_proc :: #type (pUserData: *void, pSound: *ma_sound) -> void #c_call;

ma_sound_config :: struct {
    pFilePath:                      *u8; /* Set this to load from the resource manager. */
    pFilePathW:                     *s32; /* Set this to load from the resource manager. */
    pDataSource:                    *ma_data_source; /* Set this to load from an existing data source. */
    pInitialAttachment:             *ma_node; /* If set, the sound will be attached to an input of this node. This can be set to a ma_sound. If set to NULL, the sound will be attached directly to the endpoint unless MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT is set in `flags`. */
    initialAttachmentInputBusIndex: ma_uint32; /* The index of the input bus of pInitialAttachment to attach the sound to. */
    channelsIn:                     ma_uint32; /* Ignored if using a data source as input (the data source's channel count will be used always). Otherwise, setting to 0 will cause the engine's channel count to be used. */
    channelsOut:                    ma_uint32; /* Set this to 0 (default) to use the engine's channel count. Set to MA_SOUND_SOURCE_CHANNEL_COUNT to use the data source's channel count (only used if using a data source as input). */
    monoExpansionMode:              ma_mono_expansion_mode; /* Controls how the mono channel should be expanded to other channels when spatialization is disabled on a sound. */
    flags:                          ma_uint32; /* A combination of MA_SOUND_FLAG_* flags. */
    volumeSmoothTimeInPCMFrames:    ma_uint32; /* The number of frames to smooth over volume changes. Defaults to 0 in which case no smoothing is used. */
    initialSeekPointInPCMFrames:    ma_uint64; /* Initializes the sound such that it's seeked to this location by default. */
    rangeBegInPCMFrames:            ma_uint64;
    rangeEndInPCMFrames:            ma_uint64;
    loopPointBegInPCMFrames:        ma_uint64;
    loopPointEndInPCMFrames:        ma_uint64;
    endCallback:                    ma_sound_end_proc; /* Fired when the sound reaches the end. Will be fired from the audio thread. Do not restart, uninitialize or otherwise change the state of the sound from here. Instead fire an event or set a variable to indicate to a different thread to change the start of the sound. Will not be fired in response to a scheduled stop with ma_sound_set_stop_time_*(). */
    pEndCallbackUserData:           *void;

    initNotifications:              ma_resource_manager_pipeline_notifications;

    pDoneFence:                     *ma_fence; /* Deprecated. Use initNotifications instead. Released when the resource manager has finished decoding the entire sound. Not used with streams. */
    isLooping:                      ma_bool32; /* Deprecated. Use the MA_SOUND_FLAG_LOOPING flag in `flags` instead. */
}

ma_sound_config_init :: () -> ma_sound_config #foreign miniaudio;
ma_sound_config_init_2 :: (pEngine: *ma_engine) -> ma_sound_config #foreign miniaudio;

ma_sound :: struct {
    engineNode:                 ma_engine_node; /* Must be the first member for compatibility with the ma_node API. */
    pDataSource:                *ma_data_source;
    seekTarget:                 ma_uint64; /* The PCM frame index to seek to in the mixing thread. Set to (~(ma_uint64)0) to not perform any seeking. */
    atEnd:                      ma_bool32;
    endCallback:                ma_sound_end_proc;
    pEndCallbackUserData:       *void;
    ownsDataSource:             ma_bool8;

    pResourceManagerDataSource: *ma_resource_manager_data_source;
}

ma_sound_inlined :: struct {
    sound: ma_sound;
    pNext: *ma_sound_inlined;
    pPrev: *ma_sound_inlined;
}

/* A sound group is just a sound. */
ma_sound_group_config :: ma_sound_config;
ma_sound_group :: ma_sound;

ma_sound_group_config_init :: () -> ma_sound_group_config #foreign miniaudio;
ma_sound_group_config_init_2 :: (pEngine: *ma_engine) -> ma_sound_group_config #foreign miniaudio;

ma_engine_process_proc :: #type (pUserData: *void, pFramesOut: *float, frameCount: ma_uint64) -> void #c_call;

ma_engine_config :: struct {
    pResourceManager:                   *ma_resource_manager; /* Can be null in which case a resource manager will be created for you. */

    pContext:                           *ma_context;
    pDevice:                            *ma_device; /* If set, the caller is responsible for calling ma_engine_data_callback() in the device's data callback. */
    pPlaybackDeviceID:                  *ma_device_id; /* The ID of the playback device to use with the default listener. */
    dataCallback:                       ma_device_data_proc; /* Can be null. Can be used to provide a custom device data callback. */
    notificationCallback:               ma_device_notification_proc;

    pLog:                               *ma_log; /* When set to NULL, will use the context's log. */
    listenerCount:                      ma_uint32; /* Must be between 1 and MA_ENGINE_MAX_LISTENERS. */
    channels:                           ma_uint32; /* The number of channels to use when mixing and spatializing. When set to 0, will use the native channel count of the device. */
    sampleRate:                         ma_uint32; /* The sample rate. When set to 0 will use the native channel count of the device. */
    periodSizeInFrames:                 ma_uint32; /* If set to something other than 0, updates will always be exactly this size. The underlying device may be a different size, but from the perspective of the mixer that won't matter.*/
    periodSizeInMilliseconds:           ma_uint32; /* Used if periodSizeInFrames is unset. */
    gainSmoothTimeInFrames:             ma_uint32; /* The number of frames to interpolate the gain of spatialized sounds across. If set to 0, will use gainSmoothTimeInMilliseconds. */
    gainSmoothTimeInMilliseconds:       ma_uint32; /* When set to 0, gainSmoothTimeInFrames will be used. If both are set to 0, a default value will be used. */
    defaultVolumeSmoothTimeInPCMFrames: ma_uint32; /* Defaults to 0. Controls the default amount of smoothing to apply to volume changes to sounds. High values means more smoothing at the expense of high latency (will take longer to reach the new volume). */
    preMixStackSizeInBytes:             ma_uint32; /* A stack is used for internal processing in the node graph. This allows you to configure the size of this stack. Smaller values will reduce the maximum depth of your node graph. You should rarely need to modify this. */
    allocationCallbacks:                ma_allocation_callbacks;
    noAutoStart:                        ma_bool32; /* When set to true, requires an explicit call to ma_engine_start(). This is false by default, meaning the engine will be started automatically in ma_engine_init(). */
    noDevice:                           ma_bool32; /* When set to true, don't create a default device. ma_engine_read_pcm_frames() can be called manually to read data. */
    monoExpansionMode:                  ma_mono_expansion_mode; /* Controls how the mono channel should be expanded to other channels when spatialization is disabled on a sound. */
    pResourceManagerVFS:                *ma_vfs; /* A pointer to a pre-allocated VFS object to use with the resource manager. This is ignored if pResourceManager is not NULL. */
    onProcess:                          ma_engine_process_proc; /* Fired at the end of each call to ma_engine_read_pcm_frames(). For engine's that manage their own internal device (the default configuration), this will be fired from the audio thread, and you do not need to call ma_engine_read_pcm_frames() manually in order to trigger this. */
    pProcessUserData:                   *void; /* User data that's passed into onProcess. */
}

ma_engine_config_init :: () -> ma_engine_config #foreign miniaudio;

ma_engine :: struct {
    nodeGraph:                          ma_node_graph; /* An engine is a node graph. It should be able to be plugged into any ma_node_graph API (with a cast) which means this must be the first member of this struct. */

    pResourceManager:                   *ma_resource_manager;

    pDevice:                            *ma_device; /* Optionally set via the config, otherwise allocated by the engine in ma_engine_init(). */

    pLog:                               *ma_log;
    sampleRate:                         ma_uint32;
    listenerCount:                      ma_uint32;
    listeners:                          [4] ma_spatializer_listener;
    allocationCallbacks:                ma_allocation_callbacks;
    ownsResourceManager:                ma_bool8;
    ownsDevice:                         ma_bool8;
    inlinedSoundLock:                   ma_spinlock; /* For synchronizing access to the inlined sound list. */
    pInlinedSoundHead:                  *ma_sound_inlined; /* The first inlined sound. Inlined sounds are tracked in a linked list. */
    inlinedSoundCount:                  ma_uint32; /* The total number of allocated inlined sound objects. Used for debugging. */
    gainSmoothTimeInFrames:             ma_uint32; /* The number of frames to interpolate the gain of spatialized sounds across. */
    defaultVolumeSmoothTimeInPCMFrames: ma_uint32;
    monoExpansionMode:                  ma_mono_expansion_mode;
    onProcess:                          ma_engine_process_proc;
    pProcessUserData:                   *void;
}

ma_engine_init :: (pConfig: *ma_engine_config, pEngine: *ma_engine) -> ma_result #foreign miniaudio;
ma_engine_uninit :: (pEngine: *ma_engine) -> void #foreign miniaudio;
ma_engine_read_pcm_frames :: (pEngine: *ma_engine, pFramesOut: *void, frameCount: ma_uint64, pFramesRead: *ma_uint64) -> ma_result #foreign miniaudio;
ma_engine_get_node_graph :: (pEngine: *ma_engine) -> *ma_node_graph #foreign miniaudio;

ma_engine_get_resource_manager :: (pEngine: *ma_engine) -> *ma_resource_manager #foreign miniaudio;

ma_engine_get_device :: (pEngine: *ma_engine) -> *ma_device #foreign miniaudio;
ma_engine_get_log :: (pEngine: *ma_engine) -> *ma_log #foreign miniaudio;
ma_engine_get_endpoint :: (pEngine: *ma_engine) -> *ma_node #foreign miniaudio;
ma_engine_get_time_in_pcm_frames :: (pEngine: *ma_engine) -> ma_uint64 #foreign miniaudio;
ma_engine_get_time_in_milliseconds :: (pEngine: *ma_engine) -> ma_uint64 #foreign miniaudio;
ma_engine_set_time_in_pcm_frames :: (pEngine: *ma_engine, globalTime: ma_uint64) -> ma_result #foreign miniaudio;
ma_engine_set_time_in_milliseconds :: (pEngine: *ma_engine, globalTime: ma_uint64) -> ma_result #foreign miniaudio;
ma_engine_get_time :: (pEngine: *ma_engine) -> ma_uint64 #foreign miniaudio;
ma_engine_set_time :: (pEngine: *ma_engine, globalTime: ma_uint64) -> ma_result #foreign miniaudio;
ma_engine_get_channels :: (pEngine: *ma_engine) -> ma_uint32 #foreign miniaudio;
ma_engine_get_sample_rate :: (pEngine: *ma_engine) -> ma_uint32 #foreign miniaudio;

ma_engine_start :: (pEngine: *ma_engine) -> ma_result #foreign miniaudio;
ma_engine_stop :: (pEngine: *ma_engine) -> ma_result #foreign miniaudio;
ma_engine_set_volume :: (pEngine: *ma_engine, volume: float) -> ma_result #foreign miniaudio;
ma_engine_get_volume :: (pEngine: *ma_engine) -> float #foreign miniaudio;
ma_engine_set_gain_db :: (pEngine: *ma_engine, gainDB: float) -> ma_result #foreign miniaudio;
ma_engine_get_gain_db :: (pEngine: *ma_engine) -> float #foreign miniaudio;

ma_engine_get_listener_count :: (pEngine: *ma_engine) -> ma_uint32 #foreign miniaudio;
ma_engine_find_closest_listener :: (pEngine: *ma_engine, absolutePosX: float, absolutePosY: float, absolutePosZ: float) -> ma_uint32 #foreign miniaudio;
ma_engine_listener_set_position :: (pEngine: *ma_engine, listenerIndex: ma_uint32, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_engine_listener_get_position :: (pEngine: *ma_engine, listenerIndex: ma_uint32) -> ma_vec3f #foreign miniaudio;
ma_engine_listener_set_direction :: (pEngine: *ma_engine, listenerIndex: ma_uint32, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_engine_listener_get_direction :: (pEngine: *ma_engine, listenerIndex: ma_uint32) -> ma_vec3f #foreign miniaudio;
ma_engine_listener_set_velocity :: (pEngine: *ma_engine, listenerIndex: ma_uint32, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_engine_listener_get_velocity :: (pEngine: *ma_engine, listenerIndex: ma_uint32) -> ma_vec3f #foreign miniaudio;
ma_engine_listener_set_cone :: (pEngine: *ma_engine, listenerIndex: ma_uint32, innerAngleInRadians: float, outerAngleInRadians: float, outerGain: float) -> void #foreign miniaudio;
ma_engine_listener_get_cone :: (pEngine: *ma_engine, listenerIndex: ma_uint32, pInnerAngleInRadians: *float, pOuterAngleInRadians: *float, pOuterGain: *float) -> void #foreign miniaudio;
ma_engine_listener_set_world_up :: (pEngine: *ma_engine, listenerIndex: ma_uint32, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_engine_listener_get_world_up :: (pEngine: *ma_engine, listenerIndex: ma_uint32) -> ma_vec3f #foreign miniaudio;
ma_engine_listener_set_enabled :: (pEngine: *ma_engine, listenerIndex: ma_uint32, isEnabled: ma_bool32) -> void #foreign miniaudio;
ma_engine_listener_is_enabled :: (pEngine: *ma_engine, listenerIndex: ma_uint32) -> ma_bool32 #foreign miniaudio;

ma_engine_play_sound_ex :: (pEngine: *ma_engine, pFilePath: *u8, pNode: *ma_node, nodeInputBusIndex: ma_uint32) -> ma_result #foreign miniaudio;
ma_engine_play_sound :: (pEngine: *ma_engine, pFilePath: *u8, pGroup: *ma_sound_group) -> ma_result #foreign miniaudio;

ma_sound_init_from_file :: (pEngine: *ma_engine, pFilePath: *u8, flags: ma_uint32, pGroup: *ma_sound_group, pDoneFence: *ma_fence, pSound: *ma_sound) -> ma_result #foreign miniaudio;
ma_sound_init_from_file_w :: (pEngine: *ma_engine, pFilePath: *s32, flags: ma_uint32, pGroup: *ma_sound_group, pDoneFence: *ma_fence, pSound: *ma_sound) -> ma_result #foreign miniaudio;
ma_sound_init_copy :: (pEngine: *ma_engine, pExistingSound: *ma_sound, flags: ma_uint32, pGroup: *ma_sound_group, pSound: *ma_sound) -> ma_result #foreign miniaudio;

ma_sound_init_from_data_source :: (pEngine: *ma_engine, pDataSource: *ma_data_source, flags: ma_uint32, pGroup: *ma_sound_group, pSound: *ma_sound) -> ma_result #foreign miniaudio;
ma_sound_init_ex :: (pEngine: *ma_engine, pConfig: *ma_sound_config, pSound: *ma_sound) -> ma_result #foreign miniaudio;
ma_sound_uninit :: (pSound: *ma_sound) -> void #foreign miniaudio;
ma_sound_get_engine :: (pSound: *ma_sound) -> *ma_engine #foreign miniaudio;
ma_sound_get_data_source :: (pSound: *ma_sound) -> *ma_data_source #foreign miniaudio;
ma_sound_start :: (pSound: *ma_sound) -> ma_result #foreign miniaudio;
ma_sound_stop :: (pSound: *ma_sound) -> ma_result #foreign miniaudio;
ma_sound_stop_with_fade_in_pcm_frames :: (pSound: *ma_sound, fadeLengthInFrames: ma_uint64) -> ma_result #foreign miniaudio;
ma_sound_stop_with_fade_in_milliseconds :: (pSound: *ma_sound, fadeLengthInFrames: ma_uint64) -> ma_result #foreign miniaudio;
ma_sound_set_volume :: (pSound: *ma_sound, volume: float) -> void #foreign miniaudio;
ma_sound_get_volume :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_pan :: (pSound: *ma_sound, pan: float) -> void #foreign miniaudio;
ma_sound_get_pan :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_pan_mode :: (pSound: *ma_sound, panMode: ma_pan_mode) -> void #foreign miniaudio;
ma_sound_get_pan_mode :: (pSound: *ma_sound) -> ma_pan_mode #foreign miniaudio;
ma_sound_set_pitch :: (pSound: *ma_sound, pitch: float) -> void #foreign miniaudio;
ma_sound_get_pitch :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_spatialization_enabled :: (pSound: *ma_sound, enabled: ma_bool32) -> void #foreign miniaudio;
ma_sound_is_spatialization_enabled :: (pSound: *ma_sound) -> ma_bool32 #foreign miniaudio;
ma_sound_set_pinned_listener_index :: (pSound: *ma_sound, listenerIndex: ma_uint32) -> void #foreign miniaudio;
ma_sound_get_pinned_listener_index :: (pSound: *ma_sound) -> ma_uint32 #foreign miniaudio;
ma_sound_get_listener_index :: (pSound: *ma_sound) -> ma_uint32 #foreign miniaudio;
ma_sound_get_direction_to_listener :: (pSound: *ma_sound) -> ma_vec3f #foreign miniaudio;
ma_sound_set_position :: (pSound: *ma_sound, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_sound_get_position :: (pSound: *ma_sound) -> ma_vec3f #foreign miniaudio;
ma_sound_set_direction :: (pSound: *ma_sound, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_sound_get_direction :: (pSound: *ma_sound) -> ma_vec3f #foreign miniaudio;
ma_sound_set_velocity :: (pSound: *ma_sound, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_sound_get_velocity :: (pSound: *ma_sound) -> ma_vec3f #foreign miniaudio;
ma_sound_set_attenuation_model :: (pSound: *ma_sound, attenuationModel: ma_attenuation_model) -> void #foreign miniaudio;
ma_sound_get_attenuation_model :: (pSound: *ma_sound) -> ma_attenuation_model #foreign miniaudio;
ma_sound_set_positioning :: (pSound: *ma_sound, positioning: ma_positioning) -> void #foreign miniaudio;
ma_sound_get_positioning :: (pSound: *ma_sound) -> ma_positioning #foreign miniaudio;
ma_sound_set_rolloff :: (pSound: *ma_sound, rolloff: float) -> void #foreign miniaudio;
ma_sound_get_rolloff :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_min_gain :: (pSound: *ma_sound, minGain: float) -> void #foreign miniaudio;
ma_sound_get_min_gain :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_max_gain :: (pSound: *ma_sound, maxGain: float) -> void #foreign miniaudio;
ma_sound_get_max_gain :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_min_distance :: (pSound: *ma_sound, minDistance: float) -> void #foreign miniaudio;
ma_sound_get_min_distance :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_max_distance :: (pSound: *ma_sound, maxDistance: float) -> void #foreign miniaudio;
ma_sound_get_max_distance :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_cone :: (pSound: *ma_sound, innerAngleInRadians: float, outerAngleInRadians: float, outerGain: float) -> void #foreign miniaudio;
ma_sound_get_cone :: (pSound: *ma_sound, pInnerAngleInRadians: *float, pOuterAngleInRadians: *float, pOuterGain: *float) -> void #foreign miniaudio;
ma_sound_set_doppler_factor :: (pSound: *ma_sound, dopplerFactor: float) -> void #foreign miniaudio;
ma_sound_get_doppler_factor :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_directional_attenuation_factor :: (pSound: *ma_sound, directionalAttenuationFactor: float) -> void #foreign miniaudio;
ma_sound_get_directional_attenuation_factor :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_fade_in_pcm_frames :: (pSound: *ma_sound, volumeBeg: float, volumeEnd: float, fadeLengthInFrames: ma_uint64) -> void #foreign miniaudio;
ma_sound_set_fade_in_milliseconds :: (pSound: *ma_sound, volumeBeg: float, volumeEnd: float, fadeLengthInMilliseconds: ma_uint64) -> void #foreign miniaudio;
ma_sound_set_fade_start_in_pcm_frames :: (pSound: *ma_sound, volumeBeg: float, volumeEnd: float, fadeLengthInFrames: ma_uint64, absoluteGlobalTimeInFrames: ma_uint64) -> void #foreign miniaudio;
ma_sound_set_fade_start_in_milliseconds :: (pSound: *ma_sound, volumeBeg: float, volumeEnd: float, fadeLengthInMilliseconds: ma_uint64, absoluteGlobalTimeInMilliseconds: ma_uint64) -> void #foreign miniaudio;
ma_sound_get_current_fade_volume :: (pSound: *ma_sound) -> float #foreign miniaudio;
ma_sound_set_start_time_in_pcm_frames :: (pSound: *ma_sound, absoluteGlobalTimeInFrames: ma_uint64) -> void #foreign miniaudio;
ma_sound_set_start_time_in_milliseconds :: (pSound: *ma_sound, absoluteGlobalTimeInMilliseconds: ma_uint64) -> void #foreign miniaudio;
ma_sound_set_stop_time_in_pcm_frames :: (pSound: *ma_sound, absoluteGlobalTimeInFrames: ma_uint64) -> void #foreign miniaudio;
ma_sound_set_stop_time_in_milliseconds :: (pSound: *ma_sound, absoluteGlobalTimeInMilliseconds: ma_uint64) -> void #foreign miniaudio;
ma_sound_set_stop_time_with_fade_in_pcm_frames :: (pSound: *ma_sound, stopAbsoluteGlobalTimeInFrames: ma_uint64, fadeLengthInFrames: ma_uint64) -> void #foreign miniaudio;
ma_sound_set_stop_time_with_fade_in_milliseconds :: (pSound: *ma_sound, stopAbsoluteGlobalTimeInMilliseconds: ma_uint64, fadeLengthInMilliseconds: ma_uint64) -> void #foreign miniaudio;
ma_sound_is_playing :: (pSound: *ma_sound) -> ma_bool32 #foreign miniaudio;
ma_sound_get_time_in_pcm_frames :: (pSound: *ma_sound) -> ma_uint64 #foreign miniaudio;
ma_sound_get_time_in_milliseconds :: (pSound: *ma_sound) -> ma_uint64 #foreign miniaudio;
ma_sound_set_looping :: (pSound: *ma_sound, isLooping: ma_bool32) -> void #foreign miniaudio;
ma_sound_is_looping :: (pSound: *ma_sound) -> ma_bool32 #foreign miniaudio;
ma_sound_at_end :: (pSound: *ma_sound) -> ma_bool32 #foreign miniaudio;
ma_sound_seek_to_pcm_frame :: (pSound: *ma_sound, frameIndex: ma_uint64) -> ma_result #foreign miniaudio;
ma_sound_seek_to_second :: (pSound: *ma_sound, seekPointInSeconds: float) -> ma_result #foreign miniaudio;
ma_sound_get_data_format :: (pSound: *ma_sound, pFormat: *ma_format, pChannels: *ma_uint32, pSampleRate: *ma_uint32, pChannelMap: *ma_channel, channelMapCap: u64) -> ma_result #foreign miniaudio;
ma_sound_get_cursor_in_pcm_frames :: (pSound: *ma_sound, pCursor: *ma_uint64) -> ma_result #foreign miniaudio;
ma_sound_get_length_in_pcm_frames :: (pSound: *ma_sound, pLength: *ma_uint64) -> ma_result #foreign miniaudio;
ma_sound_get_cursor_in_seconds :: (pSound: *ma_sound, pCursor: *float) -> ma_result #foreign miniaudio;
ma_sound_get_length_in_seconds :: (pSound: *ma_sound, pLength: *float) -> ma_result #foreign miniaudio;
ma_sound_set_end_callback :: (pSound: *ma_sound, callback: ma_sound_end_proc, pUserData: *void) -> ma_result #foreign miniaudio;

ma_sound_group_init :: (pEngine: *ma_engine, flags: ma_uint32, pParentGroup: *ma_sound_group, pGroup: *ma_sound_group) -> ma_result #foreign miniaudio;
ma_sound_group_init_ex :: (pEngine: *ma_engine, pConfig: *ma_sound_group_config, pGroup: *ma_sound_group) -> ma_result #foreign miniaudio;
ma_sound_group_uninit :: (pGroup: *ma_sound_group) -> void #foreign miniaudio;
ma_sound_group_get_engine :: (pGroup: *ma_sound_group) -> *ma_engine #foreign miniaudio;
ma_sound_group_start :: (pGroup: *ma_sound_group) -> ma_result #foreign miniaudio;
ma_sound_group_stop :: (pGroup: *ma_sound_group) -> ma_result #foreign miniaudio;
ma_sound_group_set_volume :: (pGroup: *ma_sound_group, volume: float) -> void #foreign miniaudio;
ma_sound_group_get_volume :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_pan :: (pGroup: *ma_sound_group, pan: float) -> void #foreign miniaudio;
ma_sound_group_get_pan :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_pan_mode :: (pGroup: *ma_sound_group, panMode: ma_pan_mode) -> void #foreign miniaudio;
ma_sound_group_get_pan_mode :: (pGroup: *ma_sound_group) -> ma_pan_mode #foreign miniaudio;
ma_sound_group_set_pitch :: (pGroup: *ma_sound_group, pitch: float) -> void #foreign miniaudio;
ma_sound_group_get_pitch :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_spatialization_enabled :: (pGroup: *ma_sound_group, enabled: ma_bool32) -> void #foreign miniaudio;
ma_sound_group_is_spatialization_enabled :: (pGroup: *ma_sound_group) -> ma_bool32 #foreign miniaudio;
ma_sound_group_set_pinned_listener_index :: (pGroup: *ma_sound_group, listenerIndex: ma_uint32) -> void #foreign miniaudio;
ma_sound_group_get_pinned_listener_index :: (pGroup: *ma_sound_group) -> ma_uint32 #foreign miniaudio;
ma_sound_group_get_listener_index :: (pGroup: *ma_sound_group) -> ma_uint32 #foreign miniaudio;
ma_sound_group_get_direction_to_listener :: (pGroup: *ma_sound_group) -> ma_vec3f #foreign miniaudio;
ma_sound_group_set_position :: (pGroup: *ma_sound_group, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_sound_group_get_position :: (pGroup: *ma_sound_group) -> ma_vec3f #foreign miniaudio;
ma_sound_group_set_direction :: (pGroup: *ma_sound_group, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_sound_group_get_direction :: (pGroup: *ma_sound_group) -> ma_vec3f #foreign miniaudio;
ma_sound_group_set_velocity :: (pGroup: *ma_sound_group, x: float, y: float, z: float) -> void #foreign miniaudio;
ma_sound_group_get_velocity :: (pGroup: *ma_sound_group) -> ma_vec3f #foreign miniaudio;
ma_sound_group_set_attenuation_model :: (pGroup: *ma_sound_group, attenuationModel: ma_attenuation_model) -> void #foreign miniaudio;
ma_sound_group_get_attenuation_model :: (pGroup: *ma_sound_group) -> ma_attenuation_model #foreign miniaudio;
ma_sound_group_set_positioning :: (pGroup: *ma_sound_group, positioning: ma_positioning) -> void #foreign miniaudio;
ma_sound_group_get_positioning :: (pGroup: *ma_sound_group) -> ma_positioning #foreign miniaudio;
ma_sound_group_set_rolloff :: (pGroup: *ma_sound_group, rolloff: float) -> void #foreign miniaudio;
ma_sound_group_get_rolloff :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_min_gain :: (pGroup: *ma_sound_group, minGain: float) -> void #foreign miniaudio;
ma_sound_group_get_min_gain :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_max_gain :: (pGroup: *ma_sound_group, maxGain: float) -> void #foreign miniaudio;
ma_sound_group_get_max_gain :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_min_distance :: (pGroup: *ma_sound_group, minDistance: float) -> void #foreign miniaudio;
ma_sound_group_get_min_distance :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_max_distance :: (pGroup: *ma_sound_group, maxDistance: float) -> void #foreign miniaudio;
ma_sound_group_get_max_distance :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_cone :: (pGroup: *ma_sound_group, innerAngleInRadians: float, outerAngleInRadians: float, outerGain: float) -> void #foreign miniaudio;
ma_sound_group_get_cone :: (pGroup: *ma_sound_group, pInnerAngleInRadians: *float, pOuterAngleInRadians: *float, pOuterGain: *float) -> void #foreign miniaudio;
ma_sound_group_set_doppler_factor :: (pGroup: *ma_sound_group, dopplerFactor: float) -> void #foreign miniaudio;
ma_sound_group_get_doppler_factor :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_directional_attenuation_factor :: (pGroup: *ma_sound_group, directionalAttenuationFactor: float) -> void #foreign miniaudio;
ma_sound_group_get_directional_attenuation_factor :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_fade_in_pcm_frames :: (pGroup: *ma_sound_group, volumeBeg: float, volumeEnd: float, fadeLengthInFrames: ma_uint64) -> void #foreign miniaudio;
ma_sound_group_set_fade_in_milliseconds :: (pGroup: *ma_sound_group, volumeBeg: float, volumeEnd: float, fadeLengthInMilliseconds: ma_uint64) -> void #foreign miniaudio;
ma_sound_group_get_current_fade_volume :: (pGroup: *ma_sound_group) -> float #foreign miniaudio;
ma_sound_group_set_start_time_in_pcm_frames :: (pGroup: *ma_sound_group, absoluteGlobalTimeInFrames: ma_uint64) -> void #foreign miniaudio;
ma_sound_group_set_start_time_in_milliseconds :: (pGroup: *ma_sound_group, absoluteGlobalTimeInMilliseconds: ma_uint64) -> void #foreign miniaudio;
ma_sound_group_set_stop_time_in_pcm_frames :: (pGroup: *ma_sound_group, absoluteGlobalTimeInFrames: ma_uint64) -> void #foreign miniaudio;
ma_sound_group_set_stop_time_in_milliseconds :: (pGroup: *ma_sound_group, absoluteGlobalTimeInMilliseconds: ma_uint64) -> void #foreign miniaudio;
ma_sound_group_is_playing :: (pGroup: *ma_sound_group) -> ma_bool32 #foreign miniaudio;
ma_sound_group_get_time_in_pcm_frames :: (pGroup: *ma_sound_group) -> ma_uint64 #foreign miniaudio;

#scope_file

#import "Basic"; // For push_context


#if OS == .WINDOWS {
    miniaudio :: #library "windows/miniaudio";
} else #if OS == .LINUX {
    miniaudio :: #library "linux/miniaudio";
} else #if OS == .MACOS {
    miniaudio :: #library "macos/miniaudio";
} else {
    #assert false;
}

