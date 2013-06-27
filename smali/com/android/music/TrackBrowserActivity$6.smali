.class Lcom/android/music/TrackBrowserActivity$6;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/android/music/TouchInterceptor$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    #calls: Lcom/android/music/TrackBrowserActivity;->removePlaylistItem(I)V
    invoke-static {v0, p1}, Lcom/android/music/TrackBrowserActivity;->access$700(Lcom/android/music/TrackBrowserActivity;I)V

    .line 743
    return-void
.end method
