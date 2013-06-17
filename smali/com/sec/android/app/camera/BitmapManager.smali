.class public Lcom/sec/android/app/camera/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/BitmapManager$1;,
        Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;,
        Lcom/sec/android/app/camera/BitmapManager$State;
    }
.end annotation


# static fields
.field private static sManager:Lcom/sec/android/app/camera/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/BitmapManager;->sManager:Lcom/sec/android/app/camera/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 71
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    .locals 2
    .parameter "t"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    .line 78
    .local v0, status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    .end local v0           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;-><init>(Lcom/sec/android/app/camera/BitmapManager$1;)V

    .line 80
    .restart local v0       #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-object v0

    .line 77
    .end local v0           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/sec/android/app/camera/BitmapManager;
    .locals 2

    .prologue
    .line 130
    const-class v0, Lcom/sec/android/app/camera/BitmapManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/BitmapManager;->sManager:Lcom/sec/android/app/camera/BitmapManager;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/sec/android/app/camera/BitmapManager;

    invoke-direct {v1}, Lcom/sec/android/app/camera/BitmapManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/camera/BitmapManager;->sManager:Lcom/sec/android/app/camera/BitmapManager;

    .line 133
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/BitmapManager;->sManager:Lcom/sec/android/app/camera/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "t"
    .parameter "options"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/BitmapManager$State;->ALLOW:Lcom/sec/android/app/camera/BitmapManager$State;

    iput-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 5
    .parameter "t"

    .prologue
    const/4 v4, 0x1

    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .local v1, status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    move v2, v4

    .line 111
    :goto_0
    monitor-exit p0

    return v2

    .line 110
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;

    sget-object v3, Lcom/sec/android/app/camera/BitmapManager$State;->CANCEL:Lcom/sec/android/app/camera/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    move v0, v4

    .local v0, result:Z
    :goto_1
    move v2, v0

    .line 111
    goto :goto_0

    .line 110
    .end local v0           #result:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 104
    .end local v1           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 120
    .local v0, status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    sget-object v1, Lcom/sec/android/app/camera/BitmapManager$State;->CANCEL:Lcom/sec/android/app/camera/BitmapManager$State;

    iput-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mState:Lcom/sec/android/app/camera/BitmapManager$State;

    .line 121
    iget-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 126
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 119
    .end local v0           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "fd"
    .parameter "options"

    .prologue
    const/4 v5, 0x0

    .line 141
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_0

    move-object v2, v5

    .line 155
    :goto_0
    return-object v2

    .line 145
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 146
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 148
    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/camera/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 152
    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    move-object v2, v0

    .line 155
    goto :goto_0
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;

    .line 96
    .local v0, status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 95
    .end local v0           #status:Lcom/sec/android/app/camera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
