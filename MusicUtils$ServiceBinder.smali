.class Lcom/android/music/MusicUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 206
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 209
    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 210
    invoke-static {}, Lcom/android/music/MusicUtils;->initAlbumArtCache()V

    .line 211
    iget-object v0, p0, Lcom/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 220
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    .line 221
    return-void
.end method
