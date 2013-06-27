.class public Lcom/android/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AudioPreview$PreviewPlayer;,
        Lcom/android/music/AudioPreview$ProgressRefresher;
    }
.end annotation


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDuration:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLoadingText:Landroid/widget/TextView;

.field private mMaxVolume:F

.field private mMediaId:J

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mUri:Landroid/net/Uri;

.field onErrorMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/AudioPreview;->mMediaId:J

    .line 91
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/AudioPreview;->mMaxVolume:F

    .line 98
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->onErrorMsg:Z

    .line 385
    new-instance v0, Lcom/android/music/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$2;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 417
    new-instance v0, Lcom/android/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$3;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 477
    new-instance v0, Lcom/android/music/AudioPreview$4;

    invoke-direct {v0, p0}, Lcom/android/music/AudioPreview$4;-><init>(Lcom/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 589
    return-void
.end method

.method static synthetic access$1000(Lcom/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/music/AudioPreview;->mSeeking:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/music/AudioPreview;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/music/AudioPreview;->mMediaId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/music/AudioPreview;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/music/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/music/AudioPreview;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/music/AudioPreview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/AudioPreview;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/AudioPreview;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/music/AudioPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->setFileVolume()V

    return-void
.end method

.method private getMidiHeadsetVolume()F
    .locals 2

    .prologue
    .line 265
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 266
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v1, "situation=6;device=2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private getMidiSpeakerVolume()F
    .locals 2

    .prologue
    .line 260
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 261
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v1, "situation=6;device=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method private isMidiFile()Z
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v12, "mime_type"

    .line 290
    const/4 v11, 0x0

    .line 293
    .local v11, ret:Z
    const-string v9, "audio/mpeg"

    .line 294
    .local v9, mimeType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, path:Ljava/lang/String;
    const-string v3, "_data=?"

    .line 296
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "mime_type"

    aput-object v12, v2, v0

    .line 301
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 304
    .local v8, mCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    const-string v0, "mime_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 311
    :goto_0
    invoke-static {v9}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v7

    .line 313
    .local v7, fileType:I
    const/16 v0, 0xd

    if-eq v7, v0, :cond_0

    const/16 v0, 0xe

    if-eq v7, v0, :cond_0

    const/16 v0, 0xf

    if-ne v7, v0, :cond_1

    .line 316
    :cond_0
    const/4 v11, 0x1

    .line 318
    :cond_1
    return v11

    .line 307
    .end local v7           #fileType:I
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 308
    .local v6, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private setFileVolume()V
    .locals 4

    .prologue
    .line 270
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/music/AudioPreview;->isMidiFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const-string v2, "AudioPreview"

    const-string v3, "AudioPreview_MIDI files"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 275
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->getMidiHeadsetVolume()F

    move-result v2

    iput v2, p0, Lcom/android/music/AudioPreview;->mMaxVolume:F

    .line 286
    .end local v0           #am:Landroid/media/AudioManager;
    :goto_0
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    iget v3, p0, Lcom/android/music/AudioPreview;->mMaxVolume:F

    invoke-virtual {v2, v3}, Lcom/android/music/AudioPreview$PreviewPlayer;->setVolume(F)V

    .line 287
    return-void

    .line 279
    .restart local v0       #am:Landroid/media/AudioManager;
    :cond_0
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->getMidiSpeakerVolume()F

    move-result v2

    iput v2, p0, Lcom/android/music/AudioPreview;->mMaxVolume:F

    goto :goto_0

    .line 285
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_1
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/android/music/AudioPreview;->mMaxVolume:F

    goto :goto_0
.end method

.method private showPostPrepareUI()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 368
    const v2, 0x7f0c001c

    invoke-virtual {p0, v2}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 369
    .local v0, pb:Landroid/widget/ProgressBar;
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v2}, Lcom/android/music/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/android/music/AudioPreview;->mDuration:I

    .line 371
    iget v2, p0, Lcom/android/music/AudioPreview;->mDuration:I

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 373
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 376
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    const v2, 0x7f0c001e

    invoke-virtual {p0, v2}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 378
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 381
    iget-object v2, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v3, Lcom/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v3, p0}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    .line 383
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 436
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->setFileVolume()V

    .line 438
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->start()V

    .line 439
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcom/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v1, p0}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->release()V

    .line 344
    iput-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 345
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 347
    :cond_1
    return-void
.end method

.method private updatePlayPause()V
    .locals 3

    .prologue
    .line 466
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 467
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 472
    iget-object v1, p0, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 521
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    .line 522
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 103
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const-string v4, "phone"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 107
    .local v18, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    const-string v4, "test"

    const-string v5, "AudioPreview - calling"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mToast:Landroid/widget/Toast;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090016

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mToast:Landroid/widget/Toast;

    .line 116
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mToast:Landroid/widget/Toast;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 248
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 114
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mToast:Landroid/widget/Toast;

    move-object v4, v0

    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 122
    .local v13, intent:Landroid/content/Intent;
    if-nez v13, :cond_3

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->finish()V

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v4, v0

    if-nez v4, :cond_4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->finish()V

    goto :goto_1

    .line 131
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 133
    .local v17, scheme:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->setVolumeControlStream(I)V

    .line 134
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->requestWindowFeature(I)Z

    .line 135
    const v4, 0x7f030003

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->setContentView(I)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    .line 139
    const v4, 0x7f0c001f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 140
    const v4, 0x7f0c0020

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 141
    const v4, 0x7f0c001d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    .line 142
    const-string v4, "http"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    const v4, 0x7f09008d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/music/AudioPreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 144
    .local v14, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .end local v14           #msg:Ljava/lang/String;
    :goto_2
    const v4, 0x7f0c0013

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 149
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 150
    const-string v4, "audio"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 153
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v11, commandFilter:Landroid/content/IntentFilter;
    const-string v4, "com.android.music.previewservicecommand"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v4, "togglepause"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 161
    .local v16, player:Lcom/android/music/AudioPreview$PreviewPlayer;
    if-nez v16, :cond_7

    .line 162
    new-instance v4, Lcom/android/music/AudioPreview$PreviewPlayer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/music/AudioPreview$PreviewPlayer;-><init>(Lcom/android/music/AudioPreview$1;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/android/music/AudioPreview;)V

    .line 165
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_5
    :goto_3
    new-instance v3, Lcom/android/music/AudioPreview$1;

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/music/AudioPreview$1;-><init>(Lcom/android/music/AudioPreview;Landroid/content/ContentResolver;)V

    .line 221
    .local v3, mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    const-string v4, "content"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "media"

    if-ne v4, v5, :cond_8

    .line 224
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "artist"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    .end local v3           #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    .end local v11           #commandFilter:Landroid/content/IntentFilter;
    .end local v16           #player:Lcom/android/music/AudioPreview$PreviewPlayer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 166
    .restart local v11       #commandFilter:Landroid/content/IntentFilter;
    .restart local v16       #player:Lcom/android/music/AudioPreview$PreviewPlayer;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 168
    .local v12, ex:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const v4, 0x7f090062

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->finish()V

    goto/16 :goto_1

    .line 175
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/android/music/AudioPreview;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/android/music/AudioPreview;->showPostPrepareUI()V

    goto/16 :goto_3

    .line 231
    .restart local v3       #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 233
    :cond_9
    const-string v4, "file"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 237
    .local v15, path:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "title"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "artist"

    aput-object v9, v7, v8

    const-string v8, "_data=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v15, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 244
    .end local v15           #path:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/AudioPreview;->setNames()V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 336
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v1, 0x12d

    const/16 v0, 0x12c

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "AudioPreview"

    .line 494
    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    if-eq p3, v1, :cond_0

    if-ne p3, v0, :cond_1

    .line 499
    :cond_0
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->onErrorMsg:Z

    .line 501
    const-string v0, "AudioPreview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError_ErrDrmLicenseExpired/MEDIA_ErrDrmLicenseNotFound__what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "___extra : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const v0, 0x7f090011

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    :goto_0
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 515
    return v2

    .line 504
    :cond_1
    const-string v0, "AudioPreview"

    const-string v0, "playback_failed!"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-boolean v0, p0, Lcom/android/music/AudioPreview;->onErrorMsg:Z

    if-nez v0, :cond_2

    .line 507
    const v0, 0x7f090062

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 508
    const-string v0, "test"

    const-string v1, "AudioPreview-playback_failed2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2
    iput-boolean v2, p0, Lcom/android/music/AudioPreview;->onErrorMsg:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 561
    sparse-switch p1, :sswitch_data_0

    .line 582
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 564
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 569
    :goto_1
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    move v0, v1

    .line 570
    goto :goto_0

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    goto :goto_1

    :sswitch_1
    move v0, v1

    .line 575
    goto :goto_0

    .line 578
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 579
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    move v0, v1

    .line 580
    goto :goto_0

    .line 561
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_2
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    .end local p1
    :goto_0
    return-void

    .line 358
    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/music/AudioPreview$PreviewPlayer;

    .end local p1
    iput-object p1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 359
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->setNames()V

    .line 361
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->setFileVolume()V

    .line 363
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->start()V

    .line 364
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 325
    .local v0, player:Lcom/android/music/AudioPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    .line 326
    return-object v0
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->stopPlayback()V

    .line 352
    invoke-virtual {p0}, Lcom/android/music/AudioPreview;->finish()V

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 354
    return-void
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 530
    :goto_0
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->updatePlayPause()V

    .line 531
    return-void

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/android/music/AudioPreview;->start()V

    goto :goto_0
.end method

.method public setNames()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
