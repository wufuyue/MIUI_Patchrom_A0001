.class public Lcom/oppo/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APE:I = 0x3e9

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_CUE:I = 0x3eb

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_FLV:I = 0x44d

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M2TS:I = 0x450

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MOV:I = 0x44f

.field public static final FILE_TYPE_MP2:I = 0x3ea

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_RA:I = 0x3ec

.field public static final FILE_TYPE_RV:I = 0x44e

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_FFMPEG_AUDIO_FILE_TYPE:I = 0x3e9

.field private static final FIRST_FFMPEG_VIDEO_FILE_TYPE:I = 0x44d

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_FFMPEG_AUDIO_FILE_TYPE:I = 0x3ec

.field private static final LAST_FFMPEG_VIDEO_FILE_TYPE:I = 0x450

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x24

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc8

.field public static final OPPO_DEFAULT_ALARM:Ljava/lang/String; = "oppo_default_alarm"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oppo default uri name"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final OPPO_DEFAULT_NOTIFICATION:Ljava/lang/String; = "oppo_default_notification"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oppo default uri name"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final OPPO_DEFAULT_NOTIFICATION_SIM2:Ljava/lang/String; = "oppo_default_notification_sim2"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oppo default uri name"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final OPPO_DEFAULT_RINGTONE:Ljava/lang/String; = "oppo_default_ringtone"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oppo default uri name"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final OPPO_DEFAULT_RINGTONE_SIM2:Ljava/lang/String; = "oppo_default_ringtone_sim2"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "oppo default uri name"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final SCAN_ALL_FILE:I = 0x0
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "flag for scanning all files on storage"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final SCAN_AUDIO_FILE:I = 0x1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "flag for scanning audio files on storage"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final SCAN_IMAGE_FILE:I = 0x2
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "flag for scanning image files on storage"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final SCAN_OTHER_FILE:I = 0x8
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "flag for scanning other files on storage like *.apk, *.csv, *.vcf, *.ics, *.vcs"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final SCAN_VIDEO_FILE:I = 0x4
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "flag for scanning video files on storage"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oppo/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x7

    const v6, 0xb984

    const/16 v5, 0x300b

    const/16 v4, 0xb

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 198
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 199
    const-string v0, "MPGA"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 200
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2, v5}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 201
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 202
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/oppo/media/MediaFile;->isWMAEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const v3, 0xb901

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 207
    :cond_0
    const-string v0, "OGG"

    const-string v1, "audio/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 208
    const-string v0, "OGG"

    const-string v1, "application/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 209
    const-string v0, "OGA"

    const-string v1, "application/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 210
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 211
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac-adts"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 212
    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    const-string v0, "MID"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 215
    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    const-string v0, "XMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    const-string v0, "SMF"

    const/16 v1, 0xc

    const-string v2, "audio/sp-midi"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    const-string v0, "IMY"

    const/16 v1, 0xd

    const-string v2, "audio/imelody"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    const-string v0, "RTX"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    const-string v0, "OTA"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    const-string v0, "MPEG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v8, v1, v5}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 225
    const-string v0, "MPG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v8, v1, v5}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 226
    const-string v0, "MP4"

    const-string v1, "video/mp4"

    invoke-static {v0, v8, v1, v5}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 227
    const-string v0, "M4V"

    const/16 v1, 0x16

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2, v5}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 228
    const-string v0, "3GP"

    const/16 v1, 0x17

    const-string v2, "video/3gpp"

    invoke-static {v0, v1, v2, v6}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 229
    const-string v0, "3GPP"

    const/16 v1, 0x17

    const-string v2, "video/3gpp"

    invoke-static {v0, v1, v2, v6}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 230
    const-string v0, "3G2"

    const/16 v1, 0x18

    const-string v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v6}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 231
    const-string v0, "3GPP2"

    const/16 v1, 0x18

    const-string v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v6}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 232
    const-string v0, "MKV"

    const/16 v1, 0x1b

    const-string v2, "video/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    const-string v0, "WEBM"

    const/16 v1, 0x1e

    const-string v2, "video/webm"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    const-string v0, "TS"

    const/16 v1, 0x1c

    const-string v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    const-string v0, "AVI"

    const/16 v1, 0x1d

    const-string v2, "video/avi"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/oppo/media/MediaFile;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "WMV"

    const/16 v1, 0x19

    const-string v2, "video/x-ms-wmv"

    const v3, 0xb981

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 239
    const-string v0, "ASF"

    const/16 v1, 0x1a

    const-string v2, "video/x-ms-asf"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    :cond_1
    const-string v0, "JPG"

    const/16 v1, 0x1f

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 243
    const-string v0, "JPEG"

    const/16 v1, 0x1f

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 244
    const-string v0, "GIF"

    const/16 v1, 0x20

    const-string v2, "image/gif"

    const/16 v3, 0x3807

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 245
    const-string v0, "PNG"

    const/16 v1, 0x21

    const-string v2, "image/png"

    const/16 v3, 0x380b

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 246
    const-string v0, "BMP"

    const/16 v1, 0x22

    const-string v2, "image/x-ms-bmp"

    const/16 v3, 0x3804

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 247
    const-string v0, "WBMP"

    const/16 v1, 0x23

    const-string v2, "image/vnd.wap.wbmp"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    const-string v0, "WEBP"

    const/16 v1, 0x24

    const-string v2, "image/webp"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    const-string v0, "M3U"

    const/16 v1, 0x29

    const-string v2, "audio/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 251
    const-string v0, "M3U"

    const/16 v1, 0x29

    const-string v2, "application/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 252
    const-string v0, "PLS"

    const/16 v1, 0x2a

    const-string v2, "audio/x-scpls"

    const v3, 0xba14

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 253
    const-string v0, "WPL"

    const/16 v1, 0x2b

    const-string v2, "application/vnd.ms-wpl"

    const v3, 0xba10

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 254
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "application/vnd.apple.mpegurl"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 255
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "audio/mpegurl"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    const-string v0, "M3U8"

    const/16 v1, 0x2c

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    const-string v0, "FL"

    const/16 v1, 0x33

    const-string v2, "application/x-android-drm-fl"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    const-string v0, "TXT"

    const/16 v1, 0x64

    const-string v2, "text/plain"

    const/16 v3, 0x3004

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 261
    const-string v0, "HTM"

    const/16 v1, 0x65

    const-string v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 262
    const-string v0, "HTML"

    const/16 v1, 0x65

    const-string v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 263
    const-string v0, "PDF"

    const/16 v1, 0x66

    const-string v2, "application/pdf"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    const-string v0, "DOC"

    const/16 v1, 0x68

    const-string v2, "application/msword"

    const v3, 0xba83

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 265
    const-string v0, "XLS"

    const/16 v1, 0x69

    const-string v2, "application/vnd.ms-excel"

    const v3, 0xba85

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 266
    const-string v0, "PPT"

    const/16 v1, 0x6a

    const-string v2, "application/mspowerpoint"

    const v3, 0xba86

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 267
    const-string v0, "FLAC"

    const/16 v1, 0xa

    const-string v2, "audio/flac"

    const v3, 0xb906

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 268
    const-string v0, "ZIP"

    const/16 v1, 0x6b

    const-string v2, "application/zip"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    const-string v0, "MPG"

    const/16 v1, 0xc8

    const-string v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    const-string v0, "MPEG"

    const/16 v1, 0xc8

    const-string v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    const-string v0, "APE"

    const/16 v1, 0x3e9

    const-string v2, "audio/ape"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    const-string v0, "MP2"

    const/16 v1, 0x3ea

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    const-string v0, "CUE"

    const/16 v1, 0x3eb

    const-string v2, "audio/cue"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    const-string v0, "RA"

    const/16 v1, 0x3ec

    const-string v2, "audio/x-pn-realaudio"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    const-string v0, "FLV"

    const/16 v1, 0x44d

    const-string v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    const-string v0, "F4V"

    const/16 v1, 0x44d

    const-string v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    const-string v0, "RMVB"

    const/16 v1, 0x44e

    const-string v2, "video/x-pn-realvideo"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    const-string v0, "RM"

    const/16 v1, 0x44e

    const-string v2, "video/x-pn-realvideo"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    const-string v0, "RV"

    const/16 v1, 0x44e

    const-string v2, "video/x-pn-realvideo"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    const-string v0, "MOV"

    const/16 v1, 0x44f

    const-string v2, "video/x-quicktime"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    const-string v0, "M2TS"

    const/16 v1, 0x450

    const-string v2, "video/m2ts"

    invoke-static {v0, v1, v2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    const-string v0, "DOCX"

    const/16 v1, 0x68

    const-string v2, "application/msword"

    const v3, 0xba83

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 284
    const-string v0, "XLSX"

    const/16 v1, 0x69

    const-string v2, "application/vnd.ms-excel"

    const v3, 0xba85

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 285
    const-string v0, "PPTX"

    const/16 v1, 0x6a

    const-string v2, "application/mspowerpoint"

    const v3, 0xba86

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 286
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/oppo/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/oppo/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/oppo/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/oppo/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mtpFormatCode"    # I

    .prologue
    .line 167
    invoke-static {p0, p1, p2}, Lcom/oppo/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    sget-object v0, Lcom/oppo/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/oppo/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/oppo/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public static getDefaultAlarmUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get oppo default alarm uri"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 416
    const-string v0, "oppo_default_alarm"

    invoke-static {p0, v0}, Lcom/oppo/media/MediaFile;->getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultNotificationUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get oppo default notification uri"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 421
    const-string v0, "oppo_default_notification"

    invoke-static {p0, v0}, Lcom/oppo/media/MediaFile;->getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultNotificationUriSIM2(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get oppo default notificaiton uri for sim2"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 432
    const-string v0, "oppo_default_notification_sim2"

    invoke-static {p0, v0}, Lcom/oppo/media/MediaFile;->getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get oppo default ringtone uri"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 411
    const-string v0, "oppo_default_ringtone"

    invoke-static {p0, v0}, Lcom/oppo/media/MediaFile;->getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRingtoneUriSIM2(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get oppo default ringtone uri for sim2"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 427
    const-string v0, "oppo_default_ringtone_sim2"

    invoke-static {p0, v0}, Lcom/oppo/media/MediaFile;->getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 340
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 341
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 342
    add-int/lit8 v1, v1, 0x1

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 344
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 348
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 349
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    .line 350
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 352
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    .line 327
    const/4 v1, 0x0

    .line 328
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/oppo/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/media/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 356
    sget-object v1, Lcom/oppo/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 357
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    sget-object v3, Lcom/oppo/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 368
    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 380
    .end local v2    # "value":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 372
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 373
    .local v1, "lastDot":I
    if-lez v1, :cond_1

    .line 374
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "extension":Ljava/lang/String;
    sget-object v3, Lcom/oppo/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 376
    .restart local v2    # "value":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 377
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 380
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x3000

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p0}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 362
    .local v0, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/oppo/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "formatCode"    # I

    .prologue
    .line 384
    sget-object v0, Lcom/oppo/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getUriFor(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get oppo default  uris "
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 441
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 445
    :goto_0
    return-object v1

    .line 443
    :cond_0
    const-string v1, "MediaFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not set?!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "additional audio type"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 290
    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_1

    const/16 v1, 0xd

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x3e9

    if-lt p0, v1, :cond_3

    const/16 v1, 0x3ec

    if-gt p0, v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    const/16 v0, 0x33

    .line 320
    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 310
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x24

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {p0}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 333
    .local v0, "fileType":I
    invoke-static {v0}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 315
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "additional video type"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/16 v1, 0xc8

    .line 301
    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    :cond_0
    if-lt p0, v1, :cond_1

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v0, 0x44d

    if-lt p0, v0, :cond_3

    const/16 v0, 0x450

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 5

    .prologue
    .line 174
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 175
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 177
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 178
    .local v1, "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v4, :cond_0

    .line 179
    const/4 v4, 0x1

    .line 182
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_1
    return v4

    .line 176
    .restart local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static isWMVEnabled()Z
    .locals 5

    .prologue
    .line 186
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 187
    .local v2, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 189
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 190
    .local v1, "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_0

    .line 191
    const/4 v4, 0x1

    .line 194
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_1
    return v4

    .line 188
    .restart local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "decoder":Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
