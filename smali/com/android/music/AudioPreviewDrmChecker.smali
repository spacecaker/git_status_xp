.class public Lcom/android/music/AudioPreviewDrmChecker;
.super Landroid/app/Activity;
.source "AudioPreviewDrmChecker.java"


# instance fields
.field private DEBUG:Z

.field private mDrmPlayListener:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/AudioPreviewDrmChecker;->DEBUG:Z

    .line 195
    new-instance v0, Lcom/android/music/AudioPreviewDrmChecker$1;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreviewDrmChecker$1;-><init>(Lcom/android/music/AudioPreviewDrmChecker;)V

    iput-object v0, p0, Lcom/android/music/AudioPreviewDrmChecker;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkDRMRight(Landroid/net/Uri;)V
    .locals 6
    .parameter

    .prologue
    const-class v0, Lcom/android/music/AudioPreview;

    const-string v5, "AudioPreviewDrmChecker"

    .line 145
    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager;

    invoke-direct {v0}, Lcom/sec/android/app/music/MusicDrmManager;-><init>()V

    .line 147
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-boolean v2, p0, Lcom/android/music/AudioPreviewDrmChecker;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AudioPreviewDrmChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDRMRight (Uri uri) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "__filePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    const-string v2, "AudioPreviewDrmChecker"

    const-string v3, "This is DRM file"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 155
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 156
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/music/MusicDrmManager;->getDrmPopup(Z[I[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v3

    .line 157
    if-eqz v3, :cond_1

    const/16 v4, 0xe

    if-ne v3, v4, :cond_2

    .line 158
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/AudioPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreviewDrmChecker;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V

    .line 184
    :goto_0
    return-void

    .line 163
    :cond_2
    new-instance v4, Lcom/sec/android/app/music/DrmPopupData;

    invoke-direct {v4}, Lcom/sec/android/app/music/DrmPopupData;-><init>()V

    .line 164
    iput-object v2, v4, Lcom/sec/android/app/music/DrmPopupData;->popupStrings:[I

    .line 165
    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicDrmManager;->getRemainedCounts()I

    move-result v0

    iput v0, v4, Lcom/sec/android/app/music/DrmPopupData;->remainCount:I

    .line 166
    iput v3, v4, Lcom/sec/android/app/music/DrmPopupData;->popupType:I

    .line 167
    iput-object v1, v4, Lcom/sec/android/app/music/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/sec/android/app/music/DrmServicePopup;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/music/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/DrmPopupData;)V

    .line 169
    invoke-virtual {v0}, Lcom/sec/android/app/music/DrmServicePopup;->show()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    const-string v0, "AudioPreviewDrmChecker"

    const-string v0, "checkDRMRight FileNotFoundException"

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_3
    :try_start_1
    const-string v0, "AudioPreview"

    const-string v1, "NO DrmFile"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/AudioPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreviewDrmChecker;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/music/AudioPreviewDrmChecker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v4, 0x7f090016

    const/4 v2, 0x0

    const/4 v13, 0x1

    const-string v3, "AudioPreviewDrmChecker"

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v13}, Lcom/android/music/AudioPreviewDrmChecker;->requestWindowFeature(I)Z

    .line 59
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/music/AudioPreviewDrmChecker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 60
    .local v12, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v1, "AudioPreviewDrmChecker"

    const-string v1, "AudioPreview - calling"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mToast:Landroid/widget/Toast;

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V

    .line 140
    :goto_1
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v6, a:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.drm.play"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v6}, Lcom/android/music/AudioPreviewDrmChecker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 82
    .local v9, intent:Landroid/content/Intent;
    if-nez v9, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    .line 88
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V

    goto :goto_1

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, scheme:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "AudioPreviewDrmChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheme : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_4
    const-string v1, "file"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/music/AudioPreviewDrmChecker;->checkDRMRight(Landroid/net/Uri;)V

    goto :goto_1

    .line 101
    :cond_5
    const-string v1, "content"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 103
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 105
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 107
    .local v11, str:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v13, :cond_6

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 122
    :cond_6
    if-eqz v7, :cond_7

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_7
    :goto_2
    if-eqz v11, :cond_9

    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://media/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/music/AudioPreviewDrmChecker;->checkDRMRight(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 115
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 116
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string v1, "AudioPreviewDrmChecker"

    const-string v2, "SQLiteFullException getAudioFilePath"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz v7, :cond_7

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 118
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 119
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    const-string v1, "AudioPreviewDrmChecker"

    const-string v2, "SQLiteDiskIOException getAudioFilePath"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    if-eqz v7, :cond_7

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 122
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_8

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 131
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->play()V

    goto/16 :goto_1

    .line 136
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v11           #str:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->play()V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/music/AudioPreviewDrmChecker;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/music/AudioPreviewDrmChecker;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 212
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "AudioPreviewDrmChecker"

    const-string v1, "start() to AudioPreview"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/AudioPreview;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    iget-object v1, p0, Lcom/android/music/AudioPreviewDrmChecker;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreviewDrmChecker;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/music/AudioPreviewDrmChecker;->finish()V

    .line 192
    return-void
.end method
