.class public Lcom/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# instance fields
.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 28
    iput-object v0, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "FontDir"
    .parameter "folderName"

    .prologue
    .line 115
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v3, newDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, tmp:[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 119
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 121
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v1           #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 128
    .end local v2           #i:I
    .local v0, bRet:Z
    :goto_1
    return v0

    .line 127
    .end local v0           #bRet:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #bRet:Z
    goto :goto_1
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "fontPath"

    .prologue
    .line 136
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 137
    .local v1, run:Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 138
    .local v0, myProcess:Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 139
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    .end local v0           #myProcess:Ljava/lang/Process;
    .end local v1           #run:Ljava/lang/Runtime;
    :catch_0
    move-exception v2

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 14
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    .line 158
    move-object/from16 v9, p2

    .line 159
    .local v9, myInputStream:Ljava/io/InputStream;
    move-object v8, p1

    .line 160
    .local v8, myDirectory:Ljava/io/File;
    move-object/from16 v7, p3

    .line 161
    .local v7, myDestination:Ljava/lang/String;
    const-string v0, ""

    .line 164
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v2, dest:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 169
    new-instance v10, Ljava/io/BufferedOutputStream;

    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v10, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .local v10, os:Ljava/io/BufferedOutputStream;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 173
    .local v1, b:[B
    const/4 v11, 0x0

    .line 174
    .local v11, read:I
    :goto_0
    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_4

    .line 175
    const/4 v12, 0x0

    invoke-virtual {v10, v1, v12, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v1           #b:[B
    .end local v2           #dest:Ljava/io/File;
    .end local v10           #os:Ljava/io/BufferedOutputStream;
    .end local v11           #read:I
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 183
    .local v3, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 185
    .local v5, length:J
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-nez v12, :cond_0

    .line 186
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 188
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    if-eqz v9, :cond_1

    .line 193
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 194
    :cond_1
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 195
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 201
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #length:J
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 204
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 206
    .restart local v5       #length:J
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-nez v12, :cond_3

    .line 207
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 209
    :cond_3
    return-void

    .line 177
    .end local v4           #file:Ljava/io/File;
    .end local v5           #length:J
    .restart local v1       #b:[B
    .restart local v2       #dest:Ljava/io/File;
    .restart local v10       #os:Ljava/io/BufferedOutputStream;
    .restart local v11       #read:I
    :cond_4
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 178
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 179
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    if-eqz v9, :cond_5

    .line 193
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 194
    :cond_5
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    .line 195
    iget-object v12, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 198
    :catch_1
    move-exception v12

    goto :goto_1

    .line 191
    .end local v1           #b:[B
    .end local v2           #dest:Ljava/io/File;
    .end local v10           #os:Ljava/io/BufferedOutputStream;
    .end local v11           #read:I
    :catchall_0
    move-exception v12

    .line 192
    if-eqz v9, :cond_6

    .line 193
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 194
    :cond_6
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_7

    .line 195
    iget-object v13, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 199
    :cond_7
    :goto_2
    throw v12

    .line 198
    :catch_2
    move-exception v13

    goto :goto_2

    .restart local v3       #ex:Ljava/lang/Exception;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #length:J
    :catch_3
    move-exception v12

    goto :goto_1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "context"
    .parameter "fontName"

    .prologue
    .line 78
    const-string v7, "fonts"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 79
    .local v3, newFontDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v0, fontFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, tmp:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 86
    aget-object v7, v6, v1

    invoke-direct {p0, v3, v7}, Lcom/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 94
    .local v4, run:Ljava/lang/Runtime;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chmod 777 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 96
    .local v2, myProcess:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 97
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot chmod"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v2           #myProcess:Ljava/lang/Process;
    .end local v4           #run:Ljava/lang/Runtime;
    .end local v5           #s:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 107
    :cond_1
    :goto_1
    return-object v0

    .line 104
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "filename"
    .parameter "directory"

    .prologue
    .line 45
    const-string v0, ""

    .line 47
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 52
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 53
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 55
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 70
    .end local v1           #dest:Ljava/io/File;
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 71
    return-void

    .line 57
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 58
    .local v2, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v3

    goto :goto_0

    .line 61
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 62
    :try_start_4
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_3

    .line 63
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 64
    :cond_3
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_4

    .line 65
    iget-object v4, p0, Lcom/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 68
    :cond_4
    :goto_1
    throw v3

    .line 67
    :catch_2
    move-exception v4

    goto :goto_1

    .restart local v1       #dest:Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_0
.end method
