.class Landroid/media/AudioService$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private final mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "cb"

    .prologue
    .line 2357
    iput-object p1, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2358
    iput-object p2, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 2359
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 2362
    invoke-static {}, Landroid/media/AudioService;->access$5300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2363
    :try_start_0
    const-string v1, "AudioService"

    const-string v2, "  AudioFocus   audio focus client died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v1, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    #calls: Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 2365
    iget-object v1, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioFocusDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2366
    monitor-exit v0

    .line 2367
    return-void

    .line 2366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2370
    iget-object v0, p0, Landroid/media/AudioService$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
