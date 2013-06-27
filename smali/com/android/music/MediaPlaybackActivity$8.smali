.class Lcom/android/music/MediaPlaybackActivity$8;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$8;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$8;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 917
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$8;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1100(Lcom/android/music/MediaPlaybackActivity;)V

    .line 918
    return-void
.end method
