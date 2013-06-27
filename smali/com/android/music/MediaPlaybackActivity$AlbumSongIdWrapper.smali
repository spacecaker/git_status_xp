.class Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumSongIdWrapper"
.end annotation


# instance fields
.field public albumid:J

.field public songid:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter "aid"
    .parameter "sid"

    .prologue
    .line 2142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2143
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->albumid:J

    .line 2144
    iput-wide p3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->songid:J

    .line 2145
    return-void
.end method
