.class Lcom/android/music/QueryBrowserActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/QueryBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$4;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 337
    if-nez p2, :cond_0

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_0
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 342
    .local v0, position:I
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity$4;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/music/QueryBrowserActivity;->access$300(Lcom/android/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/music/MusicUtils;->playAllDrm(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0
.end method
