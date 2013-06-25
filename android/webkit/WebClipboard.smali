.class public Landroid/webkit/WebClipboard;
.super Ljava/lang/Object;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;
    }
.end annotation


# static fields
.field static final INIT:I = 0x1

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern; = null

.field static final tempDirectory:Ljava/lang/String; = "/sdcard/HtmlComposerTemp/"


# instance fields
.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebClipboard;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    .line 60
    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 63
    const-string/jumbo v0, "webclipboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipservice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Landroid/webkit/WebClipboard;->createHandler()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebClipboard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/webkit/WebClipboard;->nativeInitPasteboardJni()V

    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 101
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 102
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/webkit/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 101
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 110
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 111
    return-void
.end method

.method private escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"

    .prologue
    const/16 v9, 0x20

    .line 247
    sget-object v6, Landroid/webkit/WebClipboard;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 248
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 249
    .local v3, match:Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 251
    .local v5, out:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 253
    if-nez v5, :cond_0

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #out:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .restart local v5       #out:Ljava/lang/StringBuilder;
    :cond_0
    const/4 v1, 0x0

    .line 257
    .local v1, end:I
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 258
    .local v7, start:I
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 260
    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 261
    .local v0, c:I
    if-ne v0, v9, :cond_5

    .line 263
    const/4 v2, 0x1

    .local v2, i:I
    sub-int v4, v1, v7

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 264
    const-string v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    .line 277
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 281
    .end local v0           #c:I
    .end local v1           #end:I
    .end local v7           #start:I
    :cond_4
    return-object p1

    .line 267
    .restart local v0       #c:I
    .restart local v1       #end:I
    .restart local v7       #start:I
    :cond_5
    const/16 v8, 0xd

    if-eq v0, v8, :cond_6

    const/16 v8, 0xa

    if-ne v0, v8, :cond_7

    .line 268
    :cond_6
    const-string v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    :cond_7
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_8

    .line 270
    const-string v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 271
    :cond_8
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_9

    .line 272
    const-string v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 273
    :cond_9
    const/16 v8, 0x26

    if-ne v0, v8, :cond_3

    .line 274
    const-string v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private native nativeInitPasteboardJni()V
.end method

.method private saveBitampTemporary(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 11
    .parameter "bitmapForSave"

    .prologue
    .line 122
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "saveBitampTemporary ent "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/io/File;

    const-string v9, "/sdcard/HtmlComposerTemp/"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 129
    .local v7, randNum:Ljava/util/Random;
    const/16 v9, 0x1f4

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 130
    .local v8, randNumber:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sdcard/HtmlComposerTemp/file_temp_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, filePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v4, mFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 136
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 139
    :cond_0
    const/4 v5, 0x0

    .line 142
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, fileURL:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 152
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v9, v3

    .line 156
    .end local v3           #fileURL:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 144
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 145
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 146
    const/4 v9, 0x0

    goto :goto_1

    .line 153
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v3       #fileURL:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 154
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fileURL:Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v1, v9

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized createHandler()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/webkit/WebClipboard$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebClipboard$1;-><init>(Landroid/webkit/WebClipboard;)V

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteTempDirectory()V
    .locals 3

    .prologue
    .line 114
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deleteTempDirectory"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/HtmlComposerTemp/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-direct {p0, v0}, Landroid/webkit/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 117
    return-void
.end method

.method public dismissClipboardUI()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public getHTML()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x2

    .line 198
    const-string v10, "WebClipboard"

    const-string v11, "#############  getHTML() "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v2, 0x0

    .line 201
    .local v2, data:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v10, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v10, v13}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v10

    if-ne v14, v10, :cond_2

    .line 202
    iget-object v10, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v10, v13}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 207
    :cond_0
    :goto_0
    const-string v4, ""

    .line 210
    .local v4, data_str:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    .line 212
    .local v3, dataFormat:I
    if-ne v3, v13, :cond_3

    .line 213
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v6, v0

    .line 214
    .local v6, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v6           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_1
    :goto_1
    move-object v10, v4

    .line 237
    :goto_2
    return-object v10

    .line 203
    .end local v3           #dataFormat:I
    .end local v4           #data_str:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v10, v12}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v10

    if-ne v14, v10, :cond_0

    .line 204
    iget-object v10, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v10, v12}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    goto :goto_0

    .line 215
    .restart local v3       #dataFormat:I
    .restart local v4       #data_str:Ljava/lang/String;
    :cond_3
    if-ne v3, v12, :cond_5

    .line 216
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v8, v0

    .line 217
    .local v8, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 218
    .local v9, tmp_data_str:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 219
    invoke-direct {p0, v9}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_1

    .line 223
    :cond_4
    const-string v4, ""

    goto :goto_1

    .line 225
    .end local v8           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v9           #tmp_data_str:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x3

    if-ne v3, v10, :cond_6

    .line 226
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    move-object v7, v0

    .line 227
    .local v7, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 228
    .local v1, bitmapToSave:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Landroid/webkit/WebClipboard;->saveBitampTemporary(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, fileUrl:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<img src="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " />"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    goto :goto_1

    .line 234
    .end local v1           #bitmapToSave:Landroid/graphics/Bitmap;
    .end local v5           #fileUrl:Ljava/lang/String;
    .end local v7           #imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :cond_6
    const-string v10, ""

    goto :goto_2
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 188
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initWebClipboard()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public launchClipboardUI()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public setDataToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "format"
    .parameter "data"

    .prologue
    .line 171
    :try_start_0
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0, p2}, Landroid/webkit/WebClipboard;->setText(Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v0, "HTML"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, p2}, Landroid/webkit/WebClipboard;->setHTML(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "charSeq"

    .prologue
    .line 241
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 242
    .local v0, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    .line 243
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 244
    return-void
.end method

.method setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V
    .locals 0
    .parameter "pasteListener"

    .prologue
    .line 162
    iput-object p1, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    .line 163
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "charSeq"

    .prologue
    .line 192
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 193
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 194
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 195
    return-void
.end method

.method public updateClipboardUI()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method
