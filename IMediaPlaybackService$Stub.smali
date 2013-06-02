.class public abstract Lcom/android/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/android/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1

    .line 28
    :cond_0
    const-string v1, "com.android.music.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/music/IMediaPlaybackService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 32
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/music/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/music/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.android.music.IMediaPlaybackService"

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 398
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 44
    :sswitch_0
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getCurrentAlbumInfo()Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v3

    .line 51
    .local v3, _result:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v3, p3, v6}, Lcom/sec/android/app/music/MusicAlbumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v5, v6

    .line 59
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 63
    .end local v3           #_result:Lcom/sec/android/app/music/MusicAlbumInfo;
    :sswitch_2
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->getPrevAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v3

    .line 67
    .restart local v3       #_result:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {v3, p3, v6}, Lcom/sec/android/app/music/MusicAlbumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v5, v6

    .line 75
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 79
    .end local v0           #_arg0:I
    .end local v3           #_result:Lcom/sec/android/app/music/MusicAlbumInfo;
    :sswitch_3
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->getNextAlbumInfo(I)Lcom/sec/android/app/music/MusicAlbumInfo;

    move-result-object v3

    .line 83
    .restart local v3       #_result:Lcom/sec/android/app/music/MusicAlbumInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v3, p3, v6}, Lcom/sec/android/app/music/MusicAlbumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v5, v6

    .line 91
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 95
    .end local v0           #_arg0:I
    .end local v3           #_result:Lcom/sec/android/app/music/MusicAlbumInfo;
    :sswitch_4
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->prevPosition()I

    move-result v3

    .line 97
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 99
    goto :goto_0

    .line 103
    .end local v3           #_result:I
    :sswitch_5
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->nextPosition()I

    move-result v3

    .line 105
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 107
    goto :goto_0

    .line 111
    .end local v3           #_result:I
    :sswitch_6
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setR2VSMode(I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 116
    goto/16 :goto_0

    .line 120
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->hideNotification()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 123
    goto/16 :goto_0

    .line 127
    :sswitch_8
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 131
    goto/16 :goto_0

    .line 135
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->openFile(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 140
    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 148
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->open([JI)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 151
    goto/16 :goto_0

    .line 155
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_b
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v3

    .line 157
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v3           #_result:I
    :sswitch_c
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v3

    .line 165
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v3, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 167
    goto/16 :goto_0

    :cond_3
    move v5, v8

    .line 166
    goto :goto_4

    .line 171
    .end local v3           #_result:Z
    :sswitch_d
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->stop()V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 174
    goto/16 :goto_0

    .line 178
    :sswitch_e
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->pause()V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 181
    goto/16 :goto_0

    .line 185
    :sswitch_f
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->play()V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 188
    goto/16 :goto_0

    .line 192
    :sswitch_10
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->prev()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 195
    goto/16 :goto_0

    .line 199
    :sswitch_11
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->next()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 202
    goto/16 :goto_0

    .line 206
    :sswitch_12
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v3

    .line 208
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 210
    goto/16 :goto_0

    .line 214
    .end local v3           #_result:J
    :sswitch_13
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v3

    .line 216
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 218
    goto/16 :goto_0

    .line 222
    .end local v3           #_result:J
    :sswitch_14
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 225
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v3

    .line 226
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 228
    goto/16 :goto_0

    .line 232
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_15
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 236
    goto/16 :goto_0

    .line 240
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 242
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 244
    goto/16 :goto_0

    .line 248
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 250
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 252
    goto/16 :goto_0

    .line 256
    .end local v3           #_result:J
    :sswitch_18
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 260
    goto/16 :goto_0

    .line 264
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_19
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v3

    .line 266
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 268
    goto/16 :goto_0

    .line 272
    .end local v3           #_result:J
    :sswitch_1a
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 276
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 279
    goto/16 :goto_0

    .line 283
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_1b
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v3

    .line 285
    .local v3, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    move v5, v6

    .line 287
    goto/16 :goto_0

    .line 291
    .end local v3           #_result:[J
    :sswitch_1c
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 298
    goto/16 :goto_0

    .line 302
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_1d
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 307
    goto/16 :goto_0

    .line 311
    .end local v0           #_arg0:I
    :sswitch_1e
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 315
    goto/16 :goto_0

    .line 319
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v3

    .line 321
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 323
    goto/16 :goto_0

    .line 327
    .end local v3           #_result:J
    :sswitch_20
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 332
    goto/16 :goto_0

    .line 336
    .end local v0           #_arg0:I
    :sswitch_21
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v3

    .line 338
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 340
    goto/16 :goto_0

    .line 344
    .end local v3           #_result:I
    :sswitch_22
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/android/music/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v3

    .line 350
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 352
    goto/16 :goto_0

    .line 356
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_result:I
    :sswitch_23
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 359
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/android/music/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v3

    .line 360
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 362
    goto/16 :goto_0

    .line 366
    .end local v0           #_arg0:J
    .end local v3           #_result:I
    :sswitch_24
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 371
    goto/16 :goto_0

    .line 375
    .end local v0           #_arg0:I
    :sswitch_25
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v3

    .line 377
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 379
    goto/16 :goto_0

    .line 383
    .end local v3           #_result:I
    :sswitch_26
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v3

    .line 385
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 387
    goto/16 :goto_0

    .line 391
    .end local v3           #_result:I
    :sswitch_27
    const-string v5, "com.android.music.IMediaPlaybackService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/music/IMediaPlaybackService$Stub;->getAudioSessionId()I

    move-result v3

    .line 393
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 395
    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
