.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryArgs"
.end annotation


# instance fields
.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field final synthetic this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
