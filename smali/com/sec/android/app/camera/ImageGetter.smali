.class Lcom/sec/android/app/camera/ImageGetter;
.super Ljava/lang/Object;
.source "ImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ImageGetter$1;,
        Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;
    }
.end annotation


# instance fields
.field private mCB:Lcom/sec/android/app/camera/ImageGetterCallback;

.field private volatile mCancel:Z

.field private mCr:Landroid/content/ContentResolver;

.field private mCurrentPosition:I

.field private mCurrentSerial:I

.field private mDone:Z

.field private mGetterThread:Ljava/lang/Thread;

.field private mHandler:Lcom/sec/android/app/camera/GetterHandler;

.field private mIdle:Z

.field private mImageList:Lcom/sec/android/app/camera/gallery/IImageList;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mIdle:Z

    .line 96
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mDone:Z

    .line 233
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageGetter;->mCr:Landroid/content/ContentResolver;

    .line 234
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;-><init>(Lcom/sec/android/app/camera/ImageGetter;Lcom/sec/android/app/camera/ImageGetter$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    const-string v1, "ImageGettter"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/ImageGetter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/ImageGetterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ImageGetter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ImageGetter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mDone:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/ImageGetter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/ImageGetter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/ImageGetter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ImageGetter;->mIdle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mImageList:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/GetterHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    return-object v0
.end method

.method private declared-synchronized cancelCurrentAndWait()V
    .locals 2

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrent()V

    .line 250
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 252
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelCurrent()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z

    .line 243
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCr:Landroid/content/ContentResolver;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPosition(ILcom/sec/android/app/camera/ImageGetterCallback;Lcom/sec/android/app/camera/gallery/IImageList;Lcom/sec/android/app/camera/GetterHandler;)V
    .locals 2
    .parameter "position"
    .parameter "cb"
    .parameter "imageList"
    .parameter "handler"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrentAndWait()V

    .line 280
    iput p1, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I

    .line 281
    iput-object p2, p0, Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;

    .line 282
    iput-object p3, p0, Lcom/sec/android/app/camera/ImageGetter;->mImageList:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 283
    iput-object p4, p0, Lcom/sec/android/app/camera/ImageGetter;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    .line 284
    iget v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z

    .line 288
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrentAndWait()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mDone:Z

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 265
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    .line 272
    return-void

    .line 265
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method
