.class Lcom/android/music/MediaPlaybackActivity$18$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackActivity$18;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackActivity$18;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity$18;)V
    .locals 0
    .parameter

    .prologue
    .line 2437
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$18$1;->this$1:Lcom/android/music/MediaPlaybackActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$18$1;->this$1:Lcom/android/music/MediaPlaybackActivity$18;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity$18;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackActivity;->hideAdditionalPanel()V

    .line 2440
    return-void
.end method
