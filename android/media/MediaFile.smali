.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPA:I = 0xa

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xb

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_DIVX:I = 0x1e

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_IMY:I = 0xf

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xd

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_QCP:I = 0xc

.field public static final FILE_TYPE_SMF:I = 0xe

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xd

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xc

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x23

.field private static final LAST_MIDI_FILE_TYPE:I = 0xf

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2b

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
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
    .locals 10

    .prologue
    const/16 v9, 0x17

    const/16 v8, 0x15

    const/4 v7, 0x7

    const/16 v5, 0xd

    const-string v6, "audio/midi"

    .line 105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 107
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 135
    const-string v2, "MP3"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    :cond_0
    const-string v2, "QCP"

    const/16 v3, 0xc

    const-string v4, "audio/qcp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    const-string v2, "OGG"

    const-string v3, "application/ogg"

    invoke-static {v2, v7, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    const-string v2, "OGA"

    const-string v3, "application/ogg"

    invoke-static {v2, v7, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    const-string v2, "MKA"

    const/16 v3, 0x9

    const-string v4, "audio/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    const-string v2, "3GPP"

    const/16 v3, 0xa

    const-string v4, "audio/3gpp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    const-string v2, "SMF"

    const/16 v3, 0xe

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    const-string v2, "IMY"

    const/16 v3, 0xf

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    const-string v2, "MPEG"

    const-string/jumbo v3, "video/mpeg"

    invoke-static {v2, v8, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    const-string v2, "MP4"

    const-string/jumbo v3, "video/mp4"

    invoke-static {v2, v8, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    const-string v2, "M4V"

    const/16 v3, 0x16

    const-string/jumbo v4, "video/mp4"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    const-string v2, "3GP"

    const-string/jumbo v3, "video/3gpp"

    invoke-static {v2, v9, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    const-string v2, "3GPP"

    const-string/jumbo v3, "video/3gpp"

    invoke-static {v2, v9, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    const-string v2, "3G2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    const-string v2, "3GPP2"

    const/16 v3, 0x18

    const-string/jumbo v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    const-string v2, "MKV"

    const/16 v3, 0x1b

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    const-string v2, "WEBM"

    const/16 v3, 0x1b

    const-string/jumbo v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    const-string v2, "TS"

    const/16 v3, 0x1c

    const-string/jumbo v4, "video/mp2ts"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const-string v2, "AVI"

    const/16 v3, 0x1d

    const-string/jumbo v4, "video/avi"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    const-string v2, "DIVX"

    const/16 v3, 0x1e

    const-string/jumbo v4, "video/divx"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    const-string v2, "WMV"

    const/16 v3, 0x19

    const-string/jumbo v4, "video/x-ms-wmv"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    const-string v2, "ASF"

    const/16 v3, 0x1a

    const-string/jumbo v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    :cond_1
    const-string v2, "JPG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    const-string v2, "JPEG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    const-string v2, "GIF"

    const/16 v3, 0x20

    const-string v4, "image/gif"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    const-string v2, "PNG"

    const/16 v3, 0x21

    const-string v4, "image/png"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    const-string v2, "BMP"

    const/16 v3, 0x22

    const-string v4, "image/x-ms-bmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    const-string v2, "BMP"

    const/16 v3, 0x22

    const-string v4, "image/bmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    const-string v2, "WBMP"

    const/16 v3, 0x23

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    const-string v2, "M3U"

    const/16 v3, 0x29

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    const-string v2, "PLS"

    const/16 v3, 0x2a

    const-string v4, "audio/x-scpls"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    const-string v2, "WPL"

    const/16 v3, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    const-string v2, "AC3"

    const/16 v3, 0xb

    const-string v4, "audio/ac3"

    invoke-static {v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 195
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    :cond_3
    const-string v2, ",DM,DCF,ODF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 110
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 4
    .parameter "path"

    .prologue
    .line 230
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 233
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/MediaFile$MediaFileType;

    move-object v1, p0

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 237
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 238
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/4 v1, 0x1

    .line 208
    if-lt p0, v1, :cond_0

    const/16 v0, 0xc

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xd

    if-lt p0, v0, :cond_2

    const/16 v0, 0xf

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 220
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x23

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 225
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 215
    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 117
    .local v0, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v3, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v0, v3, :cond_0

    .line 118
    const/4 v3, 0x1

    .line 121
    .end local v0           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isWMVEnabled()Z
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 127
    .local v0, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v3, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v0, v3, :cond_0

    .line 128
    const/4 v3, 0x1

    .line 131
    .end local v0           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
